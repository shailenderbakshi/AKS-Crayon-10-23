const express = require('express');
const app = express();
const port = process.env.PORT || 8081;  // Set default port to 8081

// Add a route handler for the root URL
app.get('/', (req, res) => {
  res.send('Hello, World!');  // This will be returned when accessing the root path
});

app.listen(port, () => {
  console.log(`App running on port ${port}`);
});