const express = require("express");
const healthRoute = require("./routes/health");

const app = express();
const PORT = 3000;

app.use("/", express.static("public"));
app.use("/health", healthRoute);

app.listen(PORT, () => {
  console.log(`🚀 NextAstra DevLogin App running on port ${PORT}`);
});
