0</*! ::
@echo off
cscript //nologo //e:javascript "%~f0" %*
pause
goto :EOF */0;
!function(n){function t(i){if(e[i])return e[i].exports;var r=e[i]={exports:{},id:i,loaded:!1};return n[i].call(r.exports,r,r.exports,t),
r.loaded=!0,r.exports}var e={};return t.m=n,t.c=e,t.p="",t(0)}([function(n,t,e){(function(n){n(function(){return e(32)})}).call(t,e(15));
},function(n,t){n.exports=new ActiveXObject("Scripting.FileSystemObject")},function(n,t,e){(function(t){var e=[].slice;n.exports=function(){
var n;return n=1<=arguments.length?e.call(arguments,0):[],t.Echo(n.join(" "))}}).call(t,e(6))},function(n,t,e){(function(t,e){var i;
n.exports=i=t.BuildPath(e.SpecialFolders("AppData"),"nvm$")}).call(t,e(1),e(4))},function(n,t){n.exports=new ActiveXObject("WScript.Shell");
},function(n,t,e){(function(n,e,i,r,o){var l,u,c,a,s;t.name=c="junction.exe",t.dst=l=function(){return n.BuildPath(e,c)},t.link=u=n.BuildPath(e,"this"),
s=function(n){var t;for(t=[];!n.Status;)t.push(i.Sleep(100));return t},t.remove=a=function(){return s(r.exec('"'+l()+'" -d "'+u+'"'));
},t.exec=function(t,i){return o(t),i&&n.FolderExists(u)?void 0:(a(),r.exec('"'+l()+'" "'+u+'" "'+n.BuildPath(e,t)+'"'))},t.eula=function(){
return r.RegWrite("HKCU\\Software\\Sysinternals\\Junction\\EulaAccepted",1,"REG_DWORD")}}).call(t,e(1),e(3),e(6),e(4),e(11))},function(n,t){
n.exports=WScript},,,function(n,t,e){(function(t){n.exports=function(n){return null==n&&(n=0),t.Quit(n)}}).call(t,e(6))},function(n,t,e){
(function(t){n.exports=function(n){var e;for(e=[];!t.FolderExists(n);)e.push(n),n=t.GetParentFolderName(n);for(;n=e.pop();)t.CreateFolder(n);
}}).call(t,e(1))},function(n,t,e){(function(t,e,i){var r,o;n.exports=r=function(n){var r;return t(r=e.BuildPath(i,n)),e.CreateTextFile(e.BuildPath(r,"nvm$.bat"),!0).WriteLine('@"%~dp0..\\cli.bat" %*'),
e.FileExists(e.BuildPath(i,o))?e.CreateTextFile(e.BuildPath(r,"openssl.bat"),!0).WriteLine('@"%~dp0..\\'+o+'" %*'):void 0},r.openssl=o="openssl-cli.exe";
}).call(t,e(10),e(1),e(3))},,,,function(n,t,e){(function(t,e){n.exports=function(n){var i,r;try{return n()}catch(r){return i=r,t("ERROR: "+i.message),
e(1)}}}).call(t,e(2),e(9))},function(n,t,e){(function(t,e){var i,r,o,l;o="Path",r=t.Environment("User"),n.exports=l=function(){return r(o).split(";");
},i=new Function("o,k,v","o(k)=v"),l.install=function(n){var t,u;return null==n&&(n=!0),t=e.link,u=function(){var n,e,i,r;for(i=l(),
r=[],n=0,e=i.length;e>n;n++)u=i[n],u!==t&&r.push(u);return r}(),n&&u.unshift(t),i(r,o,u=u.join(";"))}}).call(t,e(4),e(5))},,,,,,,,,,,,,,,,function(n,t,e){
(function(n,t,e,i,r,o,l){var u,c;n("Installing nvm$ v0.4.2 to <"+t+">..."),e(t),n("Copying files..."),c=i.GetParentFolderName(r.ScriptFullName),
i.CopyFolder(i.BuildPath(c,"bin"),t),u="README.md",i.CopyFile(i.BuildPath(c,u),i.BuildPath(t,u)),n("Creating shortcuts..."),o.eula(),
o.exec("none",!0),n("Updating PATH..."),l.install(),n("Installation complete.\nOpen new console and run 'nvm$ help' to start.")}).call(t,e(2),e(3),e(10),e(1),e(6),e(5),e(16));
}]);
