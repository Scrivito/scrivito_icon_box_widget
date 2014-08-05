(function($, app) {
  'use strict';

  $(function() {

    app.buttonPickerEditor = {
      // set selector for Editor
      selector: '.button-picker',
      
      // Function that will be called on scrvito load
      initFunction: function(index, elem) {},
      
      // set function triggert on click
      clickFunction: function(event) {
        var cmsField = $(this);
        var text = cmsField.data('picker-content');

        cmsField.addClass('selected');
        cmsField.siblings().removeClass('selected');

        return cmsField.scrivito('save', text);
      },
    };

    // Set click event
    scrivito.on('load', function() {
      return $('body').on('click', buttonPickerEditor.selector, function(event) {
        buttonPickerEditor.clickFunction.bind(event)
      });
    });
  });

})(jQuery, this);