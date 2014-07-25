(function($) {

  scrivito.on('load', function() {
    return $('body').on('click', '.button-picker', function(event) {
      var cmsField = $(this);

      cmsField.addClass('selected');
      cmsField.siblings().removeClass('selected');

      text = $.trim(cmsField.text());

      return cmsField.scrivito('save', text);
    });
  });

})(jQuery);