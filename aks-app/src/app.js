const express = require('express');
const app = express();
const port = process.env.PORT || 8081;  // Updated to default to 8081

app.listen(port, () => {
  console.log(`App running on port ${port}`);
});