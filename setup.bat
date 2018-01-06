0</*! :: See https://github.com/ukoloff/nvms
@echo off
cscript.exe //Nologo //E:JScript "%~f0"
pause
goto :EOF */0;
!function(n){function t(r){if(e[r])return e[r].X;var o=e[r]={X:{},id:r,loaded:!1};return n[r].call(o.X,o,o.X,t),
o.loaded=!0,o.X}var e={};return t.m=n,t.c=e,t.p="",t(0)}([function(n,t,e){e(25)(function(){var n;try{n=e(66)()}catch(n){}e(45);
try{"function"==typeof n&&n()}catch(n){}})},function(n,t,e){(function(t){n.X=t(e(17))}).call(t,e(8))},function(n,t,e){(function(t){
var e=[].slice;n.X=function(){var n;n=1<=arguments.length?e.call(arguments,0):[],t.Echo(n.join(" "))}}).call(t,e(6))},function(n,t,e){
(function(t){n.X=t(e(16))}).call(t,e(8))},function(n,t,e){(function(t){n.X=function(n){return t.CreateObject(n)}}).call(t,e(6));
},function(n,t,e){(function(t){n.X=t("Scripting.FileSystemObject")}).call(t,e(4))},function(n,t){n.X=WScript},function(n,t,e){
(function(t,e){n.X=t(e.Environment("Process")("USERPROFILE"),".nvm$").mk()}).call(t,e(1),e(9))},function(n,t,e){(function(t){
var r,o;r=function(){},r.prototype=e(18),n.X=function(n){var t,e,i,u;t=function(n){o(this,n)},t.prototype=u=new r;for(e in n)i=n[e],
u[e]=i;return function(){return new t(arguments)}},o=function(n,e){var r,o,i,u;for(i="",r=0,o=e.length;r<o;r++)u=e[r],i=t.BuildPath(i,u);
n._=i}}).call(t,e(5))},function(n,t,e){(function(t){n.X=t("WScript.Shell")}).call(t,e(4))},function(n,t,e){(function(t,e,r,o,i){
var u,c;n.X=u=function(n){var u;if(null==n&&(n="none"),!(u=t(e,"linkd.exe")).y())throw Error("File not found: "+u);r(0,!0,u,c,"/D"),
!1!==n&&(o(n),r(0,!0,u,c,i(e,n)))},u.$=c=i(e,"this")}).call(t,e(3),e(7),e(11),e(24),e(1))},function(n,t,e){(function(t){var e;n.X=e=function(){
var n,r,o,i,u,c,f;for(r="",f=!1,u=1,o=0,i=arguments.length;o<i;o++)if(n=arguments[o],e._!==n)switch(typeof n){case"boolean":f=n;break;
case"number":u=n;break;default:n.length&&!/[\s^<|>]/.test(n)||(n='"'+n+'"'),c&&(r+=" "),r+=n,c=1}else c=0;return t.Run(r,u,f)},e._={};
}).call(t,e(9))},function(n,t){n.X=function(n,t){var e,r,o;for("function"!=typeof t&&(o=[]),r=0,e=new Enumerator(n);!e.atEnd();){
if(o)o.push(e.item());else if(!1===t(e.item(),r++))return;e.moveNext()}return o}},function(n,t,e){(function(t,e){n.X=t(e,"that").mk();
}).call(t,e(1),e(7))},,function(n,t){n.X={node:"https://nodejs.org/dist/",iojs:"https://iojs.org/dist/"}},function(n,t,e){(function(n){
var e;t.y=function(){return n.FileExists(this)},t.rm=function(t){return t&&!this.y()||n.DeleteFile(this),this},t.cp=function(t){n.CopyFile(this,t);
},t.mv=function(t){n.MoveFile(this,t)},t.$=function(){return n.GetFile(this)},t.sz=function(){return this.$().Size},t.age=function(n){
var t;return t=this.$().DateLastModified,null!=n?new Date-t>n:t},t.ok=function(n){return this.y()&&!this.age(n)},e=function(t,e,r){
var o,i,u,c,f;for(f="",i=u=0,c=r.length;u<c;i=++u)o=r[i],f+=",a["+i+"]";return new Function("x,f,a","return x."+t+"TextFile(f"+f+")")(n,e,r);
},t.open=function(){return e("Open",this,arguments)},t.create=function(){return e("Create",this,arguments)},t.load=function(){var n,t;
return n=this.open(1),t=n.ReadAll(),n.Close(),t},t.save=function(){var n,t,e,r;for(n=this.create(!0),t=0,e=arguments.length;t<e;t++)r=arguments[t],
n.Write(r);return n.Close()}}).call(t,e(5))},function(n,t,e){(function(n,r){var o;t.y=function(){return n.FolderExists(this)},t.rm=function(t){
return t&&!this.y()||n.DeleteFolder(this),this},t.cp=function(t){n.CopyFolder(this,t)},t.mv=function(t){n.MoveFolder(this,t)},t.mk=function(t){
var e,r,o;t&&this.rm(t),o=[],e=this._;try{for(r=this.abs();!r.y();)o.push(r),r=r.up();for(;r=o.pop();)n.CreateFolder(r);return this;
}finally{this._=e}},t.$=function(){return n.GetFolder(this)},o=function(n,t){var e;return e=[],r(n,function(n){return e.push(t(n));
}),e},t.files=function(){return o(this.$().Files,e(3))},t.folders=function(){return o(this.$().SubFolders,e(1))}}).call(t,e(5),e(12));
},function(n,t,e){(function(n,r){t.toString=function(){var n;return null!=(n=this._)?n:""},t.abs=function(){return this._=n.GetAbsolutePathName(this),
this},t.up=function(){var t;return(t=e(1))(n.GetParentFolderName(this))},t.bn=function(t){var r,o,i;for(o=n.GetFileName(this);--t>0;)r||(r=e(8)()),
o=""+r((i=(i||this).up()).bn(),o);return o},t.n=function(){return n.GetBaseName(this)},t.ext=function(){return n.GetExtensionName(this);
},t.ns=function(){return r.NameSpace(this._)}}).call(t,e(5),e(20))},function(n,t,e){(function(t){n.X=function(n,e){var r;return r=t("ADODB.Stream"),
r.Type=1,r.Open(),r}}).call(t,e(4))},function(n,t,e){(function(t){n.X=t("Shell.Application")}).call(t,e(4))},function(n,t,e){
(function(t,e){n.X=t(e.ScriptFullName)}).call(t,e(3),e(6))},function(n,t,e){(function(n,e){var r,o,i;o=n("Msxml2.DOMDocument").createElement("tmp"),
o.dataType="bin.hex",t.enc=function(n){var t;return o.nodeTypedValue=n,t=o.text,o.text="",t},t.dec=function(n){var t;return o.text=n,
t=o.nodeTypedValue,o.text="",t},r=function(n){var t,e,r;for(t=0,r=[];t<n.length;)e=t,r.push(n.substring(e,t+=2));return r},i=function(n){
return r(n).reverse().join("")},t.i=function(n){return parseInt(i(e.enc(n)),16)}}).call(t,e(4),e(22))},,function(n,t,e){(function(t,e,r,o,i){
var u,c;n.X=c=function(n){var c,f,a;return n=t(e,n).mk(),r(n,"nvm$.bat").save('@"%~dp0..\\cli.bat" %*\n'),f=r(n,"npx.cmd"),
f.y()||(o("Creating:",f.bn(2)),f.save('@"%~dp0..\\npx.bat" %*\n')),(a=r(e,u)).y()&&!(c=r(n,"openssl"+i.x)).y()&&a.cp(c),i(n)},c.O=u="openssl-cli"+i.x;
}).call(t,e(1),e(7),e(3),e(2),e(26))},function(n,t,e){n.X=function(n){var t;try{n()}catch(n){if(t=n,!t.message)throw t;e(2)("ERROR:",t.message);
}}},function(n,t,e){(function(t,e,r,o,i){var u,c,f,a,s;n.X=u=function(n){var i,u,f,l,p,h,v;if((h=t(n,a+c)).y()&&!(i=t(n,a+"w"+c)).y())return v=e(),
v.LoadFromFile(h),l=function(n){return r.i(v.Read(n))},p=function(n){return v.Position=n,!0},23117===l(2)&&p(60)&&(f=l(4))&&f<v.size&&p(f)&&17744===l(4)&&p(f+20)&&240===(16|l(2))&&s(l(2))&&779===(768|l(2))&&p(u=f+92)&&3===l(2)&&p(u)?(o("Generating:",i.bn(2)),
v.Write(r.dec("02")),v.SaveToFile(i)):o("Invalid EXE:",h),v.Close()},s=function(){return!0};for(f in i){u.n=a=f;break}u.x=c=".exe";
}).call(t,e(3),e(19),e(22),e(2),e(15))},function(n,t){var e;n.X=function(n){var t;for(null==n&&(n=12),t="";t.length<n;)t+=e();
return t},e=function(){var n;return n=Math.floor(62*Math.random()),String.fromCharCode(n%26+"Aa0".charCodeAt(n/26))}},,,,,,function(n,t,e){
(function(t){n.X=function(n){null==n&&(n=0),t.Quit(n)}}).call(t,e(6))},function(n,t,e){(function(t,e,r){var o,i,u;u="Path",
i=t.Environment("User"),o=new Function("o,k,v","o(k)=v"),n.X=function(n){var t,c,f,a;if(t=i(u),f=""+e("nvm$",r.$.n()),c=function(n){
return n.slice(-f.length)!==f||/\w$/.test(n.slice(0,-f.length))},a=function(){var n,e,r,o;for(r=t.split(";"),o=[],n=0,e=r.length;n<e;n++)a=r[n],
c(a)&&o.push(a);return o}(),n&&a.unshift(r.$),a=a.join(";"),a!==t)return o(i,u,a)}}).call(t,e(9),e(1),e(10))},,,,,,,,,,,function(n,t,e){
(function(n,t,e,r,o,i,u,c){var f,a;n("Installing nvm$ v0.9.6 to:",t),n("Copying files..."),a=e.up(),r(a,"bin").cp(t),o(a,f="README.md").cp(o(t,f)),
n("Creating shortcuts..."),i.$.y()||i(),n("Updating PATH..."),u(!0),n("Installation complete.\nOpen new console and run 'nvm$ ?' to start.");
try{c(0,o(t,"cli.bat"),"l","r")}catch(n){}}).call(t,e(2),e(7),e(21),e(1),e(3),e(10),e(34),e(11))},,,,,,,,,,,,,,,,,,,,,function(n,t,e){
(function(t,e,r,o,i,u,c,f){var a,s,l,p;s="nvms-dist",a=".source",p=t.up(),n.X=function(){var n;if(s!==p.bn().substring(0,s.length))return function(){};
if(n=e(""+t+a),!n.y())return l;r.Sleep(3e3);try{o(n.load()).rm(!0)}catch(n){}p.rm(!0),i()},l=function(){var n,r;r=o(u,s+"-"+c(8)).mk(!0),
t.cp(n=e(r,t.bn())),e(""+n+a).save(p),f(0,n)}}).call(t,e(21),e(3),e(6),e(1),e(33),e(13),e(27),e(11))}]);
