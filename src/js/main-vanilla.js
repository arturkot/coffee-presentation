(function ($) {
  var App = {
    $container: $('.js-container'),

    init: function () {
      $.getJSON('data/data.json', function (data) {
        App.buildSections(data);
        App.initLightbox();
        App.initAccordion();
      });
    },

    buildSections: function (data) {
      var markup = '';
      var $container = App.$container;

      if ($container.length === 0) { return; }

      $.each(data, function (title, item) {
        markup += '<section class="js-accordion-container my-section is-folded">';
        markup += ' <h2 class="js-accordion-trigger my-section-title">' + title + '</h2>';
        markup += ' <div class="my-section-body">';
        markup += '   <p>' + item.text + '<p>';
        markup += '   <a href="' + item.img + '" class="js-fancybox" rel="group">Open image</a>';
        markup += ' </div>';
        markup += '</section>';
      });

      $container.append(markup);
    },

    initLightbox: function () {
      if (!$.fn.fancybox) { return; }

      $('.js-fancybox').fancybox({
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

    initAccordion: function () {
      $('.js-accordion-trigger').on('click', function () {
        $(this)
          .closest('.js-accordion-container')
          .toggleClass('is-folded');
      });
    }
  };

  $(document).ready(function () {
    App.init();
  });
}(jQuery));
