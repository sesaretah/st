$(document).on('turbolinks:load', function() {
  $( function() {
    $( "#autocomplete" ).autocomplete({
      source: function( request, response ) {
        $.ajax({
          url: "/exhibitions/search/1",
          dataType: "jsonp",
          data: {
            query: request.term
          },
          success: function( data ) {
            console.log(data);
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
    var input = $('#autocomplete');
    input.on('keydown', function() {
      var key = event.keyCode || event.charCode;
      console.log(key);
      if( key == 8 || key == 46 )

        $('#exhibition_id').val('');
    });
  });
})
