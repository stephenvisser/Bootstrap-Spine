Spine = require('spine')

class ControllerC extends Spine.Controller
  constructor: ->
    super
    @html 'The last main-level link'
    
module.exports = ControllerC
