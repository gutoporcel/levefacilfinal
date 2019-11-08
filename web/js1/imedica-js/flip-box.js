// JavaScript Document


// Flip-box	
		var is_touch_device = 'ontouchstart' in document.documentElement;		
		jQuery('#page').click(function(){			
			jQuery('.ifb-hover').removeClass('ifb-hover');
		});
		if(!is_touch_device){
			jQuery('.ifb-flip-box').hover(function(event){			
				event.stopPropagation();
				//console.log('hover');
				jQuery(this).addClass('ifb-hover');	
				
			},function(event){
								//console.log('hoverout');
				event.stopPropagation();
				jQuery(this).removeClass('ifb-hover');			
			});
		}
		
		

		jQuery('.ifb-flip-box').click(function(event){
			event.stopPropagation();
							//console.log('click');
			if(jQuery(this).hasClass('ifb-hover')){				
				jQuery(this).removeClass('ifb-hover');							
			}
			else{
				jQuery('.ifb-hover').removeClass('ifb-hover');
				jQuery(this).addClass('ifb-hover');
			}
		});
