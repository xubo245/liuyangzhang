<!--#include file="../inc/AspCms_SettingClass.asp" -->
<%
dim action : action=getForm("action","get")
if action="add" then addGbook

dim FaqID,FaqTitle,Contact,ContactWay,Content,Reply,AddTime,ReplyTime,FaqStatus,AuditStatus,tab,sql
Sub addGbook
	'if session("faq") then alertMsgAndGo "�벻Ҫ�ظ��ύ","-1"
	txt=encodeHtml(filterPara(getForm("txt","post")))
	addtime=now()
	if messageReminded then sendMail messageAlertsEmail,setting.sitetitle,setting.siteTitle&setting.siteUrl&"--������Ϣ�����ʼ���","������վ<a href=""http://"&setting.siteUrl&""">"&setting.siteTitle&"</a>���µ�΢������<br>"&"<br>���ݣ�"&txt&"<br>��ϵ�ˣ�"&Contact&"<br>ʱ�䣺"&AddTime	
	if SwitchCommentsStatus=0 then
		alertMsgAndGo "���Գɹ���",getRefer	
	else	
		alertMsgAndGo "���Գɹ�����ȴ�����У�",getRefer	
	end if
End Sub

%>