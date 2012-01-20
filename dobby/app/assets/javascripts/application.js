// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui-1.8.17.custom.min
//= require jquery.timeentry.js
//= require_tree .

$(document).ready(function () {
  $("div#errorExplanation").addClass('ui-state-error p'); 
  $rows = $('.field_with_errors').closest('tr');
  $rows.find('td').css({'border': '1px solid red', 'border-left': 'none', 'border-right': 'none'}); 
  $rows.find('td:first-child').css('border-left', '1px solid red'); 
  $rows.find('td:last-child').css('border-right', '1px solid red');
  $(".datepicker").datepicker({
    showOn: "button",
    butonImageOnly: true,
    dateFormat: "yy-mm-dd",
    onSelect: function(dateText, inst) {
      if( $(this).attr("id") == $(".datepicker").first().attr("id")) {
	$(".datepicker").each(function(index) {
	  if( index < 15)
	    $(this).val($(".datepicker").first().val());
	});
      }
    }
  });
  $(".timepicker").timeEntry();
}); 
