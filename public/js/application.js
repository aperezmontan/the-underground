$(document).ready(function(){
  $('#hide-users').on('click', toggleUser);
  $('#show-users').on('click', toggleUserOn);
  $('#show-users').hide();


  $(document).on('mousemove',function(e){ console.log(e)}) 

});

var toggleUser = function(e){
  e.preventDefault();
  $('.user').animate({opacity: 0},5000);
  $(e.target).toggle();
  $('#show-users').toggle();
};

var toggleUserOn = function(e){
  e.preventDefault();
  $(e.target).toggle();
  $('.user').animate({opacity: 100},5000);
  $('#hide-users').toggle();
};


