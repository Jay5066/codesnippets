/**
 * @author JAY CHAND
 */


jQuery( ".isotope-element a " ).click(function() {
    	var url = jQuery(this).attr('href');
    	var link = this;
   jQuery.get(url, function(data){
    	var fullstory = jQuery('#zone-content' , data);
    	var fullstory = fullstory.html(); 
      console.log(fullstory);
   });
    return false;
});





