const express = require('express');
const path = require('path');
const app = express();

app.use(express.json());

let leds = Array.from({ length: 144 }, () => "white");

app.post('/status', (req, res) => {
  const { leds: newLeds } = req.body;

  if (Array.isArray(newLeds) && newLeds.length === 144) {
    leds = newLeds;
    res.status(200).send('LED states updated successfully');
  } else {
    res.status(400).send('Invalid payload: expected an array of 144 LEDs');
  }
});

app.get('/status', (req, res) => {
  res.json({ leds: leds });
});

app.use(express.static(path.join(__dirname, 'public')));

const PORT = 5000;
app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});
