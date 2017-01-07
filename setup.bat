0</*! ::
@echo off
cscript //nologo //e:javascript "%~f0" %*
pause
goto :EOF */0;
!function(n){function t(i){if(e[i])return e[i].exports;var o=e[i]={exports:{},id:i,loaded:!1};return n[i].call(o.exports,o,o.exports,t),
o.loaded=!0,o.exports}var e={};return t.m=n,t.c=e,t.p="",t(0)}([function(n,t,e){(function(n){n(function(){return e(44)})}).call(t,e(16));
},function(n,t,e){(function(t){n.exports=t("Scripting.FileSystemObject")}).call(t,e(3))},function(n,t,e){(function(t){var e=[].slice;
n.exports=function(){var n;return n=1<=arguments.length?e.call(arguments,0):[],t.Echo(n.join(" "))}}).call(t,e(5))},function(n,t,e){
(function(t){n.exports=function(n){return t.CreateObject(n)}}).call(t,e(5))},function(n,t,e){(function(t){n.exports=t("WScript.Shell");
}).call(t,e(3))},function(n,t){n.exports=WScript},function(n,t,e){(function(t,e){n.exports=t.BuildPath(e.SpecialFolders("AppData"),"nvm$");
}).call(t,e(1),e(4))},function(n,t,e){(function(t,e,i,o){var r,u,c,l,a,f;a="junction.exe",u=function(){return t.BuildPath(e,a)},n.exports=f=function(n){
return null==n&&(n="none"),i(n),c()&&r(),o.run('"'+u()+'" "'+l()+'" "'+t.BuildPath(e,n)+'"',0,!0)},f.drop=r=function(){return o.run('"'+u()+'" -d "'+l()+'"',0,!0);
},f.$=l=function(){return t.BuildPath(e,"this")},f._=c=function(){return t.FolderExists(l())}}).call(t,e(1),e(6),e(18),e(4))},function(n,t,e){
(function(t){n.exports=function(n){var e;for(e=[];!t.FolderExists(n);)e.push(n),n=t.GetParentFolderName(n);for(;n=e.pop();)t.CreateFolder(n);
}}).call(t,e(1))},function(n,t,e){(function(t){n.exports=function(n){return null==n&&(n=0),t.Quit(n)}}).call(t,e(5))},,,function(n,t,e){
(function(t){n.exports=function(n,e){var i;return i=t("ADODB.Stream"),i.Type=1,i.Open(),i}}).call(t,e(3))},,,function(n,t,e){(function(n,e){
var i,o;i=n("Msxml2.DOMDocument").createElement("tmp"),i.dataType="bin.hex",t.enc=function(n){try{return i.nodeTypedValue=n,i.text;
}finally{i.text=""}},t.dec=function(n){try{return i.text=n,i.nodeTypedValue}finally{i.text=""}},t.rev=o=function(n){return n.match(/../g).reverse().join("");
},t.i=function(n){return parseInt(o(e.enc(n)),16)}}).call(t,e(3),e(15))},function(n,t,e){(function(t,e){n.exports=function(n){var i,o;
try{return n()}catch(o){return i=o,t("ERROR:",i.message),e(1)}}}).call(t,e(2),e(9))},,function(n,t,e){(function(t,e,i,o){var r,u;n.exports=r=function(n){
var r;return t(r=e.BuildPath(i,n)),e.CreateTextFile(e.BuildPath(r,"nvm$.bat"),!0).WriteLine('@"%~dp0..\\cli.bat" %*'),e.FileExists(e.BuildPath(i,u))&&e.CreateTextFile(e.BuildPath(r,"openssl.bat"),!0).WriteLine('@"%~dp0..\\'+u+'" %*'),
o(r)},r.openssl=u="openssl-cli.exe"}).call(t,e(8),e(1),e(6),e(23))},,function(n,t,e){(function(t,e){var i,o,r,u;u="Path",o=t.Environment("User"),
r=function(){return o(u).split(";")},i=new Function("o,k,v","o(k)=v"),n.exports=function(n){var t,c;return t=e.$(),c=function(){var n,e,i,o;
for(i=r(),o=[],n=0,e=i.length;e>n;n++)c=i[n],c!==t&&o.push(c);return o}(),n&&c.unshift(t),i(o,u,c.join(";"))}}).call(t,e(4),e(7));
},,,function(n,t,e){(function(t,e,i,o){var r;n.exports=function(n){var u,c,l;if(t.FileExists(c=t.BuildPath(n,"node.exe"))&&!t.FileExists(u=t.BuildPath(n,"nodew.exe")))return l=e(),
l.LoadFromFile(c),r(l)?(i("Generating",u),l.Write(o.dec("02")),l.SaveToFile(u)):i("Invalid executable:",c),l.Close()},r=function(n){
var t,e,i;return e=function(t){return o.i(n.Read(t))},23117!==e(2)||(n.Position=60,t=e(4),t>=n.size||(n.Position=t,17744!==e(4)||(n.Position=t+20,
240!==(16|e(2))||(e(2),779!==(768|e(2))||(n.Position=i=t+92,3!==e(2))))))?void 0:n.Position=i}}).call(t,e(1),e(12),e(2),e(15))},,,,,,,,,,,,,,,,,,,,,function(n,t,e){
(function(n,t,e,i,o,r,u){var c,l;n("Installing nvm$ v0.5.0 to <"+t+">..."),e(t),n("Copying files..."),l=i.GetParentFolderName(o.ScriptFullName),
i.CopyFolder(i.BuildPath(l,"bin"),t),c="README.md",i.CopyFile(i.BuildPath(l,c),i.BuildPath(t,c)),n("Creating shortcuts..."),r(),n("Updating PATH..."),
u(!0),n("Installation complete.\nOpen new console and run 'nvm$ help' to start.")}).call(t,e(2),e(6),e(8),e(1),e(5),e(47),e(20))},,,function(n,t,e){
(function(t,e){var i;n.exports=function(){return t._()?void 0:(i(),t())},i=function(){return e.RegWrite("HKCU\\Software\\Sysinternals\\Junction\\EulaAccepted",1,"REG_DWORD");
}}).call(t,e(7),e(4))}]);
