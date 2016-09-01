// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() {

  $(".activity-item").each(function(){
    var duration = $(this).data("duration");
    if (duration > 20) {

    $(this).css({
      'height' : duration + 'px'
    }, 100);
    }
    // $(this).parent().parent().find("h3").delay(650).fadeIn(650);
  });


  window.item_number = 0;
  window.increment_items = function (){
    window.item_number = window.item_number+1;
  }
  window.decrement_items = function (){
    window.item_number = window.item_number-1;
  }

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
      window.decrement_items();
      $('.time-field-'+window.item_number).addClass('hidden');
    }
  });

  $("#container2").droppable({
    drop: function(event, ui) {
      var itemid = $(event.originalEvent.toElement).  attr("itemid");
      $('.box-item').each(function() {
        if ($(this).attr("itemid") === itemid) {
          $(this).appendTo("#container2");
        }
      });
      $('.time-field-'+window.item_number).removeClass('hidden');
      window.increment_items();
    }
  });
});
