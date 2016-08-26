// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() {

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


// test

$(function() {

  var dragOption = {
      delay: 10,
      distance: 5,
      opacity: 0.45,
      revert: "invalid",
      revertDuration: 100,
      start: function(event, ui) {
        $(".ui-selected").each(function() {
          $(this).data("original", $(this).position());
        });
      },
      drag: function(event, ui) {
        var offset = ui.position;
        $(".ui-selected").not(this).each(function() {
          var current = $(this).offset(),
            targetLeft = document.elementFromPoint(current.left - 1, current.top),
            targetRight = document.elementFromPoint(current.left + $(this).width() + 1, current.top);
          $(this).css({
            position: "relative",
            left: offset.left,
            top: offset.top
          }).data("target", $.unique([targetLeft, targetRight]));
        });
      },
      stop: function(event, ui) {
        $(".ui-selected").not(this).each(function() {
          var $target = $($(this).data("target")).filter(function(i, elm) {
            return $(this).is(".slot") && !$(this).has(".item").length;
          });
          if ($target.length) {
            $target.append($(this).css({
              top: 0,
              left: 0
            }))
          } else {
            $(this).animate({
              top: 0,
              left: 0
            }, "slow");
          }

        });
        $(".ui-selected").data("original", null)
          .data("target", null)
          .removeClass("ui-selected");
      }
    },
    dropOption = {
      accept: '.item',
      activeClass: "green3",
      drop: function(event, ui) {
        if ($(this).is(".slot") && !$(this).has(".item").length) {
          $(this).append(ui.draggable.css({
            top: 0,
            left: 0
          }));
        } else {
          ui.draggable.animate({
            top: 0,
            left: 0
          }, 50);
        }
      }
    }

  $(".box").selectable({
    filter: ".item",
    start: function(event, ui) {
      $(".ui-draggable").draggable("destroy");
    },
    stop: function(event, ui) {
      $(".ui-selected").draggable(dragOption)
    }
  });
  $(".slot").droppable(dropOption);
});
