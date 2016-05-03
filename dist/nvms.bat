0</*! ::
@echo off
cscript //nologo //e:javascript "%~f0" %*
goto :EOF */0;
!function(t){function n(r){if(e[r])return e[r].exports;var i=e[r]={exports:{},id:r,loaded:!1};return t[r].call(i.exports,i,i.exports,n),i.loaded=!0,i.exports}var e={};return n.m=t,n.c=e,n.p="",n(0)}([function(t,n,e){e(6),e(5).dispatch()},function(t,n){t.exports=new ActiveXObject("Scripting.FileSystemObject")},function(t,n,e){var r,i,s;i=e(1),s=e(4),t.exports=r=i.BuildPath(s.SpecialFolders("AppData"),"nvms")},function(t,n){t.exports=function(){return WScript.Echo([].slice.apply(arguments).join(" "))}},function(t,n){t.exports=new ActiveXObject("WScript.Shell")},function(t,n,e){var r,i,s,o,a,u,l,c,f,h=[].slice;r=e(9),o=e(3),a=e(18),s=e(16),this.all=i=[],this.lookup=l={},this.list=function(){var t,n,e,s,o,a,u,c,f,p,m,d,v,g;for(p=arguments[0],e=2<=arguments.length?h.call(arguments,1):[],d=p.stage,f=[],s=0,u=e.length;u>s;s++)if(n=e[s],n.name&&(!n.stage||n.stage===d)){for(n.alias=t=n.alias?n.alias.split(/\s+/):[],l[n.name]=n,f.push(n.name),o=0,c=t.length;c>o;o++)g=t[o],l[g]=n,f.push(g);i.push(n)}m=r.apply(this,f);for(a in m)v=m[a],l[a]=l[v]},f=function(){},this.dispatch=function(){var t;return(t=l[s[0]])||(c(),a(1)),f(),t.cmd.call(t,s.slice(1))},this.header=u=function(){return o("nvms v0.1.0: Node Version for MS Windows\n")},c=function(){return u(),o("Run nvms help for instructions.")}},function(t,n,e){e(5).list({stage:e(21)},e(10),e(6),e(11),e(12),e(13),e(14),e(15))},function(t,n,e){var r,i,s,o,a,u;i=e(1),s=e(2),this.name=o="junction.exe",this.path=a=function(){return i.BuildPath(i.GetParentFolderName(WScript.ScriptFullName),o)},a.exists=function(){return i.FileExists(a())},this.src=u=function(){return i.BuildPath(i.GetParentFolderName(WScript.ScriptFullName),i.BuildPath("../sis",o))},this.dst=r=function(){return i.BuildPath(s,o)},u.exists=function(){return i.FileExists(u())}},function(t,n,e){var r,i;r=e(1),t.exports=i=function(t){var n;for(n=[];!r.FolderExists(t);)n.push(t),t=r.GetParentFolderName(t);for(;t=n.pop();)r.CreateFolder(t);return t},i.dst=function(){var t;return i(t=e(2)),t}},function(t,n){function e(){Object.defineProperty(Array.prototype,"abbrev",{value:function(){return r(this)},enumerable:!1,configurable:!0,writable:!0}),Object.defineProperty(Object.prototype,"abbrev",{value:function(){return r(Object.keys(this))},enumerable:!1,configurable:!0,writable:!0})}function r(t){1===arguments.length&&Array.isArray(t)||(t=Array.prototype.slice.call(arguments,0));for(var n=0,e=t.length,r=[];e>n;n++)r[n]="string"==typeof t[n]?t[n]:String(t[n]);r=r.sort(i);for(var s={},o="",n=0,e=r.length;e>n;n++){var a=r[n],u=r[n+1]||"",l=!0,c=!0;if(a!==u){for(var f=0,h=a.length;h>f;f++){var p=a.charAt(f);if(l=l&&p===u.charAt(f),c=c&&p===o.charAt(f),!l&&!c){f++;break}}if(o=a,f!==h)for(var m=a.substr(0,f);h>=f;f++)s[m]=a,m+=a.charAt(f);else s[a]=a}}return s}function i(t,n){return t===n?0:t>n?1:-1}t.exports=n=r.abbrev=r,r.monkeyPatch=e},function(t,n,e){var r,i,s,o;r=e(5),s=e(3),this.name="help",this.title="Show help for all or individual commands",this.args="[command]",this.description="Shows information on individual commands or nvms itself.",this.cmd=function(t){var n;return r.header(),(n=r.lookup[t[0]])?i(n):o()},i=function(t){return s("nvms "+t.name+": "+t.title),t.alias.length&&s("\nAlias: "+t.alias.join(", ")),s("\nUsage: nvms "+t.name+" "+(t.args||"")+"\n\n"+(t.description||""))},o=function(){var t,n,e,i;for(s("Usage: nvms <command> [parameter(s)]\n\nCommands:"),e=r.all,t=0,n=e.length;n>t;t++)i=e[t],s("	"+i.name+"	"+i.title);return s("\nCommand names may abbreviated.\n\nRun nvms help <command> for more instructions.")}},function(t,n){this.name="install",this.stage="normal",this.title="Install Node.js"},function(t,n,e){var r,i,s,o,a,u,l;s=e(1),l=e(4),i=e(3),a=e(8),o=e(7),u=e(20),r=e(19),this.name="setup",this.stage="pre",this.title="Install nvms",this.description="Installs all files to <"+e(2)+"> and fiddles PATH.",this.cmd=function(){var t,n;return i("Installing to <"+(t=a.dst())+">..."),s.CopyFile(WScript.ScriptFullName,s.BuildPath(t,"nvms.bat")),s.CopyFile(o.src(),n=o.dst()),r("system"),l.exec('"'+n+'" "'+s.BuildPath(t,"current")+'"  "'+s.BuildPath(t,"system")+'"'),u.install()}},function(t,n){this.name="use",this.stage="normal",this.title="Use installed before Node.js version"},function(t,n,e){var r;r=e(3),this.name="version",this.title="Show version",this.description="Displays nvms version.",this.cmd=function(){return r("0.1.0")}},function(t,n,e){var r;r=e(4),this.name="www",this.alias="repo",this.title="Open homepage",this.description="Opens nvms repository in default browser.",this.cmd=function(){return r.run("https://github.com/ukoloff/nvms")}},function(t,n,e){var r,i;i=e(17),t.exports=r=[],i(WScript.Arguments,function(t){return r.push(t)})},function(t,n){t.exports=function(t,n){var e;for(e=new Enumerator(t);!e.atEnd();){if(!1===("function"==typeof n?n(e.item()):void 0))return;e.moveNext()}}},function(t,n){t.exports=function(t){return null==t&&(t=0),WScript.Quit(t)}},function(t,n,e){var r,i,s;r=e(1),i=e(2),s=e(8),t.exports=function(t){var n;return s(n=r.BuildPath(i,t)),n=r.BuildPath(n,"nvms.bat"),r.CreateTextFile(n,!0).WriteLine('@"%~dp0..\\nvms.bat" %*')}},function(t,n,e){var r,i,s,o,a,u,l;s=e(1),l=e(4),o=e(2),a="Path",i=l.Environment("User"),t.exports=u=function(){return i(a).split(";")},r=new Function("o,k,v","o(k)=v"),u.install=function(t){var n,e;return null==t&&(t=!0),n=s.BuildPath(o,"current"),e=function(){var t,r,i,s;for(i=u(),s=[],t=0,r=i.length;r>t;t++)e=i[t],e!==n&&s.push(e);return s}(),t&&e.unshift(n),r(i,a,e=e.join(";"))}},function(t,n,e){var r;r=e(7),t.exports=r.path.exists()?"normal":"pre"}]);
