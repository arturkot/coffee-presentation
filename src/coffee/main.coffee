do ($ = jQuery) ->
  App = {
    $container: $('.js-container')

    init: ->
      $.getJSON('data/data.json', (data) ->
        App.buildSections(data)
        App.initLightbox()
        App.initAccordion()
      )

    buildSections: (data) ->
      markup = ''
      $container = App.$container

      if ($container.length == 0) then return

      $.each(data, (title, item) ->
        markup += "<section class='js-accordion-container my-section is-folded'>"
        markup += " <h2 class='js-accordion-trigger my-section-title'>#{title}</h2>"
        markup += " <div class='my-section-body'>"
        markup += "   <p>#{item.text}<p>"
        markup += "   <a href='#{item.img}' class='js-fancybox'>Open image</a>"
        markup += " </div>"
        markup += "</section>"
      )

      $container.append(markup)

    initLightbox: ->
      if (!$.fn.fancybox) then return

      $('.js-fancybox').fancybox({
        padding: 0,
        helpers: {
          overlay: {
            css: {
              background: 'rgba(37, 147, 206, 0.95)'
            }
          }
        }
      })

    initAccordion: ->
      $('.js-accordion-trigger').on('click', ->
        $(this)
          .closest('.js-accordion-container')
          .toggleClass('is-folded')
      )
  }

  $(document).ready( ->
    App.init()
  )
