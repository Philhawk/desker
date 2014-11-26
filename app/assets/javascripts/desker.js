// $( document ).ready(function() {
//   // var navOffset = $("#index_search_bar").position().top;
//   // console.log(navOffset);

//   $('.open').on('click', function () {
//     $('#dropdown img').fadeIn();
//     $('#dropdown a').hide();
//     });
//   $('#dropdown img').on('click', function () {
//     $('#dropdown img').hide();
//     $('#dropdown a').show();
//   });

//   var wrap = $("#index_search_bar");

//   wrap.on("scroll", function(e) {   
//     if (this.scrollTop > 147) {
//       wrap.addClass("fix-search");
//     } else {
//       wrap.removeClass("fix-search");
//   }


// });

$(document).ready(function() {
  var navOffset = $(window).height() - $("#index_search_bar").height();

  $(window).resize(function () {
    var navOffset = $(window).height() - $("#index_search_bar").height(); 
  });

  $(window).scroll(function () {
    var scrollTop = $(window).scrollTop();
    console.log(scrollTop);
    if ( scrollTop < navOffset ) {
      $("#index_search_bar").css({
        position: "absolute",
        top: $(window).height() - $("#index_search_bar").height(),
        left: "0"
      });
    } else {
      $("#index_search_bar").css({
        position: "fixed",
        top: "0",
        left: "0"
      });
    }

  });


  $(".double_down_arrow").on('click',function(){
    $("body").animate({ scrollTop: "+=" + $(window).height() }, 500);
  });


});