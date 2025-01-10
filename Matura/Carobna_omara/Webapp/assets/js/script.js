const express = require('express');
const app = express();

// Middleware to parse JSON requests
app.use(express.json());

app.post('/status', (req, res) => {
  // Log the received payload
  console.log('Received payload:', req.body);

  // Respond to the ESP32
  res.status(200).send('Status received successfully');
});

// Start the server on port 5000
const PORT = 5000;
app.listen(PORT, () => {
  console.log(`Server is running on http://192.168.1.96:${PORT}`);
});
