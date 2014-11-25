$( document ).ready(function() {
  $('.open').on('click', function () {
    $('#dropdown img').fadeIn();
    $('#dropdown a').hide();
    });
  $('#dropdown img').on('click', function () {
    $('#dropdown img').hide();
    $('#dropdown a').show();
  });

  var wrap = $("#index_search_bar");

  wrap.on("scroll", function(e) {   
    if (this.scrollTop > 147) {
      wrap.addClass("fix-search");
    } else {
      wrap.removeClass("fix-search");
  }
});