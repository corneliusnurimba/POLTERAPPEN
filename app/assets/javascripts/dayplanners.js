// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() {
  var item_number = 0;
  $(function () {
      $('#datetimepicker3').datetimepicker({
          format: 'L'
      });
  });

  $('.box-item').draggable({
      cursor: 'move',
      helper: "clone"
  });

  $("#container1").droppable({
    drop: function(event, ui) {
      var itemid = $(event.originalEvent.toElement).attr("itemid");
      $('.box-item').each(function() {
        if ($(this).attr("itemid") === itemid) {
          $(this).appendTo("#container1");
        }
      });
      $('.time-field-'+item_number).addClass('hidden');
      item_number = item_number-1;
    }
  });

  $("#container2").droppable({
    drop: function(event, ui) {
      var itemid = $(event.originalEvent.toElement).`attr("itemid");
      $('.box-item').each(function() {
        if ($(this).attr("itemid") === itemid) {
          $(this).appendTo("#container2"); 
        }
      });
      $('.time-field-'+item_number).removeClass('hidden');
      item_number = item_number+1;
    }
  });
});
