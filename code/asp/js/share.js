document.write("<IMG class='img_sina_share' id='imgSinaShare' style='DISPLAY: none; CURSOR: pointer; POSITION: absolute' title'=��ѡ�����ݷ�������΢�� ' src='/js/sina.gif'>")
document.write("<IMG class='img_qq_share' id='imgQqShare' style='DISPLAY: none; CURSOR: pointer; POSITION: absolute' title='��ѡ�����ݷ�����Ѷ΢��' src='/js/qq.gif'>")
var eleImgShare= document.getElementById("imgSinaShare"); 
var eleImgShare2= document.getElementById("imgQqShare"); 
 
var $miniBlogShare= function(eleShare,eleShare2,eleContainer) { //ʵ�ַ���
var eleTitle= document.getElementsByTagName("title")[0];
eleContainer= eleContainer|| document;
var funGetSelectTxt= function() { //��ȡѡ������
var txt= "";
if(document.selection) {
txt= document.selection.createRange().text; // IE
} else {
txt= document.getSelection();
}
return txt.toString();
};
eleContainer.onmouseup= function(e) { //�޶������������ֱ�ѡ��
e= e|| window.event;
var txt= funGetSelectTxt(), sh= window.pageYOffset|| document.documentElement.scrollTop|| document.body.scrollTop|| 0;
var left= (e.clientX- 40 < 0) ? e.clientX+ 20 : e.clientX- 40, top= (e.clientY- 40 < 0) ? e.clientY+ sh+ 20 : e.clientY+ sh- 40;
if (txt) {
eleShare.style.display= "inline";
eleShare.style.left= left+ "px";
eleShare.style.top= top+ "px";
eleShare2.style.display= "inline";
eleShare2.style.left= left+ 30 + "px";
eleShare2.style.top= top+ "px";
} else {
eleShare.style.display= "none";
eleShare2.style.display= "none";
}
};
eleShare.onclick= function() { //�������΢��ͼ��
var txt= funGetSelectTxt(), title= (eleTitle&& eleTitle.innerHTML)? eleTitle.innerHTML: "δ����ҳ��";
if (txt) {
	
window.open('http://v.t.sina.com.cn/share/share.php?title=' + txt+ ' ' + title+ '&url=' + window.location.href+ '','΢������','width=700, height=580, top=320, left=180, toolbar=no, menubar=no, scrollbars=no, location=yes, resizable=no, status=no');
showHint(txt+ ' ' + title+ '&url=' + window.location.href+ '','����΢������');
}
};
eleShare2.onclick= function() { //�����Ѷ΢��ͼ��
var txt= funGetSelectTxt(), title= (eleTitle&& eleTitle.innerHTML)? eleTitle.innerHTML: "δ����ҳ��";
if (txt) {
window.open( 'http://v.t.qq.com/share/share.php?title=' + encodeURIComponent(txt+ ' ' + title+ ' ') + '&url=' + window.location.href+ '','΢������','width=700, height=580, top=320, left=180, toolbar=no, menubar=no, scrollbars=no, location=yes, resizable=no, status=no');
showHint(encodeURIComponent(txt+ ' ' + title+ ' ') + '&url=' + window.location.href+ '','��Ѷ΢������')
}
};
}(eleImgShare,eleImgShare2);


function showHint(str)
{
var xmlhttp;
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    document.getElementById("txtHint").innerHTML=xmlhttp.responseText;
    }
}
xmlhttp.open("GET","/js/share.asp?action=add&txt="+str,true);
xmlhttp.send();
}