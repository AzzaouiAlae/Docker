const express = require('express');

const app = express();

app.get('/', (req, res) => {
  res.send(`
    <h1>Hello from inside the very basic Node app!</h1>
  `);
})

app.get('/test', (req, res) => {
  res.send(`
    <h1>This is a test</h1>
  `);
})

app.listen(3000);