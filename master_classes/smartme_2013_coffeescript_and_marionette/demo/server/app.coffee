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

INBOXES = [
  {id: 1, name: 'Overview', description: 'Overview message'}
  {id: 2, name: 'Reports', description: 'Reports message'}
  {id: 3, name: 'Analytics', description: 'Analytics message'}
  {id: 4, name: 'Export', description: 'Export message'}
]

# Route API
app.get "/api/inboxes/:id", (req, res) ->
  if req.params.id? and INBOXES[req.params.id]?
    res.json(INBOXES[req.params.id])
  else
    res.send(404, 'Not found')

app.get "/api/inboxes", (req, res) ->
  res.json(INBOXES )

# Route index.html
app.get "/", (req, res) ->
  res.sendfile path.join(__dirname, "../client/index.html")

# Start server
http.createServer(app).listen app.get("port"), ->
  console.log "Express server listening on port ".green + app.get("port"), "\nPress Ctrl+C to shutdown".grey
