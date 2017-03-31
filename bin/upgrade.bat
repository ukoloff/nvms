0</*! :: See https://github.com/ukoloff/nvms
@echo off
cscript.exe //Nologo //E:JScript "%~f0"
goto :EOF */0;
!function(t){function n(e){if(r[e])return r[e].X;var o=r[e]={X:{},id:e,loaded:!1};return t[e].call(o.X,o,o.X,n),
o.loaded=!0,o.X}var r={};return n.m=t,n.c=r,n.p="",n(0)}([function(t,n,r){r(23)(function(){r(65),r(38)})},function(t,n,r){(function(n,r){
t.X=n(r)}).call(n,r(10),r(18))},function(t,n,r){(function(n){var r=[].slice;t.X=function(){var t;t=1<=arguments.length?r.call(arguments,0):[],
n.Echo(t.join(" "))}}).call(n,r(7))},function(t,n,r){(function(n,r){t.X=n(r)}).call(n,r(10),r(17))},function(t,n,r){(function(n){
t.X=function(t){return n.CreateObject(t)}}).call(n,r(7))},function(t,n,r){(function(n,r){t.X=n(r.SpecialFolders("AppData"),"nvm$").mk();
}).call(n,r(1),r(8))},function(t,n,r){(function(n){t.X=n("Scripting.FileSystemObject")}).call(n,r(4))},function(t,n){t.X=WScript;
},function(t,n,r){(function(n){t.X=n("WScript.Shell")}).call(n,r(4))},,function(t,n,r){(function(n,r){var e,o;e=function(){},
e.prototype=n,t.X=function(t){var n,r,i,u;n=function(t){o(this,t)},n.prototype=u=new e;for(r in t)i=t[r],u[r]=i;return function(){
return new n(arguments)}},o=function(t,n){var e,o,i,u;for(i="",e=0,o=n.length;e<o;e++)u=n[e],i=r.BuildPath(i,u);t._=i}}).call(n,r(19),r(6));
},,function(t,n,r){(function(n){t.X=function(t,r){var e;return e=n("ADODB.Stream"),e.Type=1,e.Open(),e}}).call(n,r(4))},function(t,n){
t.X=function(t,n){var r,e,o;for("function"!=typeof n&&(o=[]),e=0,r=new Enumerator(t);!r.atEnd();){if(o)o.push(r.item());else if(!1===n(r.item(),e++))return;
r.moveNext()}return o}},,function(t,n,r){(function(n,r){t.X=n(r,"that").mk()}).call(n,r(1),r(5))},,function(t,n,r){(function(t){
var r;n.y=function(){return t.FileExists(this)},n.rm=function(n){return n&&!this.y()||t.DeleteFile(this),this},n.cp=function(n){t.CopyFile(this,n);
},n.mv=function(n){t.MoveFile(this,n)},n.$=function(){return t.GetFile(this)},n.age=function(t){var n;return n=this.$().DateLastModified,
null!=t?new Date-n>t:n},n.ok=function(t){return this.y()&&!this.age(t)},r=function(n,r,e){var o,i,u,c,f;for(f="",i=u=0,c=e.length;u<c;i=++u)o=e[i],
f+=",a["+i+"]";return new Function("x,f,a","return x."+n+"TextFile(f"+f+")")(t,r,e)},n.open=function(){return r("Open",this,arguments);
},n.create=function(){return r("Create",this,arguments)},n.load=function(){var t,n;return t=this.open(1),n=t.ReadAll(),t.Close(),
n},n.save=function(){var t,n,r,e;for(t=this.create(!0),n=0,r=arguments.length;n<r;n++)e=arguments[n],t.Write(e);return t.Close()};
}).call(n,r(6))},function(t,n,r){(function(t,e){var o;n.y=function(){return t.FolderExists(this)},n.rm=function(n){return n&&!this.y()||t.DeleteFolder(this),
this},n.cp=function(n){t.CopyFolder(this,n)},n.mv=function(n){t.MoveFolder(this,n)},n.mk=function(n){var r,e,o;n&&this.rm(n),o=[],
r=this._;try{for(e=this.abs();!e.y();)o.push(e),e=e.up();for(;e=o.pop();)t.CreateFolder(e);return this}finally{this._=r}},n.$=function(){
return t.GetFolder(this)},o=function(t,n){var r;return r=[],e(t,function(t){return r.push(n(t))}),r},n.files=function(){return o(this.$().Files,r(3));
},n.folders=function(){return o(this.$().SubFolders,r(1))}}).call(n,r(6),r(13))},function(t,n,r){(function(t,e){n.toString=function(){
var t;return null!=(t=this._)?t:""},n.abs=function(){return this._=t.GetAbsolutePathName(this),this},n.up=function(){var n;return(n=r(1))(t.GetParentFolderName(this));
},n.bn=function(){return t.GetFileName(this)},n.n=function(){return t.GetBaseName(this)},n.ext=function(){return t.GetExtensionName(this);
},n.ns=function(){return e.NameSpace(this._)}}).call(n,r(6),r(21))},,function(t,n,r){(function(n){t.X=n("Shell.Application");
}).call(n,r(4))},,function(t,n,r){t.X=function(t){var n;try{t()}catch(t){if(n=t,!n.message)throw n;r(2)("ERROR:",n.message);
}}},,,,function(t,n,r){(function(n,r){t.X=function(t,e){n("Fetching:",t),r(t,e)}}).call(n,r(2),r(32))},,,,,function(t,n,r){
(function(n,r){var e,o;e="Msxml2.ServerXMLHTTP\nMsxml2.XMLHTTP\nMicrosoft.XMLHTTP".split(/\s+/),o=function(){var t,r,o;for(t=0,r=e.length;t<r;t++){
o=e[t];try{return n(o)}catch(t){}}throw Error("AJAX not supported!")},t.X=function(t,n){var e,i;if(i=o(),i.open("GET",t,!1),
i.send(null),200!==i.status)throw Error("HTTP error "+i.status+": "+i.statusText);return n?(e=r(),e.Write(i.responseBody),e.SaveToFile(n,2),
void e.Close()):i.responseText}}).call(n,r(4),r(12))},,,,,,function(t,n,r){(function(t,n,r,e,o,i){var u,c,f,s;if(t("https://github.com/ukoloff/nvms/archive/dist.zip",s=n(r,"nvm$.zip")),
e("Extracting..."),f=o(r,"nvm$").mk(!0),f.ns().copyHere(s.ns().Items(),16),s.rm(),c=function(t){var n,r,e,o,i;for(o=t.files(),r=o.length-1;r>=0;r+=-1)if(n=o[r],
"bat"===n.ext())return n;for(i=t.folders(),e=i.length-1;e>=0;e+=-1)if(n=i[e],n=c(n))return n},!(u=c(f))){try{f.rm()}catch(t){}throw Error("Setup not found");
}i.Run(u)}).call(n,r(27),r(3),r(15),r(2),r(1),r(8))},,,,,,,,,,,,,,,,,,,,,,,,,,,function(t,n,r){(function(t){t("Installing/upgrading nvm$ v0.9.3...");
}).call(n,r(2))}]);
