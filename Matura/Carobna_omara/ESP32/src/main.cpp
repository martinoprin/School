#include <WiFi.h>
#include <FastLED.h>
#include <HTTPClient.h>
#include <ArduinoJson.h>

#define LED_PIN 5
#define NUM_LEDS 144
CRGB leds[NUM_LEDS];

const char* ssid = "DESKTOP-Martin";
const char* password = "audijenajaci";
const char* serverURL = "http://192.168.1.96:5000/status";

String fetchLEDArray();
void updateLEDs(const String& jsonArray);

void setup() {
  Serial.begin(115200);

  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  Serial.println("\nConnected to WiFi");

  FastLED.addLeds<WS2812, LED_PIN, GRB>(leds, NUM_LEDS);
  FastLED.clear();
  FastLED.show();
}

String fetchLEDArray() {
  if (WiFi.status() != WL_CONNECTED) {
    Serial.println("WiFi not connected");
    return "";
  }

  HTTPClient http;
  http.begin(serverURL);
  int httpResponseCode = http.GET();

  String payload = "";
  if (httpResponseCode > 0) {
    payload = http.getString();
    Serial.println("Server Response: " + payload);
  } else {
    Serial.print("Error in HTTP request: ");
    Serial.println(httpResponseCode);
  }

  http.end();
  return payload;
}

void updateLEDs(const String& jsonArray) {
  StaticJsonDocument<8192> doc;

  DeserializationError error = deserializeJson(doc, jsonArray);
  if (error) {
    Serial.print("JSON Deserialization failed: ");
    Serial.println(error.f_str());
    return;
  }

  JsonArray ledsArray = doc["leds"];
  if (ledsArray.isNull()) {
    Serial.println("No 'leds' array found in JSON");
    return;
  }

  int i = 0;
  for (JsonVariant color : ledsArray) {
    if (i >= NUM_LEDS) break;

    const char* colorStr = color.as<const char*>();
    if (strcmp(colorStr, "red") == 0) {
      leds[i] = CRGB::Red;
    } else if (strcmp(colorStr, "green") == 0) {
      leds[i] = CRGB::Green;
    } else if (strcmp(colorStr, "blue") == 0) {
      leds[i] = CRGB::Blue;
    } else {
      leds[i] = CRGB::Black;
    }

    Serial.print("LED ");
    Serial.print(i);
    Serial.print(": ");
    Serial.println(colorStr);

    i++;
  }

  for (; i < NUM_LEDS; i++) {
    leds[i] = CRGB::Black;
  }

  FastLED.show();
}

void loop() {
  String response = fetchLEDArray();
  if (!response.isEmpty()) {
    updateLEDs(response);
  }

  delay(1000);
}
