0</*! :: See https://github.com/ukoloff/nvms
@echo off
cscript.exe //Nologo //E:JScript "%~f0"
goto :EOF */0;
!function(n){function t(o){if(r[o])return r[o].X;var e=r[o]={X:{},id:o,loaded:!1};return n[o].call(e.X,e,e.X,t),
e.loaded=!0,e.X}var r={};return t.m=n,t.c=r,t.p="",t(0)}({0:function(n,t,r){r(44)(function(){r(111),r(49)();
})},1:function(n,t,r){(function(t){var r,o=[].slice;n.X=r=function(){var n;n=1<=arguments.length?o.call(arguments,0):[],
r._(n.join(" "))},r._=function(n){t.Echo(n)}}).call(t,r(6))},2:function(n,t,r){(function(t){n.X=t(r(26));
}).call(t,r(11))},3:function(n,t,r){(function(t){n.X=t(r(27))}).call(t,r(11))},4:function(n,t,r){(function(t){
n.X=t("WScript.Shell")}).call(t,r(5))},5:function(n,t,r){(function(t){n.X=function(n){return t.CreateObject(n);
}}).call(t,r(6))},6:function(n,t,r){(function(t){n.X=t.h||WScript}).call(t,r(15))},7:function(n,t,r){(function(t){
n.X=t("Scripting.FileSystemObject")}).call(t,r(5))},8:function(n,t,r){(function(t,r){n.X=t(r.Environment("Process")("USERPROFILE"),".nvm$").mk();
}).call(t,r(3),r(4))},9:function(n,t,r){(function(t,r,o,e,i,u){var c,f,s,l,a,p,h;h=[],n.X=c=function(){
var n,t,r,o,e;for(e=0,o=h.length,t={$:function(){return s(function(){return p(o,e,arguments)})}},r="sa",n=r.length;--n>=0;)!function(n){
t[n]=function(t){var r;return e&&!(r=h[h.length-1])[n]||(h.push(r={}),e=h.length),r[n]=t,this}}(r.substr(n,1));
return t},a={},s=function(n){return n.prototype=a,n},l=function(n){return a===n.prototype},f=function(n){var r;
try{return n(),!0}catch(n){r=n,t("FAIL:",r.message)}},p=function(n,t,i){var u,s,a,p;return s={},i=[].slice.call(i),
"function"==typeof i[i.length-1]&&(u=i.pop()),a=function(n){return n?p():void u(n)},(p=function(){for(var p,v,x,m,d,y;n<t;){
if(y=h[n++],v=i,y.s){if(!f(function(){return v=y.s.apply(s,i)}))return!1;if(!1===v)continue;null==v&&(v=i),"object"!=typeof v&&(v=[v]);
}if(y.a){if(u)return l(y.a)?void y.a.apply(s,v.concat([a])):(v=[r,"",o(),n-1].concat(v),x=e.Exec("wscript.exe //B //E:JScript"+function(){
var n,t,r;for(r=[],n=0,t=v.length;n<t;n++)p=v[n],r.push(' "'+p+'"');return r}().join("")),void(null!=(m=c._)&&m.push(function(){
if(x.Status)return a(!x.ExitCode),!0})));if(d=!0,!f(function(){return d=y.a.apply(s,v)}))return!1;if(!d&&l(y.a))return!1;
}}return!u||void u(!0)})()},c.$=function(n){if(""===i[0]&&/^\d+$/.test(i[2])&&o()===i[1]){"function"==typeof n&&n();
try{return h[i[2]].a.apply({},i.slice(3)),u()}catch(n){return u(1)}}}}).call(t,r(1),r(12),r(36),r(4),r(22),r(21));
},10:function(n,t,r){(function(t,r){n.X=t(r,"that").mk()}).call(t,r(3),r(8))},11:function(n,t,r){(function(t){
var o,e;o=function(){},o.prototype=r(28),n.X=function(n){var t,r,i,u;t=function(n){e(this,n)},t.prototype=u=new o;
for(r in n)i=n[r],u[r]=i;return function(){return new t(arguments)}},e=function(n,r){var o,e,i,u;for(i="",o=0,
e=r.length;o<e;o++)u=r[o],i=t.BuildPath(i,u);n._=i}}).call(t,r(7))},12:function(n,t,r){(function(t,r){n.X=t(r.ScriptFullName);
}).call(t,r(2),r(6))},14:function(n,t){n.X=function(n,t){var r,o,e;for("function"!=typeof t&&(e=[]),o=0,
r=new Enumerator(n);!r.atEnd();){if(e)e.push(r.item());else if(!1===t(r.item(),o++))return;r.moveNext()}return e;
}},15:function(n,t){},21:function(n,t,r){(function(t){n.X=function(n){null==n&&(n=0),t.Quit(n)}}).call(t,r(6));
},22:function(n,t,r){(function(t,r){n.X=t(r.Arguments)}).call(t,r(14),r(6))},23:function(n,t,r){(function(t){
n.X=function(n,r){var o;return o=t("ADODB.Stream"),o.Type=1,o.Open(),o}}).call(t,r(5))},24:function(n,t,r){
(function(t,r,o,e,i){n.X=t().s(function(n,t){r("Fetching:",n)}).a(function(n,t){o(n,e(i,t))}).$()}).call(t,r(9),r(1),r(34),r(2),r(10));
},26:function(n,t,r){(function(n){var r;t.y=function(){return n.FileExists(this)},t.rm=function(t){return t&&!this.y()||n.DeleteFile(this),
this},t.cp=function(t){n.CopyFile(this,t)},t.mv=function(t){n.MoveFile(this,t)},t.$=function(){return n.GetFile(this);
},t.sz=function(){return this.$().Size},t.age=function(n){var t;return t=this.$().DateLastModified,null!=n?new Date-t>n:t;
},t.ok=function(n){return this.y()&&!this.age(n)},r=function(t,r,o){var e,i,u,c,f;for(f="",i=u=0,c=o.length;u<c;i=++u)e=o[i],
f+=",a["+i+"]";return new Function("x,f,a","return x."+t+"TextFile(f"+f+")")(n,r,o)},t.open=function(){return r("Open",this,arguments);
},t.create=function(){return r("Create",this,arguments)},t.load=function(){var n,t;return n=this.open(1),t=n.ReadAll(),
n.Close(),t},t.save=function(){var n,t,r,o;for(n=this.create(!0),t=0,r=arguments.length;t<r;t++)o=arguments[t],
n.Write(o);return n.Close()}}).call(t,r(7))},27:function(n,t,r){(function(n,o,e){var i;t.y=function(){return n.FolderExists(this);
},t.rm=function(t){return t&&!this.y()||n.DeleteFolder(this),this},t.cp=function(t){n.CopyFolder(this,t)},t.mv=function(t){
n.MoveFolder(this,t)},t.mk=function(t){var r,o,e;t&&this.rm(t),e=[],r=this._;try{for(o=this.abs();!o.y();)e.push(o),
o=o.up();for(;o=e.pop();)n.CreateFolder(o);return this}finally{this._=r}},t.$=function(){return n.GetFolder(this);
},i=function(n,t){var r;return r=[],o(n,function(n){return r.push(t(n))}),r},t.files=function(){return i(this.$().Files,r(2));
},t.folders=function(){return i(this.$().SubFolders,r(3))},t.cd=function(){return e.CurrentDirectory=this}}).call(t,r(7),r(14),r(4));
},28:function(n,t,r){(function(n,o){t.toString=function(){var n;return null!=(n=this._)?n:""},t.abs=function(){
return this._=n.GetAbsolutePathName(this),this},t.up=function(){var t;return(t=r(3))(n.GetParentFolderName(this));
},t.bn=function(t){var o,e,i;for(e=n.GetFileName(this);--t>0;)o||(o=r(11)()),e=""+o((i=(i||this).up()).bn(),e);
return e},t.n=function(){return n.GetBaseName(this)},t.ext=function(){return n.GetExtensionName(this)},t.ns=function(){
return o.NameSpace(this._)}}).call(t,r(7),r(30))},30:function(n,t,r){(function(t){n.X=t("Shell.Application");
}).call(t,r(5))},34:function(n,t,r){(function(t,r){var o,e;o="Msxml2.ServerXMLHTTP\nMsxml2.XMLHTTP\nMicrosoft.XMLHTTP".split(/\s+/),
e=function(){var n,r,e;for(n=0,r=o.length;n<r;n++){e=o[n];try{return t(e)}catch(n){}}throw Error("AJAX not supported!");
},n.X=function(n,t){var o,i;if(i=e(),i.open("GET",n,!1),i.send(null),200!==i.status)throw Error("HTTP error "+i.status+": "+i.statusText);
return t?(o=r(),o.Write(i.responseBody),o.SaveToFile(t,2),void o.Close()):i.responseText}}).call(t,r(5),r(23));
},36:function(n,t,r){(function(t){var r,o;o=0,n.X=function(){return o||(o="<iJknA|"+r(t.load())+">")},r=function(n){
var t,r,o;for(t=1,r=0,o=n.length;o--;)t=(t+n.charCodeAt(o))%65521,r=(r+t)%65521;return r<<16+t}}).call(t,r(12));
},44:function(n,t,r){n.X=function(n){var t;try{n()}catch(n){if(t=n,!t.message)throw t;r(1)("ERROR:",t.message);
}}},49:function(n,t,r){(function(t,r,o,e,i,u,c){var f,s,l;l="nvm$.zip",s=t(r,"nvm$"),n.X=o().s(function(){
return["https://github.com/ukoloff/nvms/archive/dist.zip",l]}).a(e).s(function(){i("Extracting...")}).a(function(){
var n;n=u(r,l),s.mk(!0),s.ns().copyHere(n.ns().Items(),16),n.rm()}).s(function(){var n;if(!(n=f(s))){try{s.rm();
}catch(n){}throw Error("Setup not found")}i("Running:",n.bn()),c.Run(n)}).$(),f=function(n){var t,r,o,e,i;for(e=n.files(),
r=e.length-1;r>=0;r+=-1)if(t=e[r],"bat"===t.ext())return t;for(i=n.folders(),o=i.length-1;o>=0;o+=-1)if(t=i[o],
t=f(t))return t}}).call(t,r(3),r(10),r(9),r(24),r(1),r(2),r(4))},111:function(n,t,r){(function(n){n("Installing/upgrading nvm$ v0.10.1...");
}).call(t,r(1))}});
