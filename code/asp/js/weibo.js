var miniBlogShare = function() {
//ָ��λ��פ��ڵ�
$('<img id="imgSinaShare" class="img_share" title="��ѡ�����ݷ�������΢��" src="/img/uploadimg/20111107/1714550.gif" /><img id="imgQqShare" class="img_share" title="��ѡ�����ݷ�����Ѷ΢��" src="/img/uploadimg/20111107/1714551.png" />').appendTo('body');

//Ĭ����ʽ
$('.img_share').css({
display : 'none',
position : 'absolute',
cursor : 'pointer'
});

//ѡ������
var funGetSelectTxt = function() {
var txt = '';
if(document.selection) {
txt = document.selection.createRange().text;
} else {
txt = document.getSelection();
}
return txt.toString();
};

//ѡ�����ֺ���ʾ΢��ͼ��
$('html,body').mouseup(function(e) {
if (e.target.id == 'imgSinaShare' || e.target.id == 'imgQqShare') {
return
}
e = e || window.event;
var txt = funGetSelectTxt(),
sh = window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop || 0,
left = (e.clientX - 40 < 0) ? e.clientX + 20 : e.clientX - 40,
top = (e.clientY - 40 < 0) ? e.clientY + sh + 20 : e.clientY + sh - 40;
if (txt) {
$('#imgSinaShare').css({
display : 'inline',
left : left,
top : top
});
$('#imgQqShare').css({
display : 'inline',
left : left + 30,
top : top
});
} else {
$('#imgSinaShare').css('display', 'none');
$('#imgQqShare').css('display', 'none');
}
});

//�������΢��
$('#imgSinaShare').click(function() {
var txt = funGetSelectTxt(), title = $('title').html();
if (txt) {
window.open('http://v.t.sina.com.cn/share/share.php?title=' + txt + ' ���� ת���ԣ�' + title + '&url=' + window.location.href);
}
});

//�����Ѷ΢��
$('#imgQqShare').click(function() {
var txt = funGetSelectTxt(), title = $('title').html();
if (txt) {
window.open('http://v.t.qq.com/share/share.php?title=' + encodeURIComponent(txt + ' ���� ת���ԣ�' + title) + '&url=' + window.location.href);
}
});
}();