// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(function(){
	$(".btnt").hover(function() {
  $('.btnt').stop(true).css({"background-color":"#00A78B"});
}, function() {
  $('.btnt').stop(true).css({"background-color":"#747272"});
});
});

$(window).scroll(function(){
	var wScroll = $(this).scrollTop();
	//console.log(wScroll);

	$('#parTitle').css({"width":""+(650-wScroll*3)-70+"px"});//421
	$('#parTitle').css({"margin-top":"-"+(140-wScroll-34)+"px"});//-53px
	$('#parTitle').css({"top":""+(50+wScroll/13)+"%"});//200px
	$('#parTitle').css({"margin-left":"-"+(325-wScroll)+"px"});//-325px
	$('header').css({"height":""+(400-wScroll*2)+"px"});//400px
	$('#parBack').css({"opacity":""+(1-wScroll/100)+""});
	$('#parSearchCriteria').css({"opacity":""+(1-wScroll/100)+""});	
	


});


// or:
//$('#main').stellar();