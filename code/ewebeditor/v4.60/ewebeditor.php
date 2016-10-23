<HTML>
<HEAD>
<TITLE>ewebeditor</TITLE>
<meta http-equiv='Content-Type' content='text/html; charset=gb2312'>
</HEAD>

<BODY>
<Script Language=Javascript>
var URLParams = new Object() ;
var aParams = document.location.search.substr(1).split('&') ;
for (i=0 ; i < aParams.length ; i++) {
	var aParam = aParams[i].split('=') ;
	URLParams[aParam[0]] = aParam[1] ;
}

var sLinkFieldName = URLParams["id"] ;
var sExtCSS = URLParams["extcss"] ;
var sFullScreen = URLParams["fullscreen"];

var config = new Object() ;
config.StyleName = (URLParams["style"]) ? URLParams["style"].toLowerCase() : "coolblue";
config.CusDir = URLParams["cusdir"];
config.ServerExt = "php";

document.write ("<script type='text/javascript' src='style/"+config.StyleName+".js'><\/script>");
document.write ("<script type='text/javascript' src='js/lang.js'><\/script>");
document.write ("<script type='text/javascript' src='js/main.js'><\/script>");
</Script>

<!-- liuyangzhang.com Baidu tongji analytics -->
<script type="text/javascript">
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Fb4f0e8b44022f0481c8de12b9f6bf9d0' type='text/javascript'%3E%3C/script%3E"));
</script>
</BODY>
</HTML>