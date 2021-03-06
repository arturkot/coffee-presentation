// Generated by CoffeeScript 1.8.0
(function() {
  (function($) {
    var App;
    App = (function() {
      function App() {}

      App.$container = $('.js-container');

      App.init = function() {
        return $.getJSON('data/data.json', function(data) {
          App.buildSections(data);
          App.initLightbox();
          return App.initAccordion();
        });
      };

      App.buildSections = function(data) {
        var item, markup, title;
        if (this.$container.length === 0) {
          return;
        }
        markup = "";
        for (title in data) {
          item = data[title];
          markup += "<section class='js-accordion-container my-section is-folded'>\n <h2 class='js-accordion-trigger my-section-title'>" + title + "</h2>\n <div class='my-section-body'>\n  <p>" + item.text + "</p>\n  <a href='" + item.img + "' class='js-fancybox' rel='group'>Open image</a>\n </div>\n</section>";
        }
        return this.$container.append(markup);
      };

      App.initLightbox = function() {
        var $fancyLinks;
        $fancyLinks = $('.js-fancybox');
        if ($fancyLinks.length === 0 || ($.fn.fancybox == null)) {
          return;
        }
        return $fancyLinks.fancybox({
          padding: 0,
          helpers: {
            overlay: {
              css: {
                background: "rgba(37, 147, 206, 0.95)"
              }
            }
          }
        });
      };

      App.initAccordion = function() {
        return this.$container.on('click', '.js-accordion-trigger', function() {
          return $(this).closest('.js-accordion-container').toggleClass('is-folded');
        });
      };

      return App;

    })();
    return $(App.init);
  })(jQuery);

}).call(this);


//# sourceMappingURL=main-refactored-class.js.map
