// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require chosen-jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function(){

inputfun();
placefun();


});


var inputfun = function(){
		$('.select').hide();
	    $('.city-input').click(function(){
    	$('.select').slideToggle(300);
    	$('.city-placehold').animate({"margin-top":"-3px"},80);
    	$('.city-placehold').animate({left: "-34px"},120,function(){
    		$('.city-placehold').css({"color":"#00A78B"},function(){
                $('.city-input').focus();
            });
    	});
    	
	});
}

var placefun=function(){
		$(".city-placehold").click(function(){
    	$(".select").slideDown(300);
    	$(".city-placehold").animate({"margin-top":"-3px"},80);
    		$(".city-placehold").animate({left:"-34px"},120,function(){
    			$(".city-placehold").css({"color":"#00A78B"});
                $('.city-input').focus();
    		});
	});

}






