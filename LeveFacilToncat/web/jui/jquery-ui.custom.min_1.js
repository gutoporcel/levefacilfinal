/*
 * MWS Admin v2.1 - Extended jquery-ui Widgets
 * This file is part of MWS Admin, an Admin template build for sale at ThemeForest.
 * All copyright to this file is hold by Mairel Theafila <maimairel@yahoo.com> a.k.a nagaemas on ThemeForest.
 * Last Updated:
 * December 08, 2012
 *
 */

;(function(d,a){d.extend(a.options,{ticks:[],tooltip:"always"});this._sliding=this._mouseIn=this._isExtended=!1;var h=a._create;a._create=function(){h.call(this);var c=this,b=[];this.handles.each(function(){b.push('<span class="ui-slider-handle-tooltip ui-state-default" style="display: none; "></span>')});this.tooltips=d(b.join("")).appendTo(c.element);"always"===this.options.tooltip&&c.handles.each(function(b,a){d(a).on("mouseenter.slider",{index:b},d.proxy(c._mouseEnter,c)).on("mouseleave.slider",
{index:b},d.proxy(c._mouseLeave,c))});if(this.options.ticks&&this.options.ticks.length){for(var a=d("<div></div>",{"class":"ui-slider-ticks"}),e=this.options.ticks,f=100/(e.length-1),g=0;g<e.length;g++)"horizontal"===this.orientation?a.append('<span style="left: '+g*f+'%">'+("|"!=e[g]?"<ins>"+e[g]+"</ins>":"")+"</span>"):a.append('<span style="bottom: '+g*f+'%">'+("|"!=e[g]?"<ins>"+e[g]+"</ins>":"")+"</span>");this.ticks=a.appendTo(this.element)}this._isExtended=!0;this._refreshValue()};var i=a._start;
a._start=function(c,b){"ondrag"===this.options.tooltip?d(this.tooltips[b]).fadeIn():"always"===this.options.tooltip&&(this._sliding=!0);return i.call(this,c,b)};var j=a._stop;a._stop=function(c,b){"ondrag"===this.options.tooltip?d(this.tooltips[b]).fadeOut():"always"===this.options.tooltip&&(this._sliding=!1,this._mouseIn||d(this.tooltips[b]).fadeOut());return j.call(this,c,b)};var k=a._setOption;a._setOption=function(c,b){k.call(this,c,b)};var l=a._refreshValue;a._refreshValue=function(){l.call(this);
if(this._isExtended){var c=this.options,b=this,a,e={},f,g,h;if(c.values&&c.values.length)this.handles.each(function(c){if((f=d(b.tooltips[c]))&&f.length)a=100*((b.values(c)-b._valueMin())/(b._valueMax()-b._valueMin())),f.text(b._formatNumber(b.values(c))),"horizontal"===b.orientation?(e.marginLeft=-(f.outerWidth()/2),e.left=a+"%"):(e.marginBottom=-(f.outerHeight()/2),e.bottom=a+"%"),f.css(e)});else if((f=d(b.tooltips[0]))&&f.length)c=this.value(),g=this._valueMin(),h=this._valueMax(),a=h!==g?100*
((c-g)/(h-g)):0,f.text(b._formatNumber(c)),"horizontal"===b.orientation?(e.marginLeft=-(f.outerWidth()/2),e.left=a+"%"):(e.marginBottom=-(f.outerHeight()/2),e.bottom=a+"%"),f.css(e)}};var m=a.destroy;a.destroy=function(){this._isExtended&&(this.handles.each(function(a,b){d(b).off(".slider")}),this.tooltips.remove(),this.ticks.remove());m.call(this)};d.extend(a,{_formatNumber:function(a){a=a.toString().replace(/,/gi,".").replace(/ /gi,"");return new Number(a)},_mouseEnter:function(a){this._mouseIn||
(this._mouseIn=!0,d(this.tooltips[a.data.index]).stop(!0,!0).fadeIn())},_mouseLeave:function(a){this._mouseIn&&(this._sliding||d(this.tooltips[a.data.index]).stop(!0,!0).fadeOut(),this._mouseIn=!1)}})})(jQuery,jQuery.ui.slider.prototype);
(function(d,a){d.extend(a.options,{showValue:!1});var h=a._create;a._create=function(){h.call(this);this.valueDiv.append(d("<span></span>").toggle(this.options.showValue));this._refreshValue()};var i=a._refreshValue;a._refreshValue=function(){i.call(this);var a=this.value();this.valueDiv.find(" > span").text(a+"%")}})(jQuery,jQuery.ui.progressbar.prototype);