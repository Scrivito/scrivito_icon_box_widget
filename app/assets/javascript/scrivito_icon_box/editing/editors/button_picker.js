(function($) {
  'use strict';

  $(function() {
    scrivito.on('load', function() {
      return $('body').on('click', '.button-picker', function(event) {
        var cmsField = $(this);
        var text = cmsField.data('picker-content');

        cmsField.addClass('selected');
        cmsField.siblings().removeClass('selected');

        return cmsField.scrivito('save', text);
      });
    });
  });

})(jQuery);