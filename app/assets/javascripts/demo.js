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

  $( function() {
    $( ".certification_title" ).autocomplete({
      source: function( request, response ) {
        $.ajax({
          url: "/certifications/search/1",
          dataType: "jsonp",
          data: {
            query: request.term
          },
          success: function( data ) {
            console.log(data);
            if (data === undefined || data.length == 0) {
                $('#cert_id').val('');
            }
          response( data );

          }
        });
      },
      minLength: 2,
      select: function(event, ui) {
          $('#cert_id').val(ui.item.id);
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

}
$(document).on('turbolinks:load', fireThisUponEvent)
$(document).ready(fireThisUponEvent);
$(document).on("focus", ".exhibition_title",  fireThisUponEvent)
$(document).on("focus", ".certification_title",  fireThisUponEvent)
