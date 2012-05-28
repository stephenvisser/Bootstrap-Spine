Spine = require('spine')

class ControllerA extends Spine.Controller
  constructor: ->
    super
    @html 'I\' the first link in the list.'
    
module.exports = ControllerA
