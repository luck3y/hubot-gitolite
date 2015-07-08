#color = require('ansi-color').set

module.exports = (robot) ->
  robot.router.post '/hubot/gitolite/:room', (req, res) ->
    room   = req.params.room
    body   = if req.body.payload? then JSON.parse req.body.payload else req.body
    commit = body.commit
    robot.messageRoom room, "#{commit.repo}/#{commit.branch} #{commit.id}"
    robot.messageRoom room, "by #{commit.author}"
    robot.messageRoom room, "#{commit.message}"
    res.send 'OK'
