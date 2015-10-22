$(document).ready(function(){


 var email_regx = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
 var name_regx = /^[a-z ,.'-]+$/i;

$('#user_email').focusout(function(){
  if($(this).val()==""){$('.devise-btn-sign-up').prop('disabled',true);}else{$('.devise-btn-sign-up').prop('disabled',false);}
  var a = $('#user_email').val();
  if(email_regx.test(a)){$('#user_email').removeClass("invalid").addClass("valid");}
  else{$('#user_email').removeClass("valid").addClass("invalid");}
});

$('#user_email').on('input',function(e){
     var a = $('#user_email').val();
  if(email_regx.test(a)){$('#user_email').removeClass("invalid").addClass("valid");}
  else{$('#user_email').removeClass("valid").addClass("invalid");}
    });

/*============ NAME =============*/

$('#user_name').focusout(function(){
  var a = $('#user_name').val();
  if($(this).val()==""){$('.devise-btn-sign-up').prop('disabled',true);}else{$('.devise-btn-sign-up').prop('disabled',false);}
  if(name_regx.test(a)){$('#user_name').removeClass("invalid").addClass("valid");}
  else{$('#user_name').removeClass("valid").addClass("invalid");}
});

$('#user_name').on('input',function(e){
     var a = $('#user_name').val();
  if(name_regx.test(a)){$('#user_name').removeClass("invalid").addClass("valid");}
  else{$('#user_name').removeClass("valid").addClass("invalid");}
    });

/*============ Password =============*/

$('#user_password').on('input',function(e){
     var a = $('#user_password').val();
     if($(this).val()==""){$('.devise-btn-sign-up').prop('disabled',true);}else{$('.devise-btn-sign-up').prop('disabled',false);}
  if(a.length>=8){$('#user_password').removeClass("invalid").addClass("valid");}
  else{$('#user_password').removeClass("valid").addClass("invalid");}
    });

$('#user_password_confirmation').on('input',function(e){
     var a = $('#user_password').val();
     if($(this).val()==""){$('.devise-btn-sign-up').prop('disabled',true);}else{$('.devise-btn-sign-up').prop('disabled',false);}
     var c = $('#user_password_confirmation').val();
 	if(a==c){$('#user_password_confirmation').removeClass("invalid").addClass("valid");
 		$('#pw-conf').css({"color":"#5FCF80"});}
  	else{$('#user_password_confirmation').removeClass("valid").addClass("invalid");
  		$('#pw-conf').css({"color":"#333333"});}
    });


//if($(this).val()==""){$('.devise-btn-sign-up').prop('disabled',true);}else{$('.devise-btn-sign-up').prop('disabled',false);}
});
  