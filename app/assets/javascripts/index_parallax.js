
$(document).ready(function(){

var $window = $(window); //You forgot this line in the above example

$('section[data-type="background"]').each(function(){
var $bgobj = $(this); // assigning the object
$(window).scroll(function() {

var yPos = -($window.scrollTop() / $bgobj.data('speed'));
// Put together our final background position
var coords = '50% '+ yPos + 'px';
// Move the background
$bgobj.css({ backgroundPosition: coords });
});
});

$(window).scroll(function(){
	var a = $(this).scrollTop();
	//console.log(a);
	if(a>=1283 && a<=1599){$('#map-row-article').fadeIn(600);}
	else{$('#map-row-article').fadeOut(600);}
	if(a>=2040 && a<=2612){$('#wedding-planner-article').fadeIn(600);}
	else{$('#wedding-planner-article').fadeOut(600);}
	if(a>=3400 && a<=3605){$('#catering-row-article').fadeIn(600);}
	else{$('#catering-row-article').fadeOut(600);}
	if(a>=4400 && a<=4605){$('#joinus-row-article').fadeIn(600);}
	else{$('#joinus-row-article').fadeOut(600);}
});

});
