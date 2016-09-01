// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() {

  $(".activity-item").each(function(){
    var duration = $(this).data("duration");
    console.log(duration)
    if (duration > 20) {

    $(this).css({
      'height' : duration + 'px'
    }, 100);
    }
    // $(this).parent().parent().find("h3").delay(650).fadeIn(650);
  });


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
    }
  });

  $("#container2").droppable({
    drop: function(event, ui) {
      var itemid = $(event.originalEvent.toElement).attr("itemid");
      $('.box-item').each(function() {
        if ($(this).attr("itemid") === itemid) {
          $(this).appendTo("#container2");
        }
      });
    }
  });

});


