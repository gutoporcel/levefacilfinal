(function(a){function z(){return a("<div/>")}var A=Math.abs,l=Math.max,m=Math.min,g=Math.round;a.imgAreaSelect=function(x,d){function M(b){return b+y.left-u.left}function N(b){return b+y.top-u.top}function G(b){return b-y.left+u.left}function H(b){return b-y.top+u.top}function D(b){var a=b||R,b=b||S;return{x1:g(c.x1*a),y1:g(c.y1*b),x2:g(c.x2*a),y2:g(c.y2*b),width:g(c.x2*a)-g(c.x1*a),height:g(c.y2*b)-g(c.y1*b)}}function da(b,a,d,f,e){var h=e||R,e=e||S;c={x1:g(b/h||0),y1:g(a/e||0),x2:g(d/h||0),y2:g(f/
e||0)};c.width=c.x2-c.x1;c.height=c.y2-c.y1}function J(){v.width()&&(y={left:g(v.offset().left),top:g(v.offset().top)},w=v.innerWidth(),s=v.innerHeight(),y.top+=v.outerHeight()-s>>1,y.left+=v.outerWidth()-w>>1,T=g(d.minWidth/R)||0,U=g(d.minHeight/S)||0,ea=g(m(d.maxWidth/R||16777216,w)),fa=g(m(d.maxHeight/S||16777216,s)),"1.3.2"==a().jquery&&("fixed"==X&&!ga.getBoundingClientRect)&&(y.top+=l(document.body.scrollTop,ga.scrollTop),y.left+=l(document.body.scrollLeft,ga.scrollLeft)),u=/absolute|relative/.test(O.css("position"))?
{left:g(O.offset().left)-O.scrollLeft(),top:g(O.offset().top)-O.scrollTop()}:"fixed"==X?{left:a(document).scrollLeft(),top:a(document).scrollTop()}:{left:0,top:0},n=M(0),p=N(0),(c.x2>w||c.y2>s)&&Y())}function Z(b){if($){j.css({left:M(c.x1),top:N(c.y1)}).add(P).width(B=c.width).height(I=c.height);P.add(r).add(q).css({left:0,top:0});r.width(l(B-r.outerWidth()+r.innerWidth(),0)).height(l(I-r.outerHeight()+r.innerHeight(),0));a(k[0]).css({left:n,top:p,width:c.x1,height:s});a(k[1]).css({left:n+c.x1,top:p,
width:B,height:c.y1});a(k[2]).css({left:n+c.x2,top:p,width:w-c.x2,height:s});a(k[3]).css({left:n+c.x1,top:p+c.y2,width:B,height:s-c.y2});B-=q.outerWidth();I-=q.outerHeight();switch(q.length){case 8:a(q[4]).css({left:B>>1}),a(q[5]).css({left:B,top:I>>1}),a(q[6]).css({left:B>>1,top:I}),a(q[7]).css({top:I>>1});case 4:q.slice(1,3).css({left:B}),q.slice(2,4).css({top:I})}if(!1!==b&&(a.imgAreaSelect.keyPress!=qa&&a(document).unbind(a.imgAreaSelect.keyPress,a.imgAreaSelect.onKeyPress),d.keys))a(document)[a.imgAreaSelect.keyPress](a.imgAreaSelect.onKeyPress=
qa);a.browser.msie&&2==r.outerWidth()-r.innerWidth()&&(r.css("margin",0),setTimeout(function(){r.css("margin","auto")},0))}}function ha(b){J();Z(b);f=M(c.x1);e=N(c.y1);h=M(c.x2);i=N(c.y2)}function ia(b,a){d.fadeSpeed?b.fadeOut(d.fadeSpeed,a):b.hide()}function K(b){var a=G(b.pageX-u.left)-c.x1,b=H(b.pageY-u.top)-c.y1;ja||(J(),ja=!0,j.one("mouseout",function(){ja=!1}));t="";d.resizable&&(b<=d.resizeMargin?t="n":b>=c.height-d.resizeMargin&&(t="s"),a<=d.resizeMargin?t+="w":a>=c.width-d.resizeMargin&&
(t+="e"));j.css("cursor",t?t+"-resize":d.movable?"move":"");aa&&aa.toggle()}function ra(){a("body").css("cursor","");(d.autoHide||0==c.width*c.height)&&ia(j.add(k),function(){a(this).hide()});a(document).unbind("mousemove",ka);j.mousemove(K);d.onSelectEnd(x,D())}function sa(b){if(1!=b.which)return!1;J();t?(a("body").css("cursor",t+"-resize"),f=M(c[/w/.test(t)?"x2":"x1"]),e=N(c[/n/.test(t)?"y2":"y1"]),a(document).mousemove(ka).one("mouseup",ra),j.unbind("mousemove",K)):d.movable?(la=n+c.x1-(b.pageX-
u.left),ma=p+c.y1-(b.pageY-u.top),j.unbind("mousemove",K),a(document).mousemove(ta).one("mouseup",function(){d.onSelectEnd(x,D());a(document).unbind("mousemove",ta);j.mousemove(K)})):v.mousedown(b);return!1}function V(b){E&&(b?(h=l(n,m(n+w,f+A(i-e)*E*(h>f||-1))),i=g(l(p,m(p+s,e+A(h-f)/E*(i>e||-1)))),h=g(h)):(i=l(p,m(p+s,e+A(h-f)/E*(i>e||-1))),h=g(l(n,m(n+w,f+A(i-e)*E*(h>f||-1)))),i=g(i)))}function Y(){f=m(f,n+w);e=m(e,p+s);A(h-f)<T&&(h=f-T*(h<f||-1),h<n?f=n+T:h>n+w&&(f=n+w-T));A(i-e)<U&&(i=e-U*(i<
e||-1),i<p?e=p+U:i>p+s&&(e=p+s-U));h=l(n,m(h,n+w));i=l(p,m(i,p+s));V(A(h-f)<A(i-e)*E);A(h-f)>ea&&(h=f-ea*(h<f||-1),V());A(i-e)>fa&&(i=e-fa*(i<e||-1),V(!0));c={x1:G(m(f,h)),x2:G(l(f,h)),y1:H(m(e,i)),y2:H(l(e,i)),width:A(h-f),height:A(i-e)};Z();d.onSelectChange(x,D())}function ka(b){h=/w|e|^$/.test(t)||E?b.pageX-u.left:M(c.x2);i=/n|s|^$/.test(t)||E?b.pageY-u.top:N(c.y2);Y();return!1}function W(b,g){h=(f=b)+c.width;i=(e=g)+c.height;a.extend(c,{x1:G(f),y1:H(e),x2:G(h),y2:H(i)});Z();d.onSelectChange(x,
D())}function ta(b){f=l(n,m(la+(b.pageX-u.left),n+w-c.width));e=l(p,m(ma+(b.pageY-u.top),p+s-c.height));W(f,e);b.preventDefault();return!1}function na(){a(document).unbind("mousemove",na);J();h=f;i=e;Y();t="";k.is(":visible")||j.add(k).hide().fadeIn(d.fadeSpeed||0);$=!0;a(document).unbind("mouseup",ba).mousemove(ka).one("mouseup",ra);j.unbind("mousemove",K);d.onSelectStart(x,D())}function ba(){a(document).unbind("mousemove",na).unbind("mouseup",ba);ia(j.add(k));da(G(f),H(e),G(f),H(e));this instanceof
a.imgAreaSelect||(d.onSelectChange(x,D()),d.onSelectEnd(x,D()))}function ua(b){if(1!=b.which||k.is(":animated"))return!1;J();la=f=b.pageX-u.left;ma=e=b.pageY-u.top;a(document).mousemove(na).mouseup(ba);return!1}function va(){ha(!1)}function wa(){oa=!0;pa(d=a.extend({classPrefix:"imgareaselect",movable:!0,parent:"body",resizable:!0,resizeMargin:10,onInit:function(){},onSelectStart:function(){},onSelectChange:function(){},onSelectEnd:function(){}},d));j.add(k).css({visibility:""});d.show&&($=!0,J(),
Z(),j.add(k).hide().fadeIn(d.fadeSpeed||0));setTimeout(function(){d.onInit(x,D())},0)}function ca(b,a){for(var c in a)void 0!==d[c]&&b.css(a[c],d[c])}function pa(b){b.parent&&(O=a(b.parent)).append(j.add(k));a.extend(d,b);J();if(null!=b.handles){q.remove();q=a([]);for(Q=b.handles?"corners"==b.handles?4:8:0;Q--;)q=q.add(z());q.addClass(d.classPrefix+"-handle").css({position:"absolute",fontSize:0,zIndex:F+1||1});0<=!parseInt(q.css("width"))&&q.width(5).height(5);(C=d.borderWidth)&&q.css({borderWidth:C,
borderStyle:"solid"});ca(q,{borderColor1:"border-color",borderColor2:"background-color",borderOpacity:"opacity"})}R=d.imageWidth/w||1;S=d.imageHeight/s||1;null!=b.x1&&(da(b.x1,b.y1,b.x2,b.y2),b.show=!b.hide);b.keys&&(d.keys=a.extend({shift:1,ctrl:"resize"},b.keys));k.addClass(d.classPrefix+"-outer");P.addClass(d.classPrefix+"-selection");for(Q=0;4>Q++;)a(r[Q-1]).addClass(d.classPrefix+"-border"+Q);ca(P,{selectionColor:"background-color",selectionOpacity:"opacity"});ca(r,{borderOpacity:"opacity",borderWidth:"border-width"});
ca(k,{outerColor:"background-color",outerOpacity:"opacity"});(C=d.borderColor1)&&a(r[0]).css({borderStyle:"solid",borderColor:C});(C=d.borderColor2)&&a(r[1]).css({borderStyle:"dashed",borderColor:C});j.append(P.add(r).add(aa).add(q));a.browser.msie&&((C=(k.css("filter")||"").match(/opacity=(\d+)/))&&k.css("opacity",C[1]/100),(C=(r.css("filter")||"").match(/opacity=(\d+)/))&&r.css("opacity",C[1]/100));b.hide?ia(j.add(k)):b.show&&oa&&($=!0,j.add(k).fadeIn(d.fadeSpeed||0),ha());E=(xa=(d.aspectRatio||
"").split(/:/))[0]/xa[1];v.add(k).unbind("mousedown",ua);if(d.disable||!1===d.enable)j.unbind("mousemove",K).unbind("mousedown",sa),a(window).unbind("resize",va);else{if(d.enable||!1===d.disable)(d.resizable||d.movable)&&j.mousemove(K).mousedown(sa),a(window).resize(va);d.persistent||v.add(k).mousedown(ua)}d.enable=d.disable=void 0}var v=a(x),oa,j=z(),P=z(),r=z().add(z()).add(z()).add(z()),k=z().add(z()).add(z()).add(z()),q=a([]),aa,n,p,y={left:0,top:0},w,s,O,u={left:0,top:0},F=0,X="absolute",la,
ma,R,S,t,T,U,ea,fa,E,$,f,e,h,i,c={x1:0,y1:0,x2:0,y2:0,width:0,height:0},ga=document.documentElement,L,xa,Q,C,B,I,ja,qa=function(b){var a=d.keys,c,g=b.keyCode;c=!isNaN(a.alt)&&(b.altKey||b.originalEvent.altKey)?a.alt:!isNaN(a.ctrl)&&b.ctrlKey?a.ctrl:!isNaN(a.shift)&&b.shiftKey?a.shift:!isNaN(a.arrows)?a.arrows:10;if("resize"==a.arrows||"resize"==a.shift&&b.shiftKey||"resize"==a.ctrl&&b.ctrlKey||"resize"==a.alt&&(b.altKey||b.originalEvent.altKey)){switch(g){case 37:c=-c;case 39:b=l(f,h);f=m(f,h);h=
l(b+c,f);V();break;case 38:c=-c;case 40:b=l(e,i);e=m(e,i);i=l(b+c,e);V(!0);break;default:return}Y()}else switch(f=m(f,h),e=m(e,i),g){case 37:W(l(f-c,n),e);break;case 38:W(f,l(e-c,p));break;case 39:W(f+m(c,w-G(h)),e);break;case 40:W(f,e+m(c,s-H(i)));break;default:return}return!1};this.remove=function(){pa({disable:!0});j.add(k).remove()};this.getOptions=function(){return d};this.setOptions=pa;this.getSelection=D;this.setSelection=da;this.cancelSelection=ba;this.update=ha;for(L=v;L.length;)F=l(F,!isNaN(L.css("z-index"))?
L.css("z-index"):F),"fixed"==L.css("position")&&(X="fixed"),L=L.parent(":not(body)");F=d.zIndex||F;a.browser.msie&&v.attr("unselectable","on");a.imgAreaSelect.keyPress=a.browser.msie||a.browser.safari?"keydown":"keypress";a.browser.opera&&(aa=z().css({width:"100%",height:"100%",position:"absolute",zIndex:F+2||2}));j.add(k).css({visibility:"hidden",position:X,overflow:"hidden",zIndex:F||"0"});j.css({zIndex:F+2||2});P.add(r).css({position:"absolute",fontSize:0});x.complete||"complete"==x.readyState||
!v.is("img")?wa():v.one("load",wa);!oa&&(a.browser.msie&&7<=a.browser.version)&&(x.src=x.src)};a.fn.imgAreaSelect=function(g){g=g||{};this.each(function(){a(this).data("imgAreaSelect")?g.remove?(a(this).data("imgAreaSelect").remove(),a(this).removeData("imgAreaSelect")):a(this).data("imgAreaSelect").setOptions(g):g.remove||(void 0===g.enable&&void 0===g.disable&&(g.enable=!0),a(this).data("imgAreaSelect",new a.imgAreaSelect(this,g)))});return g.instance?a(this).data("imgAreaSelect"):this}})(jQuery);