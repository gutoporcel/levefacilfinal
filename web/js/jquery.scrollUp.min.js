/*

 scrollup v2.2.0
 Author: Mark Goodyear - http://markgoodyear.com
 Git: https://github.com/markgoodyear/scrollup

 Copyright 2014 Mark Goodyear.
 Licensed under the MIT license
 http://www.opensource.org/licenses/mit-license.php

 Twitter: @markgdyr

 */
 !function(l,o,e){l.fn.scrollUp=function(o){l.data(e.body,"scrollUp")||(l.data(e.body,"scrollUp",!0),l.fn.scrollUp.init(o))},l.fn.scrollUp.init=function(s){var r,c=l.fn.scrollUp.settings=l.extend({},l.fn.scrollUp.defaults,s),i=c.scrollTitle?c.scrollTitle:c.scrollText;r=c.scrollTrigger?l(c.scrollTrigger):l("<a/>",{id:c.scrollName,href:"#top",title:i}),r.appendTo("body"),c.scrollImg||c.scrollTrigger||r.html(c.scrollText),r.css({display:"none",position:"fixed",zIndex:c.zIndex}),c.activeOverlay&&l("<div/>",{id:c.scrollName+"-active"}).css({position:"absolute",top:c.scrollDistance+"px",width:"100%",borderTop:"1px dotted"+c.activeOverlay,zIndex:c.zIndex}).appendTo("body"),scrollEvent=l(o).scroll(function(){switch(scrollDis="top"===c.scrollFrom?c.scrollDistance:l(e).height()-l(o).height()-c.scrollDistance,c.animation){case"fade":l(l(o).scrollTop()>scrollDis?r.fadeIn(c.animationInSpeed):r.fadeOut(c.animationOutSpeed));break;case"slide":l(l(o).scrollTop()>scrollDis?r.slideDown(c.animationInSpeed):r.slideUp(c.animationOutSpeed));break;default:l(l(o).scrollTop()>scrollDis?r.show(0):r.hide(0))}}),r.click(function(o){o.preventDefault(),l("html, body").animate({scrollTop:0},c.scrollSpeed,c.easingType)})},l.fn.scrollUp.defaults={scrollName:"scrollUp",scrollDistance:300,scrollFrom:"top",scrollSpeed:300,easingType:"linear",animation:"fade",animationInSpeed:200,animationOutSpeed:200,scrollTrigger:!1,scrollText:"Scroll to top",scrollTitle:!1,scrollImg:!1,activeOverlay:!1,zIndex:2147483647},l.fn.scrollUp.destroy=function(s){l.removeData(e.body,"scrollUp"),l("#"+l.fn.scrollUp.settings.scrollName).remove(),l("#"+l.fn.scrollUp.settings.scrollName+"-active").remove(),l.fn.jquery.split(".")[1]>=7?l(o).off("scroll",s):l(o).unbind("scroll",s)},l.scrollUp=l.fn.scrollUp}(jQuery,window,document);