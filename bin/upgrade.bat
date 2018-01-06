0</*! :: See https://github.com/ukoloff/nvms
@echo off
cscript.exe //Nologo //E:JScript "%~f0"
goto :EOF */0;
!function(t){function n(e){if(r[e])return r[e].X;var i=r[e]={X:{},id:e,loaded:!1};return t[e].call(i.X,i,i.X,n),
i.loaded=!0,i.X}var r={};return n.m=t,n.c=r,n.p="",n(0)}([function(t,n,r){r(25)(function(){r(69),r(46)})},function(t,n,r){(function(n){
t.X=n(r(17))}).call(n,r(8))},function(t,n,r){(function(n){var r=[].slice;t.X=function(){var t;t=1<=arguments.length?r.call(arguments,0):[],
n.Echo(t.join(" "))}}).call(n,r(6))},function(t,n,r){(function(n){t.X=n(r(16))}).call(n,r(8))},function(t,n,r){(function(n){
t.X=function(t){return n.CreateObject(t)}}).call(n,r(6))},function(t,n,r){(function(n){t.X=n("Scripting.FileSystemObject");
}).call(n,r(4))},function(t,n){t.X=WScript},function(t,n,r){(function(n,r){t.X=n(r.Environment("Process")("USERPROFILE"),".nvm$").mk();
}).call(n,r(1),r(9))},function(t,n,r){(function(n){var e,i;e=function(){},e.prototype=r(18),t.X=function(t){var n,r,o,u;n=function(t){
i(this,t)},n.prototype=u=new e;for(r in t)o=t[r],u[r]=o;return function(){return new n(arguments)}},i=function(t,r){var e,i,o,u;for(o="",
e=0,i=r.length;e<i;e++)u=r[e],o=n.BuildPath(o,u);t._=o}}).call(n,r(5))},function(t,n,r){(function(n){t.X=n("WScript.Shell");
}).call(n,r(4))},,,function(t,n){t.X=function(t,n){var r,e,i;for("function"!=typeof n&&(i=[]),e=0,r=new Enumerator(t);!r.atEnd();){
if(i)i.push(r.item());else if(!1===n(r.item(),e++))return;r.moveNext()}return i}},function(t,n,r){(function(n,r){t.X=n(r,"that").mk();
}).call(n,r(1),r(7))},,,function(t,n,r){(function(t){var r;n.y=function(){return t.FileExists(this)},n.rm=function(n){return n&&!this.y()||t.DeleteFile(this),
this},n.cp=function(n){t.CopyFile(this,n)},n.mv=function(n){t.MoveFile(this,n)},n.$=function(){return t.GetFile(this)},n.sz=function(){
return this.$().Size},n.age=function(t){var n;return n=this.$().DateLastModified,null!=t?new Date-n>t:n},n.ok=function(t){return this.y()&&!this.age(t);
},r=function(n,r,e){var i,o,u,c,f;for(f="",o=u=0,c=e.length;u<c;o=++u)i=e[o],f+=",a["+o+"]";return new Function("x,f,a","return x."+n+"TextFile(f"+f+")")(t,r,e);
},n.open=function(){return r("Open",this,arguments)},n.create=function(){return r("Create",this,arguments)},n.load=function(){var t,n;
return t=this.open(1),n=t.ReadAll(),t.Close(),n},n.save=function(){var t,n,r,e;for(t=this.create(!0),n=0,r=arguments.length;n<r;n++)e=arguments[n],
t.Write(e);return t.Close()}}).call(n,r(5))},function(t,n,r){(function(t,e){var i;n.y=function(){return t.FolderExists(this)},n.rm=function(n){
return n&&!this.y()||t.DeleteFolder(this),this},n.cp=function(n){t.CopyFolder(this,n)},n.mv=function(n){t.MoveFolder(this,n)},n.mk=function(n){
var r,e,i;n&&this.rm(n),i=[],r=this._;try{for(e=this.abs();!e.y();)i.push(e),e=e.up();for(;e=i.pop();)t.CreateFolder(e);return this;
}finally{this._=r}},n.$=function(){return t.GetFolder(this)},i=function(t,n){var r;return r=[],e(t,function(t){return r.push(n(t));
}),r},n.files=function(){return i(this.$().Files,r(3))},n.folders=function(){return i(this.$().SubFolders,r(1))}}).call(n,r(5),r(12));
},function(t,n,r){(function(t,e){n.toString=function(){var t;return null!=(t=this._)?t:""},n.abs=function(){return this._=t.GetAbsolutePathName(this),
this},n.up=function(){var n;return(n=r(1))(t.GetParentFolderName(this))},n.bn=function(n){var e,i,o;for(i=t.GetFileName(this);--n>0;)e||(e=r(8)()),
i=""+e((o=(o||this).up()).bn(),i);return i},n.n=function(){return t.GetBaseName(this)},n.ext=function(){return t.GetExtensionName(this);
},n.ns=function(){return e.NameSpace(this._)}}).call(n,r(5),r(20))},function(t,n,r){(function(n){t.X=function(t,r){var e;return e=n("ADODB.Stream"),
e.Type=1,e.Open(),e}}).call(n,r(4))},function(t,n,r){(function(n){t.X=n("Shell.Application")}).call(n,r(4))},,,function(t,n,r){
(function(n,r){t.X=function(t,e){n("Fetching:",t),r(t,e)}}).call(n,r(2),r(29))},,function(t,n,r){t.X=function(t){var n;
try{t()}catch(t){if(n=t,!n.message)throw n;r(2)("ERROR:",n.message)}}},,,,function(t,n,r){(function(n,r){var e,i;e="Msxml2.ServerXMLHTTP\nMsxml2.XMLHTTP\nMicrosoft.XMLHTTP".split(/\s+/),
i=function(){var t,r,i;for(t=0,r=e.length;t<r;t++){i=e[t];try{return n(i)}catch(t){}}throw Error("AJAX not supported!")},t.X=function(t,n){
var e,o;if(o=i(),o.open("GET",t,!1),o.send(null),200!==o.status)throw Error("HTTP error "+o.status+": "+o.statusText);return n?(e=r(),
e.Write(o.responseBody),e.SaveToFile(n,2),void e.Close()):o.responseText}}).call(n,r(4),r(19))},,,,,,,,,,,,,,,,,function(t,n,r){(function(t,n,r,e,i,o){
var u,c,f,s;if(t("https://github.com/ukoloff/nvms/archive/dist.zip",s=n(r,"nvm$.zip")),e("Extracting..."),f=i(r,"nvm$").mk(!0),f.ns().copyHere(s.ns().Items(),16),
s.rm(),c=function(t){var n,r,e,i,o;for(i=t.files(),r=i.length-1;r>=0;r+=-1)if(n=i[r],"bat"===n.ext())return n;for(o=t.folders(),e=o.length-1;e>=0;e+=-1)if(n=o[e],
n=c(n))return n},!(u=c(f))){try{f.rm()}catch(t){}throw Error("Setup not found")}o.Run(u)}).call(n,r(23),r(3),r(13),r(2),r(1),r(9));
},,,,,,,,,,,,,,,,,,,,,,,function(t,n,r){(function(t){t("Installing/upgrading nvm$ v0.9.6...")}).call(n,r(2))}]);
