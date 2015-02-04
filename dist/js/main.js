// Generated by CoffeeScript 1.8.0
(function() {
  (function($) {
    var App;
    App = {
      $container: $('.js-container'),
      init: function() {
        return $.getJSON('data/data.json', function(data) {
          App.buildSections(data);
          App.initLightbox();
          return App.initAccordion();
        });
      },
      buildSections: function(data) {
        var $container, item, markup, title;
        markup = '';
        $container = App.$container;
        if ($container.length === 0) {
          return;
        }
        for (title in data) {
          item = data[title];
          markup += "<section class='js-accordion-container my-section is-folded'>";
          markup += " <h2 class='js-accordion-trigger my-section-title'>" + title + "</h2>";
          markup += " <div class='my-section-body'>";
          markup += "   <p>" + item.text + "<p>";
          markup += "   <a href='" + item.img + "' class='js-fancybox'>Open image</a>";
          markup += " </div>";
          markup += "</section>";
        }
        return $container.append(markup);
      },
      initLightbox: function() {
        if (!$.fn.fancybox) {
          return;
        }
        return $('.js-fancybox').fancybox({
          padding: 0,
          helpers: {
            overlay: {
              css: {
                background: 'rgba(37, 147, 206, 0.95)'
              }
            }
          }
        });
      },
      initAccordion: function() {
        return $('.js-accordion-trigger').on('click', function() {
          return $(this).closest('.js-accordion-container').toggleClass('is-folded');
        });
      }
    };
    return $(document).ready(function() {
      return App.init();
    });
  })(jQuery);

}).call(this);


//# sourceMappingURL=main.js.map
