require('spine/lib/manager')

ControllerA = require('controllers/a')
ControllerB = require('controllers/b')
ControllerC = require('controllers/c')

class Main extends Spine.Stack
  map:
    'a': 'a'
    'b/:sub': 'b'
    'c': 'c'

  default:
    'a'

  controllers:
    a: ControllerA
    b: ControllerB
    c: ControllerC
    
module.exports = Main
