0</*! :: See https://github.com/ukoloff/nvms
@echo off
set BAT=%TEMP%\%~n0-%RANDOM%.bat
cscript.exe //Nologo //E:JScript "%~f0" %* > %BAT%
call %BAT%
del /F /Q %BAT%
%*
goto :EOF */0;
!function(n){function t(i){if(e[i])return e[i].X;var r=e[i]={X:{},id:i,loaded:!1};return n[i].call(r.X,r,r.X,t),
r.loaded=!0,r.X}var e={};return t.m=n,t.c=e,t.p="",t(0)}({0:function(n,t,e){e(104)},1:function(n,t,e){(function(t){
var e,i=[].slice;n.X=e=function(){var n;n=1<=arguments.length?i.call(arguments,0):[],e._(n.join(" "))},
e._=function(n){t.Echo(n)}}).call(t,e(6))},2:function(n,t,e){(function(t){n.X=t(e(26))}).call(t,e(11))},
3:function(n,t,e){(function(t){n.X=t(e(27))}).call(t,e(11))},4:function(n,t,e){(function(t){n.X=t("WScript.Shell");
}).call(t,e(5))},5:function(n,t,e){(function(t){n.X=function(n){return t.CreateObject(n)}}).call(t,e(6));
},6:function(n,t,e){(function(t){n.X=t.h||WScript}).call(t,e(15))},7:function(n,t,e){(function(t){n.X=t("Scripting.FileSystemObject");
}).call(t,e(5))},11:function(n,t,e){(function(t){var i,r;i=function(){},i.prototype=e(28),n.X=function(n){
var t,e,o,u;t=function(n){r(this,n)},t.prototype=u=new i;for(e in n)o=n[e],u[e]=o;return function(){return new t(arguments);
}},r=function(n,e){var i,r,o,u;for(o="",i=0,r=e.length;i<r;i++)u=e[i],o=t.BuildPath(o,u);n._=o}}).call(t,e(7));
},12:function(n,t,e){(function(t,e){n.X=t(e.ScriptFullName)}).call(t,e(2),e(6))},14:function(n,t){n.X=function(n,t){
var e,i,r;for("function"!=typeof t&&(r=[]),i=0,e=new Enumerator(n);!e.atEnd();){if(r)r.push(e.item());else if(!1===t(e.item(),i++))return;
e.moveNext()}return r}},15:function(n,t){},22:function(n,t,e){(function(t,e){n.X=t(e.Arguments)}).call(t,e(14),e(6));
},26:function(n,t,e){(function(n){var e;t.y=function(){return n.FileExists(this)},t.rm=function(t){return t&&!this.y()||n.DeleteFile(this),
this},t.cp=function(t){n.CopyFile(this,t)},t.mv=function(t){n.MoveFile(this,t)},t.$=function(){return n.GetFile(this);
},t.sz=function(){return this.$().Size},t.age=function(n){var t;return t=this.$().DateLastModified,null!=n?new Date-t>n:t;
},t.ok=function(n){return this.y()&&!this.age(n)},e=function(t,e,i){var r,o,u,c,f;for(f="",o=u=0,c=i.length;u<c;o=++u)r=i[o],
f+=",a["+o+"]";return new Function("x,f,a","return x."+t+"TextFile(f"+f+")")(n,e,i)},t.open=function(){return e("Open",this,arguments);
},t.create=function(){return e("Create",this,arguments)},t.load=function(){var n,t;return n=this.open(1),t=n.ReadAll(),
n.Close(),t},t.save=function(){var n,t,e,i;for(n=this.create(!0),t=0,e=arguments.length;t<e;t++)i=arguments[t],
n.Write(i);return n.Close()}}).call(t,e(7))},27:function(n,t,e){(function(n,i,r){var o;t.y=function(){return n.FolderExists(this);
},t.rm=function(t){return t&&!this.y()||n.DeleteFolder(this),this},t.cp=function(t){n.CopyFolder(this,t)},t.mv=function(t){
n.MoveFolder(this,t)},t.mk=function(t){var e,i,r;t&&this.rm(t),r=[],e=this._;try{for(i=this.abs();!i.y();)r.push(i),
i=i.up();for(;i=r.pop();)n.CreateFolder(i);return this}finally{this._=e}},t.$=function(){return n.GetFolder(this);
},o=function(n,t){var e;return e=[],i(n,function(n){return e.push(t(n))}),e},t.files=function(){return o(this.$().Files,e(2));
},t.folders=function(){return o(this.$().SubFolders,e(3))},t.cd=function(){return r.CurrentDirectory=this}}).call(t,e(7),e(14),e(4));
},28:function(n,t,e){(function(n,i){t.toString=function(){var n;return null!=(n=this._)?n:""},t.abs=function(){
return this._=n.GetAbsolutePathName(this),this},t.up=function(){var t;return(t=e(3))(n.GetParentFolderName(this));
},t.bn=function(t){var i,r,o;for(r=n.GetFileName(this);--t>0;)i||(i=e(11)()),r=""+i((o=(o||this).up()).bn(),r);
return r},t.n=function(){return n.GetBaseName(this)},t.ext=function(){return n.GetExtensionName(this)},t.ns=function(){
return i.NameSpace(this._)}}).call(t,e(7),e(30))},30:function(n,t,e){(function(t){n.X=t("Shell.Application");
}).call(t,e(5))},103:function(n,t,e){(function(n,t){n.Stderr.Writeline("nvm$ v0.10.4: Node Version Manager for M$ Windows\n\n"+t.n()+": Nano npx\n\nUsage: "+t.n()+" command [parameter(s)]\n\nSee: https://github.com/ukoloff/nvms");
}).call(t,e(6),e(12))},104:function(n,t,e){(function(n){e(n.length?105:103)}).call(t,e(22))},105:function(n,t,e){
(function(n,t){var e,i,r,o;for(r=n("."),o={},i=[];!o[r=r.abs()];)o[r]=!0,e=n(r,"node_modules/.bin").abs(),e.y()&&(i.length||t('cd "'+r+'"'),
i.push(e)),r=r.up();i.length&&(i.push("%PATH%"),t("set PATH="+i.join(";")))}).call(t,e(3),e(1))}});
