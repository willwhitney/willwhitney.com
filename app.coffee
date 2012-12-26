express = require 'express'
lessMiddleware = require 'less-middleware'

app = express()
app.configure ->
  app.set 'views', __dirname + '/views'
  app.set 'view engine', 'jade'
  
  app.use("/styles", lessMiddleware({
    src: __dirname + '/styles'
    # dest: __dirname + '/static'
  
  }))
  app.use("/styles", express.static(__dirname + '/styles'))
  app.use("/sources", express.static(__dirname + '/sources'))
  app.use("/static", express.static(__dirname + '/static'))
  app.use("/scripts", express.static(__dirname + '/scripts'))
  app.use("/", express.static(__dirname + '/static'))

# is_mobile = (req) ->
#   ua = req.header('user-agent')
#   if (/mobile/i.test(ua))
#     return true
#   else return false



# app.get '/', (req, res) ->
#   res.send
#   app.render view, {'stories': page_stories}, (err, html) ->
#     console.error err if err?
#     res.send html

port = process.env.PORT || 1999
app.listen port
