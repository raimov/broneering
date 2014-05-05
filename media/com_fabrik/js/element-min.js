var FbElement=new Class({Implements:[Events,Options],options:{element:null,defaultVal:"",value:"",label:"",editable:false,isJoin:false,joinId:0},initialize:function(c,b){this.plugin="";b.element=c;this.strElement=c;this.loadEvents=[];this.events=$H({});this.setOptions(b);return this.setElement()},destroy:function(){},setElement:function(){if(document.id(this.options.element)){this.element=document.id(this.options.element);this.setorigId();return true}return false},get:function(b){if(b==="value"){return this.getValue()}},getFormElementsKey:function(b){this.baseElementId=b;return b},attachedToForm:function(){this.setElement();if(Fabrik.bootstrapped){this.alertImage=new Element("i."+this.form.options.images.alert);this.successImage=new Element("i.icon-checkmark",{styles:{color:"green"}})}else{this.alertImage=new Asset.image(this.form.options.images.alert);this.alertImage.setStyle("cursor","pointer");this.successImage=new Asset.image(this.form.options.images.action_check)}if(this.form.options.images.ajax_loader.contains("<i")){this.loadingImage=new Element("span").set("html",this.form.options.images.ajax_loader)}else{this.loadingImage=new Asset.image(this.form.options.images.ajax_loader)}},fireEvents:function(b){if(this.hasSubElements()){this._getSubElements().each(function(c){Array.from(b).each(function(d){c.fireEvent(d)}.bind(this))}.bind(this))}else{Array.from(b).each(function(c){if(this.element){this.element.fireEvent(c)}}.bind(this))}},getElement:function(){if(typeOf(this.element)==="null"){this.element=document.id(this.options.element)}return this.element},_getSubElements:function(){var b=this.getElement();if(typeOf(b)==="null"){return false}this.subElements=b.getElements(".fabrikinput");return this.subElements},hasSubElements:function(){this._getSubElements();if(typeOf(this.subElements)==="array"||typeOf(this.subElements)==="elements"){return this.subElements.length>0?true:false}return false},unclonableProperties:function(){return["form"]},cloneUpdateIds:function(b){this.element=document.id(b);this.options.element=b},runLoadEvent:function(js,delay){delay=delay?delay:0;if(typeOf(js)==="function"){js.delay(delay)}else{if(delay===0){eval(js)}else{(function(){consolde.log("delayed.....");eval(js)}.bind(this)).delay(delay)}}},removeCustomEvents:function(){},renewEvents:function(){this.events.each(function(b,c){this.element.removeEvents(c);b.each(function(d){this.addNewEventAux(c,d)}.bind(this))}.bind(this))},addNewEventAux:function(action,js){this.element.addEvent(action,function(e){typeOf(js)==="function"?js.delay(0,this,this):eval(js)}.bind(this))},addNewEvent:function(b,c){if(b==="load"){this.loadEvents.push(c);this.runLoadEvent(c)}else{if(!this.element){this.element=document.id(this.strElement)}if(this.element){if(!Object.keys(this.events).contains(b)){this.events[b]=[]}this.events[b].push(c);this.addNewEventAux(b,c)}}},addEvent:function(b,c){this.addNewEvent(b,c)},validate:function(){},addNewOption:function(h,c){var b;var g=document.id(this.options.element+"_additions").value;var e={val:h,label:c};if(g!==""){b=JSON.decode(g)}else{b=[]}b.push(e);var f="[";for(var d=0;d<b.length;d++){f+=JSON.encode(b[d])+","}f=f.substring(0,f.length-1)+"]";document.id(this.options.element+"_additions").value=f},getLabel:function(){return this.options.label},update:function(b){if(this.getElement()){if(this.options.editable){this.element.value=b}else{this.element.innerHTML=b}}},updateByLabel:function(b){this.update(b)},set:function(b){this.update(b)},getValue:function(){if(this.element){if(this.options.editable){return this.element.value}else{return this.options.value}}return false},reset:function(){this.resetEvents();if(this.options.editable===true){this.update(this.options.defaultVal)}},resetEvents:function(){this.loadEvents.each(function(b){this.runLoadEvent(b,100)}.bind(this))},clear:function(){this.update("")},onsubmit:function(b){if(b){b(true)}},afterAjaxValidation:function(){},cloned:function(b){this.renewEvents()},decloned:function(b){},getContainer:function(){return typeOf(this.element)==="null"?false:this.element.getParent(".fabrikElementContainer")},getErrorElement:function(){return this.getContainer().getElements(".fabrikErrorMessage")},getValidationFx:function(){if(!this.validationFX){this.validationFX=new Fx.Morph(this.getErrorElement()[0],{duration:500,wait:true})}return this.validationFX},tips:function(){return Fabrik.tips.elements.filter(function(b){if(b===this.getContainer()||b.getParent()===this.getContainer()){return true}}.bind(this))},addTipMsg:function(j,c){c=c?c:"error";var g,e,f=this.tips();if(f.length===0){return}f=jQuery(f[0]);if(f.attr(c)===undefined){f.data("popover").show();f.attr(c,j);e=f.data("popover").tip().find(".popover-content");var h=new Element("div");h.set("html",e.html());var b=new Element("li."+c);b.set("html",j);new Element("i."+this.form.options.images.alert).inject(b,"top");h.getElement("ul").adopt(b);f.attr("data-content",unescape(h.get("html")));f.data("popover").setContent();f.data("popover").options.content=h.get("html");f.data("popover").hide()}},removeTipMsg:function(e){var c=c?c:"error",f=this.tips();f=jQuery(f[0]);if(f.attr(c)!==undefined){f.data("popover").show();a=f.data("popover").tip().find(".popover-content");var g=new Element("div");g.set("html",a.html());var b=g.getElement("li.error");if(b){b.destroy()}f.attr("data-content",g.get("html"));f.data("popover").setContent();f.data("popover").options.content=g.get("html");f.data("popover").hide();f.removeAttr(c)}},setErrorMessage:function(c,f){var k,d;var g=["fabrikValidating","fabrikError","fabrikSuccess"];var b=this.getContainer();if(b===false){console.log("Notice: couldn not set error msg for "+c+" no container class found");return}g.each(function(n){var m=f===n?b.addClass(n):b.removeClass(n)});var j=this.getErrorElement();j.each(function(m){m.empty()});switch(f){case"fabrikError":Fabrik.loader.stop(this.element);if(Fabrik.bootstrapped){this.addTipMsg(c)}else{k=new Element("a",{href:"#",title:c,events:{click:function(m){m.stop()}}}).adopt(this.alertImage);Fabrik.tips.attach(k)}j[0].adopt(k);b.removeClass("success").removeClass("info").addClass("error");if(j.length>1){for(i=1;i<j.length;i++){j[i].set("html",c)}}break;case"fabrikSuccess":b.addClass("success").removeClass("info").removeClass("error");if(Fabrik.bootstrapped){Fabrik.loader.stop(this.element);this.removeTipMsg()}else{j[0].adopt(this.successImage);var h=function(){j[0].addClass("fabrikHide");b.removeClass("success")};h.delay(700)}break;case"fabrikValidating":b.removeClass("success").addClass("info").removeClass("error");Fabrik.loader.start(this.element,c);break}this.getErrorElement().removeClass("fabrikHide");var l=this.form;if(f==="fabrikError"||f==="fabrikSuccess"){l.updateMainError()}var e=this.getValidationFx();switch(f){case"fabrikValidating":case"fabrikError":e.start({opacity:1});break;case"fabrikSuccess":e.start({opacity:1}).chain(function(){if(b.hasClass("fabrikSuccess")){b.removeClass("fabrikSuccess");this.start.delay(700,this,{opacity:0,onComplete:function(){b.addClass("success").removeClass("error");l.updateMainError();g.each(function(m){b.removeClass(m)})}})}});break}},setorigId:function(){if(this.options.inRepeatGroup){var b=this.options.element;this.origId=b.substring(0,b.length-1-this.options.repeatCounter.toString().length)}},decreaseName:function(c){var b=this.getElement();if(typeOf(b)==="null"){return false}if(this.hasSubElements()){this._getSubElements().each(function(d){d.name=this._decreaseName(d.name,c);d.id=this._decreaseId(d.id,c)}.bind(this))}else{if(typeOf(this.element.name)!=="null"){this.element.name=this._decreaseName(this.element.name,c)}}if(typeOf(this.element.id)!=="null"){this.element.id=this._decreaseId(this.element.id,c)}return this.element.id},_decreaseId:function(h,g,f){var b=false;f=f?f:false;if(f!==false){if(h.contains(f)){h=h.replace(f,"");b=true}}var e=Array.from(h.split("_"));var c=e.getLast();if(typeOf(c.toInt())==="null"){return e.join("_")}if(c>=1&&c>g){c--}e.splice(e.length-1,1,c);var d=e.join("_");if(b){d+=f}this.options.element=d;return d},_decreaseName:function(g,f,e){suffixFound=false;e=e?e:false;if(e!==false){if(g.contains(e)){g=g.replace(e,"");suffixFound=true}}var b=g.split("[");var c=b[1].replace("]","").toInt();if(c>=1&&c>f){c--}c=c+"]";b[1]=c;var d=b.join("[");if(suffixFound){d+=e}return d},getRepeatNum:function(){if(this.options.inRepeatGroup===false){return false}return this.element.id.split("_").getLast()},getBlurEvent:function(){return this.element.get("tag")==="select"?"change":"blur"},select:function(){},focus:function(){},hide:function(){var b=this.getContainer();if(b){b.hide()}},show:function(){var b=this.getContainer();if(b){b.show()}},toggle:function(){var b=this.getContainer();if(b){b.toggle()}},getCloneName:function(){return this.options.element}});var FbFileElement=new Class({Extends:FbElement,ajaxFolder:function(){this.folderlist=[];if(typeOf(this.element)==="null"){return}var b=this.element.getParent(".fabrikElement");this.breadcrumbs=b.getElement(".breadcrumbs");this.folderdiv=b.getElement(".folderselect");this.slider=new Fx.Slide(this.folderdiv,{duration:500});this.slider.hide();this.hiddenField=b.getElement(".folderpath");b.getElement(".toggle").addEvent("click",function(c){c.stop();this.slider.toggle()}.bind(this));this.watchAjaxFolderLinks()},watchAjaxFolderLinks:function(){this.folderdiv.getElements("a").addEvent("click",function(b){this.browseFolders(b)}.bind(this));this.breadcrumbs.getElements("a").addEvent("click",function(b){this.useBreadcrumbs(b)}.bind(this))},browseFolders:function(c){c.stop();this.folderlist.push(c.target.get("text"));var b=this.options.dir+this.folderlist.join(this.options.ds);this.addCrumb(c.target.get("text"));this.doAjaxBrowse(b)},useBreadcrumbs:function(g){g.stop();var f=false;var j=g.target.className;this.folderlist=[];var d=this.breadcrumbs.getElements("a").every(function(c){if(c.className===j){return false}this.folderlist.push(g.target.innerHTML);return true},this);var h=[this.breadcrumbs.getElements("a").shift().clone(),this.breadcrumbs.getElements("span").shift().clone()];this.breadcrumbs.empty();this.breadcrumbs.adopt(h);this.folderlist.each(function(c){this.addCrumb(c)},this);var b=this.options.dir+this.folderlist.join(this.options.ds);this.doAjaxBrowse(b)},doAjaxBrowse:function(b){var c={dir:b,option:"com_fabrik",format:"raw",task:"plugin.pluginAjax",plugin:"fileupload",method:"ajax_getFolders",element_id:this.options.id};new Request({url:"",data:c,onComplete:function(d){d=JSON.decode(d);this.folderdiv.empty();d.each(function(e){new Element("li",{"class":"fileupload_folder"}).adopt(new Element("a",{href:"#"}).set("text",e)).inject(this.folderdiv)}.bind(this));if(d.length===0){this.slider.hide()}else{this.slider.slideIn()}this.watchAjaxFolderLinks();this.hiddenField.value="/"+this.folderlist.join("/")+"/";this.fireEvent("onBrowse")}.bind(this)}).send()},addCrumb:function(b){this.breadcrumbs.adopt(new Element("a",{href:"#","class":"crumb"+this.folderlist.length}).set("text",b),new Element("span").set("text"," / "))}});