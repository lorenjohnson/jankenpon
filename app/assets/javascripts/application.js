//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready(function() {
  $('.option_links img').on('click', function(e) {
    $('#round_user_move').val($(e.target).prop("title"));
    $(e.target).parents("form").submit();
  })
})