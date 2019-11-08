
/* ==============================================
Imedica Custom JS
=============================================== */  



/* ==============================================
Onload start from top
=============================================== */
	$(document).ready(function(){
        $('html').animate({scrollTop:0}, 1);
        $('body').animate({scrollTop:0}, 1);
    });
	$(window).on('load',function() {setTimeout(function () { $('html,body').scrollTop(0) },0); });
	
           

/* ==============================================
Home page Accordion
=============================================== */
  $(function() {
      
      $( ".imedica-dep-accordion" ).accordion({
          heightStyle: "content",
          autoHeight: false,
          clearStyle: true,   
      });
      
  });


/* ==============================================
Tabs Collapse on Mobile and Tablet
=============================================== */

  $('#myTab').tabCollapse();

          
/* ==============================================
Blog Page Accordion
=============================================== */
  $(function() {
      
      $( "#accordion-blog" ).accordion({
          heightStyle: "content",
          autoHeight: false,
          clearStyle: true,   
      });
      
  });
            

  /*acc 2 */
  $(function() {
      
      $( "#accordion-blog2" ).accordion({
          heightStyle: "content",
          autoHeight: false,
          clearStyle: true,   
      });
      
  });
            
            
  /*acc 2 */
  $(function() {
      
      $( "#accordion2" ).accordion({
          heightStyle: "content",
            
      });
      
  });
            
/* ==============================================
Page Element Accordian
=============================================== */
  $(function() {
      
      $( "#accordion" ).accordion({
          heightStyle: "content",
          autoHeight: false,
          clearStyle: true,   
      });
      
  });
/* ==============================================
Scroll Up
=============================================== */

  $(function () {
  $.scrollUp({
      scrollName: 'scrollUp', // Element ID
      scrollDistance: 300, // Distance from top/bottom before showing element (px)
      scrollFrom: 'top', // 'top' or 'bottom'
      scrollSpeed: 300, // Speed back to top (ms)
      easingType: 'linear', // Scroll to top easing (see http://easings.net/)
      animation: 'fade', // Fade, slide, none
      animationInSpeed: 200, // Animation in speed (ms)
      animationOutSpeed: 200, // Animation out speed (ms)
      scrollText: 'Scroll to top', // Text for element, can contain HTML
      scrollTitle: false, // Set a custom <a> title if required. Defaults to scrollText
      scrollImg: false, // Set true to use image
      activeOverlay: false, // Set CSS color to display scrollUp active point, e.g '#00FFFF'
      zIndex: 2147483647 // Z-Index for the overlay
  });
});

            
            
/* ==============================================
Accordion item all close and open
=============================================== */
            
  $(function() {
      var icons = {
          header: "ui-icon-circle-arrow-e",
          headerSelected: "ui-icon-circle-arrow-s"
      };
      $( ".imedica-dep-accordion" ).accordion({
          icons: icons,
          collapsible: true
      });
      $( "#toggle" ).button().toggle(function() {
          $( ".imedica-dep-accordion" ).accordion( "option", "icons", false );
      }, function() {
          $( ".imedica-dep-accordion" ).accordion( "option", "icons", icons );
      });
  });
            



/* ==============================================
Sticky Header
=============================================== */
    
  $(function(){
      $('#headerstic').data('size','big');
  });
  
  $(window).scroll(function(){
      if($(document).scrollTop() > 0)
      {
          if($('#headerstic').data('size') == 'big')
          {
              $('#headerstic').data('size','small');
              
              $('#headerstic .navbar').stop().animate({
                  height: '125px'
              },200);
              
              $('#headerstic').css('box-shadow', '4px 5px 6px -4px #ccc');
              
              $('#headerstic .logo').stop().animate({
                  margin: '10px 0 10px 0'
                  
              },200);
              
              $('#headerstic .nav>li>a').stop().animate({
                  padding: '20px 15px 20px 15px'
                  
              },200);
              
              $('#headerstic .logo').stop().animate({
                  width: '140px'
              },200);
              
              $('#headerstic').addClass('tiny-nav');
          }
      }
      else
      {
      
          
          if($('#headerstic').data('size') == 'small')
          {
              $('#headerstic').data('size','big');

              $('#headerstic .logo').stop().animate({
                  width: '140px'
              },200);
              
              $('#headerstic').css('box-shadow', 'none');
              
              $('#headerstic .navbar').animate({
                  
              },1);
              
              $('#headerstic .logo').stop().animate({
                  margin: '10px 0 10px 0'
                  
              },200);
              
              $('#headerstic .nav>li>a').animate({
                  padding: '20px 15px 20px 15px'
                  
              },200);
              
              $('#headerstic').removeClass('tiny-nav');
              
              
          }  
      }
      
  });
            
              
  /*sticky header*/
  $(window).load(function(){
    $("#headerstic").sticky({ topSpacing: 0 });
  });
          

/* ==============================================
Smooth Scroll
=============================================== */

  /*$(document).ready(  function() {     $("html").niceScroll();  });*/


/* ==============================================
Navbar Buttons
=============================================== */

  $('.navbar-header button').click(function(){ 
            var $target = $($(this).data('target')); 
            if(!$target.hasClass('in'))
                $('.container .in').removeClass('in').height(0);
        });



          

/* ==============================================
Revolution Slider
=============================================== */
 
   jQuery(document).ready(function() {
      jQuery('.banner').revolution({
         delay:3500,
         startwidth:1170,
         startheight:440,
         autoHeight:"off",
         fullScreenAlignForce:"off",
 
         onHoverStop:"on",
 
         thumbWidth:100,
         thumbHeight:50,
         thumbAmount:3,
 
         hideThumbsOnMobile:"off",
         hideBulletsOnMobile:"off",
         hideArrowsOnMobile:"off",
         hideThumbsUnderResoluition:0,
 
         hideThumbs:0,
 
         navigationType:"",
         navigationArrows:"solo",
         navigationStyle:"round",
 
         navigationHAlign:"center",
         navigationVAlign:"bottom",
         navigationHOffset:30,
         navigationVOffset:30,
 
         soloArrowLeftHalign:"left",
         soloArrowLeftValign:"center",
         soloArrowLeftHOffset:20,
         soloArrowLeftVOffset:0,
 
         soloArrowRightHalign:"right",
         soloArrowRightValign:"center",
         soloArrowRightHOffset:20,
         soloArrowRightVOffset:0,
 
 
         touchenabled:"on",
 
         stopAtSlide:-1,
         stopAfterLoops:-1,
         hideCaptionAtLimit:0,
         hideAllCaptionAtLilmit:0,
         hideSliderAtLimit:0,

         parallax:"mouse",
         parallaxBgFreeze:"on",
         parallaxLevels:[2,1],
         parallaxDisableOnMobile:"off",
 
         dottedOverlay:"none",
 
         fullWidth:"off",
         forceFullWidth:"off",
         fullScreen:"off",
         fullScreenOffsetContainer:"#topheader-to-offset",
 
         shadow:0
 
      });
 
   });
 


/* ==============================================
Search on enter key
=============================================== */
          
  $('#hidden-search').bind("enterKey",function(e){
      $.ajax({
         url: '../search.html',
         success: function(data) {
            //this is the redirect
            document.location.href='search.html';
         }
      });
  });
  $('#hidden-search').keyup(function(e){
  if(e.keyCode == 13)
  {
    $(this).trigger("enterKey");
  }
  });
          

/* ==============================================
Tooltip
=============================================== */

  $(document).ready(function() {
              $('#face-head').tooltip();
              $('#tweet-head').tooltip();
              $('#link-head').tooltip();
              $('#gplus-head').tooltip();
              $('#rss-head').tooltip();
              
              $('#face-foot').tooltip();
              $('#tweet-foot').tooltip();
              $('#link-foot').tooltip();
              $('#gplus-foot').tooltip();
              $('#rss-foot').tooltip();

              $('#client-logo1').tooltip();
              $('#client-logo2').tooltip();
              $('#client-logo3').tooltip();
              $('#client-logo4').tooltip();
              $('#client-logo5').tooltip();
              $('#client-logo6').tooltip();
          });

  /*Tool tip typography*/

  $('.tool-top').tooltip();
  $('.tool-left').tooltip();
  $('.tool-bottom').tooltip();
  $('.tool-right').tooltip();


/* ==============================================
Adding Active class to nav
=============================================== */
	
    $(document).ready(function () {
        var url = window.location;
        $('ul.nav a[href="'+ url +'"]').parent().addClass('active');
        $('ul.nav a').filter(function() {
             return this.href == url;
        }).parent().addClass('active');
    });



    
    
/* ==============================================
Submit Button
=============================================== */
			var buttons7Click = Array.prototype.slice.call( document.querySelectorAll( '#btn-click button' ) );			
			buttons7Click.forEach( function( el, i ) { el.addEventListener( 'click', activate, false ); } );
			function activate() {
				var self = this, activatedClass = 'btn-activated';

				if( !classie.has( this, activatedClass ) ) {
					classie.add( this, activatedClass );
					setTimeout( function() { classie.remove( self, activatedClass ) }, 1000 );
				}
			}	


        
/* ==============================================
Counter JS
=============================================== */
    
    // set countUp options
    var options = {
        useEasing : false, // toggle easing
        useGrouping : true, // 1,000,000 vs 1000000
        separator : ',', // character to use as a separator
        decimal : '.', // character to use as a decimal
    }
    var useOnComplete = true;
    var useEasing = true;
    var useGrouping = true;
    

	 
   

        $('.counter-style').appear(function(){

        var demo = new countUp('myTargetElement', 0, 250, 0, 4, options);
        demo.start();
    	});
	
	
	
	$(document).ready(function(){

        $('.counter-style').appear(function(){

        var demo = new countUp('myTargetElement2', 0, 300, 0, 4, options);
        demo.start();
    	});
	
	});
	
	$(document).ready(function(){

        $('.counter-style').appear(function(){

        var demo = new countUp('myTargetElement3', 0, 350, 0, 4, options);
        demo.start();
    	});
	
	});
	
	$(document).ready(function(){

        $('.counter-style').appear(function(){

        var demo = new countUp('myTargetElement4', 0, 400, 0, 4, options);
        demo.start();
    	});
	
	});
/*Counter Js End*/
	
	
	  
    
/* ==============================================
Client Logo Testimonial
=============================================== */
    
    $("#testi-client-logos").flexisel({
        visibleItems: 6,
        animationSpeed: 500,
        autoPlay: false,
        autoPlaySpeed: 3000,            
        pauseOnHover: true,
        enableResponsiveBreakpoints: true,
        responsiveBreakpoints: { 
            portrait: { 
                changePoint:320,
                visibleItems: 1
            }, 
            landscape: { 
                changePoint:640,
                visibleItems: 3
            },
            tablet: { 
                changePoint:768,
                visibleItems: 4
            }
        }
    });
    
/*Client logo Testimonial page Carousel Js End*/


/*Client logo Home page & about us page Carousel Js*/
    
    $("#clients-carousel").flexisel({
        visibleItems: 6,
        animationSpeed: 300,
        autoPlay: false,
        autoPlaySpeed: 3000,            
        pauseOnHover: true,
        enableResponsiveBreakpoints: true,
        responsiveBreakpoints: { 
            portrait: { 
                changePoint:322,
                visibleItems: 1
            }, 
            landscape: { 
                changePoint:640,
                visibleItems: 2
            },
            tablet: { 
                changePoint:768,
                visibleItems: 4
            }
        }
    });
/*Client logo Home page & about us page Carousel Js End*/


/* ==============================================
Home Page Testimonials
=============================================== */
    $("#home-testimonials").flexisel({
        visibleItems: 4,
        animationSpeed: 500,
        autoPlay: false,
        autoPlaySpeed: 3000,            
        pauseOnHover: true,
        enableResponsiveBreakpoints: true,
        responsiveBreakpoints: { 
            portrait: { 
                changePoint:450,
                visibleItems: 1
            }, 
            landscape: { 
                changePoint:640,
                visibleItems: 2
            },
            tablet: { 
                changePoint:768,
                visibleItems: 3
            }
        }
    });
/*Client Testimonials Home page Carousel Js End*/


/*Client Testimonials Home page Popover Js*/

    	$(document).ready(function(){
			var $first = $('.testi-1');
			show_testimonial_content($first);
		//$('.testi-1')
			$('.testi-one').on('click', function (e) {
		       show_testimonial_content($(this));
		    });
    		//html : true,	
		   /* $('.testi-one').on('click', function (e) {
								
		        $('.testi-one').popover('hide');
				if($(this).hasClass('current-testi'))
				{
					$(this).popover('show');
				}
				$('.testi-one').removeClass('current-testi');
				$(this).addClass('current-testi');
		    });*/

			function show_testimonial_content($testimonial)
			{
				var $wrapper = $testimonial.parents('.client-logo-flexx');
				var $testimonial_content = $wrapper.find('.testimonial-content');
		
				if($testimonial.hasClass('current-testi'))
					return false;
				$('.testi-one').removeClass('current-testi');
				$testimonial.addClass('current-testi');
				var original_title = $testimonial.attr('data-original-title');
				var content = $testimonial.attr('data-content');
				var testi_html = '<div class="arrow" style="left: 0%;"></div><h3 class="popover-title">'+original_title+'</h3><div class="popover-content">'+content+'</div>';
				$testimonial_content.hide();
				$testimonial_content.html(testi_html).fadeIn('slow');
			}
		});



		//$('.testi-1').popover({ container: '.client-logo-flexx', html:'true' });
		//$('.testi-1').popover('show');

/*Client Testimonials Home page Popover Js End*/
    
    

/* ==============================================
Scroll Animation
=============================================== */
  wow = new WOW(
    {
      animateClass: 'animated',
      offset:       100
    }
  );
  wow.init();
    


if ($().appear) {

		if (($.browser.mobile)||($.isiPad)) {
			// disable animation on mobile
			$("body").removeClass("withAnimation");
		} else {

			$('.withAnimation .animated').appear(function () {
				var $this = $(this);
				$this.each(function () {
					$this.addClass('activate');
					$this.addClass($this.data('fx'));
				});
			}, {accX: 50, accY: -150});

		}
	}
    

/*Scroll animation Calling End*/
    
	
/* ==============================================
Home Page Parallax
=============================================== */
    

	$(document).ready(function(){
		//$('#nav').localScroll(800);
		
		//.parallax(xPosition, speedFactor, outerHeight) options:
		//xPosition - Horizontal position of the element
		//inertia - speed to move relative to vertical scroll. Example: 0.1 is one tenth the speed of scrolling, 2 is twice the speed of scrolling
		//outerHeight (true/false) - Whether or not jQuery should use it's outerHeight option to determine when a section is in the viewport
		$('#intro').parallax("50%", 0.1);
		$('#sec').parallax("50%", 0.1);
		
		$('#third').parallax("50%", 0.0);

	})

/*Home apge Parallax End*/ 

  
    

    

/*Carousel js*/
	    $(document).ready(function() {
		$('#myCarousel').carousel({
		interval: 2800
		})
	    
	    $('#myCarousel').on('slid.bs.carousel', function() {
	    	//alert("slid");
		});
	    
	    
	});
/*Carousel js End*/


    

    
    
/* ==============================================
Header Search Functionality
=============================================== */

		    $(document).ready(function () {
		    // Search
		    $('ul.tert-nav li.searchit').click(function (event) {
		        if(event.target !== this){
		            return;
		        }
		        
		        console.log("opening");
		        $(this).addClass('search');
		        $('.searchbox').fadeIn();
		        $('ul.tert-nav li img.searchicon').hide();
				$('ul.tert-nav li.searchit').show();
				
		    });

		    $('ul.tert-nav li.searchit img.closesearch').click(function (e) {
		        e.stopPropagation();
		        $('.searchbox').hide();
				
		        $('ul.tert-nav li').removeClass('search');
				$('ul.tert-nav li img.searchicon').show();
				$('ul.tert-nav li.searchit').show();
				
		    });
		})

/*Header-search End*/
    

/* ==============================================
Drop Down JS
=============================================== */

    //$('.dropdown-submenu').click(function(){$('.dropdown-submenu > .dropdown-menu').css('display','block'); return false;});
		$('ul.dropdown-menu [data-toggle=dropdown]').on('click', function(event) {
		// Avoid following the href location when clicking
		event.preventDefault(); 
		// Avoid having the menu to close when clicking
		event.stopPropagation(); 
		// If a menu is already open we close it
		//$('ul.dropdown-menu [data-toggle=dropdown]').parent().removeClass('open');
		// opening the one you clicked on
		$(this).parent().addClass('open');
	
		var menu = $(this).parent().find("ul");
		var menupos = menu.offset();
	  
		if ((menupos.left + menu.width()) + 30 > $(window).width()) {
			var newpos = - menu.width();      
		} else {
			var newpos = $(this).parent().width();
		}
		menu.css({ left:newpos });
	
	});
    /*Drop-down js End*/  


	

/* ==============================================
For IE 10
=============================================== */ 

var b = document.documentElement;
b.setAttribute('data-useragent',  navigator.userAgent);
b.setAttribute('data-platform', navigator.platform );

// IE 10 == Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)



	
	
	/* http://keith-wood.name/countdown.html
   Brazilian initialisation for the jQuery countdown extension
   Translated by Marcelo Pellicano de Oliveira (pellicano@gmail.com) Feb 2008.
   and Juan Roldan (juan.roldan[at]relayweb.com.br) Mar 2012. */
(function($) {
	$.countdown.regionalOptions['pt-BR'] = {
		labels: ['Anos', 'Meses', 'Semanas', 'Dias', 'Horas', 'Minutos', 'Segundos'],
		labels1: ['Ano', 'Mês', 'Semana', 'Dia', 'Hora', 'Minuto', 'Segundo'],
		compactLabels: ['a', 'm', 's', 'd'],
		whichLabels: null,
		digits: ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'],
		timeSeparator: ':', isRTL: false};
	$.countdown.setDefaults($.countdown.regionalOptions['pt-BR']);
})(jQuery);


