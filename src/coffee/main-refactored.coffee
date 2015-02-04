do ($ = jQuery) ->
  App =
    $container: $ '.js-container'

    init: ->
      $.getJSON 'data/data.json', (data) =>
        @buildSections(data)
        @initLightbox()
        @initAccordion()

    buildSections: (data) ->
      return if @$container.length is 0

      markup = ""

      for title, item of data
        markup += """
          <section class='js-accordion-container my-section is-folded'>
           <h2 class='js-accordion-trigger my-section-title'>#{title}</h2>
           <div class='my-section-body'>
            <p>#{item.text}</p>
            <a href='#{item.img}' class='js-fancybox' rel='group'>Open image</a>
           </div>
          </section>
        """

      @$container.append markup

    initLightbox: ->
      $fancyLinks = $ '.js-fancybox'

      return if $fancyLinks.length is 0 or not $.fn.fancybox?

      $fancyLinks.fancybox
        padding: 0
        helpers:
          overlay:
            css:
              background: "rgba(37, 147, 206, 0.95)"

    initAccordion: ->
      @$container.on 'click', '.js-accordion-trigger', ->
        $ this
          .closest '.js-accordion-container'
          .toggleClass 'is-folded'

  $ -> App.init()
