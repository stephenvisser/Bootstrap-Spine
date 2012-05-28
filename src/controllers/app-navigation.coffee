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
      '/': ->
        @highlight $(button), @default for button in @buttons.children()
      '*path': (path) ->
        @highlight $(button), path.match.input for button in @buttons.children()

module.exports = NavBar
