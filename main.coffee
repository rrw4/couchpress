# Requires and Variables
exp = require 'express'
app = exp.createServer()

# App Configuration
app.configure () ->
    app.set 'view engine', 'jade'
    app.set 'views', __dirname + '/views'
    app.use exp.static __dirname + '/public'
    app.use exp.bodyParser()
    app.use exp.methodOverride()

# Run App
app.listen 1337
console.log 'Server running at http://localhost:1337/'
