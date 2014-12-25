$( document ).ready(function() {
  $( '#js-sortable-blocks' ).sortable({
    axis: 'y',
    items: '.js-email-block',
    cursor: 'move',

    update: function() {
      $('.js-block-position').each(function(index) {
          $(this).val(index);
      });
    }

  });

});
