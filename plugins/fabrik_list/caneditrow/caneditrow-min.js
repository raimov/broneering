var FbListCanEditRow=new Class({Extends:FbListPlugin,initialize:function(a){this.parent(a);Fabrik.addEvent("onCanEditRow",function(c,b){this.onCanEditRow(c,b)}.bind(this))},onCanEditRow:function(b,a){a=a[0];b.result=this.options.acl[a]}});