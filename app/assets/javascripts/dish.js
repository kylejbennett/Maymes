$(document).ready(function(){

	$(".cater").hide();
	$(".restaurant").css("background-color", "lightgray");

	$(".catering").click(function(){
		$(".cafe").hide();
		$(".cater").show();
		$(".catering").css("background-color", "lightgray");
		$(".restaurant").css("background-color", "white");
	});

	$(".restaurant").click(function(){
		$(".cater").hide();
		$(".cafe").show();
		$(".restaurant").css("background-color", "lightgray");
		$(".catering").css("background-color", "white");
	});

});

$(document).on('page:load', function(event) {

	$(".cater").hide();
	$(".restaurant").css("background-color", "lightgray");

	$(".catering").click(function(){
		$(".cafe").hide();
		$(".cater").show();
		$(".catering").css("background-color", "lightgray");
		$(".restaurant").css("background-color", "white");
	});

	$(".restaurant").click(function(){
		$(".cater").hide();
		$(".cafe").show();
		$(".restaurant").css("background-color", "lightgray");
		$(".catering").css("background-color", "white");
	});

});
