(function($) {

  scrivito.on('load', function() {
    return $('body').on('click', '.button-picker', function(event) {
      var cmsField = $(this);

      cmsField.addClass('selected');
      cmsField.siblings().removeClass('selected');

      text = cmsField.data('picker-content');

      return cmsField.scrivito('save', text);
    });
  });

})(jQuery);