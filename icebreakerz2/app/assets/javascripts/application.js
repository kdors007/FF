// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require_tree .

$(document).ready(function() {
	
	// $('#wyr_go').hide();
	// $('#nhie_go').hide();
	// $('.clear-comment').hide();	
	// $('#nhie_post').hide();

	// if(sessionStorage.getItem("Show") == "true") {
	// 	$('.clear').hide();
	// 	$('#wyr_go').hide();
	// 	$('.clear-comment').show();
	// }

	// if(sessionStorage.getItem("Show") == "truthy") {
	// 	$('.clear').hide();
	// 	$('#nhie_go').hide();
	// 	$('#nhie_post').show();
	// }

	// if(sessionStorage.getItem("Show") == "false") {
	// 	$('.clear').show();
	// 	// $('#wyr_go').hide();
	// 	// $('.clear-comment').hide();
	// }


	$( "#clr" ).click(function() {
		sessionStorage.setItem("Show", "true");
		$('.clear').hide();
		$('#wyr_go').show();
	});

	$( "#nhie" ).click(function() {
		sessionStorage.setItem("Show", "truthy");
		$('.clear').hide();
		$('#nhie_go').show();
	});

	$( "#rand-q" ).click(function() {
		$('.clear-comment').show();
		$('#wyr_go').hide();
	});

	$( "#random" ).click(function() {
		$('#nhie_go').hide();
		$('#nhie_post').show();
	});

	$( "#new_ques" ).click(function() {
		$('#change_ques').remove();
		location.reload();
	});

	$( "#new_nhie" ).click(function() {
		$('#change_nhie').remove();
		location.reload();
	});

	$( "#home" ).click(function() {
		sessionStorage.setItem("Show", "false");
		$('.clear-comment').hide();
		$('.clear').show();
		});

	$( "#home-nhie" ).click(function() {
		sessionStorage.setItem("Show", "false");
		$('#nhie_post').hide();
		$('.clear').show();
		});
});
