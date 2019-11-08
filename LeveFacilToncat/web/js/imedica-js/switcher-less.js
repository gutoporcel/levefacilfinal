
/* ==============================================
Style Switcher
=============================================== */

$(document).ready(function(){


   $(function(){
    $(document).on('click','.settings_link.showup',function(){
        $( ".settings_link, .colors" ).animate({
          left: "+=165"
          }, 700, function() {
            // Animation complete.
          });
          $(this).html('<i class="fa fa-cog"></i>').removeClass('showup').addClass('hidedowm');
    });
    
    $(document).on('click','.settings_link.hidedowm',function(){
        $( ".settings_link, .colors" ).animate({
          left: "-=165"
          }, 700, function() {
            // Animation complete.
          });
          $(this).html('<i class="fa fa-cog"></i>').removeClass('hidedowm').addClass('showup');
    });
});


   $('.color-switch').click(function(){
        $('.colors ul li a').removeClass('selected');
        $(this).addClass('selected');
        var title = jQuery(this).attr('title');     
        jQuery('#style-switch').attr('href', 'css/' + title + '.css');                
        return false;
    }); 


});