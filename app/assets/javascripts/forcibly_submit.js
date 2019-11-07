$(document).on("turbolinks:load", function(){
  if (location.href.match("/[a-zA-Z0-9_]+/lost$")){
    document.forms[0].submit();
  }
})