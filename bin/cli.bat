0</*! ::
@echo off
cscript //nologo //e:javascript "%~f0" %*
goto :EOF */0;
!function(n){function t(r){if(e[r])return e[r].exports;var i=e[r]={exports:{},id:r,loaded:!1};return n[r].call(i.exports,i,i.exports,t),
i.loaded=!0,i.exports}var e={};return t.m=n,t.c=e,t.p="",t(0)}([function(n,t,e){(function(n){n(function(){return e(55)})}).call(t,e(16));
},function(n,t,e){(function(t){n.exports=t("Scripting.FileSystemObject")}).call(t,e(3))},function(n,t,e){(function(t){var e=[].slice;
n.exports=function(){var n;return n=1<=arguments.length?e.call(arguments,0):[],t.Echo(n.join(" "))}}).call(t,e(5))},function(n,t,e){
(function(t){n.exports=function(n){return t.CreateObject(n)}}).call(t,e(5))},function(n,t,e){(function(t){n.exports=t("WScript.Shell");
}).call(t,e(3))},function(n,t){n.exports=WScript},function(n,t,e){(function(t,e){n.exports=t.BuildPath(e.SpecialFolders("AppData"),"nvm$");
}).call(t,e(1),e(4))},function(n,t,e){(function(t,e,r,i){var o,u,s,l,a,c;a="junction.exe",u=function(){return t.BuildPath(e,a)},n.exports=c=function(n){
return null==n&&(n="none"),r(n),s()&&o(),i.run('"'+u()+'" "'+l()+'" "'+t.BuildPath(e,n)+'"',0,!0)},c.drop=o=function(){return i.run('"'+u()+'" -d "'+l()+'"',0,!0);
},c.$=l=function(){return t.BuildPath(e,"this")},c._=s=function(){return t.FolderExists(l())}}).call(t,e(1),e(6),e(18),e(4))},function(n,t,e){
(function(t){n.exports=function(n){var e;for(e=[];!t.FolderExists(n);)e.push(n),n=t.GetParentFolderName(n);for(;n=e.pop();)t.CreateFolder(n);
}}).call(t,e(1))},function(n,t,e){(function(t){n.exports=function(n){return null==n&&(n=0),t.Quit(n)}}).call(t,e(5))},function(n,t,e){
(function(t,e,r,i){var o,u,s,l,a,c;u=function(n,t,e){this.$=[n||[],[t]],this.x64=e},u.prototype=t,l=function(){var n,t;t=[];for(n in e)t.push(n);
return t},n.exports=a=function(n){var t,e,i,o,s,a,f,h,d,v;for(a=new r({$:l()}),o=0,f=n.length;f>o;o++)e=n[o],(v=a.$(e))?i=v:null!=(s=c(e))?t=s:/^\d/.test(e)&&(d=function(){
var n,t,r,i;for(r=e.split(/\D+/),i=[],n=0,t=r.length;t>n;n++)h=r[n],h.length&&i.push(Number(h));return i}());return new u(d,i,t)},
a.ctr=u,a.x64=c=function(n){return/^x(\d)/.test(n)?"6"===RegExp.$1:void 0},s=function(n){return"["+n.join("|")+"]"},a.$6=o=function(){
var n;return n=["x86","x64"],s(i?n.reverse():n)}(),a.$=s(l())+" [n[.n[.n]]] "+o}).call(t,e(52),e(22),e(28),e(27))},function(n,t,e){
(function(t,e){var r,i;r="Msxml2.ServerXMLHTTP\nMsxml2.XMLHTTP\nMicrosoft.XMLHTTP".split(/\s+/),i=function(){var n,e,i;for(n=0,e=r.length;e>n;n++){
i=r[n];try{return t(i)}catch(o){}}throw Error("AJAX not supported!")},n.exports=function(n,t){var r,o;if(o=i(),o.open("GET",n,!1),
o.send(null),200!==o.status)throw Error("HTTP error "+o.status+": "+o.statusText);return t?(o=o.responseBody,"string"==typeof t&&(r=e(),
r.Write(o),r.SaveToFile(t,2),r.Close()),o):o.responseText}}).call(t,e(3),e(12))},function(n,t,e){(function(t){n.exports=function(n,e){
var r;return r=t("ADODB.Stream"),r.Type=1,r.Open(),r}}).call(t,e(3))},function(n,t){n.exports=function(n,t){var e,r,i;for("function"!=typeof t&&(i=[]),
r=0,e=new Enumerator(n);!e.atEnd();){if(i)i.push(e.item());else if(!1===t(e.item(),r++))return;e.moveNext()}return i}},function(n,t,e){
(function(t,e,r){t(n.exports=e.BuildPath(r,"that"))}).call(t,e(8),e(1),e(6))},function(n,t,e){(function(n,e){var r,i;r=n("Msxml2.DOMDocument").createElement("tmp"),
r.dataType="bin.hex",t.enc=function(n){try{return r.nodeTypedValue=n,r.text}finally{r.text=""}},t.dec=function(n){try{return r.text=n,
r.nodeTypedValue}finally{r.text=""}},t.rev=i=function(n){return n.match(/../g).reverse().join("")},t.i=function(n){return parseInt(i(e.enc(n)),16);
}}).call(t,e(3),e(15))},function(n,t,e){(function(t,e){n.exports=function(n){var r,i;try{return n()}catch(i){return r=i,t("ERROR:",r.message),
e(1)}}}).call(t,e(2),e(9))},function(n,t){var e,r,i,o,u;u=function(n,t,e){var r,i,o,u;for(r=i=0,o=t.length;o>i;r=++i)if(u=t[r],null!=u&&!e(n[r],u))return!1;
return!0},n.exports=o=function(n,t){return u(n,t,function(n,t){return u(n,t,function(n,t){return n===t})})},i=function(n,t){return n===t?0:t>n?-1:1;
},r=function(n,t,e){var r,i,o,u;for(r=0,i=n.length,o=t.length;;){switch(Number(i>r)+2*Number(o>r)){case 0:return 0;case 1:return 1;
case 2:return-1;default:if(u=e(n[r],t[r]))return u}r++}},o.cmp=e=function(n,t){return r(n,t,function(n,t){return r(n,t,i)})},o.cmp$=function(n,t){
return e(n.$,t.$)}},function(n,t,e){(function(t,e,r,i){var o,u;n.exports=o=function(n){var o;return t(o=e.BuildPath(r,n)),e.CreateTextFile(e.BuildPath(o,"nvm$.bat"),!0).WriteLine('@"%~dp0..\\cli.bat" %*'),
e.FileExists(e.BuildPath(r,u))&&e.CreateTextFile(e.BuildPath(o,"openssl.bat"),!0).WriteLine('@"%~dp0..\\'+u+'" %*'),i(o)},o.openssl=u="openssl-cli.exe";
}).call(t,e(8),e(1),e(6),e(23))},function(n,t,e){(function(t,r,i){var o,u,s,l=[].slice;s=function(){return"<0.5.0>"},o=function(n){
return e(56)[n]},n.exports=u=function(){var n,e,i,u,a,c;if(i=arguments[0],e=2<=arguments.length?l.call(arguments,1):[],o(i)){for(e=[t.ScriptFullName,"version",s(),i].concat(e),
u=a=0,c=e.length;c>a;u=++a)n=e[u],e[u]='"'+n+'"';return r.Run(e.join(" "),0)}},u.$=function(n){var t;if(s()===n.shift()&&(t=o(n.shift())))return t.$(n),
i()}}).call(t,e(5),e(4),e(9))},function(n,t,e){(function(t,e){var r,i,o,u;u="Path",i=t.Environment("User"),o=function(){return i(u).split(";");
},r=new Function("o,k,v","o(k)=v"),n.exports=function(n){var t,s;return t=e.$(),s=function(){var n,e,r,i;for(r=o(),i=[],n=0,e=r.length;e>n;n++)s=r[n],
s!==t&&i.push(s);return i}(),n&&s.unshift(t),r(i,u,s.join(";"))}}).call(t,e(4),e(7))},function(n,t,e){(function(t,e,r,i,o,u){var s,l,a,c,f,h,d,v,p;
l=[],s=new t,v={},n.exports=d=function(n){var t,e,r;for(r in n)e=n[r],e.name=r,e.alias=t=e.alias?e.alias.split(/\s+/).sort():[],s.add({
$:e.name,_:t}),v[e.name]=e,l.push(e);return c()},d.all=l,d.find=f=function(n){return v[s.$(n)]},a=function(){var n,t,o,u;u={},(o=e())&&(u.upgrade="New version v"+o),
(o=r.$())&&(u.install="Node.js version v"+o);for(n in u)o=u[n],t||(i(),t=!0),i("// Update: "+o+" available. Upgrade with: nvm$ "+n);
},c=function(){var n;return(n=f(o[0]))||(p(),a(),u(1)),n.cmd.call(n,o.slice(1)),a()},d.header=h=function(){return i("nvm$ v0.5.0: Node Version Manager for M$ Windows\n");
},p=function(){return h(),i("Run nvm$ help for instructions.")},d.a=function(){var n,t,e;d={},t=s._();for(n in t)e=t[n],d[n]=v[e];
return d}}).call(t,e(28),e(31),e(30),e(2),e(26),e(9))},function(n,t,e){n.exports={node:"https://nodejs.org/dist/",iojs:"https://iojs.org/dist/"
}},function(n,t,e){(function(t,e,r,i){var o;n.exports=function(n){var u,s,l;if(t.FileExists(s=t.BuildPath(n,"node.exe"))&&!t.FileExists(u=t.BuildPath(n,"nodew.exe")))return l=e(),
l.LoadFromFile(s),o(l)?(r("Generating",u),l.Write(i.dec("02")),l.SaveToFile(u)):r("Invalid executable:",s),l.Close()},o=function(n){
var t,e,r;return e=function(t){return i.i(n.Read(t))},23117!==e(2)||(n.Position=60,t=e(4),t>=n.size||(n.Position=t,17744!==e(4)||(n.Position=t+20,
240!==(16|e(2))||(e(2),779!==(768|e(2))||(n.Position=r=t+92,3!==e(2))))))?void 0:n.Position=r}}).call(t,e(1),e(12),e(2),e(15))},function(n,t,e){
(function(t){var e;n.exports=e=function(n){return"."===n[n.length-1]?(n.pop(),!0):(e.cmd="`nvm$ "+t.join(" ")+" .`",!1)}}).call(t,e(26));
},function(n,t,e){(function(t,e,r,i,o,u,s,l){var a;n.exports=function(){var n,l,c,f,h;return f="https://github.com/ukoloff/nvms/archive/dist.zip",
h=t.BuildPath(e,"nvm$.zip"),r("Fetching:",f),i(f,h),r("Extracting..."),l=o("Shell.Application"),h=l.NameSpace(h),t.FolderExists(c=t.BuildPath(e,"nvm$"))&&t.DeleteFolder(c),
u(c),l.NameSpace(c).copyHere(h.Items(),0),(n=a(t.GetFolder(c)))?s.Run('"'+n+'"'):void r("Setup not found. Exiting")},a=function(n){
var e;return e=0,l(n.Files,function(n){return"bat"===t.GetExtensionName(n.Name)?(e=n.Path,!1):void 0}),e?e:(l(n.SubFolders,function(n){
var t;if(t=a(n))return e=t,!1}),e)}}).call(t,e(1),e(14),e(2),e(11),e(3),e(8),e(4),e(13))},function(n,t,e){(function(t,e){n.exports=t(e.Arguments);
}).call(t,e(13),e(5))},function(n,t,e){(function(t){n.exports=function(){try{return 0>t.RegRead("HKLM\\HARDWARE\\DESCRIPTION\\System\\CentralProcessor\\0\\Identifier").indexOf("x86");
}catch(n){}}()}).call(t,e(4))},function(n,t,e){(function(t){var e;n.exports=e=function(n){n&&this.add(n)},e.prototype=t}).call(t,e(45));
},function(n,t,e){(function(t,e,r,i,o,u,s){var l,a;n.exports=function(){var n,u;return n=[],u=a(t.$()),e(r.GetFolder(i).SubFolders,function(t){
return/^(\w+)-\D*(\d+(?:[.]\d+)*)-x(\d+)/.test(t.Name)?n.push(new l(u?r.FileExists(r.BuildPath(t.Path,u.r)):void 0)):void 0}),u&&r.DeleteFile(u.p),
n.sort(o.cmp$)},a=function(n){var t,e,i;if(r.FolderExists(n))for(t=16;--t;)if(!r.FileExists(e=r.BuildPath(n,i=u(15))))try{return r.CreateTextFile(e,!0).Close(),
{p:e,r:i}}catch(o){return}},l=function(n){var t,e,r,i;return this.path=RegExp.$_,this.dist=t=RegExp.$1,r=function(){var n,t,r,i;for(r=RegExp.$2.split("."),
i=[],n=0,t=r.length;t>n;n++)e=r[n],i.push(Number(e));return i}(),this.x64=i=/^6/.test(RegExp.$3),this.$=[r,[t,i]],this.active=n},
l.prototype=s}).call(t,e(7),e(13),e(1),e(6),e(17),e(50),e(48))},function(n,t,e){(function(t,e,r,i,o,u,s,l){var a,c,f,h,d,v;n.exports=d=function(){
var n,s,l,f,d,p,m;l=[];for(s in t)p=t[s],c(n=h(s))?f=e.OpenTextFile(n).ReadAll():(d=p+"index.tab",r("Fetching:",d),f=i(d),e.CreateTextFile(n,!0).WriteLine(f)),
f=function(){var n,t,e,r;for(e=o(f),r=[],n=0,t=e.length;t>n;n++)m=e[n],v(m)&&r.push(new a(m,s));return r}(),l=l.concat(f);return l.sort(u.cmp$);
},h=function(n){return e.BuildPath(s,n+".tsv")},c=function(n){return e.FileExists(n)&&new Date-e.GetFile(n).DateLastModified<864e5;
},f=function(){var n;for(n in t)if(!c(h(n)))return;return!0},v=function(n){return~n.files.indexOf("-msi")},d.$=function(){var n;if(f()&&(n=d(),
n&&n.length&&(n=n[n.length-1],!n.local("*"))))return n.$[0].join(".")},a=function(n,t){var e,r;e=function(){var t,e,i,o;for(i=n.version.split(/\D+/),
o=[],t=0,e=i.length;e>t;t++)r=i[t],r.length&&o.push(Number(r));return o}(),this.$=[e,[t]],this.dist=t,this.src=n},a.prototype=l}).call(t,e(22),e(1),e(2),e(11),e(51),e(17),e(14),e(49));
},function(n,t,e){(function(t,e,r,i,o,u,s){var l,a,c,f,h,d,v,p,m,x,g,$,F;n.exports=c=function(){var n;return a()&&t("upgrade"),n=x(),
n&&v(n,d("0.5.0"))?n.$[0].join("."):void 0},c.$=h=function(){return a()?($(),F(p())):void 0},m=function(){return e.BuildPath(r,".v");
},l=function(){return"https://github.com/ukoloff/nvms".replace(/\/\//,"$&api.").replace(/\w\//,"$&repos/")+"/tags?per_page=8"},g=function(){
return i(o(l()))},d=function(n){var t;return t=function(){var e,r,i,o;for(i=n.split(/\D+/),o=[],e=0,r=i.length;r>e;e++)t=i[e],t.length&&o.push(Number(t));
return o}(),new u.ctr(t)},v=function(n,t){return 0<s.cmp$(n,t)},p=function(){var n,t,e,r;for(t=0,e=g(),n=e.length-1;n>=0;n+=-1)r=e[n],
r=d(r.name),t&&!v(r,t)||(t=r);return t?t.$[0].join("."):void 0},F=function(n){var t;return t=e.CreateTextFile(m(),!0),t.WriteLine((n||"")+"\n\nStart file from non-word character (eg # or ! or ; etc)\nto disable autodetection of nvm$ new version available."),
t.Close()},x=function(){var n,t;return t="",e.FileExists(n=m())&&(t=e.OpenTextFile(n).ReadLine()),t=t.replace(/^\s+/,"").split(/\s+/,2).shift(),
/^\W/.test(t)?void 0:d(t)},$=function(){var n,t,r;return e.FileExists(n=m())?(t=e.OpenTextFile(n),r=t.ReadAll(),t.Close(),t=e.CreateTextFile(n,!0),
t.Write(r),t.Close()):F()},f=function(){var n;return e.FileExists(n=m())?new Date-e.GetFile(n).DateLastModified>2592e5:!0},a=function(){
return f()&&x()}}).call(t,e(19),e(1),e(14),e(46),e(11),e(10),e(17))},function(n,t,e){(function(n,e){t.title="Show available commands abbreviations",
t.help=t.cmd=function(){var t,r,i,o;n("Available abbreviations:"),r=e.a(),i=[];for(t in r)o=r[t],i.push(n("  "+t+"	"+o.name+"	"+o.title));
return i}}).call(t,e(2),e(21))},function(n,t,e){(function(n,e,r,i,o,u){t.alias="boeing",t.title="Uninstall nvm$",t.args="[.]",t.help="Totally remove nvm$ manager and all installed Node.js versions.\n\nWithout trailing dot command does nothing.",
t.cmd=function(t){return n(t)||(e("\nSay "+n.cmd+" to really remove everything."),r(1)),e("Removing from PATH"),i(),e("Removing files..."),
o.drop(),u("bye",""),e("\nFare thee well! and if for ever,\nStill for ever, fare thee well!\n")}}).call(t,e(24),e(2),e(9),e(20),e(7),e(19));
},function(n,t,e){(function(n,e){var r,i;t.title="Show help for all or individual commands",t.args="[command]",t.help="Shows information on individual commands or nvm$ itself.",
t.cmd=function(t){var e;return n.header(),(e=n.find(t[0]))?r(e):i()},r=function(n){return e("nvm$ "+n.name+": "+n.title),n.alias.length&&e("\nAlias: "+n.alias.join(", ")),
e("\nUsage: nvm$ "+n.name+" "+(n.args||"")+"\n"),"function"==typeof n.help?n.help():n.help?e(n.help):void 0},i=function(){var t,r,i,o;
for(e("Usage: nvm$ <command> [parameter(s)]\n\nCommands:"),i=n.all,t=0,r=i.length;r>t;t++)o=i[t],e("	"+o.name+"	"+o.title);return e("\nCommand names may be unambiguously abbreviated (See: nvm$ a).\n\nRun nvm$ help <command> for more instructions.");
}}).call(t,e(21),e(2))},function(n,t,e){(function(n,e,r){t.title="Install some version of Node.js",t.args=n.$+" [.]",t.help="Install specified Node.js version (latest matching filter).\n\nUse `nvm$ ls remote` to see available Node.js versions.\n\nIf specified version is already installed, it will be used\nwithout installation. To force reinstallation - add . as last parameter.",
t.cmd=function(t){var i,o,u,s;if(o=e(t),i=n(t),!(s=i.last()))throw Error("Specified Node.js version not found!");return!o&&(u=s.local(i.x64))?(r(u.path+" is installed. To reinstall say: "+e.cmd),
void u.use()):s.install(i.x64)}}).call(t,e(10),e(24),e(2))},function(n,t,e){(function(n,e,r){var i,o,u,s,l;t.alias="list",t.title="List available Node.js versions",
t.args="[remote] "+n.$,t.help="List already installed or all available to install Node.js versions",t.cmd=function(n){return/^r/i.test(n[0])?l(n.slice(1)):i(n);
},i=function(t){var r,i;return r=0,i=n(t).local().each(function(n){return r++,e(n.active?">":"-",n.path)}).length,e("Listed: "+r+" of "+i+" installed Node.js version(s)");
},l=function(t){var i,l,a,c,f,h,d;for(c=[],l=0,f=0,h=n(t).each(function(n){return f++,o(n),l&&!r.cmp(l.major,n.major)?l.minors.push(n.minor):c.push(l=n);
}).length,i=0,a=c.length;a>i;i++)d=c[i],e("- ["+d.minors.length+"]	"+d.dist+" "+d.src.version+u(s(d.minors)));return e("Listed: "+c.length+" line(s) of "+f+" version(s) of "+h+" total");
},o=function(n){var t;return n.major=t=n.$2(),n.minors=[n.minor=t[0].pop()]},s=function(n){var t,e,r,i,o;for(o=[],t=0,r=n.length;r>t;t++)i=n[t],
e&&e.b+1===i?e.b=i:o.push(e={a:i,b:i});return o},u=function(n){var t,e;return e=function(){var r,i,o;for(o=[],t=r=0,i=n.length;i>r;t=++r)e=n[t],
o.push(""+(t?e.a:"")+(e.b>e.a?" - "+e.b:""));return o}(),e.join(", ")}}).call(t,e(10),e(2),e(17))},function(n,t,e){(function(n){t.title="Install OpenSSL utility",
t.args=n.$6,t.help="Install openssl.exe precompiled for Node.js project",t.cmd=function(t){var e;if(e=new n.ctr([0]).last(),!e)throw Error("Appropriate Node.js version not found!");
return e.openssl(n.x64(t[0]))}}).call(t,e(10))},function(n,t,e){(function(n,e,r){var i,o,u,s;t.alias="uninstall drop",t.title="Remove one or several Node.js version(s)",
t.args="[all] "+n.$+" [.]",t.help="Remove single specified Node.js version or all version matching filter.\n\nWithout trailing dot command only shows candidate(s) to uninstall.\n\nWith trailing dot removing will proceed without additional confirmations!",
o=!1,t.cmd=function(n){return o=e(n),/^a/i.test(n[0])?i(n.slice(1)):u(n),o?void 0:r("\nTo actually uninstall say "+e.cmd)},i=function(t){
var e;return e=0,n(t).local().each(function(n){return s(n),e++}),o?r("\nNode.js version(s) found & uninstalled:",e):void 0},u=function(t){
var e;if(!(e=n(t).local().first()))throw Error("Specified Node.js version not installed!");return s(e)},s=function(n){return o?n.drop():void r("Would remove:",n.path);
}}).call(t,e(10),e(24),e(2))},function(n,t,e){(function(n){t.title="Upgrade nvm$ itself",t.help="Download and install latest version of nvm$",
t.cmd=n}).call(t,e(25))},function(n,t,e){(function(n,e,r){t.title="Use (set default) already installed Node.js version",t.args="[ none | "+n.$+" ]",
t.help="Make specified Node.js version active for all processes of current user.\n\nOnly installed versions are used. Use `nvm$ install` for new ones.\n\nSay `nvm$ use none` to temporarily disable nvm$.",
t.cmd=function(t){var i;if("none"===t[0])return e("Temporary disabling","nvm$"),r();if(i=n(t).local().last())return i.use();throw Error("Specified Node.js version not installed!");
}}).call(t,e(10),e(2),e(7))},function(n,t,e){(function(n,e){t.title="Show version",t.help="Displays nvm$ version.",t.cmd=function(t){
return n("0.5.0"),e.$(t)}}).call(t,e(2),e(19))},function(n,t,e){(function(n,e,r){t.alias="where",t.title="Display path to current Node.js version",
t.help="Shows which folder with Node.js is active for all processes of current user",t.cmd=function(){var t,i,o,u;for(o=n(),t=0,i=o.length;i>t;t++)if(u=o[t],
u.active)return void e(u._());return e(r.$())}}).call(t,e(29),e(2),e(7))},function(n,t,e){(function(n){t.alias="repo",t.title="Open homepage",
t.help="Opens nvm$ repository in default browser.",t.cmd=function(){return n.run("https://github.com/ukoloff/nvms")}}).call(t,e(4));
},,function(n,t){t.add=function(n){var t,e,r,i,o;null==this.z&&(this.z={});for(e in n)for(r=n[e],"string"==typeof r&&(r=[r]),t=r.length-1;t>=0;t+=-1)o=r[t],
"$"===e?this.z[i=o]=0:this.z[o]=i;return this},t.$=function(n){var t,e,r,i;if(n&&this.z){if(n in this.z)return this.z[n]||n;e=this.z;
for(t in e)if(i=e[t],n===t.substring(0,n.length)){if(i||(i=t),r&&r!==i)return;r=i}return r}},t._=function(){var n,t,e,r,i,o,u,s,l,a;
i={},o=this.z;for(e in o)for(a=o[e],a||(a=e),n=0;++n<=e.length;)if(a===this.$(l=e.substring(0,n))){i[l]=a;break}for(s={},u=function(){
var n;n=[];for(e in i)n.push(e);return n}().sort(),t=0,r=u.length;r>t;t++)e=u[t],s[e]=i[e];return s}},function(n,t){var e,r,i,o;r=/^[\],:{}\s]*$/,
o=/\\(?:["\\\/bfnrt]|u[0-9a-fA-F]{4})/g,i=/"[^"\\\n\r]*"|true|false|null|-?\d+(?:\.\d*)?(?:[eE][+\-]?\d+)?/g,e=/(?:^|:|,)(?:\s*\[)+/g,
n.exports=function(n){if(!r.test(n.replace(o,"@").replace(i,"]").replace(e,"")))throw SyntaxError("Invalid JSON");return new Function("return ("+n+")")();
}},,function(n,t,e){(function(n,e,r,i,o){t.use=function(){return n("Using:",this.path),e(this.path)},t._=function(){return r.BuildPath(i,this.path);
},t.drop=function(){return n("Removing:",this.path),this.active&&e(),o("bye",this.path)}}).call(t,e(2),e(7),e(1),e(6),e(19))},function(n,t,e){
(function(n,e,r,i,o,u,s,l,a,c,f,h){t.ver=function(){return this.dist+"-"+this.src.version+"-x"+(this.x64?64:86)},t.msi=function(t){
var r;return r=this.ver()+".msi",t?n.BuildPath(e,r):r},t.uri=function(n){return null==n&&(n=this.msi(!1)),""+r[this.dist]+this.src.version+"/"+(this.x64&&!this.$[0][0]?"x64/":"")+n;
},t.fetch=function(){var n;return i("Fetching:",n=this.uri()),o(n,this.msi(!0))},t.extract=function(){var t,r,o;return i("Extracting:",this.msi()),
n.FolderExists(r=n.BuildPath(e,o=this.ver()))&&n.DeleteFolder(r),u.Run('msiexec /a "'+this.msi(!0)+'" TARGETDIR='+r+" /passive",1,!0),
n.FolderExists(this.dst=t=n.BuildPath(s,o))&&n.DeleteFolder(t),n.MoveFolder(l(n.GetFolder(r).SubFolders).shift().Path,t),n.DeleteFolder(r);
},t.shortcuts=function(){return"node"!==this.dist?(i("Creating shortcut..."),n.CopyFile(n.BuildPath(this.dst,this.dist+".exe"),n.BuildPath(this.dst,"node.exe"))):void 0;
},t.prefix=function(){var t;return i("Adjusting NPM prefix..."),t=n.OpenTextFile(n.BuildPath(this.dst,"node_modules/npm/npmrc"),8),
t.WriteLine('\n# <hack dirty src="https://github.com/ukoloff/nvms">\nprefix=${APPDATA}\\nvm$\\'+n.GetBaseName(a.$())+"\n# </hack>"),
t.Close()},t.use=function(){var n;return i("Using:",n=this.ver()),a(n)},t.set64=function(n){return this.x64="*"===n?null:null!=n?n:c;
},t.install=function(n){return this.set64(n),this.fetch(),this.extract(),this.shortcuts(),this.prefix(),this.use()},t.openssl=function(t){
var e,r;return this.set64(t),i("Fetching:",r=this.uri(e=f.openssl)),o(r,n.BuildPath(s,e)),i("Creating shortcut..."),f(n.GetBaseName(a.$()));
},t.$2=function(){var n,t,e,r,i;for(e=this.$,r=[],n=0,t=e.length;t>n;n++)i=e[n],r.push(i.slice());return r},t.local=function(n){return this.set64(n),
new h.ctr(this.$[0],this.dist,this.x64).local().last()}}).call(t,e(1),e(14),e(22),e(2),e(11),e(4),e(6),e(13),e(7),e(27),e(18),e(10));
},function(n,t){var e,r;n.exports=r=function(n){var t;for(null==n&&(n=12),t="";t.length<n;)t+=e();return t},r["char"]=e=function(){
var n;return n=Math.floor(62*Math.random()),String.fromCharCode(n%26+"Aa0".charCodeAt(n/26))}},function(n,t){var e,r,i;n.exports=i=function(n){
return e(r(n))},r=function(n){var t,e,r,i,o,u;for(e="",t=[],o=[],u=function(t){return t.test(n),e+=RegExp.leftContext,n=RegExp.rightContext;
};n.length;){if(i)switch(u(/""?|$/),RegExp.lastMatch){case'"':i=!1;continue;case'""':e+='"';continue;case"":r=!0}else{if(u(/\t|"|\r\n?|\n|$/),
'"'===RegExp.lastMatch){i=!0;continue}r="	"!==RegExp.lastMatch}t.push(e),e="",r&&(o.push(t),t=[])}return o},e=function(n){var t,e,r,i,o,u,s,l,a,c;
for(c=[],r=0,o=n.length;o>r;r++)if(s=n[r],s.length>1||s[0].length>0)if(t)for(c.push(a={}),e=i=0,u=t.length;u>i;e=++i)l=t[e],a[l]=s[e];else t=s;
return c}},function(n,t,e){(function(n){var r,i;t.local=function(){return this.$[1].push(this.x64),this},r=function(n){return e(n.$[1].length>1?29:30)();
},i=function(t,e){return n(e.$,t.$)},t.first=function(){var n,t,e,o;for(e=r(this),n=0,t=e.length;t>n;n++)if(o=e[n],i(this,o))return o;
},t.last=function(){var n,t,e;for(t=r(this),n=t.length-1;n>=0;n+=-1)if(e=t[n],i(this,e))return e},t.each=function(n){var t,e,o,u,s;
for(u=o=r(this),t=0,e=u.length;e>t;t++)s=u[t],i(this,s)&&n(s);return o}}).call(t,e(17))},function(n,t,e){(function(n,e){t.$=function(t){
return n.FolderExists(t=n.BuildPath(e,t[0]))?n.DeleteFolder(t):void 0}}).call(t,e(1),e(6))},function(n,t,e){(function(n){t.$=n.$}).call(t,e(31));
},function(n,t,e){(function(n){n({abbrev:e(32),bye:e(33),help:e(34),install:e(35),ls:e(36),openssl:e(37),remove:e(38),upgrade:e(39),
use:e(40),version:e(41),which:e(42),www:e(43)})}).call(t,e(21))},function(n,t,e){n.exports={bye:e(53),upgrade:e(54)}}]);
