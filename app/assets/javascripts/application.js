//= require jquery3
//= require popper
//= require bootstrap
//= require_tree .

$(function() {
  $('#modalAlertAntifraud').modal('show');
  $('#modal-cookies button').on('click', function() {
    $('#modal-cookies').hide();
  });
});
