const express = require("express");
const app = express();
const PORT = process.env.PORT || 3000;

app.get("/", (req, res) => {
  res.send("✅ Hello from ECS App Updated for Eks and ECS!");
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
