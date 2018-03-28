$(document).ready(function(){
  $("#min").click(function(){
    $("#ministiedd").toggle();
    $("#bookshopdb").hide();
    console.log("it is working");
  });
  $("#mins").click(function(){
    $("#bookshopdb").toggle();
    $("#ministiedd").hide();
  });
});
