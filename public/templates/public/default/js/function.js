/**
* @desc: Quan Lee work main_menu
*
* @author: tiger0350@gmail.com @date: 17/12/2012 @desc: Khoi tao
*/
var ddsmoothmenu={

//Specify full URL to down and right arrow images (23 is padding-right added to top level LIs with drop downs):
arrowimages: {down:['downarrowclass', 'down.gif', 23], right:['rightarrowclass', 'right.gif']},
transition: {overtime:300, outtime:300}, //duration of slide in/ out animation, in milliseconds
shadow: {enable:true, offsetx:5, offsety:5}, //enable shadow?
showhidedelay: {showdelay: 100, hidedelay: 200}, //set delay in milliseconds before sub menus appear and disappear, respectively

detectwebkit: navigator.userAgent.toLowerCase().indexOf("applewebkit")!=-1, //detect WebKit browsers (Safari, Chrome etc)
detectie6: document.all && !window.XMLHttpRequest,

getajaxmenu:function($, setting){ //function to fetch external page containing the panel DIVs
	var $menucontainer=$('#'+setting.contentsource[0]) //reference empty div on page that will hold menu
	$menucontainer.html("Loading Menu...")
	$.ajax({
		url: setting.contentsource[1], //path to external menu file
		async: true,
		error:function(ajaxrequest){
			$menucontainer.html('Error fetching content. Server Response: '+ajaxrequest.responseText)
		},
		success:function(content){
			$menucontainer.html(content)
			ddsmoothmenu.buildmenu($, setting)
		}
	})
},


buildmenu:function($, setting){
	var smoothmenu=ddsmoothmenu
	var $mainmenu=$("#"+setting.mainmenuid+">ul") //reference main menu UL
	$mainmenu.parent().get(0).className=setting.classname || "ddsmoothmenu"
	var $headers=$mainmenu.find("ul").parent()
	$headers.hover(
		function(e){
			$(this).children('a:eq(0)').addClass('selected')
		},
		function(e){
			$(this).children('a:eq(0)').removeClass('selected')
		}
	)
	$headers.each(function(i){ //loop through each LI header
		var $curobj=$(this).css({zIndex: 100-i}) //reference current LI header
		var $subul=$(this).find('ul:eq(0)').css({display:'block'})
		$subul.data('timers', {})
		this._dimensions={w:this.offsetWidth, h:this.offsetHeight, subulw:$subul.outerWidth(), subulh:$subul.outerHeight()}
		this.istopheader=$curobj.parents("ul").length==1? true : false //is top level header?
		$subul.css({top:this.istopheader && setting.orientation!='v'? this._dimensions.h+"px" : 0})
		$curobj.children("a:eq(0)").css(this.istopheader? {paddingRight: smoothmenu.arrowimages.down[2]} : {}).append( //add arrow images
			'<img src="'+ (this.istopheader && setting.orientation!='v'? smoothmenu.arrowimages.down[1] : smoothmenu.arrowimages.right[1])
			+'" class="' + (this.istopheader && setting.orientation!='v'? smoothmenu.arrowimages.down[0] : smoothmenu.arrowimages.right[0])
			+ '" style="border:0;" />'
		)
		if (smoothmenu.shadow.enable){
			this._shadowoffset={x:(this.istopheader?$subul.offset().left+smoothmenu.shadow.offsetx : this._dimensions.w), y:(this.istopheader? $subul.offset().top+smoothmenu.shadow.offsety : $curobj.position().top)} //store this shadow's offsets
			if (this.istopheader)
				$parentshadow=$(document.body)
			else{
				var $parentLi=$curobj.parents("li:eq(0)")
				$parentshadow=$parentLi.get(0).$shadow
			}
			this.$shadow=$('<div class="ddshadow'+(this.istopheader? ' toplevelshadow' : '')+'"></div>').prependTo($parentshadow).css({left:this._shadowoffset.x+'px', top:this._shadowoffset.y+'px'})  //insert shadow DIV and set it to parent node for the next shadow div
		}
		$curobj.hover(
			function(e){
				var $targetul=$subul //reference UL to reveal
				var header=$curobj.get(0) //reference header LI as DOM object
				clearTimeout($targetul.data('timers').hidetimer)
				$targetul.data('timers').showtimer=setTimeout(function(){
					header._offsets={left:$curobj.offset().left, top:$curobj.offset().top}
					var menuleft=header.istopheader && setting.orientation!='v'? 0 : header._dimensions.w
					menuleft=(header._offsets.left+menuleft+header._dimensions.subulw>$(window).width())? (header.istopheader && setting.orientation!='v'? -header._dimensions.subulw+header._dimensions.w : -header._dimensions.w) : menuleft //calculate this sub menu's offsets from its parent
					if ($targetul.queue().length<=1){ //if 1 or less queued animations
						$targetul.css({left:menuleft+"px", width:header._dimensions.subulw+'px'}).animate({height:'show',opacity:'show'}, ddsmoothmenu.transition.overtime)
						if (smoothmenu.shadow.enable){
							var shadowleft=header.istopheader? $targetul.offset().left+ddsmoothmenu.shadow.offsetx : menuleft
							var shadowtop=header.istopheader?$targetul.offset().top+smoothmenu.shadow.offsety : header._shadowoffset.y
							if (!header.istopheader && ddsmoothmenu.detectwebkit){ //in WebKit browsers, restore shadow's opacity to full
								header.$shadow.css({opacity:1})
							}
							header.$shadow.css({overflow:'', width:header._dimensions.subulw+'px', left:shadowleft+'px', top:shadowtop+'px'}).animate({height:header._dimensions.subulh+'px'}, ddsmoothmenu.transition.overtime)
						}
					}
				}, ddsmoothmenu.showhidedelay.showdelay)
			},
			function(e){
				var $targetul=$subul
				var header=$curobj.get(0)
				clearTimeout($targetul.data('timers').showtimer)
				$targetul.data('timers').hidetimer=setTimeout(function(){
					$targetul.animate({height:'hide', opacity:'hide'}, ddsmoothmenu.transition.outtime)
					if (smoothmenu.shadow.enable){
						if (ddsmoothmenu.detectwebkit){ //in WebKit browsers, set first child shadow's opacity to 0, as "overflow:hidden" doesn't work in them
							header.$shadow.children('div:eq(0)').css({opacity:0})
						}
						header.$shadow.css({overflow:'hidden'}).animate({height:0}, ddsmoothmenu.transition.outtime)
					}
				}, ddsmoothmenu.showhidedelay.hidedelay)
			}
		) //end hover
	}) //end $headers.each()
	$mainmenu.find("ul").css({display:'none', visibility:'visible'})
},

init:function(setting){
	if (typeof setting.customtheme=="object" && setting.customtheme.length==2){ //override default menu colors (default/hover) with custom set?
		var mainmenuid='#'+setting.mainmenuid
		var mainselector=(setting.orientation=="v")? mainmenuid : mainmenuid+', '+mainmenuid
		document.write('<style type="text/css">\n'
			+mainselector+' ul li a {background:'+setting.customtheme[0]+';}\n'
			+mainmenuid+' ul li a:hover {background:'+setting.customtheme[1]+';}\n'
		+'</style>')
	}
	this.shadow.enable=(document.all && !window.XMLHttpRequest)? false : this.shadow.enable //in IE6, always disable shadow
	jQuery(document).ready(function($){ //ajax menu?
		if (typeof setting.contentsource=="object"){ //if external ajax menu
			ddsmoothmenu.getajaxmenu($, setting)
		}
		else{ //else if markup menu
			ddsmoothmenu.buildmenu($, setting)
		}
	})
}

} //end ddsmoothmenu variable

function doScroll(divID, fixPos, parentID) {
	var obj= document.getElementById(divID);
	var objParent= document.getElementById(parentID);
	//if (divID=="subLeft") document.getElementById('display').innerHTML =((f_scrollTop()+obj.offsetHeight)+'/'+(findYPos(objParent)+objParent.offsetHeight));
	var parentPos = findYPos(objParent);
	var floorPos = parentPos+objParent.offsetHeight;
	if ( f_scrollTop()>fixPos && fixPos+obj.offsetHeight!=floorPos) {
		if (f_scrollTop()+obj.offsetHeight >= floorPos) {
			obj.style.position = 'absolute';
			obj.style.top = (floorPos-obj.offsetHeight)+'px';
		}
		else {
			if (isIE6()) {
				obj.style.position = 'absolute';
				obj.style.top = f_scrollTop()+'px';
			}
			else {
				obj.style.position = 'fixed';
				obj.style.top = '0%';
			}
		}
	}
	else {
		if (isIE6()) {
			obj.style.display = 'block';
		}
		else {
			obj.style.top = '0%';
			obj.style.position = 'relative';
		}
	}
	//setTimeout("doScroll('"+divID+"', "+fixPos+", '"+parentID+"')", 20)
}

/**
* @desc: Quan Lee work banner doc 2 ben
*
* @author: tiger0350@gmail.com @date: 19/12/2012 @desc: Khoi tao
*/
jQuery.easing['jswing'] = jQuery.easing['swing'];

jQuery.extend( jQuery.easing,
{
	def: 'easeOutQuad',
	swing: function (x, t, b, c, d) {
		//alert(jQuery.easing.default);
		return jQuery.easing[jQuery.easing.def](x, t, b, c, d);
	},
	easeInQuad: function (x, t, b, c, d) {
		return c*(t/=d)*t + b;
	},
	easeOutQuad: function (x, t, b, c, d) {
		return -c *(t/=d)*(t-2) + b;
	},
	easeInOutQuad: function (x, t, b, c, d) {
		if ((t/=d/2) < 1) return c/2*t*t + b;
		return -c/2 * ((--t)*(t-2) - 1) + b;
	},
	easeInCubic: function (x, t, b, c, d) {
		return c*(t/=d)*t*t + b;
	},
	easeOutCubic: function (x, t, b, c, d) {
		return c*((t=t/d-1)*t*t + 1) + b;
	},
	easeInOutCubic: function (x, t, b, c, d) {
		if ((t/=d/2) < 1) return c/2*t*t*t + b;
		return c/2*((t-=2)*t*t + 2) + b;
	},
	easeInQuart: function (x, t, b, c, d) {
		return c*(t/=d)*t*t*t + b;
	},
	easeOutQuart: function (x, t, b, c, d) {
		return -c * ((t=t/d-1)*t*t*t - 1) + b;
	},
	easeInOutQuart: function (x, t, b, c, d) {
		if ((t/=d/2) < 1) return c/2*t*t*t*t + b;
		return -c/2 * ((t-=2)*t*t*t - 2) + b;
	},
	easeInQuint: function (x, t, b, c, d) {
		return c*(t/=d)*t*t*t*t + b;
	},
	easeOutQuint: function (x, t, b, c, d) {
		return c*((t=t/d-1)*t*t*t*t + 1) + b;
	},
	easeInOutQuint: function (x, t, b, c, d) {
		if ((t/=d/2) < 1) return c/2*t*t*t*t*t + b;
		return c/2*((t-=2)*t*t*t*t + 2) + b;
	},
	easeInSine: function (x, t, b, c, d) {
		return -c * Math.cos(t/d * (Math.PI/2)) + c + b;
	},
	easeOutSine: function (x, t, b, c, d) {
		return c * Math.sin(t/d * (Math.PI/2)) + b;
	},
	easeInOutSine: function (x, t, b, c, d) {
		return -c/2 * (Math.cos(Math.PI*t/d) - 1) + b;
	},
	easeInExpo: function (x, t, b, c, d) {
		return (t==0) ? b : c * Math.pow(2, 10 * (t/d - 1)) + b;
	},
	easeOutExpo: function (x, t, b, c, d) {
		return (t==d) ? b+c : c * (-Math.pow(2, -10 * t/d) + 1) + b;
	},
	easeInOutExpo: function (x, t, b, c, d) {
		if (t==0) return b;
		if (t==d) return b+c;
		if ((t/=d/2) < 1) return c/2 * Math.pow(2, 10 * (t - 1)) + b;
		return c/2 * (-Math.pow(2, -10 * --t) + 2) + b;
	},
	easeInCirc: function (x, t, b, c, d) {
		return -c * (Math.sqrt(1 - (t/=d)*t) - 1) + b;
	},
	easeOutCirc: function (x, t, b, c, d) {
		return c * Math.sqrt(1 - (t=t/d-1)*t) + b;
	},
	easeInOutCirc: function (x, t, b, c, d) {
		if ((t/=d/2) < 1) return -c/2 * (Math.sqrt(1 - t*t) - 1) + b;
		return c/2 * (Math.sqrt(1 - (t-=2)*t) + 1) + b;
	},
	easeInElastic: function (x, t, b, c, d) {
		var s=1.70158;var p=0;var a=c;
		if (t==0) return b;  if ((t/=d)==1) return b+c;  if (!p) p=d*.3;
		if (a < Math.abs(c)) { a=c; var s=p/4; }
		else var s = p/(2*Math.PI) * Math.asin (c/a);
		return -(a*Math.pow(2,10*(t-=1)) * Math.sin( (t*d-s)*(2*Math.PI)/p )) + b;
	},
	easeOutElastic: function (x, t, b, c, d) {
		var s=1.70158;var p=0;var a=c;
		if (t==0) return b;  if ((t/=d)==1) return b+c;  if (!p) p=d*.3;
		if (a < Math.abs(c)) { a=c; var s=p/4; }
		else var s = p/(2*Math.PI) * Math.asin (c/a);
		return a*Math.pow(2,-10*t) * Math.sin( (t*d-s)*(2*Math.PI)/p ) + c + b;
	},
	easeInOutElastic: function (x, t, b, c, d) {
		var s=1.70158;var p=0;var a=c;
		if (t==0) return b;  if ((t/=d/2)==2) return b+c;  if (!p) p=d*(.3*1.5);
		if (a < Math.abs(c)) { a=c; var s=p/4; }
		else var s = p/(2*Math.PI) * Math.asin (c/a);
		if (t < 1) return -.5*(a*Math.pow(2,10*(t-=1)) * Math.sin( (t*d-s)*(2*Math.PI)/p )) + b;
		return a*Math.pow(2,-10*(t-=1)) * Math.sin( (t*d-s)*(2*Math.PI)/p )*.5 + c + b;
	},
	easeInBack: function (x, t, b, c, d, s) {
		if (s == undefined) s = 1.70158;
		return c*(t/=d)*t*((s+1)*t - s) + b;
	},
	easeOutBack: function (x, t, b, c, d, s) {
		if (s == undefined) s = 1.70158;
		return c*((t=t/d-1)*t*((s+1)*t + s) + 1) + b;
	},
	easeInOutBack: function (x, t, b, c, d, s) {
		if (s == undefined) s = 1.70158; 
		if ((t/=d/2) < 1) return c/2*(t*t*(((s*=(1.525))+1)*t - s)) + b;
		return c/2*((t-=2)*t*(((s*=(1.525))+1)*t + s) + 2) + b;
	},
	easeInBounce: function (x, t, b, c, d) {
		return c - jQuery.easing.easeOutBounce (x, d-t, 0, c, d) + b;
	},
	easeOutBounce: function (x, t, b, c, d) {
		if ((t/=d) < (1/2.75)) {
			return c*(7.5625*t*t) + b;
		} else if (t < (2/2.75)) {
			return c*(7.5625*(t-=(1.5/2.75))*t + .75) + b;
		} else if (t < (2.5/2.75)) {
			return c*(7.5625*(t-=(2.25/2.75))*t + .9375) + b;
		} else {
			return c*(7.5625*(t-=(2.625/2.75))*t + .984375) + b;
		}
	},
	easeInOutBounce: function (x, t, b, c, d) {
		if (t < d/2) return jQuery.easing.easeInBounce (x, t*2, 0, c, d) * .5 + b;
		return jQuery.easing.easeOutBounce (x, t*2-d, 0, c, d) * .5 + c*.5 + b;
	}
});
(function($){

	$.fn.advScroll = function(option) {
		$.fn.advScroll.option = {
			marginTop:10,
			easing:'',
			timer:400,
			minTop:0,
		};

		option = $.extend({}, $.fn.advScroll.option, option);
		
		return this.each(function(){
			var el = $(this);
			$(window).scroll(function(){
				t = parseInt($(window).scrollTop()) + option.marginTop;
				if(t < option.minTop){
					t = option.minTop;
				}
				el.stop().animate({marginTop:t},option.timer,option.easing);
			})
		});
	};

})(jQuery)

function do_scroll($scroll_name,$scroll_l,$scroll_r){
	if (window.innerWidth || window.innerHeight){
		docwidth = window.innerWidth;
		docheight = window.innerHeight;
	}
	//IE Mozilla
	if (document.body.clientWidth || document.body.clientHeight){
		docwidth = document.body.clientWidth;
		docheight = document.body.clientHeight;
	}
	scroll_l = $($scroll_l).innerWidth();
	scroll_r = $($scroll_r).innerWidth();

	s_left = ((docwidth - 1000)/2) - scroll_l - 5;
	s_right = ((docwidth - 1000)/2) - scroll_r - 5;
	$($scroll_l).css({'left':s_left});
	$($scroll_r).css({'right':s_right});
	if (docwidth > 1024){
		(function($){
			$($scroll_name).advScroll({
				easing:'easeOutBack',
				marginTop:0,
				timer:1000,
				minTop:187,
			});
		})(jQuery);
	}else{
		$($scroll_name).hide();
	}
}

/**
* @desc: Quan Lee work show popup dang ky
*
* @author: tiger0350@gmail.com @date: 26/12/2012 @desc: Khoi tao
*/
function showRegistry(){
	var popup_left = ($('body').innerWidth() - $('#_box_popup').innerWidth()) / 2;
	$('#_box_popup').css({'left':popup_left,'top':'150px'});
	$('#_box_overlay').show();
	$('#_box_popup').show();
}
function closeRegistry(){
	$('#_box_overlay').hide();
	$('#_box_popup').hide();
}

/**
* @desc: Quan Lee work submit form
*
* @author: tiger0350@gmail.com @date: 04//2012 @desc: Khoi tao
*/
function OnSubmitForm(url)
{
	var theForm = document.userForm;
	theForm.action = url;
	theForm.submit();
	return true;
}

function OnSubmitForm2(url)
{
	var theForm = document.userForm;
	var number = 0;
	for(i=0;i < theForm.cid.length; i++){
		if(theForm.cid[i].checked == true){
			number++;
		}
	}
	if(number == 0){
		alert('Bạn chưa chọn việc làm nào');
		return false;
	}
	theForm.action = url;
	theForm.submit();
	return true;
}

/**
* @desc: Quan Lee work check all
*
* @author: tiger0350@gmail.com @date: 04/01/2013 @desc: Khoi tao
*/
function checkCheckBox(){
	var theForm = document.userForm;
	if (theForm.elements[i].name=='cid[]')
	{
        theForm.elements[i].checked = checked;
        if(theForm.elements[i].checked = true){
        	window.alert(this.value);
        }
    }
}

var checked=false;
function checkedAll() {
    var theForm = document.userForm;
    if (checked == false)
    {
    	checked = true;
    	//theForm.checkValue.value = theForm.elements.length;
    }
    else
    {
    	checked = false;
    	//theForm.checkValue.value = 0;
    }
    
    var countCheckBox = 0;
    for (i=0; i<theForm.elements.length; i++) {
        if (theForm.elements[i].name=='cid[]'){
            theForm.elements[i].checked = checked;
            countCheckBox++;
        }
    }
    
    if (checked == true)
    {
    	theForm.checkValue.value = countCheckBox;
    }
    else
    {    	
    	theForm.checkValue.value = 0;
    }
}
/**
* @desc: Quan Lee work get alias
*
* @author: tiger0350@gmail.com @date: 06/01/2013 @desc: Khoi tao
*/
function get_alias(){

	var str_rewrite = document.getElementById("name").value;
	str_rewrite= str_rewrite.toLowerCase();
	
	str_rewrite= str_rewrite.replace(/à|ả|ã|á|ạ|ă|ằ|ẳ|ẵ|ắ|ặ|â|ầ|ẩ|ẫ|ấ|ậ/g,"a");
	str_rewrite= str_rewrite.replace(/è|ẻ|ẽ|é|ẹ|ê|ề|ể|ễ|ế|ệ/g,"e");
	str_rewrite= str_rewrite.replace(/ì|ỉ|ĩ|í|ị/g,"i");
	str_rewrite= str_rewrite.replace(/ò|ỏ|õ|ó|ọ|ô|ồ|ổ|ỗ|ố|ộ|ơ|ờ|ở|ỡ|ớ|ợ/g,"o");
	str_rewrite= str_rewrite.replace(/ù|ủ|ũ|ú|ụ|ư|ừ|ử|ữ|ứ|ự/g,"u");
	str_rewrite= str_rewrite.replace(/ỳ|ỷ|ỹ|ý/g,"y");
	str_rewrite= str_rewrite.replace(/đ/g,"d");
	str_rewrite= str_rewrite.replace(/!|@|\$|%|\^|\*|\(|\)|\+|\=|\<|\>|\?|\/|,|\.|\:|\'| |\"|\&|\#|\[|\]|~/g,"-");
	str_rewrite= str_rewrite.replace(/-+-/g,"-");
	str_rewrite= str_rewrite.replace(/^\-+|\-+$/g,"");

	document.getElementById("alias").value = str_rewrite;
	
	return str;
}

/**
* @desc: Quan Lee work load viec lam moi
*
* @author: tiger0350@gmail.com @date: 14/01/2013 @desc: Khoi tao
*/
function ajaxLoad(item,url){
	$(item).load(url);
}

/*
javascript tooltip
*/
var tooltip=function(){
	var id = 'tt';
	var top = 7;
	var left = 3;
	var maxw = 470;
	var speed = 10;
	var timer = 20;
	var endalpha = 96;
	var alpha = 0;
	var tt,t,c,b,h;
	var ie = document.all ? true : false;
	return{
		show:function(v,w){
			if(tt == null){
				tt = document.createElement('div');
				tt.setAttribute('id',id);
				t = document.createElement('div');
				t.setAttribute('id',id + 'top');
				c = document.createElement('div');
				c.setAttribute('id',id + 'cont');
				b = document.createElement('div');
				b.setAttribute('id',id + 'bot');
				tt.appendChild(t);
				tt.appendChild(c);
				tt.appendChild(b);
				document.body.appendChild(tt);
				tt.style.opacity = 0;
				tt.style.filter = 'alpha(opacity=0)';
				document.onmousemove = this.pos;
			}
			tt.style.display = 'block';
			c.innerHTML = v;
			tt.style.width = w ? w + 'px' : 'auto';
			if(!w && ie){
				t.style.display = 'none';
				b.style.display = 'none';
				tt.style.width = tt.offsetWidth;
				t.style.display = 'block';
				b.style.display = 'block';
			}
			if(tt.offsetWidth > maxw){tt.style.width = maxw + 'px'}
			h = parseInt(tt.offsetHeight) + top;
			clearInterval(tt.timer);
			tt.timer = setInterval(function(){tooltip.fade(1)},timer);
		},
		pos:function(e){
			var u = ie ? event.clientY + document.documentElement.scrollTop : e.pageY;
			var l = ie ? event.clientX + document.documentElement.scrollLeft : e.pageX;
			tt.style.top = (u - h) + 'px';
			tt.style.left = (l + left) + 'px';
		},
		fade:function(d){
			var a = alpha;
			if((a != endalpha && d == 1) || (a != 0 && d == -1)){
				var i = speed;
				if(endalpha - a < speed && d == 1){
					i = endalpha - a;
				}else if(alpha < speed && d == -1){
					i = a;
				}
				alpha = a + (i * d);
				tt.style.opacity = alpha * .01;
				tt.style.filter = 'alpha(opacity=' + alpha + ')';
			}else{
				clearInterval(tt.timer);
				if(d == -1){tt.style.display = 'none'}
			}
		},
		hide:function(){
			clearInterval(tt.timer);
			tt.timer = setInterval(function(){tooltip.fade(-1)},timer);
		}
	};
}();


/* create: namnv 15/01/2013
 * Ham to cao viec lam 
 */
function ntv_to_cao(){
	
	var theForm = document.userForm;
	var number = 0;
	for(i=0;i < theForm.cid.length; i++){
		if(theForm.cid[i].checked == true){
			number++;
		}
	}
	if(number == 0){
		alert('Bạn chưa chọn tin cần tố cáo!');
	}else{
		alert('Bạn đã gửi tố cáo thành công!');
	}
	
	/*theForm.action = url;
	theForm.submit();
	return true;*/
	
	/*v_tong_tin = document.getElementById('tong_tin').value;				
	document.getElementById('checkedvalues').value = '';
	document.getElementById('tai_khoan_list').value ='';	
	v_count = 0;	
	for(i=0;i<v_tong_tin;i++){
		if(document.getElementById('chk_item'+i) && document.getElementById('chk_item'+i).checked==true){
			document.getElementById('checkedvalues').value += ",~,"+document.getElementById('chk_item'+i).value;
			document.getElementById('tai_khoan_list').value += ",~,"+document.getElementById('tai_khoan'+i).value;
			v_count = v_count*1+1;			
		}
	}
	if(v_count>0){
		v_str_pk_tin_tuyen_dung = document.getElementById('checkedvalues').value;
		v_tai_khoan_list = document.getElementById('tai_khoan_list').value;
		document.frm_viec_lam_nhieu_nguoi_xem.target = "fr_submit";
		document.frm_viec_lam_nhieu_nguoi_xem.action = "/ajax/account/to_cao/"+v_str_pk_tin_tuyen_dung+" /"+v_tai_khoan_list+" /1";	
		document.frm_viec_lam_nhieu_nguoi_xem.submit();
	}else{
		alert('Bạn chưa chọn tin cần tố cáo!');
	}*/
}

/**
* @desc: In chi tiet tin
* @author: tiger0350@gmail.com @date: 17/01/2013 @desc: Khoi tao
*/
function print_preview(p_url,p_style){	
	alert('Cửa sổ hiện ra bạn hãy bấm tổ hợp 2 phím "Ctrl + P " để in!');
	MM_openBrWindow(p_url,'',p_style);	
}

/**
* @desc: Mở cửa so popup
* @author: tiger0350@gmail.com @date: 17/01/2013 @desc: Khoi tao
*/
function MM_openBrWindow( theURL, winName, features) { //v2.0
	window.open(theURL,winName,features);
}
var setTotalNumberOfWordCounter = "70";
	function displayWordCounter(){
		var getTextValue = document.userForm.name.value;  // Get input textarea value
		var getTextLength = getTextValue.length;   // Get length of input textarea value
		if(getTextLength > setTotalNumberOfWordCounter){     //compare this length with total count
			getTextValue = getTextValue.substring(0,setTotalNumberOfWordCounter);
			document.userForm.name.value =getTextValue;
			return false;
		}
	/**	document.userForm.totalWordLimit.value = (setTotalNumberOfWordCounter-getTextLength); */
		
	   document.getElementById('label_count').innerHTML = "còn lại: " + (setTotalNumberOfWordCounter-getTextLength);
	}
	var MaxLength = 70;
	$('#name').keypress(function(e)
	{
	  if ($(this).val().length >= MaxLength) {
	  e.preventDefault();}
	});
