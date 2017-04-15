express = require 'express'
http    = require 'http'
spdy    = require 'spdy'
debug   = require 'debug'

app = express()
app.all /.*/, (req, res, next) ->
  host = req.header('host')
  if !host.match(/^www\..*/i)
    res.redirect 301, req.protocol + '://www.' + host + req.url

options =
  key: process.env.TEST_SSL_KEY,
  cert: process.env.TEST_SSL_CRT
  
server = http.createServer(app)
server.listen '8081'

sslServer = spdy.createServer(options, app)
sslServer.listen '8082'