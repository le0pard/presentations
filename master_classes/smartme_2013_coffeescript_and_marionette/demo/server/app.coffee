"use strict"

# Module dependencies
express = require("express")
colors = require("colors")
http = require("http")
path = require("path")

# Create server
app = express()

# Configure server
app.set "port", process.env.PORT or 3000
app.use express.favicon()

# Mount statics
app.use express.static(path.join(__dirname, "../.tmp"))
app.use express.static(path.join(__dirname, "../client"))

# Route index.html
app.get "/", (req, res) ->
  res.sendfile path.join(__dirname, "../client/index.html")
  return


# Start server
http.createServer(app).listen app.get("port"), ->
  console.log "Express server listening on port ".green + app.get("port"), "\nPress Ctrl+C to shutdown".grey
  return
