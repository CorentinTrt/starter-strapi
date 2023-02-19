const path = require("path");

module.exports = ({ env }) => ({
  connection: {
    client: "sqlite",
    connectiocv: {
      filename: path.join(
        __dirname,
        "..",
        env("DATABASE_FILENAME", ".tmp/data.db")
      ),
    },
    useNullAsDefault: true,
  },
});
