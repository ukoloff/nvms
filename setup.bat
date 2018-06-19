0</*! :: See https://github.com/ukoloff/nvms
@echo off
cscript.exe //Nologo //E:JScript "%~f0"
pause
goto :EOF */0;
!function(n){function t(r){if(e[r])return e[r].X;var o=e[r]={X:{},id:r,loaded:!1};return n[r].call(o.X,o,o.X,t),
o.loaded=!0,o.X}var e={};return t.m=n,t.c=e,t.p="",t(0)}([function(n,t,e){e(44)(function(){var n;try{n=e(107)();
}catch(n){}e(61);try{"function"==typeof n&&n()}catch(n){}})},function(n,t,e){(function(t){var e,r=[].slice;n.X=e=function(){
var n;n=1<=arguments.length?r.call(arguments,0):[],e._(n.join(" "))},e._=function(n){t.Echo(n)}}).call(t,e(6));
},function(n,t,e){(function(t){n.X=t(e(26))}).call(t,e(11))},function(n,t,e){(function(t){n.X=t(e(27));
}).call(t,e(11))},function(n,t,e){(function(t){n.X=t("WScript.Shell")}).call(t,e(5))},function(n,t,e){(function(t){
n.X=function(n){return t.CreateObject(n)}}).call(t,e(6))},function(n,t,e){(function(t){n.X=t.h||WScript;
}).call(t,e(15))},function(n,t,e){(function(t){n.X=t("Scripting.FileSystemObject")}).call(t,e(5))},function(n,t,e){
(function(t,e){n.X=t(e.Environment("Process")("USERPROFILE"),".nvm$").mk()}).call(t,e(3),e(4))},,function(n,t,e){
(function(t,e){n.X=t(e,"that").mk()}).call(t,e(3),e(8))},function(n,t,e){(function(t){var r,o;r=function(){},
r.prototype=e(28),n.X=function(n){var t,e,i,c;t=function(n){o(this,n)},t.prototype=c=new r;for(e in n)i=n[e],
c[e]=i;return function(){return new t(arguments)}},o=function(n,e){var r,o,i,c;for(i="",r=0,o=e.length;r<o;r++)c=e[r],
i=t.BuildPath(i,c);n._=i}}).call(t,e(7))},function(n,t,e){(function(t,e){n.X=t(e.ScriptFullName)}).call(t,e(2),e(6));
},,function(n,t){n.X=function(n,t){var e,r,o;for("function"!=typeof t&&(o=[]),r=0,e=new Enumerator(n);!e.atEnd();){
if(o)o.push(e.item());else if(!1===t(e.item(),r++))return;e.moveNext()}return o}},function(n,t){},function(n,t,e){
(function(t){var e;n.X=e=function(){var n,r,o,i,c,u,f;for(r="",f=!1,c=1,o=0,i=arguments.length;o<i;o++)if(n=arguments[o],
e._!==n)switch(typeof n){case"boolean":f=n;break;case"number":c=n;break;default:n.length&&!/[\s^<|>]/.test(n)||(n='"'+n+'"'),
u&&(r+=" "),r+=n,u=1}else u=0;return t.Run(r,c,f)},e._={}}).call(t,e(4))},,function(n,t,e){(function(t,e,r,o,i,c,u){
var f,a,l,s,p;n.X=f=function(n){if(null==n&&(n="none"),p(),!1!==n)e("Using:",n),r(n),p(o(t,n));else if(s)try{
t.up().cd()}catch(n){}},f.$=l=o(t,"this"),s=/[^\x00-\x7F]/.test(l),a=function(n){return s?i("..",n.bn()):n},p=function(n){
var e;if(!(e=i(t,"linkd.exe")).y())throw Error("File not found: "+e);s&&c.cd(),u(0,!0,a(e),a(l),n?a(n):"/D")};
}).call(t,e(8),e(1),e(31),e(3),e(2),e(10),e(16))},,function(n,t){n.X={"node":"https://nodejs.org/dist/",
"iojs":"https://iojs.org/dist/"}},function(n,t,e){(function(t){n.X=function(n){null==n&&(n=0),t.Quit(n);
}}).call(t,e(6))},function(n,t,e){(function(t,e){n.X=t(e.Arguments)}).call(t,e(14),e(6))},function(n,t,e){
(function(t){n.X=function(n,e){var r;return r=t("ADODB.Stream"),r.Type=1,r.Open(),r}}).call(t,e(5))},,,function(n,t,e){
(function(n){var e;t.y=function(){return n.FileExists(this)},t.rm=function(t){return t&&!this.y()||n.DeleteFile(this),
this},t.cp=function(t){n.CopyFile(this,t)},t.mv=function(t){n.MoveFile(this,t)},t.$=function(){return n.GetFile(this);
},t.sz=function(){return this.$().Size},t.age=function(n){var t;return t=this.$().DateLastModified,null!=n?new Date-t>n:t;
},t.ok=function(n){return this.y()&&!this.age(n)},e=function(t,e,r){var o,i,c,u,f;for(f="",i=c=0,u=r.length;c<u;i=++c)o=r[i],
f+=",a["+i+"]";return new Function("x,f,a","return x."+t+"TextFile(f"+f+")")(n,e,r)},t.open=function(){return e("Open",this,arguments);
},t.create=function(){return e("Create",this,arguments)},t.load=function(){var n,t;return n=this.open(1),t=n.ReadAll(),
n.Close(),t},t.save=function(){var n,t,e,r;for(n=this.create(!0),t=0,e=arguments.length;t<e;t++)r=arguments[t],
n.Write(r);return n.Close()}}).call(t,e(7))},function(n,t,e){(function(n,r,o){var i;t.y=function(){return n.FolderExists(this);
},t.rm=function(t){return t&&!this.y()||n.DeleteFolder(this),this},t.cp=function(t){n.CopyFolder(this,t)},t.mv=function(t){
n.MoveFolder(this,t)},t.mk=function(t){var e,r,o;t&&this.rm(t),o=[],e=this._;try{for(r=this.abs();!r.y();)o.push(r),
r=r.up();for(;r=o.pop();)n.CreateFolder(r);return this}finally{this._=e}},t.$=function(){return n.GetFolder(this);
},i=function(n,t){var e;return e=[],r(n,function(n){return e.push(t(n))}),e},t.files=function(){return i(this.$().Files,e(2));
},t.folders=function(){return i(this.$().SubFolders,e(3))},t.cd=function(){return o.CurrentDirectory=this}}).call(t,e(7),e(14),e(4));
},function(n,t,e){(function(n,r){t.toString=function(){var n;return null!=(n=this._)?n:""},t.abs=function(){return this._=n.GetAbsolutePathName(this),
this},t.up=function(){var t;return(t=e(3))(n.GetParentFolderName(this))},t.bn=function(t){var r,o,i;for(o=n.GetFileName(this);--t>0;)r||(r=e(11)()),
o=""+r((i=(i||this).up()).bn(),o);return o},t.n=function(){return n.GetBaseName(this)},t.ext=function(){return n.GetExtensionName(this);
},t.ns=function(){return r.NameSpace(this._)}}).call(t,e(7),e(30))},function(n,t,e){(function(n,e){var r,o,i;o=n("Msxml2.DOMDocument").createElement("tmp"),
o.dataType="bin.hex",t.enc=function(n){var t;return o.nodeTypedValue=n,t=o.text,o.text="",t},t.dec=function(n){
var t;return o.text=n,t=o.nodeTypedValue,o.text="",t},r=function(n){var t,e,r;for(t=0,r=[];t<n.length;)e=t,r.push(n.substring(e,t+=2));
return r},i=function(n){return r(n).reverse().join("")},t.i=function(n){return parseInt(i(e.enc(n)),16)}}).call(t,e(5),e(29));
},function(n,t,e){(function(t){n.X=t("Shell.Application")}).call(t,e(5))},function(n,t,e){(function(t,e,r,o,i){
var c,u;n.X=u=function(n){var u,f,a;return n=t(e,n).mk(),r(n,"nvm$.bat").save('@"%~dp0..\\cli.bat" %*\n'),
f=r(n,"npx.cmd"),f.y()||(o("Creating:",f.bn(2)),f.save('@"%~dp0..\\npx.bat" %*\n')),(a=r(e,c)).y()&&!(u=r(n,"openssl"+i.x)).y()&&a.cp(u),
i(n)},u.O=c="openssl-cli"+i.x}).call(t,e(3),e(8),e(2),e(1),e(33))},,function(n,t,e){(function(t,e,r,o,i){var c,u,f,a,l;
n.X=c=function(n){var i,c,f,s,p,h,v;if((h=t(n,a+u)).y()&&!(i=t(n,a+"w"+u)).y())return v=e(),v.LoadFromFile(h),
s=function(n){return r.i(v.Read(n))},p=function(n){return v.Position=n,!0},23117===s(2)&&p(60)&&(f=s(4))&&f<v.size&&p(f)&&17744===s(4)&&p(f+20)&&240===(16|s(2))&&l(s(2))&&779===(768|s(2))&&p(c=f+92)&&3===s(2)&&p(c)?(o("Generating:",i.bn(2)),
v.Write(r.dec("02")),v.SaveToFile(i)):o("Invalid EXE:",h),v.Close()},l=function(){return!0};for(f in i){c.n=a=f;
break}c.x=u=".exe"}).call(t,e(2),e(23),e(29),e(1),e(20))},,,function(n,t,e){(function(t){var e,r;r=0,n.X=function(){
return r||(r="<TySkk|"+e(t.load())+">")},e=function(n){var t,e,r;for(t=1,e=0,r=n.length;r--;)t=(t+n.charCodeAt(r))%65521,
e=(e+t)%65521;return e<<16+t}}).call(t,e(12))},,,function(n,t){n.X=function(n,t){if(n.y())try{n.abs().up().ns().ParseName(n.bn()).InvokeVerb(t);
}catch(n){}}},,function(n,t,e){(function(t,e){n.X=function(n){var r,o,i,c,u,f;r=t.Environment("User"),i=r(o="Path"),
u=e.$.bn(2).replace(/^\W+/,""),c=function(n){return n.slice(-u.length)!==u||/\w$/.test(n.slice(0,-u.length))},
f=function(){var n,t,e,r;for(e=i.split(";"),r=[],n=0,t=e.length;n<t;n++)f=e[n],c(f)&&r.push(f);return r}(),n&&f.unshift(e.$),
f=f.join(";"),f!==i&&Function("o,k,v","o(k)=v")(r,o,f)}}).call(t,e(4),e(18))},,function(n,t,e){(function(t,e,r){
var o,i,c,u,f;for(n.X=o=["Desktop","StartMenu","AppData"],c=u=o.length-1;u>=0;c=u+=-1)i=o[c],o[c]=t.SpecialFolders(i);
for((i=e(o.pop(),"Microsoft/Internet Explorer/Quick Launch")).y()&&o.push(i),c=f=o.length-1;f>=0;c=f+=-1)i=o[c],
o[c]=r(i,"nvm$.lnk")}).call(t,e(4),e(3),e(2))},function(n,t,e){n.X=function(n){var t;try{n()}catch(n){if(t=n,
!t.message)throw t;e(1)("ERROR:",t.message)}}},,,,,,,,,,,,,,,,function(n,t,e){(function(n,t){var r,o,i,c,u,f;for(u=e(39),
c=e(43),r=0,o=c.length;r<o;r++)f=c[r],i=n.CreateShortcut(f),i.TargetPath="cmd",i.Arguments="/c gui.bat",i.WorkingDirectory=t,
i.Description="Node Version Manager for M$ Windows",i.IconLocation="shell32.dll,43",i.WindowStyle=7,i.save(),
u(f,"taskbarpin")}).call(t,e(4),e(8))},function(n,t,e){(function(n,t,r,o,i,c,u,f){var a,l;n("Installing nvm$ v0.10.4 to:",t),
n("Copying files..."),l=r.up(),o(l,"bin").cp(t),i(l,a="README.md").cp(i(t,a)),n("Creating shortcuts..."),c.$.y()||c();
try{e(60)}catch(n){}n("Updating PATH..."),u(!0),n("Installation complete.\nOpen new console and run 'nvm$ ?' to start.");
try{f(0,i(t,"cli.bat"),"l","r")}catch(n){}}).call(t,e(1),e(8),e(12),e(3),e(2),e(18),e(41),e(16))},,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,function(n,t,e){
(function(t,e,r,o,i,c){n.X=function(){var n,u;if(n="nvms-dist"===(u=t.up()).bn(),!e.Interactive){if(n&&1===r.length&&o()===r[0]){
e.Sleep(3e3);try{u.rm(!0)}catch(n){}}i()}return n?function(){c(0,"wscript","//B","//E:JScript",t,o())}:function(){};
}}).call(t,e(12),e(6),e(22),e(36),e(21),e(16))}]);
