require('spine/lib/manager')

ChildAController = require('controllers/b-sub-a')
ChildBController = require('controllers/b-sub-b')
ChildCController = require('controllers/b-sub-c')

class ControllerB extends Spine.Stack
  map:
    'b/a': 'childA'
    'b/b': 'childB'
    'b/c': 'childC'

  controllers:
    childA: ChildAController
    childB: ChildBController
    childC: ChildCController
    
module.exports = ControllerB
