0</*! :: See https://github.com/ukoloff/nvms
@echo off
cscript.exe //Nologo //E:JScript "%~f0"
pause
goto :EOF */0;
!function(n){function t(r){if(e[r])return e[r].X;var i=e[r]={X:{},id:r,loaded:!1};return n[r].call(i.X,i,i.X,t),
i.loaded=!0,i.X}var e={};return t.m=n,t.c=e,t.p="",t(0)}([function(n,t,e){e(25)(function(){var n;try{n=e(66)()}catch(n){}e(45);
try{"function"==typeof n&&n()}catch(n){}})},function(n,t,e){(function(t){var e=[].slice;n.X=function(){var n;n=1<=arguments.length?e.call(arguments,0):[],
t.Echo(n.join(" "))}}).call(t,e(5))},function(n,t,e){(function(t){n.X=t(e(18))}).call(t,e(9))},function(n,t,e){(function(t){
n.X=t(e(17))}).call(t,e(9))},function(n,t,e){(function(t){n.X=function(n){return t.CreateObject(n)}}).call(t,e(5))},function(n,t){
n.X=WScript},function(n,t,e){(function(t){n.X=t("Scripting.FileSystemObject")}).call(t,e(4))},function(n,t,e){(function(t,e){
n.X=t(e.Environment("Process")("USERPROFILE"),".nvm$").mk()}).call(t,e(2),e(8))},function(n,t,e){(function(t){n.X=t("WScript.Shell");
}).call(t,e(4))},function(n,t,e){(function(t){var r,i;r=function(){},r.prototype=e(19),n.X=function(n){var t,e,o,u;t=function(n){
i(this,n)},t.prototype=u=new r;for(e in n)o=n[e],u[e]=o;return function(){return new t(arguments)}},i=function(n,e){var r,i,o,u;for(o="",
r=0,i=e.length;r<i;r++)u=e[r],o=t.BuildPath(o,u);n._=o}}).call(t,e(6))},function(n,t,e){(function(t,e,r,i,o,u,c){var f,a,s,l,p;n.X=f=function(n){
null==n&&(n="none"),p(),!1!==n&&(t(n),p(e(r,n)))},f.$=s=e(r,"this"),l=/[^\x00-\x7F]/.test(s),a=function(n){return l?i("..",n.bn()):n;
},p=function(n){var t;if(!(t=i(r,"linkd.exe")).y())throw Error("File not found: "+t);l&&(u.CurrentDirectory=o),c(0,!0,a(t),a(s),n?a(n):"/D");
}}).call(t,e(24),e(2),e(7),e(3),e(11),e(8),e(13))},function(n,t,e){(function(t,e){n.X=t(e,"that").mk()}).call(t,e(2),e(7))},function(n,t){
n.X=function(n,t){var e,r,i;for("function"!=typeof t&&(i=[]),r=0,e=new Enumerator(n);!e.atEnd();){if(i)i.push(e.item());else if(!1===t(e.item(),r++))return;
e.moveNext()}return i}},function(n,t,e){(function(t){var e;n.X=e=function(){var n,r,i,o,u,c,f;for(r="",f=!1,u=1,i=0,o=arguments.length;i<o;i++)if(n=arguments[i],
e._!==n)switch(typeof n){case"boolean":f=n;break;case"number":u=n;break;default:n.length&&!/[\s^<|>]/.test(n)||(n='"'+n+'"'),c&&(r+=" "),
r+=n,c=1}else c=0;return t.Run(r,u,f)},e._={}}).call(t,e(8))},function(n,t,e){(function(t,e){n.X=t(e.ScriptFullName)}).call(t,e(3),e(5));
},,function(n,t){n.X={node:"https://nodejs.org/dist/",iojs:"https://iojs.org/dist/"}},function(n,t,e){(function(n){var e;t.y=function(){
return n.FileExists(this)},t.rm=function(t){return t&&!this.y()||n.DeleteFile(this),this},t.cp=function(t){n.CopyFile(this,t)},t.mv=function(t){
n.MoveFile(this,t)},t.$=function(){return n.GetFile(this)},t.sz=function(){return this.$().Size},t.age=function(n){var t;return t=this.$().DateLastModified,
null!=n?new Date-t>n:t},t.ok=function(n){return this.y()&&!this.age(n)},e=function(t,e,r){var i,o,u,c,f;for(f="",o=u=0,c=r.length;u<c;o=++u)i=r[o],
f+=",a["+o+"]";return new Function("x,f,a","return x."+t+"TextFile(f"+f+")")(n,e,r)},t.open=function(){return e("Open",this,arguments);
},t.create=function(){return e("Create",this,arguments)},t.load=function(){var n,t;return n=this.open(1),t=n.ReadAll(),n.Close(),
t},t.save=function(){var n,t,e,r;for(n=this.create(!0),t=0,e=arguments.length;t<e;t++)r=arguments[t],n.Write(r);return n.Close()};
}).call(t,e(6))},function(n,t,e){(function(n,r){var i;t.y=function(){return n.FolderExists(this)},t.rm=function(t){return t&&!this.y()||n.DeleteFolder(this),
this},t.cp=function(t){n.CopyFolder(this,t)},t.mv=function(t){n.MoveFolder(this,t)},t.mk=function(t){var e,r,i;t&&this.rm(t),i=[],
e=this._;try{for(r=this.abs();!r.y();)i.push(r),r=r.up();for(;r=i.pop();)n.CreateFolder(r);return this}finally{this._=e}},t.$=function(){
return n.GetFolder(this)},i=function(n,t){var e;return e=[],r(n,function(n){return e.push(t(n))}),e},t.files=function(){return i(this.$().Files,e(3));
},t.folders=function(){return i(this.$().SubFolders,e(2))}}).call(t,e(6),e(12))},function(n,t,e){(function(n,r){t.toString=function(){
var n;return null!=(n=this._)?n:""},t.abs=function(){return this._=n.GetAbsolutePathName(this),this},t.up=function(){var t;return(t=e(2))(n.GetParentFolderName(this));
},t.bn=function(t){var r,i,o;for(i=n.GetFileName(this);--t>0;)r||(r=e(9)()),i=""+r((o=(o||this).up()).bn(),i);return i},t.n=function(){
return n.GetBaseName(this)},t.ext=function(){return n.GetExtensionName(this)},t.ns=function(){return r.NameSpace(this._)}}).call(t,e(6),e(21));
},function(n,t,e){(function(t){n.X=function(n,e){var r;return r=t("ADODB.Stream"),r.Type=1,r.Open(),r}}).call(t,e(4))},function(n,t,e){
(function(t){n.X=t("Shell.Application")}).call(t,e(4))},function(n,t,e){(function(n,e){var r,i,o;i=n("Msxml2.DOMDocument").createElement("tmp"),
i.dataType="bin.hex",t.enc=function(n){var t;return i.nodeTypedValue=n,t=i.text,i.text="",t},t.dec=function(n){var t;return i.text=n,
t=i.nodeTypedValue,i.text="",t},r=function(n){var t,e,r;for(t=0,r=[];t<n.length;)e=t,r.push(n.substring(e,t+=2));return r},o=function(n){
return r(n).reverse().join("")},t.i=function(n){return parseInt(o(e.enc(n)),16)}}).call(t,e(4),e(22))},,function(n,t,e){(function(t,e,r,i,o){
var u,c;n.X=c=function(n){var c,f,a;return n=t(e,n).mk(),r(n,"nvm$.bat").save('@"%~dp0..\\cli.bat" %*\n'),f=r(n,"npx.cmd"),
f.y()||(i("Creating:",f.bn(2)),f.save('@"%~dp0..\\npx.bat" %*\n')),(a=r(e,u)).y()&&!(c=r(n,"openssl"+o.x)).y()&&a.cp(c),o(n)},c.O=u="openssl-cli"+o.x;
}).call(t,e(2),e(7),e(3),e(1),e(26))},function(n,t,e){n.X=function(n){var t;try{n()}catch(n){if(t=n,!t.message)throw t;e(1)("ERROR:",t.message);
}}},function(n,t,e){(function(t,e,r,i,o){var u,c,f,a,s;n.X=u=function(n){var o,u,f,l,p,h,v;if((h=t(n,a+c)).y()&&!(o=t(n,a+"w"+c)).y())return v=e(),
v.LoadFromFile(h),l=function(n){return r.i(v.Read(n))},p=function(n){return v.Position=n,!0},23117===l(2)&&p(60)&&(f=l(4))&&f<v.size&&p(f)&&17744===l(4)&&p(f+20)&&240===(16|l(2))&&s(l(2))&&779===(768|l(2))&&p(u=f+92)&&3===l(2)&&p(u)?(i("Generating:",o.bn(2)),
v.Write(r.dec("02")),v.SaveToFile(o)):i("Invalid EXE:",h),v.Close()},s=function(){return!0};for(f in o){u.n=a=f;break}u.x=c=".exe";
}).call(t,e(3),e(20),e(22),e(1),e(16))},,,,function(n,t,e){(function(t){n.X=function(n){null==n&&(n=0),t.Quit(n)}}).call(t,e(5));
},function(n,t,e){(function(t,e){n.X=t(e.Arguments)}).call(t,e(12),e(5))},,,function(n,t,e){(function(t,e){var r,i,o;o="Path",
i=t.Environment("User"),r=new Function("o,k,v","o(k)=v"),n.X=function(n){var t,u,c,f;if(t=i(o),c=e.$.bn(2),u=function(n){return n.slice(-c.length)!==c||/\w$/.test(n.slice(0,-c.length));
},f=function(){var n,e,r,i;for(r=t.split(";"),i=[],n=0,e=r.length;n<e;n++)f=r[n],u(f)&&i.push(f);return i}(),n&&f.unshift(e.$),f=f.join(";"),
f!==t)return r(i,o,f)}}).call(t,e(8),e(10))},,,,,,,,,,,function(n,t,e){(function(n,t,e,r,i,o,u,c){var f,a;n("Installing nvm$ v0.9.7 to:",t),
n("Copying files..."),a=e.up(),r(a,"bin").cp(t),i(a,f="README.md").cp(i(t,f)),n("Creating shortcuts..."),o.$.y()||o(),n("Updating PATH..."),
u(!0),n("Installation complete.\nOpen new console and run 'nvm$ ?' to start.");try{c(0,i(t,"cli.bat"),"l","r")}catch(n){}}).call(t,e(1),e(7),e(14),e(2),e(3),e(10),e(34),e(13));
},,,,,,,,,,,,,,,,,,,,,function(n,t,e){(function(t,e,r,i,o,u){n.X=function(){var n,c;if(n="nvms-dist"===(c=t.up()).bn(),!e.Interactive){
if(n&&1===r.length&&i()===r[0]){e.Sleep(3e3);try{c.rm(!0)}catch(n){}}o()}return n?function(){u(0,"wscript","//B","//E:JScript",t,i());
}:function(){}}}).call(t,e(14),e(5),e(31),e(69),e(30),e(13))},,,function(n,t,e){(function(t){var e,r;r=0,n.X=function(){return r||(r="<CUiNt|"+e(t.load())+">");
},e=function(n){var t,e,r;for(t=1,e=0,r=n.length;r--;)t=(t+n.charCodeAt(r))%65521,e=(e+t)%65521;return e<<16+t}}).call(t,e(14))}]);
