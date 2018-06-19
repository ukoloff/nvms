0</*! :: See https://github.com/ukoloff/nvms
@echo off
start wscript.exe //E:JScript "%~f0"
goto :EOF */0;
!function(n){function t(e){if(r[e])return r[e].X;var o=r[e]={X:{},id:e,loaded:!1};return n[e].call(o.X,o,o.X,t),
o.loaded=!0,o.X}var r={};return t.m=n,t.c=r,t.p="",t(0)}([function(n,t,r){"undefined"!=typeof window&&null!==window?r(115):(r(89),
r(117))},function(n,t,r){(function(t){var r,e=[].slice;n.X=r=function(){var n;n=1<=arguments.length?e.call(arguments,0):[],
r._(n.join(" "))},r._=function(n){t.Echo(n)}}).call(t,r(6))},function(n,t,r){(function(t){n.X=t(r(26))}).call(t,r(11));
},function(n,t,r){(function(t){n.X=t(r(27))}).call(t,r(11))},function(n,t,r){(function(t){n.X=t("WScript.Shell");
}).call(t,r(5))},function(n,t,r){(function(t){n.X=function(n){return t.CreateObject(n)}}).call(t,r(6))},function(n,t,r){
(function(t){n.X=t.h||WScript}).call(t,r(15))},function(n,t,r){(function(t){n.X=t("Scripting.FileSystemObject");
}).call(t,r(5))},function(n,t,r){(function(t,r){n.X=t(r.Environment("Process")("USERPROFILE"),".nvm$").mk();
}).call(t,r(3),r(4))},function(n,t,r){(function(t,r,e,o,i,u){var c,a,f,l,s,d,p;p=[],n.X=c=function(){var n,t,r,e,o;
for(o=0,e=p.length,t={$:function(){return f(function(){return d(e,o,arguments)})}},r="sa",n=r.length;--n>=0;)!function(n){
t[n]=function(t){var r;return o&&!(r=p[p.length-1])[n]||(p.push(r={}),o=p.length),r[n]=t,this}}(r.substr(n,1));
return t},s={},f=function(n){return n.prototype=s,n},l=function(n){return s===n.prototype},a=function(n){var r;
try{return n(),!0}catch(n){r=n,t("FAIL:",r.message)}},d=function(n,t,i){var u,f,s,d;return f={},i=[].slice.call(i),
"function"==typeof i[i.length-1]&&(u=i.pop()),s=function(n){return n?d():void u(n)},(d=function(){for(var d,h,v,m,x,g;n<t;){
if(g=p[n++],h=i,g.s){if(!a(function(){return h=g.s.apply(f,i)}))return!1;if(!1===h)continue;null==h&&(h=i),"object"!=typeof h&&(h=[h]);
}if(g.a){if(u)return l(g.a)?void g.a.apply(f,h.concat([s])):(h=[r,"",e(),n-1].concat(h),v=o.Exec("wscript.exe //B //E:JScript"+function(){
var n,t,r;for(r=[],n=0,t=h.length;n<t;n++)d=h[n],r.push(' "'+d+'"');return r}().join("")),void(null!=(m=c._)&&m.push(function(){
if(v.Status)return s(!v.ExitCode),!0})));if(x=!0,!a(function(){return x=g.a.apply(f,h)}))return!1;if(!x&&l(g.a))return!1;
}}return!u||void u(!0)})()},c.$=function(n){if(""===i[0]&&/^\d+$/.test(i[2])&&e()===i[1]){"function"==typeof n&&n();
try{return p[i[2]].a.apply({},i.slice(3)),u()}catch(n){return u(1)}}}}).call(t,r(1),r(12),r(36),r(4),r(22),r(21));
},function(n,t,r){(function(t,r){n.X=t(r,"that").mk()}).call(t,r(3),r(8))},function(n,t,r){(function(t){
var e,o;e=function(){},e.prototype=r(28),n.X=function(n){var t,r,i,u;t=function(n){o(this,n)},t.prototype=u=new e;
for(r in n)i=n[r],u[r]=i;return function(){return new t(arguments)}},o=function(n,r){var e,o,i,u;for(i="",e=0,
o=r.length;e<o;e++)u=r[e],i=t.BuildPath(i,u);n._=i}}).call(t,r(7))},function(n,t,r){(function(t,r){n.X=t(r.ScriptFullName);
}).call(t,r(2),r(6))},function(n,t,r){(function(t,e,o,i,u,c,a,f,l,s){var d,p,h,v;p=/^(\w+)-\D*(\d+(?:[.]\d+)+)-x(\d)/,
n.X=d=function(){var n,r,c,a,f,l,s,d,h,m,x,g,b,y,$;for(h={},g=t(!0),a=0,l=g.length;a<l;a++)x=g[a],x.src.lts&&(h[x.$[0].join(".")]=x.src.lts);
for(d=[],y=v(e.$),b=o.folders(),f=0,s=b.length;f<s;f++)r=b[f],p.test(r.bn())&&d.push({active:y&&i(r,y.bn()).y(),
path:RegExp.$_,dist:n=RegExp.$1,x64:c="6"===RegExp.$3,lts:m=h[($=u(RegExp.$2)).join(".")],$:[$,[n,c],[!!m]]});
return null!=y&&y.rm(),d.sort(u.$)},v=function(n){var t,r;if(n.y())for(t=16;--t;)if(r=i(n,c(15)),!r.y())try{return r.create(!0).Close(),
r}catch(n){}},d.a=function(n){var t,r,e;for(null==n&&(n=d()),t=0,r=n.length;t<r;t++)if(e=n[t],e.active)return e;
},d.u=function(n){return e(null!=n?n.path:void 0)},d.f=function(n){return null==n&&(n=d.a()),n?a(o,n.path):e.$;
},h=f().a(function(n){var t,r;for(n=a(o,n),t=0;;)try{return void n.rm(!0)}catch(n){if(r=n,t++>3)throw r}}).$(),
d.r=f().s(function(n){return!!n&&(l("Removing:",n.path),n.active&&e(),n.path)}).a(h).$(),d.b=f().s(function(){
l("Cleaning PATH"),s(),e(!1);try{r(52)}catch(n){}return l("Removing:",o),""}).a(h).$()}).call(t,r(17),r(18),r(8),r(2),r(19),r(42),r(3),r(9),r(1),r(41));
},function(n,t){n.X=function(n,t){var r,e,o;for("function"!=typeof t&&(o=[]),e=0,r=new Enumerator(n);!r.atEnd();){
if(o)o.push(r.item());else if(!1===t(r.item(),e++))return;r.moveNext()}return o}},function(n,t){},function(n,t,r){
(function(t){var r;n.X=r=function(){var n,e,o,i,u,c,a;for(e="",a=!1,u=1,o=0,i=arguments.length;o<i;o++)if(n=arguments[o],
r._!==n)switch(typeof n){case"boolean":a=n;break;case"number":u=n;break;default:n.length&&!/[\s^<|>]/.test(n)||(n='"'+n+'"'),
c&&(e+=" "),e+=n,c=1}else c=0;return t.Run(e,u,a)},r._={}}).call(t,r(4))},function(n,t,r){(function(t,e,o,i,u,c,a,f,l,s,d,p,h,v,m,x,g,b){
var y,$,k,w,S,T,N,E;n.X=y=function(n){var r,a,f,l,s,d,p,h;n||t(),s=[];for(f in e)if(p=e[f],(r=o(i,f+t.x)).y())for(d=u(r.load()),
a=0,l=d.length;a<l;a++)h=d[a],w(h)&&s.push({$:[c(h.version),[f],[!!h.lts]],dist:f,src:h});return s.sort(c.$)},
w=function(n){return~n.files.join().indexOf("-msi")},y.x=function(n,t){var r,e,o;null==t&&(t=a),e={};for(r in n)o=n[r],
e[r]=o;return e.x64=t,e},y.L=$=function(n){if(n)return f(n.$[0],n.dist,n.x64).local().last()},y.V=E=function(n,t){
var r;return r=n.dist+"-"+n.src.version+"-x"+(n.x64?64:86),t?l(s,r):r},k=function(n,t){var r;return r=E(n)+".msi",
t?o(i,r):r},S=function(n){var t;return t=k(n,!0),t.y()&&t.sz()>1e6},N=function(n){return""+e[n.dist]+n.src.version+"/"+(n.x64&&!n.$[0][0]?"x64/":"");
},T=function(){var n,t;for(t=10;t--;)if(n=l(s,"."+d(3)),!n.y())return n;throw Error("Temporary folder not found");
},y.i=p().s(function(n){return!S(n)&&[""+N(n)+k(n),k(n)]}).a(h).s(function(n){return r(13).r($(n),function(){}),
v("Extracting:",k(n)),E(n)}).a(function(n){var t,r;r=T();try{if(m(1,!0,"msiexec","/a",o(i,n)+".msi","TARGETDIR=",m._,r,"/qb"))throw Error("Extraction failed");
t=l(s,n).rm(!0),r.folders().shift().mv(t)}finally{r.rm()}}).s(function(n){var t,r,e;x.n!==n.dist&&(r=E(n,!0),
(e=o(r,n.dist+x.x)).y()&&((t=o(r,x.n+x.x)).y()||(v("Alias:",t.bn(2)),e.cp(t))))}).s(function(n){var t;v("Adjusting NPM prefix..."),
t=o(E(n,!0),"node_modules/npm/npmrc").open(8),t.WriteLine('\n# <hack dirty src="https://github.com/ukoloff/nvms">\nprefix=${USERPROFILE}\\'+g.$.bn(2)+"\n# </hack>"),
t.Close(),g(E(n))}).$(),y.Y=function(){return o(s,b.O).y()},y.O=p().s(function(n){return[""+N(n)+b.O,o("..",b.O)];
}).a(h).s(function(){v("Creating shortcut..."),b(g.$.bn())}).$()}).call(t,r(35),r(20),r(2),r(10),r(53),r(19),r(40),r(38),r(3),r(8),r(42),r(9),r(24),r(1),r(16),r(33),r(18),r(31));
},function(n,t,r){(function(t,r,e,o,i,u,c){var a,f,l,s,d;n.X=a=function(n){if(null==n&&(n="none"),d(),!1!==n)r("Using:",n),
e(n),d(o(t,n));else if(s)try{t.up().cd()}catch(n){}},a.$=l=o(t,"this"),s=/[^\x00-\x7F]/.test(l),f=function(n){
return s?i("..",n.bn()):n},d=function(n){var r;if(!(r=i(t,"linkd.exe")).y())throw Error("File not found: "+r);
s&&u.cd(),c(0,!0,f(r),f(l),n?f(n):"/D")}}).call(t,r(8),r(1),r(31),r(3),r(2),r(10),r(16))},function(n,t){var r,e,o,t,i;
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
}).$()}).call(t,r(9),r(1),r(34),r(2),r(10))},function(n,t,r){var e;!function(){function o(){function n(n,r){return t(n,r);
}function t(n,t){return null==t&&(S(),t=C[(""+n).toLowerCase()]),x(n,t)}return n}function i(n,t){var r,e="";for(var o in t)"object"==typeof(r=t[o])?e+=i(n+o+"-",r):null!=r&&!1!==r&&(e+=n+s(o),
!0!==r&&(e+='="'+s(r)+'"'));return e}function u(n){var t,r,e=n.length;r=F,F="";try{for(var o=0;o<e;o++)null!=(t=n[o])&&("function"==typeof t?t.call(j):F+=s(t));
}finally{F=r+F}}function c(n){if(1!=n.length||"function"!=typeof n[0])throw SyntaxError("Usage: coffeescript -> code");
F+="<script><!--\n("+n[0]+")()\n//-->\n</",F+="script>"}function a(){function n(){t(arguments)}function t(n){
F+=r++?'<comment level="'+r+'">':"<!-- ",u(n),F+=--r?"</comment>":" -->"}var r=0;return n}function f(){function n(n){
return t(n)}function t(n){function t(){return r.apply(this,arguments)}var r=w(n,t);return t}return n}function l(n){
var t,r=[];for(var e in n)"object"==typeof(t=n[e])?r.push.apply(r,l(t)):r.push(t);return r}function s(n){return(""+n).replace(/[&<>"]/g,function(n){
return O[n]})}function d(){return p(arguments)}function p(n){function t(n){return r.apply(n,arguments)}function r(){
var n="";e();for(var t=0,r=o.length;t<r;t++)n+=o[t].apply(this,arguments);return n}function e(){for(var n,r=t.id,i=o.length-1;i>=0;i--){
if("function"!=typeof(n=o[i])&&"function"!=typeof(n=JST[n]))throw Error("JST['"+o[i]+"'] not found or incorrect!");
o[i]=w(n,t,i+1)}t.id=r,e=b}var o=l(D.call(n));return t.id=null,t}function h(n){if("function"==typeof n&&(n=n()),
"object"==typeof n){var t;for(var r in n){if(!/^[$\w]+$/.test(r))throw SyntaxError("Invalid identifier: "+r);t||(t={});
var e=n[r];t[r]="string"==typeof e&&/^<(\/?)>$/.test(e)?x(r,!!RegExp.$1):e}return t}}function v(n){return m(n);
}function m(n){function t(n){return r.apply(n,arguments)}var r=w(n,t);return t}function x(n,t){function r(){e(arguments);
}function e(r){var e=r[0];if("object"==typeof e?(e=i(" ",e),r=T(r)):e="",F+="<"+n+e+">",t&&r.length)throw SyntaxError("<"+n+"> must have no content!");
t||(u(r),F+="</"+n+">")}return r}function g(){for(var n,t,r=arguments.length,e=0;e<r;e++){var o=arguments[e];if("object"==typeof o)if(n){
if(!t){t={};for(var i in n)t[i]=n[i];n=t,t=1}for(var i in o)n[i]=o[i]}else n=o}return n}function b(){}function y(n){
u("object"==typeof n[0]?T(n):n)}function $(n){for(var t,r=n.length,e="",o=0;o<r;o++)null!=(t=n[o])&&(e+=s(t));
F+=e}function k(n){for(var t,r=n.length,e=0;e<r;e++)null!=(t=n[e])&&(F+=t)}function w(n,t,r){function e(){i();
try{var t=j,r=F;return j=this,F="",u(),n.apply(this,arguments),F}finally{j=t,F=r}}function o(){var n=t.id;return null==n&&(n=""),
n=(""+n).split(/\W+/).join("/").replace(/^\/+|\/+$/g,""),n.length||(n=++H),t.id=n,r&&(n+="["+r+"]"),n}function i(){
var r,e=""+n;c=!/[\r\n]/.test(e),S();var u=g(R,h(v.$),h(t.$));e=M(u)+"\nreturn "+e,c||(e+="\n//# sourceURL=eval://withOut/"+(r=o())+".wo"),
n=new Function(e).call(u),i=b,c||(n.displayName="<"+r+">",t.displayName="{{"+r+"}}")}function u(){if(!c&&!1!==v.bp)return!!v.bp||(r&&"number"==typeof t.bp?r==t.bp:t.bp);
}if("function"!=typeof n)throw TypeError("Call: withOut(function)");var c;return t.id=null,e}function S(){function n(n){
r=n().split(" ")}S=b,R={print:L,text:L,raw:function(){k(arguments)},notag:function(){y(arguments)},coffeescript:function(){
c(arguments)},blackhole:b,comment:a(),tag:o(),$var:x("var")};var t,r;for(n(N);t=r.pop();)R[t]=x(t);for(n(E);t=r.pop();)R[t]=x(t,1),
C[t]=1}function T(n){return D.call(n,1)}function N(){N=b;var n="a abbr acronym address applet article aside audio ";
return n+="b bdo big blockquote body button canvas caption center cite code colgroup command ",n+="datalist dd del details dfn dir div dl dt em embed ",
n+="fieldset figcaption figure font footer form frameset ",n+="h1 h2 h3 h4 h5 h6 head header hgroup html i iframe ins keygen kbd ",
n+="label legend li map mark menu meter nav noframes noscript ",n+="object ol optgroup option output p pre progress q rp rt ruby ",
n+="s samp script section select small source span strike strong style sub summary sup ",n+"table tbody td textarea tfoot th thead time title tr tt u ul video wbr xmp";
}function E(){return E=b,"area base basefont br col frame hr img input link meta param"}function L(){$(arguments);
}function M(n){var t=[];for(var r in n)t.push(r+"=this."+r);return"var "+t.join(",")}var C={};"object"==typeof n&&n.X?n.X=v:(e=function(){
return v}.call(t,r,t,n),!(void 0!==e&&(n.X=e))),v.$compile=v,v.compile=v.renderable=f(),v.JSTs=d;var F,j,R,O={
"&":"&amp;","<":"&lt;",">":"&gt;",'"':"&quot;"},H=0,D=[].slice}()},function(n,t,r){(function(n){var r;t.y=function(){
return n.FileExists(this)},t.rm=function(t){return t&&!this.y()||n.DeleteFile(this),this},t.cp=function(t){n.CopyFile(this,t);
},t.mv=function(t){n.MoveFile(this,t)},t.$=function(){return n.GetFile(this)},t.sz=function(){return this.$().Size;
},t.age=function(n){var t;return t=this.$().DateLastModified,null!=n?new Date-t>n:t},t.ok=function(n){return this.y()&&!this.age(n);
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
i(n)},c.O=u="openssl-cli"+i.x}).call(t,r(3),r(8),r(2),r(1),r(33))},function(n,t,r){(function(t){n.X=t.setImmediate||t.setTimeout;
}).call(t,r(70))},function(n,t,r){(function(t,r,e,o,i){var u,c,a,f,l;n.X=u=function(n){var i,u,a,s,d,p,h;
if((p=t(n,f+c)).y()&&!(i=t(n,f+"w"+c)).y())return h=r(),h.LoadFromFile(p),s=function(n){return e.i(h.Read(n));
},d=function(n){return h.Position=n,!0},23117===s(2)&&d(60)&&(a=s(4))&&a<h.size&&d(a)&&17744===s(4)&&d(a+20)&&240===(16|s(2))&&l(s(2))&&779===(768|s(2))&&d(u=a+92)&&3===s(2)&&d(u)?(o("Generating:",i.bn(2)),
h.Write(e.dec("02")),h.SaveToFile(i)):o("Invalid EXE:",p),h.Close()},l=function(){return!0};for(a in i){u.n=f=a;
break}u.x=c=".exe"}).call(t,r(2),r(23),r(29),r(1),r(20))},function(n,t,r){(function(t,r){var e,o;e="Msxml2.ServerXMLHTTP\nMsxml2.XMLHTTP\nMicrosoft.XMLHTTP".split(/\s+/),
o=function(){var n,r,o;for(n=0,r=e.length;n<r;n++){o=e[n];try{return t(o)}catch(n){}}throw Error("AJAX not supported!");
},n.X=function(n,t){var e,i;if(i=o(),i.open("GET",n,!1),i.send(null),200!==i.status)throw Error("HTTP error "+i.status+": "+i.statusText);
return t?(e=r(),e.Write(i.responseBody),e.SaveToFile(t,2),void e.Close()):i.responseText}}).call(t,r(5),r(23));
},function(n,t,r){(function(t,r,e,o,i){var u,c,a,f;(n.X=(f=t()).$()).x=u=".json",c=function(n){return f.s(function(){
var t;return!r(e,t=n+u).ok(864e5)&&[o[n]+"index"+u,t]}).a(i)};for(a in o)c(a)}).call(t,r(9),r(2),r(10),r(20),r(24));
},function(n,t,r){(function(t){var r,e;e=0,n.X=function(){return e||(e="<TySkk|"+r(t.load())+">")},r=function(n){
var t,r,e;for(t=1,r=0,e=n.length;e--;)t=(t+n.charCodeAt(e))%65521,r=(r+t)%65521;return r<<16+t}}).call(t,r(12));
},function(n,t,r){(function(t,e,o){var i,u,c,a,f,l,s,d,p,h,v=[].indexOf||function(n){for(var t=0,r=this.length;t<r;t++)if(t in this&&this[t]===n)return t;
return-1};u=r(50).$,h=r(84),a=i=0,d=[],f=function(){var n,t;for(n=d.length-1;n>=0;n+=-1){t=d[n];try{t.parentNode.removeChild(t);
}catch(n){}}d=[]},p=function(){f(),i&&(i.className=i.className.split(/\s+/)[0],i=0)},s=function(n,r,o){var i,u,c,f,l;
for(l=t("a",n),u=c=0,f=l.length;c<f;u=++c)i=l[u],i.onclick=function(t){return function(){return e(function(){
v.call(d,n)<0&&p(),a=n;try{r(t,o)}finally{a=0}}),!1}}(u)},n.X=l=function(n,t,r,e){var o,c;if(!n)return void p();
if(a)for(f(),i||(i=a,a.className+=" hide"),d=u(i.parentNode,h(n,t)),o=d.length-1;o>=0;o+=-1)c=d[o],s(c,r,e)},
l.$=function(n,r,e){var o,i,u;for(i=t("span",n),o=i.length-1;o>=0;o+=-1)u=i[o],"ask"===u.className&&s(u,r,e.pop());
},c="No, thanks!",l.x=function(n,t,r){var i,u,a,f;for(f=[64,86],o&&f.reverse(),u={},i=f.length-1;i>=0;i+=-1)a=f[i],
u["x"+a]="nvm$ "+t+" x"+a;u.cancel=c,l(u,n,function(n){return n>1?void e(l):void r(!n!=!o)})},l.y=function(n,t,r){
l({yes:"nvm$ "+t,no:c},n+":",function(n){return n?void e(l):void r()})}}).call(t,r(48),r(32),r(40))},function(n,t,r){
var e;n.X=function(n,t,r,o){var i;return i=new e,i.$=[n||[],[t],[o]],i.x64=r,i},e=function(){},e.prototype=r(51);
},function(n,t){n.X=function(n,t){if(n.y())try{n.abs().up().ns().ParseName(n.bn()).InvokeVerb(t)}catch(n){}
}},function(n,t,r){(function(t){n.X=function(){try{return 0>t.RegRead("HKLM\\HARDWARE\\DESCRIPTION\\System\\CentralProcessor\\0\\Identifier").indexOf("x86");
}catch(n){}}()}).call(t,r(4))},function(n,t,r){(function(t,r){n.X=function(n){var e,o,i,u,c,a;e=t.Environment("User"),
i=e(o="Path"),c=r.$.bn(2).replace(/^\W+/,""),u=function(n){return n.slice(-c.length)!==c||/\w$/.test(n.slice(0,-c.length));
},a=function(){var n,t,r,e;for(r=i.split(";"),e=[],n=0,t=r.length;n<t;n++)a=r[n],u(a)&&e.push(a);return e}(),
n&&a.unshift(r.$),a=a.join(";"),a!==i&&Function("o,k,v","o(k)=v")(e,o,a)}}).call(t,r(4),r(18))},function(n,t){
var r;n.X=function(n){var t;for(null==n&&(n=12),t="";t.length<n;)t+=r();return t},r=function(){var n;return n=Math.floor(62*Math.random()),
String.fromCharCode(n%26+"Aa0".charCodeAt(n/26))}},function(n,t,r){(function(t,r,e){var o,i,u,c,a;for(n.X=o=["Desktop","StartMenu","AppData"],
u=c=o.length-1;c>=0;u=c+=-1)i=o[u],o[u]=t.SpecialFolders(i);for((i=r(o.pop(),"Microsoft/Internet Explorer/Quick Launch")).y()&&o.push(i),
u=a=o.length-1;a>=0;u=a+=-1)i=o[u],o[u]=e(i,"nvm$.lnk")}).call(t,r(4),r(3),r(2))},,function(n,t,r){var e;e=r(55),
n.X=function(n){var t,r,o,i;for(Math.random()>.5&&e.reverse(),o=[],t=0,r=e.length;t<r;t++)i=e[t],0>i.indexOf("?")?o.push(i+"/"+n):o.push(i.replace("?","/"+n+"?"));
return o}},function(n,t,r){(function(t,e,o,i,u,c,a,f){var l,s,d,p,h,v,m,x,g,b,y,$,k;v=r(45),n.X=d=t().s(function(){
return!(!s()||!g())&&(y(),[])}).a(function(){try{k(h())}catch(n){}e()}).$(),s=function(){return!x().ok(7776e4);
},x=function(){return o(i,".v")},p=function(n){return u(c(n))},$=function(n){if(n)return n.$[0].join(".")},h=function(){
var n,t,r,e;for(r=v("version"),n=0,t=r.length;n<t;n++){e=r[n];try{return $(p(a(e)))}catch(n){}}return""},k=function(n){
x().save(n||"","\n\nStart file from non-word character (eg # or ! or ; etc)\nto disable autodetection of nvm$ new version available.\n");
},g=function(){var n,t;if(t="",n=x(),n.y()&&(t=n.load()),t=t.replace(/^\s+/,"").split(/\s+/,2).shift(),!/^\W/.test(t))return p(t);
},d.u=function(n){var t,r;return n?t=[]:(r=g(),t=f(!0).reverse()),b({self:{n:"nvm$",v:$(r),a:r&&0<c.$(r,p("0.10.4"))
},Node:m(t[0]),LTS:m(l(t))})},m=function(n){return{v:$(n),a:n&&!f.L(n),r:n}},l=function(n){var t,r,e;for(t=0,
r=n.length;t<r;t++)if(e=n[t],e.src.lts)return e},b=function(n){var t,r,e;r={};for(t in n)e=n[t],e.K=t,e.N=e.n||t,
r[e.k=t.toLowerCase()]=e;return r},y=function(){var n;try{n=x().open(8,!0),n.Write("\n"),n.Close()}catch(n){}
}}).call(t,r(9),r(35),r(2),r(10),r(38),r(19),r(34),r(17))},,function(n,t,r){(function(t){var r,e;n.X=r=function(n,r){
switch(null==r&&(r=t),n=""+n,n.charAt(0)){case"#":return[r.getElementById(n.substring(1))];case".":return e(r.getElementsByClassName(n.substring(1)));
default:return e(r.getElementsByTagName(n))}},e=function(n){var t,r,e,o;for(e=[],t=0,r=n.length;t<r;t++)o=n[t],
e.push(o);return e}}).call(t,r(56))},function(n,t,r){(function(t,e,o,i,u,c,a){var f,l,s,d;l=r(45),d="nvm$.zip",
s=t(e,"nvm$"),n.X=o().s(function(){i("Loading:",d)}).a(function(){var n,t,r,e;for(r=l(d),n=0,t=r.length;n<t;n++)if(e=r[n],
u(e,d))return;throw Error("Cannot load "+d)}).s(function(){i("Extracting...")}).a(function(){var n;n=c(e,d),s.mk(!0),
s.ns().copyHere(n.ns().Items(),16),n.rm()}).s(function(){var n;if(!(n=f(s))){try{s.rm()}catch(n){}throw Error("Setup not found");
}i("Running:",n.bn()),a.Run(n)}).$(),f=function(n){var t,r,e,o,i;for(o=n.files(),r=o.length-1;r>=0;r+=-1)if(t=o[r],
"bat"===t.ext())return t;for(i=n.folders(),e=i.length-1;e>=0;e+=-1)if(t=i[e],t=f(t))return t}}).call(t,r(3),r(10),r(9),r(1),r(24),r(2),r(4));
},function(n,t,r){(function(n,e){var o,i,u,c,a,f,l;a=r(96),f=r(58),u=l=i=0,c=function(){var n;null!=(n=t.$d.lastChild)&&n.scrollIntoView();
},t.$=o=function(r,e){var o,u,c,a;for(c=t.$d,i||(c.innerHTML=n(function(){return div()})(),i=c.firstChild,c.innerHTML=""),
i.innerHTML=e,o=function(){var n,t,r;for(t=i.children,r=[],n=t.length-1;n>=0;n+=-1)a=t[n],r.push(a);return r}(),
u=o.length-1;u>=0;u+=-1)a=o[u],r.appendChild(a);return o},t.a=function(){l=0,t.$i.innerHTML="",t.v||c()},e._=function(n){
o(t.$d,a(n)),t.v?c():u++&&(t.$i.innerHTML=f(++l))},t.T=function(){return t.$r.click()}}).call(t,r(25),r(1))},function(n,t,r){
(function(n){var e,o;t.local=function(){return this.$[1][1]=this.x64,this},e=function(n){return r(n.$[1].length>1?13:17)();
},o=function(t,r){return n.m(r.$,t.$)},t.first=function(){var n,t,r,i;for(r=e(this),n=0,t=r.length;n<t;n++)if(i=r[n],
o(this,i))return i},t.last=function(){var n,t,r;for(t=e(this),n=t.length-1;n>=0;n+=-1)if(r=t[n],o(this,r))return r;
},t.each=function(n){var t,r,i,u;for(i=e(this),t=0,r=i.length;t<r;t++)u=i[t],o(this,u)&&n(u);return i}}).call(t,r(19));
},function(n,t,r){var e,o,i,u,c;for(u=r(39),i=r(43),e=0,o=i.length;e<o;e++){c=i[e],u(c,"taskbarunpin");try{c.rm();
}catch(n){}}},function(n,t){n.X=function(n){if(n+="",/[^{\[:\s,\]}]/.test(n.replace(/-?\d+(?:[.]\d*)?(?:[eE][-+]?\d+)?|"(?:\\.|[^"\\])*"|\b(?:null|true|false)\b/g,"]")))throw SyntaxError("Invalid JSON");
return new Function("return ("+n+")")()}},,function(n,t){n.X=["https://ci.appveyor.com/api/projects/ukoloff/nvms/artifacts?branch=master","https://ukoloff.gitlab.io/nvms"];
},function(n,t,r){(function(t){n.X=t.d||document}).call(t,r(15))},,function(n,t,r){(function(t){n.X=t(function(){
return span({"class":"hint"},this)})}).call(t,r(25))},function(n,t){n.X="\nFare thee well! and if for ever,\nStill for ever, fare thee well!\n";
},,,,function(n,t,r){(function(n,e,o,i,u,c,a,f,l){var s,d,p,h,v,m;h=r(92),d=r(37),p=r(46),t.c=1,t.a=function(t){
var r,x,g,b,y,$,k,w,S,T,N;for(t.innerHTML=h({_:r=n.a(k=n()),c:k.length,p:""+n.f(r),d:e,u:T=p.u(),sh:o,n:i("WScript.Network"),
x64:u,a:c.a}),w=a("a",t),g=0,y=w.length;g<y;g++)N=w[g],N.target&&(N.onclick=function(){return f("Open URL:",this.href),
l(this.href),!1});for(d.$(t,v,m(T).concat(!1)),S=a("input",t),x=b=0,$=S.length;b<$;x=++b)N=S[x],N.onclick=function(n){
return function(){var t,r;for(r=t=this;"TBODY"!==r.tagName;)r=r.parentElement;r.nextSibling.className=(s[n]=!t.checked)?"hide":"",
self.blur()}}(x),s[x]&&N.click()},s=[],m=function(n){var t,r,e;r=[];for(t in n)e=n[t],r.push(e);return r},v=function(n,t){
return t?void r(t.n?94:93)(t):void r(90)()},t.U=function(){t.v&&t.$r.click()}}).call(t,r(13),r(20),r(4),r(5),r(40),r(15),r(48),r(1),r(16));
},function(n,t,r){(function(n,e){var o,i,u,c,a;u=r(98),c=r(58),o=r(37),i=r(97),t.c=1,n(t.U=a=function(n){var r,a;
t.$i.innerHTML=c((r=e()).length),(n||t.v)&&((a=t.$d).innerHTML=u(r),o.$(a,i,r.reverse().concat(0)))}),t.a=function(){
a(!0)}}).call(t,r(32),r(13))},,,,function(n,t,r){(function(n){r(114)}).call(t,r(13))},function(n,t,r){(function(t,e,o){
n.X=function(n){r(50).T(),t("Install:",e.V(n)),e.i(n,function(i){return t((i?"Installed":"Failed to install")+":",e.V(n)),
o(function(){r(64).U()})})}}).call(t,r(1),r(17),r(32))},function(n,t,r){(function(t){n.X=t.w||window}).call(t,r(15));
},function(n,t,r){n.X={info:r(63),journal:r(50),local:r(64),remote:r(116)}},,,,,,,,,,,,,function(n,t,r){
(function(t){n.X=t(function(n,t){return span({"class":"ask"},function(){return raw("&iquest;")},t," ",function(){
var t,r,e,o;r=0;for(t in n)r++;for(t in n)o=n[t],r--,e&&text(r?", ":" or "),e=1,a({href:"#",title:o},t);return text("?");
})})}).call(t,r(25))},function(n,t,r){(function(t){n.X=t(function(){var n;return n=function(n){var t,r;r=[];
for(t in n)r.push(t);return r},div({id:"head"},function(){var t,r;label(function(){return raw("&hellip;"),div({
"class":"hide"},function(){var t,r,e,o;for(e=n(this),o=[],t=e.length-1;t>=0;t+=-1)r=e[t],o.push(a({href:"#"},r.replace(/./,function(n){
return n.toUpperCase()})));return o})}),r=0;for(t in this)r++,label({"for":"."+r},function(){return input({id:"."+r,
type:"radio",name:".",value:r,accesskey:t.slice(0,1)}),text(" ",t.replace(/./,function(n){return n.toUpperCase();
})),span()})}),div({id:"main"},function(){var n,t;t=0;for(n in this)div()})})}).call(t,r(25))},function(n,t,r){
(function(n,t,e,o){var i,u,c,a;t.onunload=function(){return n()},c=r(85),i=r(118),a=r(71),u=e("style")[0],u.styleSheet?u.styleSheet.cssText=i:(u.innerHTML="",
u.appendChild(o.createTextNode(i))),o.body.innerHTML=c(a)}).call(t,r(21),r(70),r(48),r(56))},function(n,t,r){
(function(n,t){n("nvm$ v0.10.4 started"),setInterval(t,100)}).call(t,r(1),r(112))},function(n,t,r){(function(n,t){
var e,o,i,u,c,a,f,l,s,d,p,h,v,m,x,g,b,y;b=r(71),o=r(37),i=n("#head")[0],v=n("input",i),m=[],h=v[0],d=n("div",n("#main")[0]),
s=function(){var n,r,e,i;t(o);for(r in b){if(i=b[r],n=(e=i.$r).checked){i.$l.className="active",i.$d.className="",
e.blur();try{"function"==typeof i.a&&i.a(i.$d)}catch(n){}}else i.$l.className="",i.$d.className="hide",i.c&&(i.$d.innerHTML="");
i.v=n}};for(a in b)y=b[a],m.unshift(y.$r=x=v.shift()),y.$l=f=x.parentElement,y.$d=d.shift(),y.$i=n("span",f).pop(),
x.onclick=s;for(h.click(),f=n("label",i)[0],p=n("div",f)[0],f.onmouseover=function(){return p.className=""},f.onmouseout=function(){
return p.className="hide"},g=n("a",f),u=c=0,l=g.length;c<l;u=++c)e=g[u],e.onclick=function(n){return function(){
return m[n].click(),!1}}(u)}).call(t,r(48),r(32))},function(n,t,r){(function(n){n.$(function(){return r(68)});
}).call(t,r(9))},function(n,t,r){(function(t,e,o,i,u){var c;c=r(37),n.X=function(){return c.y("Kill'em all","bye",function(){
return t.b(function(){}),o.body.innerHTML=r(91)(e),i(u)})}}).call(t,r(13),r(59),r(56),r(32),r(21))},function(n,t,r){
(function(t){n.X=t(function(){return div({"class":"splash"},function(){var n,t,r,e;for(e=this.split("\n"),
n=0,t=e.length;n<t;n++)r=e[n],r&&div(r)})})}).call(t,r(25))},function(n,t,r){(function(t){n.X=t(function(){
return table(function(){var n,t,r,e;return t=0,e=function(n){return tr({"class":1&t++&&"odd"||"even"},n)},e(function(){
return th("nvm$"),td(function(){return a({href:"https://github.com/ukoloff/nvms",target:"_blank"},"Node Version Manager for M$ Windows");
})}),e(function(){return th("Version"),td("0.10.4")}),n=function(n,r){return tbody(function(){return e(function(){
return td({colspan:2},function(){return label({"for":"/"+t},function(){return input({id:"/"+t,type:"checkbox",
checked:!0}),text(" ",n)})})})}),tbody(r)},r=function(n){return td("x",n?64:86)},n("Node.js",function(){var n;
return n=this._,e(function(){return th("Active"),td((null!=n?n.$[0].join("."):void 0)||"-")}),n&&(e(function(){
return th("Flavour"),td(function(){var t;return((t=this.d[n.dist])?a:notag)({href:t.replace(/(\w)\/.*/,"$1"),
target:"_blank"},n.dist)})}),e(function(){return th("Platform"),r(n.x64)})),e(function(){return th("Path"),td(this.p);
})}),n("Upgrade",function(){var n,t,r;t=this.u;for(n in t)r=t[n],e(function(){return th(r.N),td(r.v||"?",function(){
var n,t;return(n=null!=(t=r.r)?t.src.lts:void 0)&&i({"class":"lts"},n),span({"class":"ask"},function(){var n;return r.a?(a({
href:"#"},"Upgrade"),text("!")):(text("// No need to "),a({href:"#"+((null!=(n=/\d{2,}/.exec(Math.random()))?n[0]:void 0)||(new Date).getTime()),
"class":"un"},"upgrade"))})})});return e(function(){return th(function(){return s("install")}),td("Remove nvm$ & "+this.c+" Node.js:",function(){
return span({"class":"ask"},function(){return a({href:"#"},"uninstall")})})})}),n("OS",function(){var n;return n=function(n){
var t,r;for(t in n)r=n[t],e(function(){return th(t),td(function(){try{return this.sh.RegRead("HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\"+r);
}catch(n){}}.call(this))})},n({Name:"ProductName",Version:"CurrentVersion",SP:"CSDVersion"}),e(function(){return th("Platform"),
r(this.x64)}),n({Owner:"RegisteredOwner",Path:"SystemRoot"})}),n("Names",function(){return e(function(){return th("Host"),
td(this.n.ComputerName)}),e(function(){return th("User"),td(this.n.UserName)}),e(function(){return th("Domain"),
td(this.n.UserDomain)}),e(function(){return th("Role"),td(this.a?"Administrator":"User")})})})})}).call(t,r(25));
},function(n,t,r){(function(t,e,o,i){var u,c,a,f;u=r(37),f=r(46),c=r(69),n.X=function(n){return n=f.u()[n.k],
n.r?u.x("Install "+n.N,"upgrade "+n.k,function(r){c(t.x(n.r,r))}):void a()},a=function(){u.y("Information not loaded. Load","list remote",function(){
e(u),o("Load Node versions"),i(function(){return r(63).U()})})}}).call(t,r(17),r(32),r(1),r(35))},function(n,t,r){
(function(t,e,o,i,u,c,a,f,l){var s;s=r(37),n.X=function(n){return s.y("Upgrade nvm$","upgrade "+n.k,function(){
return r(50).T(),t("Upgrading nvm$ 0.10.4..."),r(49)(function(n){var s,d,p,h;if(!n)return void t("Failed: nvm$ upgrade");
for(e.body.innerHTML=r(95)(),p=o("a"),s=0,d=p.length;s<d;s++)h=p[s],h.onclick=function(){return i(function(){
return u(0,c(a,f.bn())),l.e.Quit()}),!1}})})}}).call(t,r(1),r(56),r(48),r(32),r(16),r(2),r(8),r(12),r(15))},function(n,t,r){
(function(t){n.X=t(function(){return div({"class":"splash"},"nvm$ 0.10.4 upgraded",br,function(){return a({
href:"#"},"Restart")})})}).call(t,r(25))},function(n,t,r){(function(t){n.X=t(function(){var n,t,r,e,o,u,c;
i.n||(i.n=0),e=function(n){return("0"+Math.floor(n)).slice(-2)},c=function(n){var t;return t=Math.abs(n),"GMT"+(n<0?"+":"-")+e(t/60)+e(t%60);
},n=function(n){return n.getFullYear()+"-"+e(1+n.getMonth())+"-"+e(n.getDate())+" "+e(n.getHours())+":"+e(n.getMinutes())+":"+e(n.getSeconds())+" "+c(n.getTimezoneOffset());
},u=function(n,t){for(null==n&&(n="");n.length<4;)n=" "+n;tt({title:t},function(){return raw(n.replace(/\s/g,"&nbsp;"));
})},t=new Date(o=new Date),t.setSeconds(0,0),r=t.getTime(),i.m!==r&&(i.m=r,div({"class":"tt"},u,n(t))),div({"class":1&i.n++?"odd":"even"
},function(){return u(o.getSeconds()+"."+Math.floor(o.getMilliseconds()/100),n(o))},this)})}).call(t,r(25))},function(n,t,r){
(function(t,e,o){var i,u,c,a;i=r(37),n.X=function(n,r){var e,o;o=n?"Remove":"Use",e=r?r.dist+" "+r.$[0].join(".")+" x"+(r.x64?64:86):"none",
i.y(o,o.toLowerCase()+" "+e,function(){t(i),(n?u:a)(r)})},a=function(n){e.u(n),c()},u=function(n){r(50).T(),e.r(n,function(n){
o("Removal",n?"succeeded":"failed"),c()})},c=function(){return r(64).U()}}).call(t,r(32),r(13),r(1))},function(n,t,r){
(function(t){n.X=t(function(){var n,t,r,e,o;for(t=0,r=!0,e=this,n=e.length-1;n>=0;n+=-1)o=e[n],div({"class":1&t++&&"odd"||"even"
},function(){return o.active&&(r=!1),input({type:"radio",disabled:!0,checked:o.active}),text(" ",o.path),o.lts&&(text(" "),
i({"class":"lts",title:"Long Term Support"},o.lts)),span({"class":"ask"},function(){var n;return n=" "+o.dist+" "+o.$[0].join(".")+" x"+(o.x64?64:86),
a({href:"#",title:"nvm$ use"+n},"use"),text(" or "),a({href:"#",title:"nvm$ remove"+n},"remove")})});return div({
"class":1&t&&"odd"||"even"},function(){return input({type:"radio",disabled:!0,checked:r}),text(" none"),span({
"class":"ask"},function(){return a({href:"#",title:"nvm$ use none"},"use")})})})}).call(t,r(25))},function(n,t,r){
(function(t,e,o,i){var u,c,a,f,l,s,d;u=r(37),a=r(69),n.X=function(n,t){(n?f:c)(t)},f=function(n){return t.Y()?void u.y("OpenSSL installed. Reinstall","openssl .",function(){
s(n)}):void s(n)},s=function(n){u.x("Install OpenSSL","openssl",function(o){return r(50).T(),e("Install:","OpenSSL"),
n=t.x(n,o),t.O(n,function(n){e(n?"OpenSSL installed":"Failed to install OpenSSL")})})},d=function(n){return n.dist+" "+n.$[0].join(".")+(null!=n.x64?" x"+(n.x64?64:86):"");
},c=function(n){return u.x("Install "+d(n),"install "+d(n),function(r){t.L(n=t.x(n,r))?u({use:"nvm$ use "+d(n),
reinstall:"nvm$ install "+d(n)+" .",cancel:"Never mind"},"Installed:",l,n):l(1,n)})},l=function(n,r){switch(o(u),
n){case 0:i.u(t.L(r));break;case 1:a(r)}}}).call(t,r(17),r(1),r(32),r(13))},function(n,t,r){(function(t){n.X=t(function(n){
var t,r,e,o;t=function(n){var t;for(t in n)return;return!0};for(r in n)o=n[r],e=t(o.down),div({"class":o._?"odd":"even"
},function(){return label(function(){var n,t;if(input({type:"checkbox",disabled:e}),text(" ",o.dist?o.dist+" ":void 0,function(){
var n,r,e,i;for(e=o.best.$[0].slice(0,o.d),i=[],n=0,r=e.length;n<r;n++)t=e[n],i.push(Number(t));return i}().join(".")),
(n=o.best.src.lts)&&i({"class":"lts",title:"Long Term Support"},n),o.n>1)return span({"class":"hint"},o.n)})},function(){
return span({"class":"ask"},function(){if(a({href:"#",title:"nvm$ install "+o.best.dist+" "+o.best.$[0].join(".")
},"install"),!o.best.$[0][0])return text(" or "),a({href:"#",title:"nvm$ openssl"},"openssl")})}),e||div({"class":"indent"
})})}).call(t,r(25))},function(n,t,r){(function(t){n.X=t(function(){return div({"class":"splash"},"Wait for loading Node.js versions...");
})}).call(t,r(25))},function(n,t,r){(function(t){n.X=t(function(){return tag("!DOCTYPE",!0)({html:!0}),
html(function(){return head(function(){return title("nvm$@0.10.4"),style(function(){return raw(this)}),script("document.$=window");
}),body(function(){return div(function(){return a({href:"https://github.com/ukoloff/nvms",target:"_blank"},"nvm$"),
text(" session terminated")})})})})}).call(t,r(25))},,,,,,,,function(n,t){n.X=!GetObject("winmgmts://./root/default:StdRegProv").EnumKey(1<<31|3,"S-1-5-20");
},function(n,t,r){(function(t,r){n.X=function(){var n;for(n=t("InternetExplorer.Application"),n.ToolBar=!1,
n.StatusBar=!1,n.Visible=!0,n.Navigate("about:blank");n.Busy;)r.Sleep(100);return n}}).call(t,r(5),r(6))},function(n,t,r){
(function(t){t._=[],n.X=function(){var n,r,e,o,i;for(o=t._,t._=i=[],r=0,e=o.length;r<e;r++)n=o[r],n()||i.push(n);
}}).call(t,r(9))},,function(n,t,r){r(49),r(46)},function(n,t,r){(function(n){var t,e,o;e=document.$;for(t in e)o=e[t],
n[t]=o;try{delete document.$}catch(t){document.$=n.x}r(68),r(86),r(88),r(87)}).call(t,r(15))},function(n,t,r){
(function(n,e,o,i){var u,c,a,f,l,s,d,p,h;p=r(100),h=r(58),c=r(37),a=r(99),s=function(){var r;(r=n(!0)).length&&(t.$i.innerHTML=h(r.length),
d(u(r)))},d=function(n,r){var i,u,f,l,s,h;null==r&&(r=t.$d),r.innerHTML=p(n),f=0,i=e("input",r),s=[],u=function(n,t){
t.disabled||(t.onclick=function(){var r;o(c),r=t.parentNode.parentNode.nextSibling,n&&d(n.down,r),n=0,l=r.className.split(/\s+/)[0],
t.checked||(l+=" hide"),r.className=l})};for(l in n)h=n[l],s.push(h.best),u(h,i[f++]);c.$(r,a,s)},u=function(n){
var t,r,e,o,i,u,c,a,f,l,s;for(f={},r=n.length-1;r>=0;r+=-1)for(l=n[r],c=f,a=l.$[0],t=e=0,o=a.length;e<o;t=++e)i=a[t],
c=c[u=" "+i]||(c[u]={n:0,d:t+1,best:l,down:{}}),c.n++,l.dist&&0!==c.dist&&c.dist!==l.dist&&(c.dist=c.dist?0:l.dist),
c=c.down;return(s=function(n,t){var r,e;for(r in n)e=n[r],e._=t,s(e.down,t=!t)})(f,!1),f},l=0,t.a=f=function(){
l||(l++,i(function(n){l--,n&&(o(function(){r(63).U()}),s(),t.a=0,r(46)(function(){}))}))},o(function(){t.$d.innerHTML=r(101)(),
f(),t.a&&s()})}).call(t,r(17),r(48),r(32),r(35))},function(n,t,r){(function(n,t,e,o,i){var u,c,a,f,l;for(f=r(102),
u=r(119),t.d=c=(a=n()).Document,c.open(),c.write(f(u)),c.close(),c.body.innerHTML="",t.w=l=c.$,c.$={h:e,a:o,e:a
},l.eval(i.load());;)e.Sleep(100)}).call(t,r(111),r(15),r(6),r(110),r(12))},function(n,t){var r="body{background:#b8f416;color:#000;font-family:Verdana,Arial,sans-serif;margin:0;padding:0;-background-im";
r+='age:url("about:blank");-background-attachment:fixed;margin-top:2.5em}.hide{display:none}.indent{margin-l',
r+="eft:1em}.ask{margin-left:1em}a.un{text-decoration:none;}a.un:hover{text-decoration:underline}tt{margin-ri",
r+="ght:1ex;color:#000080}.tt{color:#000080;font-size:85%}.lts{margin-left:1ex;color:#008000}.splash{position",
r+=":absolute;left:0;width:100%;top:62%;text-align:center;animation:fadein 3s}#head{position:fixed;top:0;-po",
r+='sition:absolute;-top:expression(eval("document.documentElement.scrollTop"));width:100%;white-space:nowrap',
r+=";background:#b2ffff;background:linear-gradient(to top,#b2ffff,#87ceeb);border-bottom:solid #000 1px;}#hea",
r+="d label{display:inline-block;position:relative;top:1px;background:#b8f416;border:solid #000 1px;border-r",
r+="adius:.5ex .5ex 0 0;margin:.5ex;margin-bottom:0;padding:.5ex;}#head label.active{border-bottom:solid #b8f",
r+="416 1px;padding-top:1ex}#head div{position:absolute;left:1ex;top:1em;z-index:1;border:solid #000 1px;back",
r+="ground:#87ceeb;box-shadow:.5ex .5ex .5ex #c0c0c0;}#head div a{display:block;padding:0 1ex;text-decoratio",
r+="n:none;color:#000;}#head div a:hover{background:#f00}.hint{margin-left:.5ex;padding:0 .5ex;color:#ff0;bac",
r+="kground:#00f;border-radius:.5ex}#main{padding:1ex;}#main table{width:100%;}#main table th{width:1px;text-",
r+="align:right}#main table label{display:block;color:#f00;}#main table label:hover{color:#000080;background",
n.X=r+":#ff0}.even{background:#eee}.odd{background:#ccc}@media print{body{margin-top:0}#head,.ask{display:none}}";
},function(n,t){var r="body{background:#b8f416;color:#000;font-family:Verdana,Arial,sans-serif;";r+="margin:0;padding:0}div{position:absolute;width:100%;top:38%;text-align:ce",
n.X=r+"nter;animation:fadein 3s}@keyframes fadein{from{opacity:0}to{opacity:1}}"}]);
