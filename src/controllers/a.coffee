Spine = require('spine')

class ControllerA extends Spine.Controller
  constructor: ->
    super
    @html 'I\'m the first link in the list.'
    
module.exports = ControllerA
