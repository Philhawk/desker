$( document ).ready(function() {
  $('.open').on('click', function () {
    $('#dropdown img').fadeIn();
    $('#dropdown a').hide();
    });
  $('#dropdown img').on('click', function () {
    $('#dropdown img').hide();
    $('#dropdown a').show();
  });
});