0</*! :: See https://github.com/ukoloff/nvms
@echo off
cscript.exe //Nologo //E:JScript "%~f0" %*
goto :EOF */0;
!function(n){function t(r){if(e[r])return e[r].X;var o=e[r]={X:{},id:r,loaded:!1};return n[r].call(o.X,o,o.X,t),
o.loaded=!0,o.X}var e={};return t.m=n,t.c=e,t.p="",t(0)}([function(n,t,e){e(23)(function(){e(47),e(58)})},function(n,t,e){(function(t,e){
n.X=t(e)}).call(t,e(10),e(18))},function(n,t,e){(function(t){var e=[].slice;n.X=function(){var n;n=1<=arguments.length?e.call(arguments,0):[],
t.Echo(n.join(" "))}}).call(t,e(7))},function(n,t,e){(function(t,e){n.X=t(e)}).call(t,e(10),e(17))},function(n,t,e){(function(t){
n.X=function(n){return t.CreateObject(n)}}).call(t,e(7))},function(n,t,e){(function(t,e){n.X=t(e.SpecialFolders("AppData"),"nvm$").mk();
}).call(t,e(1),e(8))},function(n,t,e){(function(t){n.X=t("Scripting.FileSystemObject")}).call(t,e(4))},function(n,t){n.X=WScript;
},function(n,t,e){(function(t){n.X=t("WScript.Shell")}).call(t,e(4))},function(n,t,e){(function(t,e,r,o,i){var u,s;n.X=u=function(n){
var u;null==n&&(n="none"),t(0,!0,u=e(r,"linkd.exe"),s,"/D"),!1!==n&&(o(n),t(0,!0,u,s,i(r,n)))},u.$=s=i(r,"this")}).call(t,e(11),e(3),e(5),e(24),e(1));
},function(n,t,e){(function(t,e){var r,o;r=function(){},r.prototype=t,n.X=function(n){var t,e,i,u;t=function(n){o(this,n)},
t.prototype=u=new r;for(e in n)i=n[e],u[e]=i;return function(){return new t(arguments)}},o=function(n,t){var r,o,i,u;for(i="",r=0,
o=t.length;r<o;r++)u=t[r],i=e.BuildPath(i,u);n._=i}}).call(t,e(19),e(6))},function(n,t,e){(function(t){var e=[].slice;n.X=function(){
var n,r,o,i,u,s,a;for(r=1<=arguments.length?e.call(arguments,0):[],o="",a=!1,s=1,i=0,u=r.length;i<u;i++)switch(n=r[i],typeof n){case"boolean":
a=n;break;case"number":s=n;break;default:/[\s^<|>]/.test(n)&&(n='"'+n+'"'),o&&(o+=" "),o+=n}t.Run(o,s,a)}}).call(t,e(8))},function(n,t,e){
(function(t){n.X=function(n,e){var r;return r=t("ADODB.Stream"),r.Type=1,r.Open(),r}}).call(t,e(4))},function(n,t){n.X=function(n,t){
var e,r,o;for("function"!=typeof t&&(o=[]),r=0,e=new Enumerator(n);!e.atEnd();){if(o)o.push(e.item());else if(!1===t(e.item(),r++))return;
e.moveNext()}return o}},function(n,t,e){(function(n,e){var r,o;r=n("Msxml2.DOMDocument").createElement("tmp"),r.dataType="bin.hex",
t.enc=function(n){var t;return r.nodeTypedValue=n,t=r.text,r.text="",t},t.dec=function(n){var t;return r.text=n,t=r.nodeTypedValue,
r.text="",t},o=function(n){return n.match(/../g).reverse().join("")},t.i=function(n){return parseInt(o(e.enc(n)),16)}}).call(t,e(4),e(14));
},function(n,t,e){(function(t,e){n.X=t(e,"that").mk()}).call(t,e(1),e(5))},function(n,t){var e,r,o,t,i;n.X=t=function(n){
var t,e,r,o,i;for(r=n.split(/\D+/),o=[],t=0,e=r.length;t<e;t++)i=r[t],i.length&&o.push(Number(i));return o},i=function(n,t,e){var r,o,i,u;
for(r=o=0,i=t.length;o<i;r=++o)if(u=t[r],null!=u&&!e(n[r],u))return!1;return!0},t.m=function(n,t){return i(n,t,function(n,t){return i(n,t,function(n,t){
return n===t})})},o=function(n,t){return n===t?0:n<t?-1:1},r=function(n,t,e){var r,o,i,u;for(r=0,o=n.length,i=t.length;;){switch(Number(r<o)+2*Number(r<i)){
case 0:return 0;case 1:return 1;case 2:return-1;default:if(u=e(n[r],t[r]))return u}r++}},t.cmp=e=function(n,t){return r(n,t,function(n,t){
return r(n,t,o)})},t.$=function(n,t){return e(n.$,t.$)}},function(n,t,e){(function(n){var e;t.y=function(){return n.FileExists(this);
},t.rm=function(t){return t&&!this.y()||n.DeleteFile(this),this},t.cp=function(t){n.CopyFile(this,t)},t.mv=function(t){n.MoveFile(this,t);
},t.$=function(){return n.GetFile(this)},t.age=function(n){var t;return t=this.$().DateLastModified,null!=n?new Date-t>n:t},t.ok=function(n){
return this.y()&&!this.age(n)},e=function(t,e,r){var o,i,u,s,a;for(a="",i=u=0,s=r.length;u<s;i=++u)o=r[i],a+=",a["+i+"]";return new Function("x,f,a","return x."+t+"TextFile(f"+a+")")(n,e,r);
},t.open=function(){return e("Open",this,arguments)},t.create=function(){return e("Create",this,arguments)},t.load=function(){var n,t;
return n=this.open(1),t=n.ReadAll(),n.Close(),t},t.save=function(){var n,t,e,r;for(n=this.create(!0),t=0,e=arguments.length;t<e;t++)r=arguments[t],
n.Write(r);return n.Close()}}).call(t,e(6))},function(n,t,e){(function(n,r){var o;t.y=function(){return n.FolderExists(this)},t.rm=function(t){
return t&&!this.y()||n.DeleteFolder(this),this},t.cp=function(t){n.CopyFolder(this,t)},t.mv=function(t){n.MoveFolder(this,t)},t.mk=function(t){
var e,r,o;t&&this.rm(t),o=[],e=this._;try{for(r=this.abs();!r.y();)o.push(r),r=r.up();for(;r=o.pop();)n.CreateFolder(r);return this;
}finally{this._=e}},t.$=function(){return n.GetFolder(this)},o=function(n,t){var e;return e=[],r(n,function(n){return e.push(t(n));
}),e},t.files=function(){return o(this.$().Files,e(3))},t.folders=function(){return o(this.$().SubFolders,e(1))}}).call(t,e(6),e(13));
},function(n,t,e){(function(n,r){t.toString=function(){var n;return null!=(n=this._)?n:""},t.abs=function(){return this._=n.GetAbsolutePathName(this),
this},t.up=function(){var t;return(t=e(1))(n.GetParentFolderName(this))},t.bn=function(){return n.GetFileName(this)},t.n=function(){
return n.GetBaseName(this)},t.ext=function(){return n.GetExtensionName(this)},t.ns=function(){return r.NameSpace(this._)}}).call(t,e(6),e(21));
},function(n,t,e){(function(t,e,r,o,i){var u,s,a,c,l,f;s=function(n,t,e){this.$=[n||[],[t]],this.x64=e},s.prototype=t,l=function(){
var n,t;t=[];for(n in e)t.push(n);return t},n.X=c=function(n){var t,e,i,u,a,c,h,v,p;for(c=new r(l()),u=0,h=n.length;u<h;u++)e=n[u],
(p=c.$(e))?i=p:null!=(a=f(e))?t=a:/^\d/.test(e)&&(v=o(e));return new s(v,i,t)},c._=s,c.x64=f=function(n){if(/^x(\d)/.test(n))return"6"===RegExp.$1;
},a=function(n){return"["+n.join("|")+"]"},c.$6=u=function(){var n;return n=["x86","x64"],a(i?n.reverse():n)}(),c.$=a(l())+" [n[.n[.n]]] "+u;
}).call(t,e(61),e(39),e(41),e(16),e(43))},function(n,t,e){(function(t){n.X=t("Shell.Application")}).call(t,e(4))},function(n,t,e){
(function(t,e){n.X=t(e.ScriptFullName)}).call(t,e(3),e(7))},function(n,t,e){n.X=function(n){var t;try{n()}catch(n){if(t=n,
!t.message)throw t;e(2)("ERROR:",t.message)}}},function(n,t,e){(function(t,e,r,o){var i,u;n.X=u=function(n){var u,s;return n=t(e,n).mk(),
r(n,"nvm$.bat").save('@"%~dp0..\\cli.bat" %*\n'),(s=r(e,i)).y()&&!(u=r(n,"openssl.exe")).y()&&s.cp(u),o(n)},u.O=i="openssl-cli.exe";
}).call(t,e(1),e(5),e(3),e(28))},function(n,t,e){(function(t){n.X=function(n){null==n&&(n=0),t.Quit(n)}}).call(t,e(7))},function(n,t,e){
(function(t,e){var r,o,i;i="Path",o=t.Environment("User"),r=new Function("o,k,v","o(k)=v"),n.X=function(n){var t,u,s;if(u=o(i),
t=""+e.$,s=function(){var n,e,r,o;for(r=u.split(";"),o=[],n=0,e=r.length;n<e;n++)s=r[n],s!==t&&o.push(s);return o}(),n&&s.unshift(t),
s=s.join(";"),s!==u)return r(o,i,s)}}).call(t,e(8),e(9))},function(n,t,e){(function(t,e){n.X=function(n,r){t("Fetching:",n),
e(n,r)}}).call(t,e(2),e(32))},function(n,t,e){(function(t,e,r,o){var i,u;n.X=function(n){var i,s,a,c;if((a=t(n,"node.exe")).y()&&!(i=t(n,"nodew.exe")).y()){
c=e(),c.LoadFromFile(a);try{u(c)}catch(n){r("Invalid executable:",a),s=!0}return s||(r("Generating:",i),c.Write(o.dec("02")),c.SaveToFile(i)),
c.Close()}},u=function(n){var t,e,r;return e=function(t){return o.i(n.Read(t))},i(23117===e(2)),n.Position=60,t=e(4),i(t<n.size),
n.Position=t,i(17744===e(4)),n.Position=t+20,i(240===(16|e(2))),e(2),i(779===(768|e(2))),n.Position=r=t+92,i(3===e(2)),n.Position=r;
},i=function(n){if(!n)throw Error(".")}}).call(t,e(3),e(12),e(2),e(14))},function(n,t){var e;n.X=function(n){var t;for(null==n&&(n=12),
t="";t.length<n;)t+=e();return t},e=function(){var n;return n=Math.floor(62*Math.random()),String.fromCharCode(n%26+"Aa0".charCodeAt(n/26));
}},function(n,t,e){(function(t,r,o){var i,u,s,a,c,l=[].slice;u=e(34),n.X=s=function(n){n.shift()===c&&u[n.shift()].z(n),t();
},i=function(n){var t,e,r;for(t=1,e=0,r=n.length;r--;)t=(t+n.charCodeAt(r))%65521,e=(e+t)%65521;return e<<16+t},c="<"+i(r.load())+">";
for(a in u)u[a].z&&(s[a.charAt(0)]=function(n){return function(){var t;t=1<=arguments.length?l.call(arguments,0):[],o.apply(this,[0,r,"v",c,n].concat(t));
}}(a))}).call(t,e(25),e(22),e(11))},function(n,t,e){(function(t,e,r,o,i,u){var s,a,c;a=/^(\w+)-\D*(\d+(?:[.]\d+)+)-x(\d)/,n.X=function(){
var n,i,u,l,f,h;for(l=[],h=c(t.$),f=e.folders(),i=0,u=f.length;i<u;i++)n=f[i],a.test(n.bn())&&l.push(new s(h?r(n,h.bn()).y():void 0));
return null!=h&&h.rm(),l.sort(o.$)},c=function(n){var t,e;if(n.y())for(t=16;--t;)if(e=r(n,i(15)),!e.y())try{return e.create(!0).Close(),
e}catch(n){}},s=function(n){var t,e;this.active=n,this.path=RegExp.$_,this.dist=t=RegExp.$1,this.x64=e="6"===RegExp.$3,this.$=[o(RegExp.$2),[t,e]];
},s.prototype=u}).call(t,e(9),e(5),e(3),e(16),e(29),e(36))},function(n,t,e){(function(t,e){var r,o;r="Msxml2.ServerXMLHTTP\nMsxml2.XMLHTTP\nMicrosoft.XMLHTTP".split(/\s+/),
o=function(){var n,e,o;for(n=0,e=r.length;n<e;n++){o=r[n];try{return t(o)}catch(n){}}throw Error("AJAX not supported!")},n.X=function(n,t){
var r,i;if(i=o(),i.open("GET",n,!1),i.send(null),200!==i.status)throw Error("HTTP error "+i.status+": "+i.statusText);return t?(r=e(),
r.Write(i.responseBody),r.SaveToFile(t,2),void r.Close()):i.responseText}}).call(t,e(4),e(12))},function(n,t,e){(function(t){var e;
n.X=e=function(n){return"."===n[n.length-1]?(n.pop(),!0):(e.$="`nvm$ "+t.join(" ")+" .`",!1)}}).call(t,e(44))},function(n,t,e){
n.X={abbrev:e(40),bye:e(48),help:e(35),install:e(49),ls:e(50),openssl:e(51),remove:e(52),upgrade:e(53),use:e(54),version:e(55),
which:e(56),www:e(57)}},function(n,t,e){(function(n){var r,o,i;t.q="?",t.t="Show help for all or individual command(s)",t._="[command]",
t.h="Shows information on individual commands or nvm$ itself.",t.$=function(n){var u,s;return i(),s=e(34),n[0]?(u=t.A.$(n[0]))?void r(u,s[u],n.slice(1)):void e(40).$(n):void o(s);
},r=function(t,e,r){n("nvm$ "+t+": "+e.t),e.q.length&&n("\nAlias: "+e.q.join(", ")),n("\nUsage: nvm$ "+t+" "+(e._||"")+"\n"),"function"==typeof e.h?e.h(r):e.h&&n(e.h);
},o=function(t){var e,r;n("Usage: nvm$ <command> [parameter(s)]\n\nCommands:");for(e in t)r=t[e],n("\t"+e+"\t"+r.t);n("\nCommand names may be unambiguously abbreviated (See: nvm$ a).\n\nRun nvm$ ? <command> for more instructions.");
},i=function(){n("nvm$ v0.9.1: Node Version Manager for M$ Windows\n")},t.i=function(){i(),n("Run nvm$ ? for instructions.")}}).call(t,e(2));
},function(n,t,e){(function(n,e,r,o){t.use=function(){n("Using:",this.path),e(this.path)},t._=function(){return r(o,this.path)}}).call(t,e(2),e(9),e(1),e(5));
},,function(n,t,e){(function(n,t,e,r,o,i){var u,s,a,c;if(n("https://github.com/ukoloff/nvms/archive/dist.zip",c=t(e,"nvm$.zip")),
r("Extracting..."),a=o(e,"nvm$").mk(!0),a.ns().copyHere(c.ns().Items(),16),c.rm(),s=function(n){var t,e,r,o,i;for(o=n.files(),e=o.length-1;e>=0;e+=-1)if(t=o[e],
"bat"===t.ext())return t;for(i=n.folders(),r=i.length-1;r>=0;r+=-1)if(t=i[r],t=s(t))return t},!(u=s(a))){try{a.rm()}catch(n){}throw Error("Setup not found");
}i.Run(u)}).call(t,e(27),e(3),e(15),e(2),e(1),e(8))},function(n,t){n.X={node:"https://nodejs.org/dist/",iojs:"https://iojs.org/dist/"
}},function(n,t,e){(function(n){t.t="Show available commands abbreviations",t._="[word]",t.h=t.$=function(r){var o,i,u,s;n("Available abbreviations:"),
i=e(34),o=t.A,o=o.a(r[0])||o.a();for(u in o)s=o[u],n("  "+u+"\t"+s+"\t"+i[s].t)}}).call(t,e(2))},function(n,t,e){var r;n.X=r=function(n,t){
this.add(n,t)},r.prototype=e(59)},function(n,t,e){(function(t,e,r,o,i,u,s){var a,c,l,f,h,v;n.X=h=function(){var n,i,u,s,l,h,p,d;
l=[];for(u in t)for(p=t[u],c(n=f(u))||e(p+"index.json",n),h=r(n.load()),i=0,s=h.length;i<s;i++)d=h[i],v(d)&&l.push(new a(d,u));return l.sort(o.$);
},f=function(n){return i(u,n+".json")},c=function(n){return n.ok(864e5)},l=function(){var n;for(n in t)if(!c(f(n)))return;return!0;
},v=function(n){return~n.files.join().indexOf("-msi")},h.v=function(){var n;if(l()&&(n=h().pop())&&!n.local("*"))return n.$[0].join(".");
},a=function(n,t){this.$=[o((this.src=n).version),[this.dist=t]]},a.prototype=s}).call(t,e(39),e(27),e(45),e(16),e(3),e(15),e(60));
},function(n,t,e){(function(t){n.X=function(){try{return 0>t.RegRead("HKLM\\HARDWARE\\DESCRIPTION\\System\\CentralProcessor\\0\\Identifier").indexOf("x86");
}catch(n){}}()}).call(t,e(8))},function(n,t,e){(function(t,e){n.X=t(e.Arguments)}).call(t,e(13),e(7))},function(n,t){var e,r,o,i;
r=/^[\],:{}\s]*$/,i=/\\(?:["\\\/bfnrt]|u[0-9a-fA-F]{4})/g,o=/"[^"\\\n\r]*"|true|false|null|-?\d+(?:\.\d*)?(?:[eE][+\-]?\d+)?/g,e=/(?:^|:|,)(?:\s*\[)+/g,
n.X=function(n){if(0>n.replace(i,"@").replace(o,"]").replace(e,"").search(r))throw SyntaxError("Invalid JSON");return new Function("return ("+n+")")();
}},function(n,t,e){(function(t,e,r,o,i,u){var s,a,c,l,f,h,v,p,d;n.X=c=function(){return a()&&v()},c.v=function(){var n;if(n=v(),
n&&0<t.$(n,l("0.9.1")))return p(n)},c.p=function(){c()&&(d(),d(f()))},a=function(){return!h().ok(2592e5)},h=function(){return e(r,".v");
},s=function(){return"https://github.com/ukoloff/nvms".replace(/\/\//,"$&api.").replace(/\w\//,"$&repos/")+"/tags?per_page=8"},l=function(n){
return new o._(t(n))},p=function(n){if(n)return n.$[0].join(".")},f=function(){var n,e,r,o;for(o=i(u(s())),n=e=o.length-1;e>=0;n=e+=-1)r=o[n],
o[n]=l(r.name);return p(o.sort(t.$).pop())},d=function(n){h().save(n||"","\n\nStart file from non-word character (eg # or ! or ; etc)\nto disable autodetection of nvm$ new version available.\n");
},v=function(){var n,t;if(t="",n=h(),n.y()&&(t=n.load()),t=t.replace(/^\s+/,"").split(/\s+/,2).shift(),!/^\W/.test(t))return l(t);
}}).call(t,e(16),e(3),e(15),e(20),e(45),e(32))},function(n,t,e){(function(n,t){var r,o,i,u,s;r=new n,u=e(34),o=function(n){return n?n.split(/\s+/).sort():[];
};for(s in u)i=u[s],i.A=r,r.add(s,i.q=o(i.q));(i=u[r.$(t[0])])?/^[h?]/.test(t[1])?e(35).$([t[0]].concat(t.slice(2))):i.$(t.slice(1)):e(35).i();
}).call(t,e(41),e(44))},function(n,t,e){(function(n,r,o,i,u,s,a){t.q="boeing",t.t="Uninstall nvm$",t._="[.]",t.h="Totally remove nvm$ manager and all installed Node.js versions.\n\nWithout trailing dot command does nothing.",
t.$=function(t){n(t)||(r("\nSay "+n.$+" to really remove everything."),o()),r("Removing from PATH"),i(),r("Removing files..."),u(!1),
e(30).b(""),r("\nFare thee well! and if for ever,\nStill for ever, fare thee well!\n"),o()},t.z=function(n){return s(a,n[0]).rm(!0);
}}).call(t,e(33),e(2),e(25),e(26),e(9),e(1),e(5))},function(n,t,e){(function(n,e,r){t.t="Install some version of Node.js",t._=n.$+" [.]",
t.h="Install specified Node.js version (latest matching filter).\n\nUse `nvm$ ls remote` to see available Node.js versions.\n\nIf specified version is already installed, it will be used\nwithout installation. To force reinstallation - add . as last parameter.",
t.$=function(t){var o,i,u,s;if(i=e(t),o=n(t),!(s=o.last()))throw Error("Specified Node.js version not found!");return!i&&(u=s.local(o.x64))?(r(u.path+" is installed. To reinstall say: "+e.$),
void u.use()):void s.install(o.x64)}}).call(t,e(20),e(33),e(2))},function(n,t,e){(function(n,e,r){var o,i,u,s,a;t.q="list",t.t="List available Node.js versions",
t._="[remote] "+n.$,t.h="List already installed or all available to install Node.js versions",t.$=function(n){/^r/i.test(n[0])?a(n.slice(1)):o(n);
},o=function(t){var r,o;r=0,o=n(t).local().each(function(n){return r++,e(n.active?">":"-",n.path)}).length,e("Listed: "+r+" of "+o+" installed Node.js version(s)");
},a=function(t){var o,a,c,l,f,h,v;for(l=[],a=0,f=0,h=n(t).each(function(n){return f++,i(n),a&&!r.cmp(a.mjr,n.mjr)?a.mnr.push(n.mnr[0]):l.push(a=n);
}).length,o=0,c=l.length;o<c;o++)v=l[o],e("- ["+v.mnr.length+"]\t"+v.dist+" "+v.src.version+u(s(v.mnr)));e("Listed: "+l.length+" line(s) of "+f+" version(s) of "+h+" total");
},i=function(n){var t,e,r,o,i;for(n.mjr=t=[],i=n.$,r=0,o=i.length;r<o;r++)e=i[r],t.push(e.slice());return n.mnr=[t[0].pop()]},s=function(n){
var t,e,r,o,i;for(i=[],t=0,r=n.length;t<r;t++)o=n[t],e&&e.b+1===o?e.b=o:i.push(e={a:o,b:o});return i},u=function(n){var t,e;return e=function(){
var r,o,i;for(i=[],t=r=0,o=n.length;r<o;t=++r)e=n[t],i.push(""+(t?e.a:"")+(e.b>e.a?" - "+e.b:""));return i}(),e.join(", ")}}).call(t,e(20),e(2),e(16));
},function(n,t,e){(function(n,e,r){t.t="Install OpenSSL utility",t._=n.$6+" [.]",t.h="Install openssl.exe precompiled for Node.js project",
t.$=function(t){var o,i;if(o=e(t),i=new n._([0]).last(),!i)throw Error("Appropriate Node.js version not found!");!1===i.O(n.x64(t[0]),o)&&r("OpenSSL is already installed. To reinstall say:",e.$);
}}).call(t,e(20),e(33),e(2))},function(n,t,e){(function(n,r,o,i){var u,s,a,c;t.q="uninstall drop",t.t="Remove one or several Node.js version(s)",
t._="[all] "+n.$+" [.]",t.h="Remove single specified Node.js version or all version matching filter.\n\nWithout trailing dot command only shows candidate(s) to uninstall.\n\nWith trailing dot removing will proceed without additional confirmations!",
s=!1,t.$=function(n){s=r(n),/^a/i.test(n[0])?u(n.slice(1)):a(n),s||o("\nTo actually uninstall say "+r.$)},u=function(t){var e;e=0,
n(t).local().each(function(n){return c(n),e++}),s&&o("\nNode.js version(s) found & uninstalled:",e)},a=function(t){var e;if(!(e=n(t).local().first()))throw Error("Specified Node.js version not installed!");
c(e)},c=function(n){return s?(o("Removing:",n.path),n.active&&i(),void e(30).b(n.path)):void o("Would remove:",n.path)}}).call(t,e(20),e(33),e(2),e(9));
},function(n,t,e){t.t="Upgrade nvm$ itself",t.h="Download and install latest version of nvm$",t.$=function(){return e(38)},t.z=e(46).p;
},function(n,t,e){(function(n,e,r){t.t="Use (set default) already installed Node.js version",t._="[ none | "+n.$+" ]",t.h="Make specified Node.js version active for all processes of current user.\n\nOnly installed versions are used. Use `nvm$ install` for new ones.\n\nSay `nvm$ use none` to temporarily disable nvm$.",
t.$=function(t){var o;if("none"===t[0])e("Temporary disabling","nvm$"),r();else{if(!(o=n(t).local().last()))throw Error("Specified Node.js version not installed!");
o.use()}}}).call(t,e(20),e(2),e(9))},function(n,t,e){(function(n,r){t.t="Show version",t.h="Displays nvm$ version.",t.$=function(t){
n("0.9.1"),t.length&&e(30)(t),r()}}).call(t,e(2),e(25))},function(n,t,e){(function(n,e,r){t.q="where",t.t="Display path to current Node.js version",
t.h="Shows which folder with Node.js is active for all processes of current user",t.$=function(){var t,o,i,u;for(i=n(),t=0,o=i.length;t<o;t++)if(u=i[t],
u.active)return void e(u._());e(r.$)}}).call(t,e(31),e(2),e(9))},function(n,t,e){(function(n){t.q="repo",t.t="Open homepage",t.h="Opens nvm$ repository in default browser.",
t.$=function(){n("https://github.com/ukoloff/nvms")}}).call(t,e(11))},function(n,t,e){(function(n,t){var r,o,i,u,s;o=e(46),o()&&e(30).u(),
s={},(u=o.v())&&(s.upgrade="New version v"+u),(u=n.v())&&(s.install="Node.js version v"+u);for(r in s)u=s[r],i||(t(),i=!0),t("// Update: "+u+" available. Upgrade with: nvm$ "+r);
}).call(t,e(42),e(2))},function(n,t){var e;e=function(n){return n?"string"==typeof n?[n]:n:[]},t.add=function(n,t){var r,o,i,u,s,a;
for(null==this.z&&(this.z={}),u=e(n),o=u.length-1;o>=0;o+=-1)a=u[o],this.z[a]=0;for(s=e(t),i=s.length-1;i>=0;i+=-1)r=s[i],this.z[r]=a||r;
},t.$=function(n){var t,e,r,o;if(n&&this.z){if(n in this.z)return this.z[n]||n;e=this.z;for(t in e)if(o=e[t],n===t.substring(0,n.length)){
if(o||(o=t),r&&r!==o)return;r=o}return r}},t.a=function(n){var t,e,r,o,i,u,s,a,c,l;t=function(){var t,e;if(!n)return!0;for(t=arguments.length-1;t>=0;t+=-1)if(e=arguments[t],
e&&n===e.substring(0,n.length))return!0},u={},i=[],s=this.z;for(o in s)if(l=s[o],t(o,l))for(l||(l=o),e=0;++e<=o.length;)if(l===this.$(c=o.substring(0,e))){
i.push(c),u[c]=l;break}if(i.length){for(a={},i.sort().reverse(),r=i.length-1;r>=0;r+=-1)o=i[r],a[o]=u[o];return a}}},function(n,t,e){
(function(n,e,r,o,i,u,s,a,c,l,f,h){var v,p,d,m,g,x,$,y;y=function(n){return n.dist+"-"+n.src.version+"-x"+(n.x64?64:86)},d=function(t,r){
var o;return o=y(t)+".msi",r?n(e,o):n(o)},x=function(n,t){return null==t&&(t=d(n)),""+r[n.dist]+n.src.version+"/"+(n.x64&&!n.$[0][0]?"x64/":"")+t;
},v=function(n){var t,r,a;o("Extracting:",d(n)),a=y(n),r=i(e,a).rm(!0),u(1,!0,"msiexec","/a",d(n,!0),"TARGETDIR="+r,"/passive"),n.dst=t=i(s,a).rm(!0),
r.folders().shift().mv(t),r.rm()},p=function(t){"node"!==t.dist&&(o("Creating shortcut..."),n(t.dst,t.dist+".exe").cp(n(t.dst,"node.exe")));
},m=function(t){var e;o("Adjusting NPM prefix..."),e=n(t.dst,"node_modules/npm/npmrc").open(8),e.WriteLine('\n# <hack dirty src="https://github.com/ukoloff/nvms">\nprefix=${APPDATA}\\nvm$\\'+a.$.bn()+"\n# </hack>"),
e.Close()},$=function(n){var t;o("Using:",t=y(n)),a(t)},g=function(n,t){n.x64="*"===t?null:null!=t?t:c},t.install=function(n){var t;
g(t=this,n),l(x(t),d(t,!0)),v(t),p(t),m(t),$(t)},t.O=function(t,e){var r;return r=n(s,f.O),!(!e&&r.y())&&(g(this,t),l(x(this,r.bn()),r),
o("Creating shortcut..."),void f(a.$.bn()))},t.local=function(n){return g(this,n),new h._(this.$[0],this.dist,this.x64).local().last();
}}).call(t,e(3),e(15),e(39),e(2),e(1),e(11),e(5),e(9),e(43),e(27),e(24),e(20))},function(n,t,e){(function(n){var r,o;t.local=function(){
return this.$[1].push(this.x64),this},r=function(n){return e(n.$[1].length>1?31:42)()},o=function(t,e){return n.m(e.$,t.$)},t.first=function(){
var n,t,e,i;for(e=r(this),n=0,t=e.length;n<t;n++)if(i=e[n],o(this,i))return i},t.last=function(){var n,t,e;for(t=r(this),n=t.length-1;n>=0;n+=-1)if(e=t[n],
o(this,e))return e},t.each=function(n){var t,e,i,u;for(i=r(this),t=0,e=i.length;t<e;t++)u=i[t],o(this,u)&&n(u);return i}}).call(t,e(16));
}]);
