$(document).ready(function(){

	$(".fa-check-circle").hide();
	$(".cater").hide();
	$(".restaurant").css("border", "2px solid lightgray");
	$(".catering").css("border", "2px solid white");

	$(".catering").click(function(){
		$(".cafe").hide();
		$(".cater").show();
		$(".catering").css("border", "2px solid lightgray");
		$(".restaurant").css("border", "2px solid white");
	});

	$(".restaurant").click(function(){
		$(".cater").hide();
		$(".cafe").show();
		$(".restaurant").css("border", "2px solid lightgray");
		$(".catering").css("border", "2px solid white");
	});

	$(".deactivation").on("ajax:complete", function(event){   
		$(event.currentTarget).hide();
		$(event.currentTarget).next().show(); 
	});

	$(".activation").on("ajax:complete", function(event){   
		$(event.currentTarget).hide();
		$(event.currentTarget).next().show(); 
	});

});

$(document).on('page:load', function(event) {

	$(".fa-check-circle").hide();
	$(".cater").hide();
	$(".restaurant").css("border", "2px solid lightgray");
	$(".catering").css("border", "2px solid white");

	$(".catering").click(function(){
		$(".cafe").hide();
		$(".cater").show();
		$(".catering").css("border", "2px solid lightgray");
		$(".restaurant").css("border", "2px solid white");
	});

	$(".restaurant").click(function(){
		$(".cater").hide();
		$(".cafe").show();
		$(".restaurant").css("border", "2px solid lightgray");
		$(".catering").css("border", "2px solid white");
	});

	$(".deactivation").on("ajax:complete", function(event){   
		$(event.currentTarget).hide();
		$(event.currentTarget).next().show(); 
	});

	$(".activation").on("ajax:complete", function(event){   
		$(event.currentTarget).hide();
		$(event.currentTarget).next().show(); 
	});

});
