Fabrik.getWindow=function(b){if(Fabrik.Windows[b.id]){if(b.visible!==false){Fabrik.Windows[b.id].open()}Fabrik.Windows[b.id].setOptions(b)}else{var a=b.type?b.type:"";switch(a){case"redirect":Fabrik.Windows[b.id]=new Fabrik.RedirectWindow(b);break;case"modal":Fabrik.Windows[b.id]=new Fabrik.Modal(b);break;case"":default:Fabrik.Windows[b.id]=new Fabrik.Window(b);break}}return Fabrik.Windows[b.id]};Fabrik.Window=new Class({Implements:[Events,Options],options:{id:"FabrikWindow",title:"&nbsp;",container:false,loadMethod:"html",contentURL:"",createShowOverLay:false,width:300,height:300,loadHeight:100,expandable:true,offset_x:null,offset_y:null,visible:true,onClose:function(){},onOpen:function(){},onContentLoaded:function(){this.fitToContent(false)},destroy:true},modal:false,classSuffix:"",expanded:false,initialize:function(a){this.setOptions(a);this.makeWindow()},watchTabs:function(){this.window.getElements(".nav-tabs a").addEvent("mouseup",function(){this.fitToWidth();this.drawWindow()}.bind(this))},deleteButton:function(){var a=function(d){this.close(d)}.bind(this);var b;if(Fabrik.bootstrapped){b=new Element("a",{href:"#","class":"closeFabWin",events:{click:a}});b.adopt(new Element("i.icon-cancel.icon-remove-sign"))}else{b=new Element("a",{href:"#","class":"close",events:{click:a}});var c=Fabrik.iconGen.create(icon.cross);c.inject(b)}return b},center:function(){var a=this.windowWidthInPx(),b=this.window.getStyle("width"),c=this.window.getStyle("height");b=(b===null||b==="auto")?a:this.window.getStyle("width");b=b.toInt();c=(c===null||c==="auto")?this.options.height+10:this.window.getStyle("height");c=c.toInt();var i={width:b+"px",height:c+"px"};if(!(Fabrik.bootstrapped&&this.modal)){var j=window.getSize().y/2+window.getScroll().y-(c/4);i.top=typeOf(this.options.offset_y)!=="null"?window.getScroll().y+this.options.offset_y:j;var g=window.getSize().x/2+window.getScroll().x-b/2;i.left=typeOf(this.options.offset_x)!=="null"?window.getScroll().x+this.options.offset_x:g}else{var f=(window.getSize().y-c)/2;var e=(window.getSize().x-b)/2;i.top=f<0?window.getScroll().y:window.getScroll().y+f;i.left=e<0?window.getScroll().x:window.getScroll().x+e;i["margin-left"]=0}this.window.setStyles(i)},windowWidthInPx:function(){return this.windowDimenionInPx("width")},windowDimenionInPx:function(a){var c=a==="height"?"y":"x";var b=this.options[a]+"";if(b.indexOf("%")!==-1){return Math.floor(window.getSize()[c]*(b.toFloat()/100))}return b.toInt()},makeWindow:function(){var f,c,d,e,j,m,h,b,q=[];this.window=new Element("div",{id:this.options.id,"class":"fabrikWindow "+this.classSuffix+" modal"});this.window.setStyle("width",this.options.width);this.window.setStyle("height",this.options.height);this.center();this.contentWrapperEl=this.window;var p=this.deleteButton();var g="handlelabel";if(!this.modal){g+=" draggable";var i=Fabrik.bootstrapped?"bottomBar BootStrapped":"bottomBar";f=new Element("div",{"class":"bottomBar modal-footer"});c=new Element("div",{"class":"dragger"});if(Fabrik.bootstrapped){j=new Element("i.icon-expand")}else{j=Fabrik.iconGen.create(icon.resize,{scale:0.8,rotate:0,shadow:{color:"#fff",translate:{x:0,y:1}},fill:{color:["#999","#666"]}})}j.inject(c);f.adopt(c)}if(Fabrik.bootstrapped){e=new Element("i.icon-out-2.icon-fullscreen");m=new Element("h3",{"class":g}).set("text",this.options.title)}else{e=Fabrik.iconGen.create(icon.expand,{scale:0.4,fill:{color:["#666666","#999999"]}});m=new Element("span",{"class":g}).set("text",this.options.title)}q.push(m);if(this.options.expandable&&this.modal===false){d=new Element("a",{href:"#","class":"expand",events:{click:function(r){this.expand(r)}.bind(this)}}).adopt(e);q.push(d)}q.push(p);this.handle=this.getHandle().adopt(q);var o=15;var l=15;var n=this.options.height-o-l;if(n<this.options.loadHeight){n=this.options.loadHeight}this.contentWrapperEl=new Element("div.contentWrapper",{styles:{height:n+"px"}});var k=new Element("div",{"class":"itemContent"});this.contentEl=new Element("div",{"class":"itemContentPadder"});k.adopt(this.contentEl);this.contentWrapperEl.adopt(k);h=this.windowWidthInPx();b=this.windowDimenionInPx("height");this.contentWrapperEl.setStyles({height:b,width:h+"px"});if(this.modal){this.window.adopt([this.handle,this.contentWrapperEl])}else{this.window.adopt([this.handle,this.contentWrapperEl,f]);this.window.makeResizable({handle:c,onDrag:function(){Fabrik.fireEvent("fabrik.window.resized",this.window);this.drawWindow()}.bind(this)});var a={handle:this.handle};a.onComplete=function(){Fabrik.fireEvent("fabrik.window.moved",this.window);this.drawWindow()}.bind(this);a.container=this.options.container?document.id(this.options.container):null;this.window.makeDraggable(a)}if(!this.options.visible){this.window.fade("hide")}document.id(document.body).adopt(this.window);this.loadContent()},expand:function(c){c.stop();if(!this.expanded){this.expanded=true;var b=window.getSize();this.unexpanded=this.window.getCoordinates();var a=window.getScroll();this.window.setPosition({x:a.x,y:a.y}).setStyles({width:b.x,height:b.y})}else{this.window.setPosition({x:this.unexpanded.left,y:this.unexpanded.top}).setStyles({width:this.unexpanded.width,height:this.unexpanded.height});this.expanded=false}this.drawWindow()},getHandle:function(){var a=this.handleClass();return new Element("div",{"class":"draggable "+a})},handleClass:function(){return Fabrik.bootstrapped?"modal-header":"handle"},loadContent:function(){var b;window.fireEvent("tips.hideall");switch(this.options.loadMethod){case"html":if(typeOf(this.options.content)==="null"){fconsole("no content option set for window.html");this.close();return}if(typeOf(this.options.content)==="element"){this.options.content.inject(this.contentEl.empty())}else{this.contentEl.set("html",this.options.content)}this.fireEvent("onContentLoaded",[this]);this.watchTabs();break;case"xhr":b=this.window.getElement(".itemContent");b=this.contentEl;Fabrik.loader.start(b);new Request.HTML({url:this.options.contentURL,data:{fabrik_window_id:this.options.id},update:b,onSuccess:function(){Fabrik.loader.stop(b);this.fireEvent("onContentLoaded",[this]);this.watchTabs()}.bind(this)}).post();break;case"iframe":var c=this.options.height-40;var a=this.contentEl.getScrollSize().x+40<window.getWidth()?this.contentEl.getScrollSize().x+40:window.getWidth();b=this.window.getElement(".itemContent");Fabrik.loader.start(b);if(this.iframeEl){this.iframeEl.dispose()}this.iframeEl=new Element("iframe",{id:this.options.id+"_iframe",name:this.options.id+"_iframe","class":"fabrikWindowIframe",src:this.options.contentURL,marginwidth:0,marginheight:0,frameBorder:0,scrolling:"auto",styles:{height:c+"px",width:a}}).inject(this.window.getElement(".itemContent"));this.iframeEl.hide();this.iframeEl.addEvent("load",function(d){Fabrik.loader.stop(this.window.getElement(".itemContent"));this.iframeEl.show();this.fireEvent("onContentLoaded",[this]);this.watchTabs()}.bind(this));break}},drawWindow:function(){var a=this.window.getElement("."+this.handleClass());a=a?a.getSize().y:25;var b=this.window.getElement(".bottomBar").getSize().y;this.contentWrapperEl.setStyle("height",this.window.getDimensions().height-(a+b));this.contentWrapperEl.setStyle("width",this.window.getDimensions().width-2);if(this.options.loadMethod==="iframe"){this.iframeEl.setStyle("height",this.contentWrapperEl.offsetHeight-40);this.iframeEl.setStyle("width",this.contentWrapperEl.offsetWidth-10)}},fitToContent:function(b,a){b=b===undefined?true:b;a=a===undefined?true:a;if(this.options.loadMethod!=="iframe"){this.fitToHeight();this.fitToWidth()}this.drawWindow();if(a){this.center()}if(!this.options.offset_y&&b){var c=new Fx.Scroll(window).toElement(this.window)}else{this.window.position()}},fitToHeight:function(){var d=this.window.getElement("."+this.handleClass());d=d?d.getSize().y:25;var e=this.window.getElement(".bottomBar").getSize().y;var c=this.window.getElement(".itemContent");var a=c.getScrollSize().y+d+e;var b=a<window.getHeight()?a:window.getHeight();this.window.setStyle("height",b)},fitToWidth:function(){var b=this.window.getElement(".itemContent");var a=b.getScrollSize().x+25<window.getWidth()?b.getScrollSize().x+25:window.getWidth();this.window.setStyle("width",a)},close:function(a){if(this.modal){}if(a){a.stop()}if(this.options.destroy){this.window.destroy();delete (Fabrik.Windows[this.options.id])}else{this.window.fade("hide")}this.fireEvent("onClose",[this])},open:function(a){if(this.modal){}if(a){a.stop()}this.window.fade("show");this.fireEvent("onOpen",[this])}});Fabrik.Modal=new Class({Extends:Fabrik.Window,modal:true,classSuffix:"fabrikWindow-modal",getHandle:function(){var a=this.handleClass();return new Element("div",{"class":a})}});Fabrik.RedirectWindow=new Class({Extends:Fabrik.Window,initialize:function(c){var a={id:"redirect",title:c.title?c.title:"",loadMethod:b,width:c.width?c.width:300,height:c.height?c.height:320,minimizable:false,collapsible:true};a.id="redirect";c=Object.merge(a,c);var b;c.loadMethod="xhr";if(!c.contentURL.contains(Fabrik.liveSite)&&(c.contentURL.contains("http://")||c.contentURL.contains("https://"))){c.loadMethod="iframe"}else{if(!c.contentURL.contains("tmpl=component")){c.contentURL+=c.contentURL.contains("?")?"&tmpl=component":"?tmpl=component"}}this.setOptions(c);this.makeWindow()}});