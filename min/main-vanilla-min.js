!function($){var n={$container:$(".js-container"),init:function(){$.getJSON("data.json",function(i){n.buildSections(i),n.initLightbox(),n.initAccordion()})},buildSections:function(i){var o="",c=n.$container;0!==c.length&&($.each(i,function(n,i){o+='<section class="js-accordion-container my-section is-folded">',o+=' <h2 class="js-accordion-trigger my-section-title">'+n+"</h2>",o+=' <div class="my-section-body">',o+="   <p>"+i.text+"<p>",o+='   <a href="'+i.img+'" class="js-fancybox" rel="group">Open image</a>',o+=" </div>",o+="</section>"}),c.append(o))},initLightbox:function(){$.fn.fancybox&&$(".js-fancybox").fancybox({padding:0,helpers:{overlay:{css:{background:"rgba(37, 147, 206, 0.95)"}}}})},initAccordion:function(){$(".js-accordion-trigger").on("click",function(){$(this).closest(".js-accordion-container").toggleClass("is-folded")})}};$(document).ready(function(){n.init()})}(jQuery);