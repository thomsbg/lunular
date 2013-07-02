$(function() {
  $('form').on('submit', function(e) {
    e.preventDefault();

    $.getJSON('/evaluate', $(this).serialize(), function(data) {
      $('body').append(data.highlighted);
    });
  });
});
