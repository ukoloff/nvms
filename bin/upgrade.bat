0</*! ::
@echo off
cscript //nologo //e:javascript "%~f0" %*
goto :EOF */0;
!function(t){function n(e){if(r[e])return r[e].exports;var o=r[e]={exports:{},id:e,loaded:!1};return t[e].call(o.exports,o,o.exports,n),
o.loaded=!0,o.exports}var r={};return n.m=t,n.c=r,n.p="",n(0)}([function(t,n,r){(function(t,n,r){t(function(){return n("Installing/upgrading nvm$ v0.5.0..."),
r()})}).call(n,r(16),r(2),r(25))},function(t,n,r){(function(n){t.exports=n("Scripting.FileSystemObject")}).call(n,r(3))},function(t,n,r){
(function(n){var r=[].slice;t.exports=function(){var t;return t=1<=arguments.length?r.call(arguments,0):[],n.Echo(t.join(" "))}}).call(n,r(5));
},function(t,n,r){(function(n){t.exports=function(t){return n.CreateObject(t)}}).call(n,r(5))},function(t,n,r){(function(n){t.exports=n("WScript.Shell");
}).call(n,r(3))},function(t,n){t.exports=WScript},function(t,n,r){(function(n,r){t.exports=n.BuildPath(r.SpecialFolders("AppData"),"nvm$");
}).call(n,r(1),r(4))},,function(t,n,r){(function(n){t.exports=function(t){var r;for(r=[];!n.FolderExists(t);)r.push(t),t=n.GetParentFolderName(t);
for(;t=r.pop();)n.CreateFolder(t)}}).call(n,r(1))},function(t,n,r){(function(n){t.exports=function(t){return null==t&&(t=0),n.Quit(t);
}}).call(n,r(5))},,function(t,n,r){(function(n,r){var e,o;e="Msxml2.ServerXMLHTTP\nMsxml2.XMLHTTP\nMicrosoft.XMLHTTP".split(/\s+/),
o=function(){var t,r,o;for(t=0,r=e.length;r>t;t++){o=e[t];try{return n(o)}catch(i){}}throw Error("AJAX not supported!")},t.exports=function(t,n){
var e,i;if(i=o(),i.open("GET",t,!1),i.send(null),200!==i.status)throw Error("HTTP error "+i.status+": "+i.statusText);return n?(i=i.responseBody,
"string"==typeof n&&(e=r(),e.Write(i),e.SaveToFile(n,2),e.Close()),i):i.responseText}}).call(n,r(3),r(12))},function(t,n,r){(function(n){
t.exports=function(t,r){var e;return e=n("ADODB.Stream"),e.Type=1,e.Open(),e}}).call(n,r(3))},function(t,n){t.exports=function(t,n){
var r,e,o;for("function"!=typeof n&&(o=[]),e=0,r=new Enumerator(t);!r.atEnd();){if(o)o.push(r.item());else if(!1===n(r.item(),e++))return;
r.moveNext()}return o}},function(t,n,r){(function(n,r,e){n(t.exports=r.BuildPath(e,"that"))}).call(n,r(8),r(1),r(6))},,function(t,n,r){
(function(n,r){t.exports=function(t){var e,o;try{return t()}catch(o){return e=o,n("ERROR:",e.message),r(1)}}}).call(n,r(2),r(9))},,,,,,,,,function(t,n,r){
(function(n,r,e,o,i,u,c,l){var a;t.exports=function(){var t,l,f,s,p;return s="https://github.com/ukoloff/nvms/archive/dist.zip",p=n.BuildPath(r,"nvm$.zip"),
e("Fetching:",s),o(s,p),e("Extracting..."),l=i("Shell.Application"),p=l.NameSpace(p),n.FolderExists(f=n.BuildPath(r,"nvm$"))&&n.DeleteFolder(f),
u(f),l.NameSpace(f).copyHere(p.Items(),0),(t=a(n.GetFolder(f)))?c.Run('"'+t+'"'):void e("Setup not found. Exiting")},a=function(t){
var r;return r=0,l(t.Files,function(t){return"bat"===n.GetExtensionName(t.Name)?(r=t.Path,!1):void 0}),r?r:(l(t.SubFolders,function(t){
var n;if(n=a(t))return r=n,!1}),r)}}).call(n,r(1),r(14),r(2),r(11),r(3),r(8),r(4),r(13))}]);
