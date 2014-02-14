"use strict"

# Module dependencies
express = require("express")
colors = require("colors")
http = require("http")
path = require("path")
Faker = require('Faker')

# Create server
app = express()

# Configure server
app.set "port", process.env.PORT or 3000
app.use express.favicon()

# Mount statics
app.use express.static(path.join(__dirname, "../.tmp"))
app.use express.static(path.join(__dirname, "../client"))

# fixtures

INBOXES = [
  {id: 1, name: 'Overview', description: Faker.Lorem.paragraph(), image_type: 'lava', messages: [
    { id: 1, subject: Faker.Name.findName(), body: Faker.Lorem.words(), size: Faker.random.number(100) }
    { id: 2, subject: Faker.Name.findName(), body: Faker.Lorem.words(), size: Faker.random.number(100) }
    { id: 3, subject: Faker.Name.findName(), body: Faker.Lorem.words(), size: Faker.random.number(100) }
  ]}
  {id: 2, name: 'Reports', description: Faker.Lorem.paragraph(), image_type: 'vine', messages: [
    { id: 1, subject: Faker.Name.findName(), body: Faker.Lorem.words(), size: Faker.random.number(100) }
    { id: 2, subject: Faker.Name.findName(), body: Faker.Lorem.words(), size: Faker.random.number(100) }
    { id: 3, subject: Faker.Name.findName(), body: Faker.Lorem.words(), size: Faker.random.number(100) }
  ]}
  {id: 3, name: 'Analytics', description: Faker.Lorem.paragraph(), image_type: 'industrial', messages: [
    { id: 1, subject: Faker.Name.findName(), body: Faker.Lorem.words(), size: Faker.random.number(100) }
    { id: 2, subject: Faker.Name.findName(), body: Faker.Lorem.words(), size: Faker.random.number(100) }
    { id: 3, subject: Faker.Name.findName(), body: Faker.Lorem.words(), size: Faker.random.number(100) }
  ]}
  {id: 4, name: 'Export', description: Faker.Lorem.paragraph(), image_type: 'social', messages: [
    { id: 1, subject: Faker.Name.findName(), body: Faker.Lorem.words(), size: Faker.random.number(100) }
    { id: 2, subject: Faker.Name.findName(), body: Faker.Lorem.words(), size: Faker.random.number(100) }
    { id: 3, subject: Faker.Name.findName(), body: Faker.Lorem.words(), size: Faker.random.number(100) }
  ]}
]

# Route API
app.get "/api/inboxes/:id", (req, res) ->
  if req.params.id? and INBOXES[req.params.id]?
    res.json(INBOXES[req.params.id])
  else
    res.send(404, 'Not found')

app.get "/api/inboxes", (req, res) ->
  res.json(INBOXES)

# Route index.html
app.get "*", (req, res) ->
  res.sendfile path.join(__dirname, "../client/index.html")

app.get "/", (req, res) ->
  res.sendfile path.join(__dirname, "../client/index.html")

# Start server
http.createServer(app).listen app.get("port"), ->
  console.log "Express server listening on port ".green + app.get("port"), "\nPress Ctrl+C to shutdown".grey
