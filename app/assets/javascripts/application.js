//= require jquery3
//= require popper
//= require bootstrap
//= require jquery.ui.widget
//= require tmpl.min
//= require load-image.all.min
//= require canvas-to-blob.min
//= require jquery.blueimp-gallery.min
//= require jquery.iframe-transport
//= require jquery.fileupload
//= require jquery.fileupload-process
//= require jquery.fileupload-image
//= require jquery.fileupload-audio
//= require jquery.fileupload-video
//= require jquery.fileupload-validate
//= require jquery.fileupload-ui
//= require_tree .

$(function() {
  $('#modalAlertAntifraud').modal('show');
  $('#modal-cookies button').on('click', function() {
    $('#modal-cookies').hide();
  });

  // Initialize the jQuery File Upload widget:
  $('#fileupload').fileupload({
    // Uncomment the following to send cross-domain cookies:
    //xhrFields: {withCredentials: true},
    url: 'pictures'
  });

  // Enable iframe cross-domain access via redirect option:
  $('#fileupload').fileupload(
    'option',
    'redirect',
    window.location.href.replace(/\/[^/]*$/, '/cors/result.html?%s')
  );

  // Load existing files:
  $('#fileupload').addClass('fileupload-processing');
  $.ajax({
    // Uncomment the following to send cross-domain cookies:
    //xhrFields: {withCredentials: true},
    url: $('#fileupload').fileupload('option', 'url'),
    dataType: 'json',
    context: $('#fileupload')[0]
  })
    .always(function () {
      $(this).removeClass('fileupload-processing');
    })
    .done(function (result) {
      $(this)
        .fileupload('option', 'done')
        // eslint-disable-next-line new-cap
        .call(this, $.Event('done'), { result: result });
    });
});
