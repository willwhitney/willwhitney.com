$ ->
  $('.servicebox').hover (inEvent) ->
    $(this).find('.icon').css('visibility', 'visible')
  , (outEvent) ->
    $(this).find('.icon').css('visibility', 'hidden')
    
  