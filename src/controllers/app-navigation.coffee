require('spine')
require('spine/lib/route')
class NavBar extends Spine.Controller
  elements:
    'ul':'buttons'
  
  default: 'a'

  highlight: (item, highlight) ->
    if ///^#{$(item.children()[0]).attr('href')[1..]}.*$///.test highlight
      item.addClass 'active'
    else
      item.removeClass 'active'

  constructor: ->
    super
    @html require('views/navbar')
    @routes
      '*path': (path) ->
        location = path.match.input.indexOf '#'
        if location == -1
          properPath = @default
        else
          properPath = path.match.input[location...]
        @highlight $(button), properPath for button in @buttons.children()

module.exports = NavBar
