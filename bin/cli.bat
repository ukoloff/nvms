0</*! :: See https://github.com/ukoloff/nvms
@echo off
cscript.exe //Nologo //E:JScript "%~f0" %*
goto :EOF */0;
!function(n){function t(e){if(r[e])return r[e].X;var o=r[e]={X:{},id:e,loaded:!1};return n[e].call(o.X,o,o.X,t),
o.loaded=!0,o.X}var r={};return t.m=n,t.c=r,t.p="",t(0)}([function(n,t,r){r(25)(function(){r(50),r(61)})},function(n,t,r){(function(t){
n.X=t(r(17))}).call(t,r(8))},function(n,t,r){(function(t){var r=[].slice;n.X=function(){var n;n=1<=arguments.length?r.call(arguments,0):[],
t.Echo(n.join(" "))}}).call(t,r(6))},function(n,t,r){(function(t){n.X=t(r(16))}).call(t,r(8))},function(n,t,r){(function(t){
n.X=function(n){return t.CreateObject(n)}}).call(t,r(6))},function(n,t,r){(function(t){n.X=t("Scripting.FileSystemObject");
}).call(t,r(4))},function(n,t){n.X=WScript},function(n,t,r){(function(t,r){n.X=t(r.Environment("Process")("USERPROFILE"),".nvm$").mk();
}).call(t,r(1),r(9))},function(n,t,r){(function(t){var e,o;e=function(){},e.prototype=r(18),n.X=function(n){var t,r,i,u;t=function(n){
o(this,n)},t.prototype=u=new e;for(r in n)i=n[r],u[r]=i;return function(){return new t(arguments)}},o=function(n,r){var e,o,i,u;for(i="",
e=0,o=r.length;e<o;e++)u=r[e],i=t.BuildPath(i,u);n._=i}}).call(t,r(5))},function(n,t,r){(function(t){n.X=t("WScript.Shell");
}).call(t,r(4))},function(n,t,r){(function(t,r,e,o,i){var u,s;n.X=u=function(n){var u;if(null==n&&(n="none"),!(u=t(r,"linkd.exe")).y())throw Error("File not found: "+u);
e(0,!0,u,s,"/D"),!1!==n&&(o(n),e(0,!0,u,s,i(r,n)))},u.$=s=i(r,"this")}).call(t,r(3),r(7),r(11),r(24),r(1))},function(n,t,r){(function(t){
var r;n.X=r=function(){var n,e,o,i,u,s,c;for(e="",c=!1,u=1,o=0,i=arguments.length;o<i;o++)if(n=arguments[o],r._!==n)switch(typeof n){
case"boolean":c=n;break;case"number":u=n;break;default:n.length&&!/[\s^<|>]/.test(n)||(n='"'+n+'"'),s&&(e+=" "),e+=n,s=1}else s=0;
return t.Run(e,u,c)},r._={}}).call(t,r(9))},function(n,t){n.X=function(n,t){var r,e,o;for("function"!=typeof t&&(o=[]),e=0,
r=new Enumerator(n);!r.atEnd();){if(o)o.push(r.item());else if(!1===t(r.item(),e++))return;r.moveNext()}return o}},function(n,t,r){
(function(t,r){n.X=t(r,"that").mk()}).call(t,r(1),r(7))},function(n,t){var r,e,o,t,i;n.X=t=function(n){var t,r,e,o,i;for(e=n.split(/\D+/),
o=[],t=0,r=e.length;t<r;t++)i=e[t],i.length&&o.push(Number(i));return o},i=function(n,t,r){var e,o,i,u;for(null==n&&(n=[]),e=o=0,
i=t.length;o<i;e=++o)if(u=t[e],null!=u&&!r(n[e],u))return!1;return!0},t.m=function(n,t){return i(n,t,function(n,t){return i(n,t,function(n,t){
return n===t})})},o=function(n,t){return n===t?0:n<t?-1:1},e=function(n,t,r){var e,o,i,u;for(e=0,o=n.length,i=t.length;;){switch(Number(e<o)+2*Number(e<i)){
case 0:return 0;case 1:return 1;case 2:return-1;default:if(u=r(n[e],t[e]))return u}e++}},t.cmp=r=function(n,t){return e(n,t,function(n,t){
return e(n,t,o)})},t.$=function(n,t){return r(n.$,t.$)}},function(n,t){n.X={node:"https://nodejs.org/dist/",iojs:"https://iojs.org/dist/"
}},function(n,t,r){(function(n){var r;t.y=function(){return n.FileExists(this)},t.rm=function(t){return t&&!this.y()||n.DeleteFile(this),
this},t.cp=function(t){n.CopyFile(this,t)},t.mv=function(t){n.MoveFile(this,t)},t.$=function(){return n.GetFile(this)},t.sz=function(){
return this.$().Size},t.age=function(n){var t;return t=this.$().DateLastModified,null!=n?new Date-t>n:t},t.ok=function(n){return this.y()&&!this.age(n);
},r=function(t,r,e){var o,i,u,s,c;for(c="",i=u=0,s=e.length;u<s;i=++u)o=e[i],c+=",a["+i+"]";return new Function("x,f,a","return x."+t+"TextFile(f"+c+")")(n,r,e);
},t.open=function(){return r("Open",this,arguments)},t.create=function(){return r("Create",this,arguments)},t.load=function(){var n,t;
return n=this.open(1),t=n.ReadAll(),n.Close(),t},t.save=function(){var n,t,r,e;for(n=this.create(!0),t=0,r=arguments.length;t<r;t++)e=arguments[t],
n.Write(e);return n.Close()}}).call(t,r(5))},function(n,t,r){(function(n,e){var o;t.y=function(){return n.FolderExists(this)},t.rm=function(t){
return t&&!this.y()||n.DeleteFolder(this),this},t.cp=function(t){n.CopyFolder(this,t)},t.mv=function(t){n.MoveFolder(this,t)},t.mk=function(t){
var r,e,o;t&&this.rm(t),o=[],r=this._;try{for(e=this.abs();!e.y();)o.push(e),e=e.up();for(;e=o.pop();)n.CreateFolder(e);return this;
}finally{this._=r}},t.$=function(){return n.GetFolder(this)},o=function(n,t){var r;return r=[],e(n,function(n){return r.push(t(n));
}),r},t.files=function(){return o(this.$().Files,r(3))},t.folders=function(){return o(this.$().SubFolders,r(1))}}).call(t,r(5),r(12));
},function(n,t,r){(function(n,e){t.toString=function(){var n;return null!=(n=this._)?n:""},t.abs=function(){return this._=n.GetAbsolutePathName(this),
this},t.up=function(){var t;return(t=r(1))(n.GetParentFolderName(this))},t.bn=function(t){var e,o,i;for(o=n.GetFileName(this);--t>0;)e||(e=r(8)()),
o=""+e((i=(i||this).up()).bn(),o);return o},t.n=function(){return n.GetBaseName(this)},t.ext=function(){return n.GetExtensionName(this);
},t.ns=function(){return e.NameSpace(this._)}}).call(t,r(5),r(20))},function(n,t,r){(function(t){n.X=function(n,r){var e;return e=t("ADODB.Stream"),
e.Type=1,e.Open(),e}}).call(t,r(4))},function(n,t,r){(function(t){n.X=t("Shell.Application")}).call(t,r(4))},function(n,t,r){
(function(t,r){n.X=t(r.ScriptFullName)}).call(t,r(3),r(6))},function(n,t,r){(function(n,r){var e,o,i;o=n("Msxml2.DOMDocument").createElement("tmp"),
o.dataType="bin.hex",t.enc=function(n){var t;return o.nodeTypedValue=n,t=o.text,o.text="",t},t.dec=function(n){var t;return o.text=n,
t=o.nodeTypedValue,o.text="",t},e=function(n){var t,r,e;for(t=0,e=[];t<n.length;)r=t,e.push(n.substring(r,t+=2));return e},i=function(n){
return e(n).reverse().join("")},t.i=function(n){return parseInt(i(r.enc(n)),16)}}).call(t,r(4),r(22))},function(n,t,r){(function(t,r){
n.X=function(n,e){t("Fetching:",n),r(n,e)}}).call(t,r(2),r(29))},function(n,t,r){(function(t,r,e,o,i){var u,s;n.X=s=function(n){
var s,c,a;return n=t(r,n).mk(),e(n,"nvm$.bat").save('@"%~dp0..\\cli.bat" %*\n'),c=e(n,"npx.cmd"),c.y()||(o("Creating:",c.bn(2)),c.save('@"%~dp0..\\npx.bat" %*\n')),
(a=e(r,u)).y()&&!(s=e(n,"openssl"+i.x)).y()&&a.cp(s),i(n)},s.O=u="openssl-cli"+i.x}).call(t,r(1),r(7),r(3),r(2),r(26))},function(n,t,r){
n.X=function(n){var t;try{n()}catch(n){if(t=n,!t.message)throw t;r(2)("ERROR:",t.message)}}},function(n,t,r){(function(t,r,e,o,i){
var u,s,c,a,l;n.X=u=function(n){var i,u,c,f,h,v,p;if((v=t(n,a+s)).y()&&!(i=t(n,a+"w"+s)).y())return p=r(),p.LoadFromFile(v),
f=function(n){return e.i(p.Read(n))},h=function(n){return p.Position=n,!0},23117===f(2)&&h(60)&&(c=f(4))&&c<p.size&&h(c)&&17744===f(4)&&h(c+20)&&240===(16|f(2))&&l(f(2))&&779===(768|f(2))&&h(u=c+92)&&3===f(2)&&h(u)?(o("Generating:",i.bn(2)),
p.Write(e.dec("02")),p.SaveToFile(i)):o("Invalid EXE:",v),p.Close()},l=function(){return!0};for(c in i){u.n=a=c;break}u.x=s=".exe";
}).call(t,r(3),r(19),r(22),r(2),r(15))},function(n,t){var r;n.X=function(n){var t;for(null==n&&(n=12),t="";t.length<n;)t+=r();
return t},r=function(){var n;return n=Math.floor(62*Math.random()),String.fromCharCode(n%26+"Aa0".charCodeAt(n/26))}},function(n,t,r){
(function(t,r,e,o,i,u,s){var c,a,l,f,h,v;n.X=h=function(n){var i,u,s,l,h,p,d,m;h=[];for(s in t)if(d=t[s],i=f(s),n||a(i)||r(d+"index.json",i),
i.y())for(p=e(i.load()),u=0,l=p.length;u<l;u++)m=p[u],v(m)&&h.push(new c(m,s));return h.sort(o.$)},f=function(n){return i(u,n+".json");
},a=function(n){return n.ok(864e5)},l=function(){var n;for(n in t)if(!a(f(n)))return;return!0},v=function(n){return~n.files.join().indexOf("-msi");
},h.v=function(){var n;if(l()&&(n=h().pop())&&!n.local("*"))return n.$[0].join(".")},c=function(n,t){this.$=[o((this.src=n).version),[this.dist=t],[!!n.lts]];
},c.prototype=s}).call(t,r(15),r(23),r(38),r(14),r(3),r(13),r(43))},function(n,t,r){(function(t,r){var e,o;e="Msxml2.ServerXMLHTTP\nMsxml2.XMLHTTP\nMicrosoft.XMLHTTP".split(/\s+/),
o=function(){var n,r,o;for(n=0,r=e.length;n<r;n++){o=e[n];try{return t(o)}catch(n){}}throw Error("AJAX not supported!")},n.X=function(n,t){
var e,i;if(i=o(),i.open("GET",n,!1),i.send(null),200!==i.status)throw Error("HTTP error "+i.status+": "+i.statusText);return t?(e=r(),
e.Write(i.responseBody),e.SaveToFile(t,2),void e.Close()):i.responseText}}).call(t,r(4),r(19))},function(n,t,r){var e;n.X=function(n,t,r,o){
var i;return i=new e,i.$=[n||[],[t],[o]],i.x64=r,i},e=function(){},e.prototype=r(44)},function(n,t,r){(function(t,r,e,o,i){var u,s,c,a,l,f;
a=function(){var n,r;r=[];for(n in t)r.push(n);return r},l="lts",n.X=c=function(n){var t,i,u,s,c,h,v,p,d,m,g;for(h=r(a()),d=r(l),
s=0,v=n.length;s<v;s++)i=n[s],(g=h.$(i))?u=g:null!=(c=f(i))?t=c:/^v?\d/i.test(i)?m=e(i):d.$(i)&&(p=!0);return o(m,u,t,p)},c.x64=f=function(n){
if(/^x(\d)/.test(n))return"6"===RegExp.$1},s=function(n){return"["+n.join("|")+"]"},c.$6=u=function(){var n;return n=["x86","x64"],
s(i?n.reverse():n)}(),c.$=s(a())+" [[v]N[.N[.N]]] "+u+" "+s([l])}).call(t,r(15),r(49),r(14),r(30),r(36))},function(n,t,r){(function(t,r,e,o,i,u,s){
var c,a,l;a=/^(\w+)-\D*(\d+(?:[.]\d+)+)-x(\d)/,n.X=function(){var n,u,s,f,h,v,p,d,m,g,$,x,y,b;for(d=[],y=l(t.$),$=r.folders(),
u=0,h=$.length;u<h;u++)n=$[u],a.test(n.bn())&&d.push(new c(y?e(n,y.bn()).y():void 0));for(null!=y&&y.rm(),m={},x=o(!0),s=0,v=x.length;s<v;s++)g=x[s],
g.src.lts&&(m[g.$[0].join(".")]=g.src.lts);for(f=0,p=d.length;f<p;f++)b=d[f],b.$.push([!!(b.lts=m[b.$[0].join(".")])]);return d.sort(i.$);
},l=function(n){var t,r;if(n.y())for(t=16;--t;)if(r=e(n,u(15)),!r.y())try{return r.create(!0).Close(),r}catch(n){}},c=function(n){
var t,r;this.active=n,this.path=RegExp.$_,this.dist=t=RegExp.$1,this.x64=r="6"===RegExp.$3,this.$=[i(RegExp.$2),[t,r]]},c.prototype=s;
}).call(t,r(10),r(7),r(3),r(28),r(14),r(27),r(42))},function(n,t,r){(function(t){n.X=function(n){null==n&&(n=0),t.Quit(n)}}).call(t,r(6));
},function(n,t,r){(function(t,r,e){var o,i,u;u="Path",i=t.Environment("User"),o=new Function("o,k,v","o(k)=v"),n.X=function(n){
var t,s,c,a;if(t=i(u),c=""+r("nvm$",e.$.n()),s=function(n){return n.slice(-c.length)!==c||/\w$/.test(n.slice(0,-c.length))},a=function(){
var n,r,e,o;for(e=t.split(";"),o=[],n=0,r=e.length;n<r;n++)a=e[n],s(a)&&o.push(a);return o}(),n&&a.unshift(e.$),a=a.join(";"),a!==t)return o(i,u,a);
}}).call(t,r(9),r(1),r(10))},function(n,t,r){(function(t,e,o){var i,u,s,c,a,l=[].slice;u=r(40),n.X=s=function(n){n.shift()===a&&u[n.shift()].z(n),
t()},i=function(n){var t,r,e;for(t=1,r=0,e=n.length;e--;)t=(t+n.charCodeAt(e))%65521,r=(r+t)%65521;return r<<16+t},a="<"+i(e.load())+">";
for(c in u)u[c].z&&(s[c.charAt(0)]=function(n){return function(){o.apply(null,[0,e,"v",a,n].concat(l.call(arguments)))}}(c))}).call(t,r(33),r(21),r(11));
},function(n,t,r){(function(t){n.X=function(){try{return 0>t.RegRead("HKLM\\HARDWARE\\DESCRIPTION\\System\\CentralProcessor\\0\\Identifier").indexOf("x86");
}catch(n){}}()}).call(t,r(9))},function(n,t,r){(function(t,r){n.X=t(r.Arguments)}).call(t,r(12),r(6))},function(n,t){n.X=function(n){
if(n+="",/[^{\[:\s,\]}]/.test(n.replace(/-?\d+(?:[.]\d*)?(?:[eE][-+]?\d+)?|"(?:\\.|[^"\\])*"|\b(?:null|true|false)\b/g,"]")))throw SyntaxError("Invalid JSON");
return new Function("return ("+n+")")()}},function(n,t,r){(function(t){var r;n.X=r=function(n){return"."===n[n.length-1]?(n.pop(),
!0):(r.$="nvm$ "+t.join(" ")+" .",!1)}}).call(t,r(37))},function(n,t,r){n.X={abbrev:r(47),bye:r(51),help:r(41),install:r(52),
ls:r(53),openssl:r(54),remove:r(55),upgrade:r(56),use:r(57),version:r(58),which:r(59),www:r(60)}},function(n,t,r){(function(n){var e,o,i;
t.q="?",t.t="Show help for all or individual command(s)",t._="[command]",t.h="Shows information on individual commands or nvm$ itself.",
t.$=function(n){var u,s;return i(),s=r(40),n[0]?(u=t.A.$(n[0]))?void e(u,s[u],n.slice(1)):void r(47).$(n):void o(s)},e=function(t,r,e){
n("nvm$ "+t+": "+r.t),r.q.length&&n("\nAlias: "+r.q.join(", ")),n("\nUsage: nvm$ "+t+" "+(r._||"")+"\n"),"function"==typeof r.h?r.h(e):r.h&&n(r.h);
},o=function(t){var r,e;n("Usage: nvm$ <command> [parameter(s)]\n\nCommands:");for(r in t)e=t[r],n("\t"+r+"\t"+e.t);n("\nCommand names may be unambiguously abbreviated (See: nvm$ a).\n\nRun nvm$ ? <command> for more instructions.");
},i=function(){n("nvm$ v0.9.6: Node Version Manager for M$ Windows\n")},t.i=function(){i(),n("Run nvm$ ? for instructions.")}}).call(t,r(2));
},function(n,t,r){(function(n,r,e,o){t.use=function(){n("Using:",this.path),r(this.path)},t._=function(){return e(o,this.path)}}).call(t,r(2),r(10),r(1),r(7));
},function(n,t,r){(function(n,r,e,o,i,u,s,c,a,l,f,h,v,p){var d,m,g,$,x,y,b,w,j,E;E=function(n){return n.dist+"-"+n.src.version+"-x"+(n.x64?64:86);
},$=function(t,e){var o;return o=E(t)+".msi",e?n(r,o):n(o)},w=function(n,t){return null==t&&(t=$(n)),""+e[n.dist]+n.src.version+"/"+(n.x64&&!n.$[0][0]?"x64/":"")+t;
},b=function(){var n,t;for(t=10;t--;)if(n=o(i,"."+u(3)),!n.y())return n;throw Error("Temporary folder not found")},m=function(n){
var t,r,e,u;if(s("Extracting:",$(n)),u=E(n),e=b(),t=c(1,!0,"msiexec","/a",$(n,!0),"TARGETDIR=",c._,e,"/qb"))throw e.rm(),Error("Extraction failed");
n.dst=r=o(i,u).rm(!0),e.folders().shift().mv(r),e.rm()},g=function(t){var r,e;a.n!==t.dist&&(e=n(t.dst,t.dist+a.x)).y()&&((r=n(t.dst,a.n+a.x)).y()||(s("Alias:",r.bn(2)),
e.cp(r)))},x=function(t){var r;s("Adjusting NPM prefix..."),r=n(t.dst,"node_modules/npm/npmrc").open(8),r.WriteLine('\n# <hack dirty src="https://github.com/ukoloff/nvms">\nprefix=${USERPROFILE}\\.nvm$\\'+l.$.bn()+"\n# </hack>"),
r.Close()},j=function(n){var t;s("Using:",t=E(n)),l(t)},y=function(n,t){n.x64="*"===t?null:null!=t?t:f},d=function(n){return n.y()&&n.sz()>1e6;
},t.install=function(n){var t,r;y(r=this,n),d(t=$(r,!0))||h(w(r),t),m(r),g(r),x(r),j(r)},t.O=function(t,r){var e;return e=n(i,v.O),
!(!r&&e.y())&&(y(this,t),h(w(this,e.bn()),e),s("Creating shortcut..."),void v(l.$.bn()))},t.local=function(n){return y(this,n),p(this.$[0],this.dist,this.x64).local().last();
}}).call(t,r(3),r(13),r(15),r(1),r(7),r(27),r(2),r(11),r(26),r(10),r(36),r(23),r(24),r(30))},function(n,t,r){(function(n){var e,o;
t.local=function(){return this.$[1][1]=this.x64,this},e=function(n){return r(n.$[1].length>1?32:28)()},o=function(t,r){return n.m(r.$,t.$);
},t.first=function(){var n,t,r,i;for(r=e(this),n=0,t=r.length;n<t;n++)if(i=r[n],o(this,i))return i},t.last=function(){var n,t,r;for(t=e(this),
n=t.length-1;n>=0;n+=-1)if(r=t[n],o(this,r))return r},t.each=function(n){var t,r,i,u;for(i=e(this),t=0,r=i.length;t<r;t++)u=i[t],
o(this,u)&&n(u);return i}}).call(t,r(14))},,function(n,t,r){(function(n,t,r,e,o,i){var u,s,c,a;if(n("https://github.com/ukoloff/nvms/archive/dist.zip",a=t(r,"nvm$.zip")),
e("Extracting..."),c=o(r,"nvm$").mk(!0),c.ns().copyHere(a.ns().Items(),16),a.rm(),s=function(n){var t,r,e,o,i;for(o=n.files(),r=o.length-1;r>=0;r+=-1)if(t=o[r],
"bat"===t.ext())return t;for(i=n.folders(),e=i.length-1;e>=0;e+=-1)if(t=i[e],t=s(t))return t},!(u=s(c))){try{c.rm()}catch(n){}throw Error("Setup not found");
}i.Run(u)}).call(t,r(23),r(3),r(13),r(2),r(1),r(9))},function(n,t,r){(function(n){t.t="Show available commands abbreviations",t._="[word]",
t.h=t.$=function(e){var o,i,u,s;n("Available abbreviations:"),i=r(40),o=t.A,o=o.a(e[0])||o.a();for(u in o)s=o[u],n("  "+u+"\t"+s+"\t"+i[s].t);
}}).call(t,r(2))},function(n,t,r){(function(t,r,e,o,i,u){var s,c,a,l,f,h,v,p,d;n.X=a=function(){return c()&&v()},a.v=function(){
var n;if(n=v(),n&&0<t.$(n,l("0.9.6")))return p(n)},a.p=function(){a()&&(d(),d(f()))},c=function(){return!h().ok(2592e5)},h=function(){
return r(e,".v")},s=function(){return"https://github.com/ukoloff/nvms".replace(/\/\//,"$&api.").replace(/\w\//,"$&repos/")+"/tags?per_page=8";
},l=function(n){return o(t(n))},p=function(n){if(n)return n.$[0].join(".")},f=function(){var n,r,e,o;for(o=i(u(s())),n=r=o.length-1;r>=0;n=r+=-1)e=o[n],
o[n]=l(e.name);return p(o.sort(t.$).pop())},d=function(n){h().save(n||"","\n\nStart file from non-word character (eg # or ! or ; etc)\nto disable autodetection of nvm$ new version available.\n");
},v=function(){var n,t;if(t="",n=h(),n.y()&&(t=n.load()),t=t.replace(/^\s+/,"").split(/\s+/,2).shift(),!/^\W/.test(t))return l(t);
}}).call(t,r(14),r(3),r(13),r(30),r(38),r(29))},function(n,t,r){var e;n.X=function(n,t){var r;return r=new e,r.add(n,t),r},
e=function(){},e.prototype=r(65)},function(n,t,r){(function(n,t){var e,o,i,u,s;e=n(),u=r(40),o=function(n){return n?n.split(/\s+/).sort():[];
};for(s in u)i=u[s],i.A=e,e.add(s,i.q=o(i.q));(i=u[e.$(t[0])])?/^[h?]/.test(t[1])?r(41).$([t[0]].concat(t.slice(2))):i.$(t.slice(1)):r(41).i();
}).call(t,r(49),r(37))},function(n,t,r){(function(n,e,o,i,u,s,c){t.q="boeing",t.t="Uninstall nvm$",t._="[.]",t.h="Totally remove nvm$ manager and all installed Node.js versions.\n\nWithout trailing dot command does nothing.",
t.$=function(t){n(t)||(e("\nTo really remove everything say:",n.$),o()),e("Removing from PATH"),i(),e("Removing files..."),u(!1),
r(35).b(""),e("\nFare thee well! and if for ever,\nStill for ever, fare thee well!\n"),o()},t.z=function(n){return s(c,n[0]).rm(!0);
}}).call(t,r(39),r(2),r(33),r(34),r(10),r(1),r(7))},function(n,t,r){(function(n,e){var o;o=r(31),t.t="Install some version of Node.js",
t._=o.$+" [.]",t.h="Install specified Node.js version (latest matching filter).\n\nUse `nvm$ ls remote` to see available Node.js versions.\n\nIf specified version is already installed, it will be used\nwithout installation. To force reinstallation - add . as last parameter.",
t.$=function(t){var r,i,u,s;if(i=n(t),r=o(t),!(s=r.last()))throw Error("Specified Node.js version not found!");return!i&&(u=s.local(r.x64))?(e(u.path+" is installed. To reinstall say:",n.$),
void u.use()):void s.install(r.x64)}}).call(t,r(39),r(2))},function(n,t,r){(function(n,e){var o,i,u,s,c,a,l;l=r(31),t.q="list",t.t="List available Node.js versions",
t._="[remote] "+l.$,t.h="List already installed or all available to install Node.js versions",t.$=function(n){/^r/i.test(n[0])?a(n.slice(1)):o(n);
},i=function(n){return n?' "'+n+'"':""},o=function(t){var r,e;r=0,e=l(t).local().each(function(t){return r++,n(t.active?">":"-",""+t.path+i(t.lts));
}).length,n("Listed: "+r+" of "+e+" installed Node.js version(s)")},a=function(t){var r,o,a,f,h,v,p;for(f=[],o=0,h=0,v=l(t).each(function(n){
return h++,u(n),o&&!e.cmp(o.mjr,n.mjr)?o.mnr.push(n.mnr[0]):f.push(o=n)}).length,r=0,a=f.length;r<a;r++)p=f[r],n("-","["+p.mnr.length+"]\t"+p.dist,""+p.src.version+s(c(p.mnr))+i(p.src.lts));
n("Listed: "+f.length+" line(s) of "+h+" version(s) of "+v+" total")},u=function(n){var t,r,e,o,i;for(n.mjr=t=[],i=n.$,e=0,o=i.length;e<o;e++)r=i[e],
t.push(r.slice());return n.mnr=[t[0].pop()]},c=function(n){var t,r,e,o,i;for(i=[],t=0,e=n.length;t<e;t++)o=n[t],r&&r.b+1===o?r.b=o:i.push(r={
a:o,b:o});return i},s=function(n){var t,r;return r=function(){var e,o,i;for(i=[],t=e=0,o=n.length;e<o;t=++e)r=n[t],i.push(""+(t?r.a:"")+(r.b>r.a?" - "+r.b:""));
return i}(),r.join(", ")}}).call(t,r(2),r(14))},function(n,t,r){(function(n,e,o){var i;i=r(31),t.t="Install OpenSSL utility",t._=i.$6+" [.]",
t.h="Install openssl.exe precompiled for Node.js project",t.$=function(t){var r,u;if(r=n(t),u=e([0]).last(),!u)throw Error("Appropriate Node.js version not found!");
!1===u.O(i.x64(t[0]),r)&&o("OpenSSL is already installed. To reinstall say:",n.$)}}).call(t,r(39),r(30),r(2))},function(n,t,r){(function(n,e,o){
var i,u,s,c,a;a=r(31),t.q="uninstall drop",t.t="Remove one or several Node.js version(s)",t._="[all] "+a.$+" [.]",t.h="Remove single specified Node.js version or all version matching filter.\n\nWithout trailing dot command only shows candidate(s) to uninstall.\n\nWith trailing dot removing will proceed without additional confirmations!",
u=!1,t.$=function(t){u=n(t),/^a/i.test(t[0])?i(t.slice(1)):s(t),u||e("\nTo actually uninstall say:",n.$)},i=function(n){var t;t=0,
a(n).local().each(function(n){return c(n),t++}),u&&e("\nNode.js version(s) found & uninstalled:",t)},s=function(n){var t;if(!(t=a(n).local().first()))throw Error("Specified Node.js version not installed!");
c(t)},c=function(n){return u?(e("Removing:",n.path),n.active&&o(),void r(35).b(n.path)):void e("Would remove:",n.path)}}).call(t,r(39),r(2),r(10));
},function(n,t,r){t.t="Upgrade nvm$ itself",t.h="Download and install latest version of nvm$",t.$=function(){return r(46)},t.z=r(48).p;
},function(n,t,r){(function(n,e){var o;o=r(31),t.t="Use (set default) already installed Node.js version",t._="[ none | "+o.$+" ]",
t.h="Make specified Node.js version active for all processes of current user.\n\nOnly installed versions are used. Use `nvm$ install` for new ones.\n\nSay `nvm$ use none` to temporarily disable nvm$.",
t.$=function(t){var r;if("none"===t[0])n("Temporary disabling","nvm$"),e();else{if(!(r=o(t).local().last()))throw Error("Specified Node.js version not installed!");
r.use()}}}).call(t,r(2),r(10))},function(n,t,r){(function(n,e){t.t="Show version",t.h="Displays nvm$ version.",t.$=function(t){n("0.9.6"),
t.length&&r(35)(t),e()}}).call(t,r(2),r(33))},function(n,t,r){(function(n,r,e){t.q="where",t.t="Display path to current Node.js version",
t.h="Shows which folder with Node.js is active for all processes of current user",t.$=function(){var t,o,i,u;for(i=n(),t=0,o=i.length;t<o;t++)if(u=i[t],
u.active)return void r(u._());r(e.$)}}).call(t,r(32),r(2),r(10))},function(n,t,r){(function(n){t.q="repo",t.t="Open homepage",t.h="Opens nvm$ repository in default browser.",
t.$=function(){n("https://github.com/ukoloff/nvms")}}).call(t,r(11))},function(n,t,r){(function(n,t){var e,o,i,u,s;o=r(48),o()&&r(35).u(),
s={},(u=o.v())&&(s.upgrade="New version v"+u),(u=n.v())&&(s.install="Node.js version v"+u);for(e in s)u=s[e],i||(t(),i=!0),t("// Update: "+u+" available. Upgrade with: nvm$ "+e);
}).call(t,r(28),r(2))},,,,function(n,t){var r;r=function(n){return n?"string"==typeof n?[n]:n:[]},t.add=function(n,t){var e,o,i,u,s,c;
for(null==this.z&&(this.z={}),u=r(n),o=u.length-1;o>=0;o+=-1)c=u[o],this.z[c]=0;for(s=r(t),i=s.length-1;i>=0;i+=-1)e=s[i],this.z[e]=c||e;
},t.$=function(n){var t,r,e,o;if(n&&this.z){if(n in this.z)return this.z[n]||n;r=this.z;for(t in r)if(o=r[t],n===t.substring(0,n.length)){
if(o||(o=t),e&&e!==o)return;e=o}return e}},t.a=function(n){var t,r,e,o,i,u,s,c,a,l;t=function(){var t,r;if(!n)return!0;for(t=arguments.length-1;t>=0;t+=-1)if(r=arguments[t],
r&&n===r.substring(0,n.length))return!0},u={},i=[],s=this.z;for(o in s)if(l=s[o],t(o,l))for(l||(l=o),r=0;++r<=o.length;)if(l===this.$(a=o.substring(0,r))){
i.push(a),u[a]=l;break}if(i.length){for(c={},i.sort().reverse(),e=i.length-1;e>=0;e+=-1)o=i[e],c[o]=u[o];return c}}}]);
