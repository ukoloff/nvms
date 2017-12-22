0</*! :: See https://github.com/ukoloff/nvms
@echo off
cscript.exe //Nologo //E:JScript "%~f0" %*
goto :EOF */0;
!function(n){function t(e){if(r[e])return r[e].X;var o=r[e]={X:{},id:e,loaded:!1};return n[e].call(o.X,o,o.X,t),
o.loaded=!0,o.X}var r={};return t.m=n,t.c=r,t.p="",t(0)}([function(n,t,r){r(25)(function(){r(50),r(61)})},function(n,t,r){(function(t,r){
n.X=t(r)}).call(t,r(10),r(20))},function(n,t,r){(function(t){var r=[].slice;n.X=function(){var n;n=1<=arguments.length?r.call(arguments,0):[],
t.Echo(n.join(" "))}}).call(t,r(7))},function(n,t,r){(function(t,r){n.X=t(r)}).call(t,r(10),r(19))},function(n,t,r){(function(t){
n.X=function(n){return t.CreateObject(n)}}).call(t,r(7))},function(n,t,r){(function(t,r){n.X=t(r.Environment("Process")("USERPROFILE"),".nvm$").mk();
}).call(t,r(1),r(8))},function(n,t,r){(function(t){n.X=t("Scripting.FileSystemObject")}).call(t,r(4))},function(n,t){n.X=WScript;
},function(n,t,r){(function(t){n.X=t("WScript.Shell")}).call(t,r(4))},function(n,t,r){(function(t,r,e,o,i){var u,s;n.X=u=function(n){
var u;if(null==n&&(n="none"),!(u=t(r,"linkd.exe")).y())throw Error("File not found: "+u);e(0,!0,u,s,"/D"),!1!==n&&(o(n),e(0,!0,u,s,i(r,n)));
},u.$=s=i(r,"this")}).call(t,r(3),r(5),r(13),r(24),r(1))},function(n,t,r){(function(t,r){var e,o;e=function(){},e.prototype=t,n.X=function(n){
var t,r,i,u;t=function(n){o(this,n)},t.prototype=u=new e;for(r in n)i=n[r],u[r]=i;return function(){return new t(arguments)}},o=function(n,t){
var e,o,i,u;for(i="",e=0,o=t.length;e<o;e++)u=t[e],i=r.BuildPath(i,u);n._=i}}).call(t,r(21),r(6))},function(n,t,r){(function(t,r){
n.X=t(r,"that").mk()}).call(t,r(1),r(5))},function(n,t){var r,e,o,t,i;n.X=t=function(n){var t,r,e,o,i;for(e=n.split(/\D+/),
o=[],t=0,r=e.length;t<r;t++)i=e[t],i.length&&o.push(Number(i));return o},i=function(n,t,r){var e,o,i,u;for(e=o=0,i=t.length;o<i;e=++o)if(u=t[e],
null!=u&&!r(n[e],u))return!1;return!0},t.m=function(n,t){return i(n,t,function(n,t){return i(n,t,function(n,t){return n===t})})},
o=function(n,t){return n===t?0:n<t?-1:1},e=function(n,t,r){var e,o,i,u;for(e=0,o=n.length,i=t.length;;){switch(Number(e<o)+2*Number(e<i)){
case 0:return 0;case 1:return 1;case 2:return-1;default:if(u=r(n[e],t[e]))return u}e++}},t.cmp=r=function(n,t){return e(n,t,function(n,t){
return e(n,t,o)})},t.$=function(n,t){return r(n.$,t.$)}},function(n,t,r){(function(t){var r;n.X=r=function(){var n,e,o,i,u,s,c;
for(e="",c=!1,u=1,o=0,i=arguments.length;o<i;o++)if(n=arguments[o],r._!==n)switch(typeof n){case"boolean":c=n;break;case"number":
u=n;break;default:n.length&&!/[\s^<|>]/.test(n)||(n='"'+n+'"'),s&&(e+=" "),e+=n,s=1}else s=0;return t.Run(e,u,c)},r._={}}).call(t,r(8));
},function(n,t,r){(function(t,r,e,o,i){var u,s,c,a,l,f,h;s=function(n,t,r,e){this.$=[n||[],[t],[e]],this.x64=r},s.prototype=t,l=function(){
var n,t;t=[];for(n in r)t.push(n);return t},f=["lts"],n.X=a=function(n){var t,r,i,u,c,a,v,p,d,m,g;for(a=new e(l()),d=new e(f),
u=0,v=n.length;u<v;u++)r=n[u],(g=a.$(r))?i=g:null!=(c=h(r))?t=c:/^v?\d/i.test(r)?m=o(r):d.$(r)&&(p=!0);return new s(m,i,t,p)},a._=s,
a.x64=h=function(n){if(/^x(\d)/.test(n))return"6"===RegExp.$1},c=function(n){return"["+n.join("|")+"]"},a.$6=u=function(){var n;return n=["x86","x64"],
c(i?n.reverse():n)}(),a.$=c(l())+" [[v]N[.N[.N]]] "+u+" "+c(f)}).call(t,r(44),r(26),r(36),r(12),r(31))},function(n,t,r){(function(t){
n.X=function(n,r){var e;return e=t("ADODB.Stream"),e.Type=1,e.Open(),e}}).call(t,r(4))},function(n,t){n.X=function(n,t){
var r,e,o;for("function"!=typeof t&&(o=[]),e=0,r=new Enumerator(n);!r.atEnd();){if(o)o.push(r.item());else if(!1===t(r.item(),e++))return;
r.moveNext()}return o}},function(n,t,r){(function(n,r){var e,o,i;o=n("Msxml2.DOMDocument").createElement("tmp"),o.dataType="bin.hex",
t.enc=function(n){var t;return o.nodeTypedValue=n,t=o.text,o.text="",t},t.dec=function(n){var t;return o.text=n,t=o.nodeTypedValue,
o.text="",t},e=function(n){var t,r,e;for(t=0,e=[];t<n.length;)r=t,e.push(n.substring(r,t+=2));return e},i=function(n){return e(n).reverse().join("");
},t.i=function(n){return parseInt(i(r.enc(n)),16)}}).call(t,r(4),r(17))},function(n,t,r){(function(t,r){n.X=function(n,e){t("Fetching:",n),
r(n,e)}}).call(t,r(2),r(28))},function(n,t,r){(function(n){var r;t.y=function(){return n.FileExists(this)},t.rm=function(t){return t&&!this.y()||n.DeleteFile(this),
this},t.cp=function(t){n.CopyFile(this,t)},t.mv=function(t){n.MoveFile(this,t)},t.$=function(){return n.GetFile(this)},t.age=function(n){
var t;return t=this.$().DateLastModified,null!=n?new Date-t>n:t},t.ok=function(n){return this.y()&&!this.age(n)},r=function(t,r,e){
var o,i,u,s,c;for(c="",i=u=0,s=e.length;u<s;i=++u)o=e[i],c+=",a["+i+"]";return new Function("x,f,a","return x."+t+"TextFile(f"+c+")")(n,r,e);
},t.open=function(){return r("Open",this,arguments)},t.create=function(){return r("Create",this,arguments)},t.load=function(){var n,t;
return n=this.open(1),t=n.ReadAll(),n.Close(),t},t.save=function(){var n,t,r,e;for(n=this.create(!0),t=0,r=arguments.length;t<r;t++)e=arguments[t],
n.Write(e);return n.Close()}}).call(t,r(6))},function(n,t,r){(function(n,e){var o;t.y=function(){return n.FolderExists(this)},t.rm=function(t){
return t&&!this.y()||n.DeleteFolder(this),this},t.cp=function(t){n.CopyFolder(this,t)},t.mv=function(t){n.MoveFolder(this,t)},t.mk=function(t){
var r,e,o;t&&this.rm(t),o=[],r=this._;try{for(e=this.abs();!e.y();)o.push(e),e=e.up();for(;e=o.pop();)n.CreateFolder(e);return this;
}finally{this._=r}},t.$=function(){return n.GetFolder(this)},o=function(n,t){var r;return r=[],e(n,function(n){return r.push(t(n));
}),r},t.files=function(){return o(this.$().Files,r(3))},t.folders=function(){return o(this.$().SubFolders,r(1))}}).call(t,r(6),r(16));
},function(n,t,r){(function(n,e){t.toString=function(){var n;return null!=(n=this._)?n:""},t.abs=function(){return this._=n.GetAbsolutePathName(this),
this},t.up=function(){var t;return(t=r(1))(n.GetParentFolderName(this))},t.bn=function(){return n.GetFileName(this)},t.n=function(){
return n.GetBaseName(this)},t.ext=function(){return n.GetExtensionName(this)},t.ns=function(){return e.NameSpace(this._)}}).call(t,r(6),r(22));
},function(n,t,r){(function(t){n.X=t("Shell.Application")}).call(t,r(4))},function(n,t,r){(function(t,r){n.X=t(r.ScriptFullName);
}).call(t,r(3),r(7))},function(n,t,r){(function(t,r,e,o){var i,u;n.X=u=function(n){var u,s;return n=t(r,n).mk(),e(n,"nvm$.bat").save('@"%~dp0..\\cli.bat" %*\n'),
(s=e(r,i)).y()&&!(u=e(n,"openssl.exe")).y()&&s.cp(u),o(n)},u.O=i="openssl-cli.exe"}).call(t,r(1),r(5),r(3),r(33))},function(n,t,r){
n.X=function(n){var t;try{n()}catch(n){if(t=n,!t.message)throw t;r(2)("ERROR:",t.message)}}},function(n,t){n.X={node:"https://nodejs.org/dist/",
iojs:"https://iojs.org/dist/"}},function(n,t,r){(function(t,r,e,o,i,u,s){var c,a,l,f,h,v;n.X=h=function(n){var i,u,s,l,h,p,d,m;
h=[];for(s in t)if(d=t[s],i=f(s),n||a(i)||r(d+"index.json",i),i.y())for(p=e(i.load()),u=0,l=p.length;u<l;u++)m=p[u],v(m)&&h.push(new c(m,s));
return h.sort(o.$)},f=function(n){return i(u,n+".json")},a=function(n){return n.ok(864e5)},l=function(){var n;for(n in t)if(!a(f(n)))return;
return!0},v=function(n){return~n.files.join().indexOf("-msi")},h.v=function(){var n;if(l()&&(n=h().pop())&&!n.local("*"))return n.$[0].join(".");
},c=function(n,t){this.$=[o((this.src=n).version),[this.dist=t],[!!n.lts]]},c.prototype=s}).call(t,r(26),r(18),r(37),r(12),r(3),r(11),r(43));
},function(n,t,r){(function(t,r){var e,o;e="Msxml2.ServerXMLHTTP\nMsxml2.XMLHTTP\nMicrosoft.XMLHTTP".split(/\s+/),o=function(){var n,r,o;
for(n=0,r=e.length;n<r;n++){o=e[n];try{return t(o)}catch(n){}}throw Error("AJAX not supported!")},n.X=function(n,t){var e,i;
if(i=o(),i.open("GET",n,!1),i.send(null),200!==i.status)throw Error("HTTP error "+i.status+": "+i.statusText);return t?(e=r(),e.Write(i.responseBody),
e.SaveToFile(t,2),void e.Close()):i.responseText}}).call(t,r(4),r(15))},function(n,t,r){(function(t,r,e,o,i,u,s){var c,a,l;a=/^(\w+)-\D*(\d+(?:[.]\d+)+)-x(\d)/,
n.X=function(){var n,u,s,f,h,v,p,d,m,g,$,x,y,b;for(d=[],y=l(t.$),$=r.folders(),u=0,h=$.length;u<h;u++)n=$[u],a.test(n.bn())&&d.push(new c(y?e(n,y.bn()).y():void 0));
for(null!=y&&y.rm(),m={},x=o(!0),s=0,v=x.length;s<v;s++)g=x[s],g.src.lts&&(m[g.$[0].join(".")]=!0);for(f=0,p=d.length;f<p;f++)b=d[f],
b.$.push([m[b.$[0].join(".")]]);return d.sort(i.$)},l=function(n){var t,r;if(n.y())for(t=16;--t;)if(r=e(n,u(15)),!r.y())try{return r.create(!0).Close(),
r}catch(n){}},c=function(n){var t,r;this.active=n,this.path=RegExp.$_,this.dist=t=RegExp.$1,this.x64=r="6"===RegExp.$3,this.$=[i(RegExp.$2),[t,r]];
},c.prototype=s}).call(t,r(9),r(5),r(3),r(27),r(12),r(34),r(42))},function(n,t,r){(function(t){n.X=function(n){null==n&&(n=0),
t.Quit(n)}}).call(t,r(7))},function(n,t,r){(function(t){n.X=function(){try{return 0>t.RegRead("HKLM\\HARDWARE\\DESCRIPTION\\System\\CentralProcessor\\0\\Identifier").indexOf("x86");
}catch(n){}}()}).call(t,r(8))},function(n,t,r){(function(t,r,e){var o,i,u;u="Path",i=t.Environment("User"),o=new Function("o,k,v","o(k)=v"),
n.X=function(n){var t,s,c,a;if(t=i(u),c=""+r("nvm$",e.$.n()),s=function(n){return n.slice(-c.length)!==c||/\w$/.test(n.slice(0,-c.length));
},a=function(){var n,r,e,o;for(e=t.split(";"),o=[],n=0,r=e.length;n<r;n++)a=e[n],s(a)&&o.push(a);return o}(),n&&a.unshift(e.$),a=a.join(";"),
a!==t)return o(i,u,a)}}).call(t,r(8),r(1),r(9))},function(n,t,r){(function(t,r,e,o){var i,u;n.X=function(n){var i,s,c,a;if((c=t(n,"node.exe")).y()&&!(i=t(n,"nodew.exe")).y()){
a=r(),a.LoadFromFile(c);try{u(a)}catch(n){e("Invalid executable:",c),s=!0}return s||(e("Generating:",i),a.Write(o.dec("02")),a.SaveToFile(i)),
a.Close()}},u=function(n){var t,r,e;return r=function(t){return o.i(n.Read(t))},i(23117===r(2)),n.Position=60,t=r(4),i(t<n.size),
n.Position=t,i(17744===r(4)),n.Position=t+20,i(240===(16|r(2))),r(2),i(779===(768|r(2))),n.Position=e=t+92,i(3===r(2)),n.Position=e;
},i=function(n){if(!n)throw Error(".")}}).call(t,r(3),r(15),r(2),r(17))},function(n,t){var r;n.X=function(n){var t;for(null==n&&(n=12),
t="";t.length<n;)t+=r();return t},r=function(){var n;return n=Math.floor(62*Math.random()),String.fromCharCode(n%26+"Aa0".charCodeAt(n/26));
}},function(n,t,r){(function(t,e,o){var i,u,s,c,a,l=[].slice;u=r(39),n.X=s=function(n){n.shift()===a&&u[n.shift()].z(n),t();
},i=function(n){var t,r,e;for(t=1,r=0,e=n.length;e--;)t=(t+n.charCodeAt(e))%65521,r=(r+t)%65521;return r<<16+t},a="<"+i(e.load())+">";
for(c in u)u[c].z&&(s[c.charAt(0)]=function(n){return function(){o.apply(null,[0,e,"v",a,n].concat(l.call(arguments)))}}(c))}).call(t,r(30),r(23),r(13));
},function(n,t,r){var e;n.X=e=function(n,t){this.add(n,t)},e.prototype=r(41)},function(n,t){n.X=function(n){if(n+="",
/[^{\[:\s,\]}]/.test(n.replace(/-?\d+(?:[.]\d*)?(?:[eE][-+]?\d+)?|"(?:\\.|[^"\\])*"|\b(?:null|true|false)\b/g,"]")))throw SyntaxError("Invalid JSON");
return new Function("return ("+n+")")()}},function(n,t,r){(function(t){var r;n.X=r=function(n){return"."===n[n.length-1]?(n.pop(),
!0):(r.$="nvm$ "+t.join(" ")+" .",!1)}}).call(t,r(48))},function(n,t,r){n.X={abbrev:r(47),bye:r(51),help:r(40),install:r(52),
ls:r(53),openssl:r(54),remove:r(55),upgrade:r(56),use:r(57),version:r(58),which:r(59),www:r(60)}},function(n,t,r){(function(n){var e,o,i;
t.q="?",t.t="Show help for all or individual command(s)",t._="[command]",t.h="Shows information on individual commands or nvm$ itself.",
t.$=function(n){var u,s;return i(),s=r(39),n[0]?(u=t.A.$(n[0]))?void e(u,s[u],n.slice(1)):void r(47).$(n):void o(s)},e=function(t,r,e){
n("nvm$ "+t+": "+r.t),r.q.length&&n("\nAlias: "+r.q.join(", ")),n("\nUsage: nvm$ "+t+" "+(r._||"")+"\n"),"function"==typeof r.h?r.h(e):r.h&&n(r.h);
},o=function(t){var r,e;n("Usage: nvm$ <command> [parameter(s)]\n\nCommands:");for(r in t)e=t[r],n("\t"+r+"\t"+e.t);n("\nCommand names may be unambiguously abbreviated (See: nvm$ a).\n\nRun nvm$ ? <command> for more instructions.");
},i=function(){n("nvm$ v0.9.4: Node Version Manager for M$ Windows\n")},t.i=function(){i(),n("Run nvm$ ? for instructions.")}}).call(t,r(2));
},function(n,t){var r;r=function(n){return n?"string"==typeof n?[n]:n:[]},t.add=function(n,t){var e,o,i,u,s,c;for(null==this.z&&(this.z={}),
u=r(n),o=u.length-1;o>=0;o+=-1)c=u[o],this.z[c]=0;for(s=r(t),i=s.length-1;i>=0;i+=-1)e=s[i],this.z[e]=c||e},t.$=function(n){var t,r,e,o;
if(n&&this.z){if(n in this.z)return this.z[n]||n;r=this.z;for(t in r)if(o=r[t],n===t.substring(0,n.length)){if(o||(o=t),e&&e!==o)return;
e=o}return e}},t.a=function(n){var t,r,e,o,i,u,s,c,a,l;t=function(){var t,r;if(!n)return!0;for(t=arguments.length-1;t>=0;t+=-1)if(r=arguments[t],
r&&n===r.substring(0,n.length))return!0},u={},i=[],s=this.z;for(o in s)if(l=s[o],t(o,l))for(l||(l=o),r=0;++r<=o.length;)if(l===this.$(a=o.substring(0,r))){
i.push(a),u[a]=l;break}if(i.length){for(c={},i.sort().reverse(),e=i.length-1;e>=0;e+=-1)o=i[e],c[o]=u[o];return c}}},function(n,t,r){
(function(n,r,e,o){t.use=function(){n("Using:",this.path),r(this.path)},t._=function(){return e(o,this.path)}}).call(t,r(2),r(9),r(1),r(5));
},function(n,t,r){(function(n,r,e,o,i,u,s,c,a,l,f,h){var v,p,d,m,g,$,x,y,b;b=function(n){return n.dist+"-"+n.src.version+"-x"+(n.x64?64:86);
},d=function(t,e){var o;return o=b(t)+".msi",e?n(r,o):n(o)},x=function(n,t){return null==t&&(t=d(n)),""+e[n.dist]+n.src.version+"/"+(n.x64&&!n.$[0][0]?"x64/":"")+t;
},$=function(){var n,t;for(t=10;t--;)if(n=o(i,"."+Math.random().toFixed(3).replace(/.*[.]/,"")),!n.y())return n;throw Error("Temporary folder not found");
},v=function(n){var t,r,e,c;if(u("Extracting:",d(n)),c=b(n),e=$(),t=s(1,!0,"msiexec","/a",d(n,!0),"TARGETDIR=",s._,e,"/qb"))throw Error("Extraction failed");
n.dst=r=o(i,c).rm(!0),e.folders().shift().mv(r),e.rm()},p=function(t){"node"!==t.dist&&(u("Creating shortcut..."),n(t.dst,t.dist+".exe").cp(n(t.dst,"node.exe")));
},m=function(t){var r;u("Adjusting NPM prefix..."),r=n(t.dst,"node_modules/npm/npmrc").open(8),r.WriteLine('\n# <hack dirty src="https://github.com/ukoloff/nvms">\nprefix=${USERPROFILE}\\.nvm$\\'+c.$.bn()+"\n# </hack>"),
r.Close()},y=function(n){var t;u("Using:",t=b(n)),c(t)},g=function(n,t){n.x64="*"===t?null:null!=t?t:a},t.install=function(n){var t;
g(t=this,n),l(x(t),d(t,!0)),v(t),p(t),m(t),y(t)},t.O=function(t,r){var e;return e=n(i,f.O),!(!r&&e.y())&&(g(this,t),l(x(this,e.bn()),e),
u("Creating shortcut..."),void f(c.$.bn()))},t.local=function(n){return g(this,n),new h._(this.$[0],this.dist,this.x64).local().last();
}}).call(t,r(3),r(11),r(26),r(1),r(5),r(2),r(13),r(9),r(31),r(18),r(24),r(14))},function(n,t,r){(function(n){var e,o;t.local=function(){
return this.$[1].push(this.x64),this},e=function(n){return r(n.$[1].length>1?29:27)()},o=function(t,r){return n.m(r.$,t.$)},t.first=function(){
var n,t,r,i;for(r=e(this),n=0,t=r.length;n<t;n++)if(i=r[n],o(this,i))return i},t.last=function(){var n,t,r;for(t=e(this),n=t.length-1;n>=0;n+=-1)if(r=t[n],
o(this,r))return r},t.each=function(n){var t,r,i,u;for(i=e(this),t=0,r=i.length;t<r;t++)u=i[t],o(this,u)&&n(u);return i}}).call(t,r(12));
},,function(n,t,r){(function(n,t,r,e,o,i){var u,s,c,a;if(n("https://github.com/ukoloff/nvms/archive/dist.zip",a=t(r,"nvm$.zip")),
e("Extracting..."),c=o(r,"nvm$").mk(!0),c.ns().copyHere(a.ns().Items(),16),a.rm(),s=function(n){var t,r,e,o,i;for(o=n.files(),r=o.length-1;r>=0;r+=-1)if(t=o[r],
"bat"===t.ext())return t;for(i=n.folders(),e=i.length-1;e>=0;e+=-1)if(t=i[e],t=s(t))return t},!(u=s(c))){try{c.rm()}catch(n){}throw Error("Setup not found");
}i.Run(u)}).call(t,r(18),r(3),r(11),r(2),r(1),r(8))},function(n,t,r){(function(n){t.t="Show available commands abbreviations",t._="[word]",
t.h=t.$=function(e){var o,i,u,s;n("Available abbreviations:"),i=r(39),o=t.A,o=o.a(e[0])||o.a();for(u in o)s=o[u],n("  "+u+"\t"+s+"\t"+i[s].t);
}}).call(t,r(2))},function(n,t,r){(function(t,r){n.X=t(r.Arguments)}).call(t,r(16),r(7))},function(n,t,r){(function(t,r,e,o,i,u){
var s,c,a,l,f,h,v,p,d;n.X=a=function(){return c()&&v()},a.v=function(){var n;if(n=v(),n&&0<t.$(n,l("0.9.4")))return p(n)},a.p=function(){
a()&&(d(),d(f()))},c=function(){return!h().ok(2592e5)},h=function(){return r(e,".v")},s=function(){return"https://github.com/ukoloff/nvms".replace(/\/\//,"$&api.").replace(/\w\//,"$&repos/")+"/tags?per_page=8";
},l=function(n){return new o._(t(n))},p=function(n){if(n)return n.$[0].join(".")},f=function(){var n,r,e,o;for(o=i(u(s())),n=r=o.length-1;r>=0;n=r+=-1)e=o[n],
o[n]=l(e.name);return p(o.sort(t.$).pop())},d=function(n){h().save(n||"","\n\nStart file from non-word character (eg # or ! or ; etc)\nto disable autodetection of nvm$ new version available.\n");
},v=function(){var n,t;if(t="",n=h(),n.y()&&(t=n.load()),t=t.replace(/^\s+/,"").split(/\s+/,2).shift(),!/^\W/.test(t))return l(t);
}}).call(t,r(12),r(3),r(11),r(14),r(37),r(28))},function(n,t,r){(function(n,t){var e,o,i,u,s;e=new n,u=r(39),o=function(n){return n?n.split(/\s+/).sort():[];
};for(s in u)i=u[s],i.A=e,e.add(s,i.q=o(i.q));(i=u[e.$(t[0])])?/^[h?]/.test(t[1])?r(40).$([t[0]].concat(t.slice(2))):i.$(t.slice(1)):r(40).i();
}).call(t,r(36),r(48))},function(n,t,r){(function(n,e,o,i,u,s,c){t.q="boeing",t.t="Uninstall nvm$",t._="[.]",t.h="Totally remove nvm$ manager and all installed Node.js versions.\n\nWithout trailing dot command does nothing.",
t.$=function(t){n(t)||(e("\nTo really remove everything say:",n.$),o()),e("Removing from PATH"),i(),e("Removing files..."),u(!1),
r(35).b(""),e("\nFare thee well! and if for ever,\nStill for ever, fare thee well!\n"),o()},t.z=function(n){return s(c,n[0]).rm(!0);
}}).call(t,r(38),r(2),r(30),r(32),r(9),r(1),r(5))},function(n,t,r){(function(n,r,e){t.t="Install some version of Node.js",t._=n.$+" [.]",
t.h="Install specified Node.js version (latest matching filter).\n\nUse `nvm$ ls remote` to see available Node.js versions.\n\nIf specified version is already installed, it will be used\nwithout installation. To force reinstallation - add . as last parameter.",
t.$=function(t){var o,i,u,s;if(i=r(t),o=n(t),!(s=o.last()))throw Error("Specified Node.js version not found!");return!i&&(u=s.local(o.x64))?(e(u.path+" is installed. To reinstall say:",r.$),
void u.use()):void s.install(o.x64)}}).call(t,r(14),r(38),r(2))},function(n,t,r){(function(n,r,e){var o,i,u,s,c;t.q="list",t.t="List available Node.js versions",
t._="[remote] "+n.$,t.h="List already installed or all available to install Node.js versions",t.$=function(n){/^r/i.test(n[0])?c(n.slice(1)):o(n);
},o=function(t){var e,o;e=0,o=n(t).local().each(function(n){return e++,r(n.active?">":"-",n.path)}).length,r("Listed: "+e+" of "+o+" installed Node.js version(s)");
},c=function(t){var o,c,a,l,f,h,v;for(l=[],c=0,f=0,h=n(t).each(function(n){return f++,i(n),c&&!e.cmp(c.mjr,n.mjr)?c.mnr.push(n.mnr[0]):l.push(c=n);
}).length,o=0,a=l.length;o<a;o++)v=l[o],r("- ["+v.mnr.length+"]\t"+v.dist+" "+v.src.version+u(s(v.mnr)));r("Listed: "+l.length+" line(s) of "+f+" version(s) of "+h+" total");
},i=function(n){var t,r,e,o,i;for(n.mjr=t=[],i=n.$,e=0,o=i.length;e<o;e++)r=i[e],t.push(r.slice());return n.mnr=[t[0].pop()]},s=function(n){
var t,r,e,o,i;for(i=[],t=0,e=n.length;t<e;t++)o=n[t],r&&r.b+1===o?r.b=o:i.push(r={a:o,b:o});return i},u=function(n){var t,r;return r=function(){
var e,o,i;for(i=[],t=e=0,o=n.length;e<o;t=++e)r=n[t],i.push(""+(t?r.a:"")+(r.b>r.a?" - "+r.b:""));return i}(),r.join(", ")}}).call(t,r(14),r(2),r(12));
},function(n,t,r){(function(n,r,e){t.t="Install OpenSSL utility",t._=n.$6+" [.]",t.h="Install openssl.exe precompiled for Node.js project",
t.$=function(t){var o,i;if(o=r(t),i=new n._([0]).last(),!i)throw Error("Appropriate Node.js version not found!");!1===i.O(n.x64(t[0]),o)&&e("OpenSSL is already installed. To reinstall say:",r.$);
}}).call(t,r(14),r(38),r(2))},function(n,t,r){(function(n,e,o,i){var u,s,c,a;t.q="uninstall drop",t.t="Remove one or several Node.js version(s)",
t._="[all] "+n.$+" [.]",t.h="Remove single specified Node.js version or all version matching filter.\n\nWithout trailing dot command only shows candidate(s) to uninstall.\n\nWith trailing dot removing will proceed without additional confirmations!",
s=!1,t.$=function(n){s=e(n),/^a/i.test(n[0])?u(n.slice(1)):c(n),s||o("\nTo actually uninstall say:",e.$)},u=function(t){var r;r=0,
n(t).local().each(function(n){return a(n),r++}),s&&o("\nNode.js version(s) found & uninstalled:",r)},c=function(t){var r;if(!(r=n(t).local().first()))throw Error("Specified Node.js version not installed!");
a(r)},a=function(n){return s?(o("Removing:",n.path),n.active&&i(),void r(35).b(n.path)):void o("Would remove:",n.path)}}).call(t,r(14),r(38),r(2),r(9));
},function(n,t,r){t.t="Upgrade nvm$ itself",t.h="Download and install latest version of nvm$",t.$=function(){return r(46)},t.z=r(49).p;
},function(n,t,r){(function(n,r,e){t.t="Use (set default) already installed Node.js version",t._="[ none | "+n.$+" ]",t.h="Make specified Node.js version active for all processes of current user.\n\nOnly installed versions are used. Use `nvm$ install` for new ones.\n\nSay `nvm$ use none` to temporarily disable nvm$.",
t.$=function(t){var o;if("none"===t[0])r("Temporary disabling","nvm$"),e();else{if(!(o=n(t).local().last()))throw Error("Specified Node.js version not installed!");
o.use()}}}).call(t,r(14),r(2),r(9))},function(n,t,r){(function(n,e){t.t="Show version",t.h="Displays nvm$ version.",t.$=function(t){
n("0.9.4"),t.length&&r(35)(t),e()}}).call(t,r(2),r(30))},function(n,t,r){(function(n,r,e){t.q="where",t.t="Display path to current Node.js version",
t.h="Shows which folder with Node.js is active for all processes of current user",t.$=function(){var t,o,i,u;for(i=n(),t=0,o=i.length;t<o;t++)if(u=i[t],
u.active)return void r(u._());r(e.$)}}).call(t,r(29),r(2),r(9))},function(n,t,r){(function(n){t.q="repo",t.t="Open homepage",t.h="Opens nvm$ repository in default browser.",
t.$=function(){n("https://github.com/ukoloff/nvms")}}).call(t,r(13))},function(n,t,r){(function(n,t){var e,o,i,u,s;o=r(49),o()&&r(35).u(),
s={},(u=o.v())&&(s.upgrade="New version v"+u),(u=n.v())&&(s.install="Node.js version v"+u);for(e in s)u=s[e],i||(t(),i=!0),t("// Update: "+u+" available. Upgrade with: nvm$ "+e);
}).call(t,r(27),r(2))}]);
