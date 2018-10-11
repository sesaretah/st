function fireThisUponEvent(event) {
  $( function() {
    $( ".exhibition_title" ).autocomplete({
      source: function( request, response ) {
        $.ajax({
          url: "/exhibitions/search/1",
          dataType: "jsonp",
          data: {
            query: request.term
          },
          success: function( data ) {
            response( data );
          }
        });
      },
      minLength: 2,
      select: function(event, ui) {
        $('#exhibition_id').val(ui.item.id);
      }
    });
  });
  $.extend($.ui.autocomplete.prototype.options, {
  open: function(event, ui) {
   $(this).autocomplete("widget").css({
           "width": ($(this).width()+ 25 + "px")
       });
   }
  });

  jQuery(function($) {
    var input = $('.exhibition_title');
    input.on('keydown', function() {
      var key = event.keyCode || event.charCode;
      if( key == 8 || key == 46 )

        $('#exhibition_id').val('');
    });
  });
}
$(document).on('turbolinks:load', fireThisUponEvent)
$(document).ready(fireThisUponEvent);
$(document).on("focus", ".exhibition_title",  fireThisUponEvent)
