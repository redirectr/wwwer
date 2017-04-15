express = require 'express'
http    = require 'http'
debug   = require 'debug'

app = express()
app.all /.*/, (req, res, next) ->
  host = req.header('host')
  if !host.match(/^www\..*/i)
    res.redirect 301, req.protocol + '://www.' + host + req.url

server = http.createServer(app)
server.listen '8081'