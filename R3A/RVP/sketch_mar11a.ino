#include <virtuabotixRTC.h>

// Definicija Real Time Clock Objekta
virtuabotixRTC myRTC(6, 7, 8);

const int digitPins[4] = {B11101111,B11010000,B10111111,B01111111};       

const int nastavi = 2;
const int minus = 3;
const int plus = 4;

unsigned int sekunde = 0;
unsigned int minute = 0;
unsigned int ure = 0;
 
const int dataPin = 13;     //74HC595 Pin 14
const int clockPin = 11;    //74HC595 Pin 11
const int latchPin = 12;    //74HC595 Pin 12
const byte digit[10] =      //seven segment digits in bits
{
  B01111110, //0
  B00001100, //1
  B10110110, //2
  B10011110, //3
  B11001100, //4
  B11011010, //5
  B11111010, //6
  B00001110, //7
  B11111110, //8
  B11011110  //9
};
int digitBuffer[4] = {0};
int digitScan=0;

void setup(){    
  //myRTC.setDS1302Time(0, 19, 10, 2, 11, 3, 2024);
  Serial.begin(9600);        
  for(int i=0;i<4;i++)
  {
    pinMode(digitPins[i],OUTPUT);
  }
  pinMode(latchPin, OUTPUT);
  pinMode(clockPin, OUTPUT);
  pinMode(dataPin, OUTPUT);  

  pinMode(nastavi, INPUT_PULLUP);
  pinMode(plus, INPUT_PULLUP);
  pinMode(minus, INPUT_PULLUP);
}
 
//writes the temperature on display
void updateDisp(){
  for(byte j=0; j<4; j++)  
    digitalWrite(digitPins[j], HIGH);
 
  digitalWrite(latchPin, LOW);  
  shiftOut(dataPin, clockPin, MSBFIRST, B11111111);
  shiftOut(dataPin, clockPin, MSBFIRST, B11111111);
  digitalWrite(latchPin, HIGH);
 
  delayMicroseconds(100);

  digitalWrite(latchPin, LOW);    
    shiftOut(dataPin, clockPin, MSBFIRST, digitPins[digitScan]);
    if(digitScan==1){
      shiftOut(dataPin, clockPin, MSBFIRST, (digit[digitBuffer[digitScan]]|B00000001));
    }
    else
    shiftOut(dataPin, clockPin, MSBFIRST, digit[digitBuffer[digitScan]]);
  digitalWrite(latchPin, HIGH);
  digitScan++;
  if(digitScan>3) digitScan=0;
}
void updateDisp2(){
  for(byte j=0; j<4; j++)  
    digitalWrite(digitPins[j], HIGH);
 
  digitalWrite(latchPin, LOW);  
  shiftOut(dataPin, clockPin, MSBFIRST, B11111111);
  shiftOut(dataPin, clockPin, MSBFIRST, B11111111);
  digitalWrite(latchPin, HIGH);
 
  delayMicroseconds(100);

  digitalWrite(latchPin, LOW);    
    shiftOut(dataPin, clockPin, MSBFIRST, digitPins[digitScan]);
    if(digitScan==1){
      shiftOut(dataPin, clockPin, MSBFIRST, (digit[digitBuffer[digitScan]]|B00000000));
    }
    else
    shiftOut(dataPin, clockPin, MSBFIRST, digit[digitBuffer[digitScan]]);
  digitalWrite(latchPin, HIGH);
  digitScan++;
  if(digitScan>3) digitScan=0;
}

void nastavi_cas(int cas){
  delay(100);
  if(cas==0){
  while(digitalRead(nastavi) == HIGH){
    if(digitalRead(plus) == LOW){
      sekunde++;
      Serial.println(sekunde);
      myRTC.setDS1302Time(sekunde, minute, ure, 2, 11, 3, 2024);
      delay(200);
    }
    else if(digitalRead(minus) == LOW){
      sekunde--;
      Serial.println(sekunde);
      myRTC.setDS1302Time(sekunde, minute, ure, 2, 11, 3, 2024);
      delay(200);
    }
  }
  }
   else if(cas==1){
  while(digitalRead(nastavi) == HIGH){
    if(digitalRead(plus) == LOW){
      minute++;
      Serial.println(minute);
      myRTC.setDS1302Time(sekunde, minute, 10, 2, 11, 3, 2024);
      delay(200);
    }
    else if(digitalRead(minus) == LOW){
      minute--;
      Serial.println(minute);
      myRTC.setDS1302Time(sekunde, minute, ure, 2, 11, 3, 2024);
      delay(200);
    }
  }
  }
    if(cas==2){
  while(digitalRead(nastavi) == HIGH){
    if(digitalRead(plus) == LOW){
      ure++;
      Serial.println(ure);
      myRTC.setDS1302Time(sekunde, minute, ure, 2, 11, 3, 2024);
      myRTC.updateTime();
      digitBuffer[0] = myRTC.hours / 10;
      digitBuffer[1] = myRTC.hours % 10;
      updateDisp();
      delay(200);
    }
    else if(digitalRead(minus) == LOW){
      ure--;
      Serial.println(ure);
      myRTC.updateTime();
      myRTC.setDS1302Time(sekunde, minute, ure, 2, 11, 3, 2024);
      digitBuffer[0] = myRTC.hours / 10;
      digitBuffer[1] = myRTC.hours % 10;
      updateDisp();
      delay(200);
    }
  }
  }
  delay(200);
}

void loop(){
  myRTC.updateTime();

  for(int i = 0; i < 500; i++){
    if (digitalRead(nastavi) == LOW)
    {
      delay(100);
         nastavi_cas(0);
    }
  digitBuffer[0] = myRTC.hours / 10;
  digitBuffer[1] = myRTC.hours % 10;
  digitBuffer[2] = myRTC.minutes / 10;
  digitBuffer[3] = myRTC.minutes % 10;
  updateDisp();
  delay(5);
  }
  for(int i = 0; i < 500; i++){
    if (digitalRead(nastavi) == LOW)
    {
      delay(100);
         nastavi_cas(1);
    }
  digitBuffer[0] = myRTC.dayofmonth / 10;
  digitBuffer[1] = myRTC.dayofmonth % 10;
  digitBuffer[2] = myRTC.month / 10;
  digitBuffer[3] = myRTC.month % 10;
  updateDisp();
  delay(5);
  }
  for(int i = 0; i < 500; i++){
    if (digitalRead(nastavi) == LOW)
    {
      delay(100);
         nastavi_cas(2);
    }
  digitBuffer[0] = myRTC.year / 1000;
  //Serial.println(myRTC.year/1000);
  digitBuffer[1] = myRTC.year %1000 / 100;
  //Serial.println(myRTC.year %1000 / 100);
  digitBuffer[2] = myRTC.year % 100 / 10;
  //Serial.println(myRTC.year % 100 / 10);
  digitBuffer[3] = myRTC.year % 10;
  //Serial.println(myRTC.year%10);
  updateDisp2();
  delay(5);
  }
}