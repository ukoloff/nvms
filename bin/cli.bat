0</*! :: See https://github.com/ukoloff/nvms
@echo off
cscript.exe //Nologo //E:JScript "%~f0" %*
goto :EOF */0;
!function(n){function t(e){if(r[e])return r[e].X;var o=r[e]={X:{},id:e,loaded:!1};return n[e].call(o.X,o,o.X,t),
o.loaded=!0,o.X}var r={};return t.m=n,t.c=r,t.p="",t(0)}([function(n,t,r){r(44)(function(){r(72),r(83)});
},function(n,t,r){(function(t){var r,e=[].slice;n.X=r=function(){var n;n=1<=arguments.length?e.call(arguments,0):[],
r._(n.join(" "))},r._=function(n){t.Echo(n)}}).call(t,r(6))},function(n,t,r){(function(t){n.X=t(r(26))}).call(t,r(11));
},function(n,t,r){(function(t){n.X=t(r(27))}).call(t,r(11))},function(n,t,r){(function(t){n.X=t("WScript.Shell");
}).call(t,r(5))},function(n,t,r){(function(t){n.X=function(n){return t.CreateObject(n)}}).call(t,r(6))},function(n,t,r){
(function(t){n.X=t.h||WScript}).call(t,r(15))},function(n,t,r){(function(t){n.X=t("Scripting.FileSystemObject");
}).call(t,r(5))},function(n,t,r){(function(t,r){n.X=t(r.Environment("Process")("USERPROFILE"),".nvm$").mk();
}).call(t,r(3),r(4))},function(n,t,r){(function(t,r,e,o,i,u){var c,a,f,s,l,v,h;h=[],n.X=c=function(){var n,t,r,e,o;
for(o=0,e=h.length,t={$:function(){return f(function(){return v(e,o,arguments)})}},r="sa",n=r.length;--n>=0;)!function(n){
t[n]=function(t){var r;return o&&!(r=h[h.length-1])[n]||(h.push(r={}),o=h.length),r[n]=t,this}}(r.substr(n,1));
return t},l={},f=function(n){return n.prototype=l,n},s=function(n){return l===n.prototype},a=function(n){var r;
try{return n(),!0}catch(n){r=n,t("FAIL:",r.message)}},v=function(n,t,i){var u,f,l,v;return f={},i=[].slice.call(i),
"function"==typeof i[i.length-1]&&(u=i.pop()),l=function(n){return n?v():void u(n)},(v=function(){for(var v,p,d,m,g,x;n<t;){
if(x=h[n++],p=i,x.s){if(!a(function(){return p=x.s.apply(f,i)}))return!1;if(!1===p)continue;null==p&&(p=i),"object"!=typeof p&&(p=[p]);
}if(x.a){if(u)return s(x.a)?void x.a.apply(f,p.concat([l])):(p=[r,"",e(),n-1].concat(p),d=o.Exec("wscript.exe //B //E:JScript"+function(){
var n,t,r;for(r=[],n=0,t=p.length;n<t;n++)v=p[n],r.push(' "'+v+'"');return r}().join("")),void(null!=(m=c._)&&m.push(function(){
if(d.Status)return l(!d.ExitCode),!0})));if(g=!0,!a(function(){return g=x.a.apply(f,p)}))return!1;if(!g&&s(x.a))return!1;
}}return!u||void u(!0)})()},c.$=function(n){if(""===i[0]&&/^\d+$/.test(i[2])&&e()===i[1]){"function"==typeof n&&n();
try{return h[i[2]].a.apply({},i.slice(3)),u()}catch(n){return u(1)}}}}).call(t,r(1),r(12),r(36),r(4),r(22),r(21));
},function(n,t,r){(function(t,r){n.X=t(r,"that").mk()}).call(t,r(3),r(8))},function(n,t,r){(function(t){
var e,o;e=function(){},e.prototype=r(28),n.X=function(n){var t,r,i,u;t=function(n){o(this,n)},t.prototype=u=new e;
for(r in n)i=n[r],u[r]=i;return function(){return new t(arguments)}},o=function(n,r){var e,o,i,u;for(i="",e=0,
o=r.length;e<o;e++)u=r[e],i=t.BuildPath(i,u);n._=i}}).call(t,r(7))},function(n,t,r){(function(t,r){n.X=t(r.ScriptFullName);
}).call(t,r(2),r(6))},function(n,t,r){(function(t,e,o,i,u,c,a,f,s,l){var v,h,p,d;h=/^(\w+)-\D*(\d+(?:[.]\d+)+)-x(\d)/,
n.X=v=function(){var n,r,c,a,f,s,l,v,p,m,g,x,$,y,b;for(p={},x=t(!0),a=0,s=x.length;a<s;a++)g=x[a],g.src.lts&&(p[g.$[0].join(".")]=g.src.lts);
for(v=[],y=d(e.$),$=o.folders(),f=0,l=$.length;f<l;f++)r=$[f],h.test(r.bn())&&v.push({active:y&&i(r,y.bn()).y(),
path:RegExp.$_,dist:n=RegExp.$1,x64:c="6"===RegExp.$3,lts:m=p[(b=u(RegExp.$2)).join(".")],$:[b,[n,c],[!!m]]});
return null!=y&&y.rm(),v.sort(u.$)},d=function(n){var t,r;if(n.y())for(t=16;--t;)if(r=i(n,c(15)),!r.y())try{return r.create(!0).Close(),
r}catch(n){}},v.a=function(n){var t,r,e;for(null==n&&(n=v()),t=0,r=n.length;t<r;t++)if(e=n[t],e.active)return e;
},v.u=function(n){return e(null!=n?n.path:void 0)},v.f=function(n){return null==n&&(n=v.a()),n?a(o,n.path):e.$;
},p=f().a(function(n){var t,r;for(n=a(o,n),t=0;;)try{return void n.rm(!0)}catch(n){if(r=n,t++>3)throw r}}).$(),
v.r=f().s(function(n){return!!n&&(s("Removing:",n.path),n.active&&e(),n.path)}).a(p).$(),v.b=f().s(function(){
s("Cleaning PATH"),l(),e(!1);try{r(52)}catch(n){}return s("Removing:",o),""}).a(p).$()}).call(t,r(17),r(18),r(8),r(2),r(19),r(42),r(3),r(9),r(1),r(41));
},function(n,t){n.X=function(n,t){var r,e,o;for("function"!=typeof t&&(o=[]),e=0,r=new Enumerator(n);!r.atEnd();){
if(o)o.push(r.item());else if(!1===t(r.item(),e++))return;r.moveNext()}return o}},function(n,t){},function(n,t,r){
(function(t){var r;n.X=r=function(){var n,e,o,i,u,c,a;for(e="",a=!1,u=1,o=0,i=arguments.length;o<i;o++)if(n=arguments[o],
r._!==n)switch(typeof n){case"boolean":a=n;break;case"number":u=n;break;default:n.length&&!/[\s^<|>]/.test(n)||(n='"'+n+'"'),
c&&(e+=" "),e+=n,c=1}else c=0;return t.Run(e,u,a)},r._={}}).call(t,r(4))},function(n,t,r){(function(t,e,o,i,u,c,a,f,s,l,v,h,p,d,m,g,x,$){
var y,b,w,S,E,N,j,T;n.X=y=function(n){var r,a,f,s,l,v,h,p;n||t(),l=[];for(f in e)if(h=e[f],(r=o(i,f+t.x)).y())for(v=u(r.load()),
a=0,s=v.length;a<s;a++)p=v[a],S(p)&&l.push({$:[c(p.version),[f],[!!p.lts]],dist:f,src:p});return l.sort(c.$)},
S=function(n){return~n.files.join().indexOf("-msi")},y.x=function(n,t){var r,e,o;null==t&&(t=a),e={};for(r in n)o=n[r],
e[r]=o;return e.x64=t,e},y.L=b=function(n){if(n)return f(n.$[0],n.dist,n.x64).local().last()},y.V=T=function(n,t){
var r;return r=n.dist+"-"+n.src.version+"-x"+(n.x64?64:86),t?s(l,r):r},w=function(n,t){var r;return r=T(n)+".msi",
t?o(i,r):r},E=function(n){var t;return t=w(n,!0),t.y()&&t.sz()>1e6},j=function(n){return""+e[n.dist]+n.src.version+"/"+(n.x64&&!n.$[0][0]?"x64/":"");
},N=function(){var n,t;for(t=10;t--;)if(n=s(l,"."+v(3)),!n.y())return n;throw Error("Temporary folder not found");
},y.i=h().s(function(n){return!E(n)&&[""+j(n)+w(n),w(n)]}).a(p).s(function(n){return r(13).r(b(n),function(){}),
d("Extracting:",w(n)),T(n)}).a(function(n){var t,r;r=N();try{if(m(1,!0,"msiexec","/a",o(i,n)+".msi","TARGETDIR=",m._,r,"/qb"))throw Error("Extraction failed");
t=s(l,n).rm(!0),r.folders().shift().mv(t)}finally{r.rm()}}).s(function(n){var t,r,e;g.n!==n.dist&&(r=T(n,!0),
(e=o(r,n.dist+g.x)).y()&&((t=o(r,g.n+g.x)).y()||(d("Alias:",t.bn(2)),e.cp(t))))}).s(function(n){var t;d("Adjusting NPM prefix..."),
t=o(T(n,!0),"node_modules/npm/npmrc").open(8),t.WriteLine('\n# <hack dirty src="https://github.com/ukoloff/nvms">\nprefix=${USERPROFILE}\\'+x.$.bn(2)+"\n# </hack>"),
t.Close(),x(T(n))}).$(),y.Y=function(){return o(l,$.O).y()},y.O=h().s(function(n){return[""+j(n)+$.O,o("..",$.O)];
}).a(p).s(function(){d("Creating shortcut..."),$(x.$.bn())}).$()}).call(t,r(35),r(20),r(2),r(10),r(53),r(19),r(40),r(38),r(3),r(8),r(42),r(9),r(24),r(1),r(16),r(33),r(18),r(31));
},function(n,t,r){(function(t,r,e,o,i,u,c){var a,f,s,l,v;n.X=a=function(n){if(null==n&&(n="none"),v(),!1!==n)r("Using:",n),
e(n),v(o(t,n));else if(l)try{t.up().cd()}catch(n){}},a.$=s=o(t,"this"),l=/[^\x00-\x7F]/.test(s),f=function(n){
return l?i("..",n.bn()):n},v=function(n){var r;if(!(r=i(t,"linkd.exe")).y())throw Error("File not found: "+r);
l&&u.cd(),c(0,!0,f(r),f(s),n?f(n):"/D")}}).call(t,r(8),r(1),r(31),r(3),r(2),r(10),r(16))},function(n,t){var r,e,o,t,i;
n.X=t=function(n){var t,r,e,o,i;for(e=n.split(/\D+/),o=[],t=0,r=e.length;t<r;t++)i=e[t],i.length&&o.push(Number(i));
return o},i=function(n,t,r){var e,o,i,u;for(null==n&&(n=[]),e=o=0,i=t.length;o<i;e=++o)if(u=t[e],null!=u&&!r(n[e],u))return!1;
return!0},t.m=function(n,t){return i(n,t,function(n,t){return i(n,t,function(n,t){return n===t})})},o=function(n,t){
return n===t?0:n<t?-1:1},e=function(n,t,r){var e,o,i,u;for(e=0,o=n.length,i=t.length;;){switch(Number(e<o)+2*Number(e<i)){
case 0:return 0;case 1:return 1;case 2:return-1;default:if(u=r(n[e],t[e]))return u}e++}},t.cmp=r=function(n,t){
return e(n,t,function(n,t){return e(n,t,o)})},t.$=function(n,t){return r(n.$,t.$)}},function(n,t){n.X={
"node":"https://nodejs.org/dist/","iojs":"https://iojs.org/dist/"}},function(n,t,r){(function(t){n.X=function(n){
null==n&&(n=0),t.Quit(n)}}).call(t,r(6))},function(n,t,r){(function(t,r){n.X=t(r.Arguments)}).call(t,r(14),r(6));
},function(n,t,r){(function(t){n.X=function(n,r){var e;return e=t("ADODB.Stream"),e.Type=1,e.Open(),e}}).call(t,r(5));
},function(n,t,r){(function(t,r,e,o,i){n.X=t().s(function(n,t){r("Fetching:",n)}).a(function(n,t){e(n,o(i,t));
}).$()}).call(t,r(9),r(1),r(34),r(2),r(10))},,function(n,t,r){(function(n){var r;t.y=function(){return n.FileExists(this);
},t.rm=function(t){return t&&!this.y()||n.DeleteFile(this),this},t.cp=function(t){n.CopyFile(this,t)},t.mv=function(t){
n.MoveFile(this,t)},t.$=function(){return n.GetFile(this)},t.sz=function(){return this.$().Size},t.age=function(n){
var t;return t=this.$().DateLastModified,null!=n?new Date-t>n:t},t.ok=function(n){return this.y()&&!this.age(n);
},r=function(t,r,e){var o,i,u,c,a;for(a="",i=u=0,c=e.length;u<c;i=++u)o=e[i],a+=",a["+i+"]";return new Function("x,f,a","return x."+t+"TextFile(f"+a+")")(n,r,e);
},t.open=function(){return r("Open",this,arguments)},t.create=function(){return r("Create",this,arguments)},t.load=function(){
var n,t;return n=this.open(1),t=n.ReadAll(),n.Close(),t},t.save=function(){var n,t,r,e;for(n=this.create(!0),
t=0,r=arguments.length;t<r;t++)e=arguments[t],n.Write(e);return n.Close()}}).call(t,r(7))},function(n,t,r){(function(n,e,o){
var i;t.y=function(){return n.FolderExists(this)},t.rm=function(t){return t&&!this.y()||n.DeleteFolder(this),
this},t.cp=function(t){n.CopyFolder(this,t)},t.mv=function(t){n.MoveFolder(this,t)},t.mk=function(t){var r,e,o;
t&&this.rm(t),o=[],r=this._;try{for(e=this.abs();!e.y();)o.push(e),e=e.up();for(;e=o.pop();)n.CreateFolder(e);
return this}finally{this._=r}},t.$=function(){return n.GetFolder(this)},i=function(n,t){var r;return r=[],e(n,function(n){
return r.push(t(n))}),r},t.files=function(){return i(this.$().Files,r(2))},t.folders=function(){return i(this.$().SubFolders,r(3));
},t.cd=function(){return o.CurrentDirectory=this}}).call(t,r(7),r(14),r(4))},function(n,t,r){(function(n,e){t.toString=function(){
var n;return null!=(n=this._)?n:""},t.abs=function(){return this._=n.GetAbsolutePathName(this),this},t.up=function(){
var t;return(t=r(3))(n.GetParentFolderName(this))},t.bn=function(t){var e,o,i;for(o=n.GetFileName(this);--t>0;)e||(e=r(11)()),
o=""+e((i=(i||this).up()).bn(),o);return o},t.n=function(){return n.GetBaseName(this)},t.ext=function(){return n.GetExtensionName(this);
},t.ns=function(){return e.NameSpace(this._)}}).call(t,r(7),r(30))},function(n,t,r){(function(n,r){var e,o,i;o=n("Msxml2.DOMDocument").createElement("tmp"),
o.dataType="bin.hex",t.enc=function(n){var t;return o.nodeTypedValue=n,t=o.text,o.text="",t},t.dec=function(n){
var t;return o.text=n,t=o.nodeTypedValue,o.text="",t},e=function(n){var t,r,e;for(t=0,e=[];t<n.length;)r=t,e.push(n.substring(r,t+=2));
return e},i=function(n){return e(n).reverse().join("")},t.i=function(n){return parseInt(i(r.enc(n)),16)}}).call(t,r(5),r(29));
},function(n,t,r){(function(t){n.X=t("Shell.Application")}).call(t,r(5))},function(n,t,r){(function(t,r,e,o,i){
var u,c;n.X=c=function(n){var c,a,f;return n=t(r,n).mk(),e(n,"nvm$.bat").save('@"%~dp0..\\cli.bat" %*\n'),
a=e(n,"npx.cmd"),a.y()||(o("Creating:",a.bn(2)),a.save('@"%~dp0..\\npx.bat" %*\n')),(f=e(r,u)).y()&&!(c=e(n,"openssl"+i.x)).y()&&f.cp(c),
i(n)},c.O=u="openssl-cli"+i.x}).call(t,r(3),r(8),r(2),r(1),r(33))},,function(n,t,r){(function(t,r,e,o,i){var u,c,a,f,s;
n.X=u=function(n){var i,u,a,l,v,h,p;if((h=t(n,f+c)).y()&&!(i=t(n,f+"w"+c)).y())return p=r(),p.LoadFromFile(h),
l=function(n){return e.i(p.Read(n))},v=function(n){return p.Position=n,!0},23117===l(2)&&v(60)&&(a=l(4))&&a<p.size&&v(a)&&17744===l(4)&&v(a+20)&&240===(16|l(2))&&s(l(2))&&779===(768|l(2))&&v(u=a+92)&&3===l(2)&&v(u)?(o("Generating:",i.bn(2)),
p.Write(e.dec("02")),p.SaveToFile(i)):o("Invalid EXE:",h),p.Close()},s=function(){return!0};for(a in i){u.n=f=a;
break}u.x=c=".exe"}).call(t,r(2),r(23),r(29),r(1),r(20))},function(n,t,r){(function(t,r){var e,o;e="Msxml2.ServerXMLHTTP\nMsxml2.XMLHTTP\nMicrosoft.XMLHTTP".split(/\s+/),
o=function(){var n,r,o;for(n=0,r=e.length;n<r;n++){o=e[n];try{return t(o)}catch(n){}}throw Error("AJAX not supported!");
},n.X=function(n,t){var e,i;if(i=o(),i.open("GET",n,!1),i.send(null),200!==i.status)throw Error("HTTP error "+i.status+": "+i.statusText);
return t?(e=r(),e.Write(i.responseBody),e.SaveToFile(t,2),void e.Close()):i.responseText}}).call(t,r(5),r(23));
},function(n,t,r){(function(t,r,e,o,i){var u,c,a,f;(n.X=(f=t()).$()).x=u=".json",c=function(n){return f.s(function(){
var t;return!r(e,t=n+u).ok(864e5)&&[o[n]+"index"+u,t]}).a(i)};for(a in o)c(a)}).call(t,r(9),r(2),r(10),r(20),r(24));
},function(n,t,r){(function(t){var r,e;e=0,n.X=function(){return e||(e="<TySkk|"+r(t.load())+">")},r=function(n){
var t,r,e;for(t=1,r=0,e=n.length;e--;)t=(t+n.charCodeAt(e))%65521,r=(r+t)%65521;return r<<16+t}}).call(t,r(12));
},,function(n,t,r){var e;n.X=function(n,t,r,o){var i;return i=new e,i.$=[n||[],[t],[o]],i.x64=r,i},e=function(){},
e.prototype=r(51)},function(n,t){n.X=function(n,t){if(n.y())try{n.abs().up().ns().ParseName(n.bn()).InvokeVerb(t);
}catch(n){}}},function(n,t,r){(function(t){n.X=function(){try{return 0>t.RegRead("HKLM\\HARDWARE\\DESCRIPTION\\System\\CentralProcessor\\0\\Identifier").indexOf("x86");
}catch(n){}}()}).call(t,r(4))},function(n,t,r){(function(t,r){n.X=function(n){var e,o,i,u,c,a;e=t.Environment("User"),
i=e(o="Path"),c=r.$.bn(2).replace(/^\W+/,""),u=function(n){return n.slice(-c.length)!==c||/\w$/.test(n.slice(0,-c.length));
},a=function(){var n,t,r,e;for(r=i.split(";"),e=[],n=0,t=r.length;n<t;n++)a=r[n],u(a)&&e.push(a);return e}(),
n&&a.unshift(r.$),a=a.join(";"),a!==i&&Function("o,k,v","o(k)=v")(e,o,a)}}).call(t,r(4),r(18))},function(n,t){
var r;n.X=function(n){var t;for(null==n&&(n=12),t="";t.length<n;)t+=r();return t},r=function(){var n;return n=Math.floor(62*Math.random()),
String.fromCharCode(n%26+"Aa0".charCodeAt(n/26))}},function(n,t,r){(function(t,r,e){var o,i,u,c,a;for(n.X=o=["Desktop","StartMenu","AppData"],
u=c=o.length-1;c>=0;u=c+=-1)i=o[u],o[u]=t.SpecialFolders(i);for((i=r(o.pop(),"Microsoft/Internet Explorer/Quick Launch")).y()&&o.push(i),
u=a=o.length-1;a>=0;u=a+=-1)i=o[u],o[u]=e(i,"nvm$.lnk")}).call(t,r(4),r(3),r(2))},function(n,t,r){n.X=function(n){
var t;try{n()}catch(n){if(t=n,!t.message)throw t;r(1)("ERROR:",t.message)}}},function(n,t,r){var e;e=r(55),n.X=function(n){
var t,r,o,i;for(Math.random()>.5&&e.reverse(),o=[],t=0,r=e.length;t<r;t++)i=e[t],0>i.indexOf("?")?o.push(i+"/"+n):o.push(i.replace("?","/"+n+"?"));
return o}},function(n,t,r){(function(t,e,o,i,u,c,a,f){var s,l,v,h,p,d,m,g,x,$,y,b,w;d=r(45),n.X=v=t().s(function(){
return!(!l()||!x())&&(y(),[])}).a(function(){try{w(p())}catch(n){}e()}).$(),l=function(){return!g().ok(7776e4);
},g=function(){return o(i,".v")},h=function(n){return u(c(n))},b=function(n){if(n)return n.$[0].join(".")},p=function(){
var n,t,r,e;for(r=d("version"),n=0,t=r.length;n<t;n++){e=r[n];try{return b(h(a(e)))}catch(n){}}return""},w=function(n){
g().save(n||"","\n\nStart file from non-word character (eg # or ! or ; etc)\nto disable autodetection of nvm$ new version available.\n");
},x=function(){var n,t;if(t="",n=g(),n.y()&&(t=n.load()),t=t.replace(/^\s+/,"").split(/\s+/,2).shift(),!/^\W/.test(t))return h(t);
},v.u=function(n){var t,r;return n?t=[]:(r=x(),t=f(!0).reverse()),$({self:{n:"nvm$",v:b(r),a:r&&0<c.$(r,h("0.10.4"))
},Node:m(t[0]),LTS:m(s(t))})},m=function(n){return{v:b(n),a:n&&!f.L(n),r:n}},s=function(n){var t,r,e;for(t=0,
r=n.length;t<r;t++)if(e=n[t],e.src.lts)return e},$=function(n){var t,r,e;r={};for(t in n)e=n[t],e.K=t,e.N=e.n||t,
r[e.k=t.toLowerCase()]=e;return r},y=function(){var n;try{n=g().open(8,!0),n.Write("\n"),n.Close()}catch(n){}
}}).call(t,r(9),r(35),r(2),r(10),r(38),r(19),r(34),r(17))},function(n,t,r){(function(t,r,e,o,i){var u,c,a,f,s,l;
f=function(){var n,r;r=[];for(n in t)r.push(n);return r},s="lts",n.X=a=function(n){var t,i,u,c,a,v,h,p,d,m,g;
for(v=r(f()),d=r(s),c=0,h=n.length;c<h;c++)i=n[c],(g=v.$(i))?u=g:null!=(a=l(i))?t=a:/^v?\d/i.test(i)?m=e(i):d.$(i)&&(p=!0);
return o(m,u,t,p)},a.x64=l=function(n){if(/^x(\d)/.test(n))return"6"===RegExp.$1},c=function(n){return"["+n.join("|")+"]";
},a.$6=u=function(){var n;return n=["x86","x64"],c(i?n.reverse():n)}(),a.$=c(f())+" [[v]N[.N[.N]]] "+u+" "+c([s]);
}).call(t,r(20),r(65),r(19),r(38),r(40))},,function(n,t,r){(function(t,e,o,i,u,c,a){var f,s,l,v;s=r(45),v="nvm$.zip",
l=t(e,"nvm$"),n.X=o().s(function(){i("Loading:",v)}).a(function(){var n,t,r,e;for(r=s(v),n=0,t=r.length;n<t;n++)if(e=r[n],
u(e,v))return;throw Error("Cannot load "+v)}).s(function(){i("Extracting...")}).a(function(){var n;n=c(e,v),l.mk(!0),
l.ns().copyHere(n.ns().Items(),16),n.rm()}).s(function(){var n;if(!(n=f(l))){try{l.rm()}catch(n){}throw Error("Setup not found");
}i("Running:",n.bn()),a.Run(n)}).$(),f=function(n){var t,r,e,o,i;for(o=n.files(),r=o.length-1;r>=0;r+=-1)if(t=o[r],
"bat"===t.ext())return t;for(i=n.folders(),e=i.length-1;e>=0;e+=-1)if(t=i[e],t=f(t))return t}}).call(t,r(3),r(10),r(9),r(1),r(24),r(2),r(4));
},,function(n,t,r){(function(n){var e,o;t.local=function(){return this.$[1][1]=this.x64,this},e=function(n){return r(n.$[1].length>1?13:17)();
},o=function(t,r){return n.m(r.$,t.$)},t.first=function(){var n,t,r,i;for(r=e(this),n=0,t=r.length;n<t;n++)if(i=r[n],
o(this,i))return i},t.last=function(){var n,t,r;for(t=e(this),n=t.length-1;n>=0;n+=-1)if(r=t[n],o(this,r))return r;
},t.each=function(n){var t,r,i,u;for(i=e(this),t=0,r=i.length;t<r;t++)u=i[t],o(this,u)&&n(u);return i}}).call(t,r(19));
},function(n,t,r){var e,o,i,u,c;for(u=r(39),i=r(43),e=0,o=i.length;e<o;e++){c=i[e],u(c,"taskbarunpin");try{c.rm();
}catch(n){}}},function(n,t){n.X=function(n){if(n+="",/[^{\[:\s,\]}]/.test(n.replace(/-?\d+(?:[.]\d*)?(?:[eE][-+]?\d+)?|"(?:\\.|[^"\\])*"|\b(?:null|true|false)\b/g,"]")))throw SyntaxError("Invalid JSON");
return new Function("return ("+n+")")()}},function(n,t,r){(function(t){var r;n.X=r=function(n){if("."===n[n.length-1])return n.pop(),
!0},r.$=function(){return"nvm$ "+t.join(" ")+" ."}}).call(t,r(22))},function(n,t){n.X=["https://ci.appveyor.com/api/projects/ukoloff/nvms/artifacts?branch=master","https://ukoloff.gitlab.io/nvms"];
},,function(n,t,r){(function(n){var e,o,i;t.q="?",t.t="Show help for all or individual command(s)",t._="[command]",
t.h="Shows information on individual commands or nvm$ itself.",t.$=function(n){var u,c;return i(),c=r(62),n[0]?(u=t.A.$(n[0]))?void e(u,c[u],n.slice(1)):void r(66).$(n):void o(c);
},e=function(t,r,e){n("nvm$ "+t+": "+r.t),r.q.length&&n("\nAlias: "+r.q.join(", ")),n("\nUsage: nvm$ "+t+" "+(r._||"")+"\n"),
"function"==typeof r.h?r.h(e):r.h&&n(r.h)},o=function(t){var r,e;n("Usage: nvm$ <command> [parameter(s)]\n\nCommands:");
for(r in t)e=t[r],n("\t"+r+"\t"+e.t);n("\nCommand names may be unambiguously abbreviated (See: nvm$ a).\n\nRun nvm$ ? <command> for more instructions.");
},i=function(){n("nvm$ v0.10.4: Node Version Manager for M$ Windows\n")},t.i=function(){i(),n("Run nvm$ ? for instructions.");
}}).call(t,r(1))},,function(n,t){n.X="\nFare thee well! and if for ever,\nStill for ever, fare thee well!\n";
},,,function(n,t,r){n.X={abbrev:r(66),bye:r(73),gui:r(74),help:r(57),install:r(67),ls:r(75),openssl:r(76),
remove:r(77),upgrade:r(78),use:r(79),version:r(80),which:r(81),www:r(82)}},,,function(n,t,r){var e;n.X=function(n,t){
var r;return r=new e,r.add(n,t),r},e=function(){},e.prototype=r(106)},function(n,t,r){(function(n){t.t="Show available commands abbreviations",
t._="[word]",t.h=t.$=function(e){var o,i,u,c;n("Available abbreviations:"),i=r(62),o=t.A,o=o.a(e[0])||o.a();for(u in o)c=o[u],
n("  "+u+"\t"+c+"\t"+i[c].t)}}).call(t,r(1))},function(n,t,r){(function(n,e,o,i){var u;u=r(47),t.t="Install some version of Node.js",
t._=u.$+" [.]",t.h="Install specified Node.js version (latest matching filter).\n\nUse `nvm$ ls remote` to see available Node.js versions.\n\nIf specified version is already installed, it will be used\nwithout installation. To force reinstallation - add . as last parameter.",
t.$=function(t){var r,c,a,f;if(c=n(t),r=u(t),!(f=r.last()))throw Error("Specified Node.js version not found!");
return f=e.x(f,r.x64),!c&&(a=e.L(f))?(o(a.path+" is installed. To reinstall say:",n.$()),void i.u(a)):void e.i(f);
}}).call(t,r(54),r(17),r(1),r(13))},,,,,function(n,t,r){(function(n,t,e){var o,i,u,c,a;c=r(62),n.$(),o=t(),i=function(n){
return n?n.split(/\s+/).sort():[]};for(a in c)u=c[a],u.A=o,o.add(a,u.q=i(u.q));(u=c[o.$(e[0])])?/^[h?]/.test(e[1])?r(57).$([e[0]].concat(e.slice(2))):u.$(e.slice(1)):r(57).i();
}).call(t,r(9),r(65),r(22))},function(n,t,r){(function(n,r,e,o,i){t.q="boeing",t.t="Uninstall nvm$",t._="[.]",
t.h="Totally remove nvm$ manager and all installed Node.js versions.\n\nWithout trailing dot command does nothing.",
t.$=function(t){n(t)||(r("\nTo really remove everything say:",n.$()),e()),o.b(function(){}),r(i),e()}}).call(t,r(54),r(1),r(21),r(13),r(59));
},function(n,t,r){(function(n,r,e){t.t="Open GUI",t.h="Opens nvm$ GUI using Microsoft Internet Explorer",t.$=function(){
n(0,r(e.up(),"gui.bat"))}}).call(t,r(16),r(2),r(12))},function(n,t,r){(function(n,e){var o,i,u,c,a,f,s;s=r(47),
t.q="list",t.t="List available Node.js versions",t._="[remote] "+s.$,t.h="List already installed or all available to install Node.js versions",
t.$=function(n){/^r/i.test(n[0])?f(n.slice(1)):o(n)},i=function(n){return n?' "'+n+'"':""},o=function(t){var r,e;
r=0,e=s(t).local().each(function(t){return r++,n(t.active?">":"-",""+t.path+i(t.lts))}).length,n("Listed: "+r+" of "+e+" installed Node.js version(s)");
},f=function(t){var r,o,f,l,v,h,p;for(l=[],o=0,v=0,h=s(t).each(function(n){return v++,u(n),o&&!e.cmp(o.mjr,n.mjr)?o.mnr.push(n.mnr[0]):l.push(o=n);
}).length,r=0,f=l.length;r<f;r++)p=l[r],n("-","["+p.mnr.length+"]\t"+p.dist,""+p.src.version+c(a(p.mnr))+i(p.src.lts));
n("Listed: "+l.length+" line(s) of "+v+" version(s) of "+h+" total")},u=function(n){var t,r,e,o,i;for(n.mjr=t=[],
i=n.$,e=0,o=i.length;e<o;e++)r=i[e],t.push(r.slice());return n.mnr=[t[0].pop()]},a=function(n){var t,r,e,o,i;for(i=[],
t=0,e=n.length;t<e;t++)o=n[t],r&&r.b+1===o?r.b=o:i.push(r={a:o,b:o});return i},c=function(n){var t,r;return r=function(){
var e,o,i;for(i=[],t=e=0,o=n.length;e<o;t=++e)r=n[t],i.push(""+(t?r.a:"")+(r.b>r.a?" - "+r.b:""));return i}(),
r.join(", ")}}).call(t,r(1),r(19))},function(n,t,r){(function(n,e,o,i){var u;u=r(47),t.t="Install OpenSSL utility",
t._=u.$6+" [.]",t.h="Install openssl.exe precompiled for Node.js project",t.$=function(t){var r,u;if(r=n(t),!r&&e.Y())return void o("OpenSSL is already installed. To reinstall say:",n.$());
if(u=i([0]).last(),!u)throw Error("Appropriate Node.js version not found!");e.O(u)}}).call(t,r(54),r(17),r(1),r(38));
},function(n,t,r){(function(n,e,o){var i,u,c,a,f;f=r(47),t.q="uninstall drop",t.t="Remove one or several Node.js version(s)",
t._="[all] "+f.$+" [.]",t.h="Remove single specified Node.js version or all version matching filter.\n\nWithout trailing dot command only shows candidate(s) to uninstall.\n\nWith trailing dot removing will proceed without additional confirmations!",
u=!1,t.$=function(t){u=n(t),/^a/i.test(t[0])?i(t.slice(1)):c(t),u||e("\nTo actually uninstall say:",n.$())},i=function(n){
var t;t=0,f(n).local().each(function(n){return a(n),t++}),u&&e("\nNode.js version(s) found & uninstalled:",t);
},c=function(n){var t;if(!(t=f(n).local().first()))throw Error("Specified Node.js version not installed!");a(t);
},a=function(n){return u?void o.r(n,function(){}):void e("Would remove:",n.path)}}).call(t,r(54),r(1),r(13))},function(n,t,r){
(function(n,e,o,i){var u,c,a,f,s,l;s=r(46),l=r(47),t.t="Upgrade latest/LTS Node or nvm$ itself",t.h="Download and install latest version of nvm$, Node or Node LTS version",
t.$=function(t){var c,l,v;c=n(t),v=s.u(),(l=e(a(v)).$(t[0]))||(u(v),o()),(v=v[l]).a||c||(i("Upgrade not needed. To force upgrade say:",n.$()),
o()),i("Upgrading:",v.N,"->",v.v||f),v.n?r(49)():r(67).$([v.k,t[1],"."]),o()},a=function(n){var t,r;r=[];for(t in n)r.push(t);
return r},t._="["+a(s.u(!0)).join("|")+"] "+l.$6+" [.]",u=function(n){var t,r,e,o,u,a,f,s;t=[],f=[];for(o in n)s=n[o],
s.k=o,(s.a?t:f).push(s);for(t.length&&i("Available upgrades:"),r=0,u=t.length;r<u;r++)s=t[r],c(s);for(f.length&&(t.length&&i(""),
i("Possible upgrades:")),e=0,a=f.length;e<a;e++)s=f[e],c(s)},f="latest",c=function(n){return i("\t","nvm$","upgrade",n.k,n.a?"":".","\t//",n.N,"->",n.v||f);
}}).call(t,r(54),r(65),r(21),r(1))},function(n,t,r){(function(n,e){var o;o=r(47),t.t="Use (set default) already installed Node.js version",
t._="[ none | "+o.$+" ]",t.h="Make specified Node.js version active for all processes of current user.\n\nOnly installed versions are used. Use `nvm$ install` for new ones.\n\nSay `nvm$ use none` to temporarily disable nvm$.",
t.$=function(t){var r;if("none"===t[0])n();else{if(!(r=o(t).local().last()))throw Error("Specified Node.js version not installed!");
e.u(r)}}}).call(t,r(18),r(13))},function(n,t,r){(function(n,r){t.t="Show version",t.h="Displays nvm$ version.",
t.$=function(t){n("0.10.4"),r()}}).call(t,r(1),r(21))},function(n,t,r){(function(n,r){t.q="where",t.t="Display path to current Node.js version",
t.h="Shows which folder with Node.js is active for all processes of current user",t.$=function(){n(r.f())}}).call(t,r(1),r(13));
},function(n,t,r){(function(n){t.q="repo",t.t="Open homepage",t.h="Opens nvm$ repository in default browser.",
t.$=function(){n("https://github.com/ukoloff/nvms")}}).call(t,r(16))},function(n,t,r){(function(n){var t,e,o,i,u;
o=r(46),o(function(){}),i="",e=o.u();for(t in e)u=e[t],u.a&&(i+=u.N+" -> "+u.v+"; ");i&&n("\n// Upgrade "+i+"See: nvm$ upgrade");
}).call(t,r(1))},,,,,,,,,,,,,,,,,,,,,,,function(n,t){var r;r=function(n){return n?"string"==typeof n?[n]:n:[];
},t.add=function(n,t){var e,o,i,u,c,a;for(null==this.z&&(this.z={}),u=r(n),o=u.length-1;o>=0;o+=-1)a=u[o],this.z[a]=0;
for(c=r(t),i=c.length-1;i>=0;i+=-1)e=c[i],this.z[e]=a||e},t.$=function(n){var t,r,e,o;if(n&&this.z){if(n in this.z)return this.z[n]||n;
r=this.z;for(t in r)if(o=r[t],n===t.substring(0,n.length)){if(o||(o=t),e&&e!==o)return;e=o}return e}},t.a=function(n){
var t,r,e,o,i,u,c,a,f,s;t=function(){var t,r;if(!n)return!0;for(t=arguments.length-1;t>=0;t+=-1)if(r=arguments[t],
r&&n===r.substring(0,n.length))return!0},u={},i=[],c=this.z;for(o in c)if(s=c[o],t(o,s))for(s||(s=o),r=0;++r<=o.length;)if(s===this.$(f=o.substring(0,r))){
i.push(f),u[f]=s;break}if(i.length){for(a={},i.sort().reverse(),e=i.length-1;e>=0;e+=-1)o=i[e],a[o]=u[o];return a;
}}}]);
