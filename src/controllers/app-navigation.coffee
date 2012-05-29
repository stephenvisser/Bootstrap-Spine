require('spine')
require('spine/lib/route')
class NavBar extends Spine.Controller
  elements:
    'ul':'buttons'
  
  default: 'a'

  highlight: (path) ->
    @highlightItem $(button), path for button in @buttons.children() 

  highlightItem: (item, highlight) ->
    if ///^#{$(item.children()[0]).attr('href')[1..]}.*$///.test highlight
      item.addClass 'active'
    else
      item.removeClass 'active'

  constructor: ->
    super
    @html require('views/navbar')
    @routes
      'a': ->
        @highlight 'a'
      'b/:path': (path) ->
        @highlight path.match.input
      'c': ->
        @highlight 'c'
      ':default': ->
        @highlight @default 

module.exports = NavBar
