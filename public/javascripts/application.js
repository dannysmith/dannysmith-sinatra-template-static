$(document).ready(function(){
  
  //Replace ampersands in headers
  $(":header:contains('&')").each(function(){
    $(this).html($(this).html().replace(/&amp;/, "<span class='ampersand'>&amp;</span>"));
  });
    
    
});