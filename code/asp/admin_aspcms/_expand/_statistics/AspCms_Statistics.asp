<!--#include file="../../inc/AspCms_SettingClass.asp" -->
<%
<%CheckAdmin("AspCms_Statistics.asp")%>
dim action : action=getForm("action","get")

if action="clear" then clearStatistics

Sub clearStatistics
	conn.Exec"delete from {prefix}Visits","exe"	
	response.Redirect("?")
End Sub
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE></TITLE>
<META http-equiv=Content-Type content="text/html; charset=gbk">
<LINK href="../../images/style.css" type=text/css rel=stylesheet>
</HEAD>
<BODY>
<FORM name="form" action="?action=clear" method="post" >
<DIV class=formzone>
<DIV class=namezone>����ͳ��</DIV>
<DIV class=tablezone>
<DIV class=noticediv id=notice></DIV>
<TABLE cellSpacing=0 cellPadding=2 width="100%" align=center border=0>
  <TBODY>
  <TR>						
    <TD align=middle width=100 height=30>���շ�����</TD>
    <TD><INPUT class="input" style="WIDTH: 100px" maxLength="200" value="<%=getTodayVisits%>"/> ��ǩ��{visits:today}</TD>
  </TR>
  <TR>						
    <TD align=middle width=100 height=30>���շ�����</TD>
    <TD><INPUT class="input" style="WIDTH: 100px" maxLength="200" value="<%=getYesterdayVisits%>"/> ��ǩ��{visits:yesterday}</TD>
  </TR>
  <TR>						
    <TD align=middle width=100 height=30>���·�����</TD>
    <TD><INPUT class="input" style="WIDTH: 100px" maxLength="200" value="<%=getMonthVisits%>"/> ��ǩ��{visits:month}</TD>
  </TR>
  <TR>						
    <TD align=middle width=100 height=30>�ܷ�����</TD>
    <TD><INPUT class="input" style="WIDTH: 100px" maxLength="200" value="<%=getAllVisits%>"/> ��ǩ��{visits:all}</TD>
  </TR>

  
    </TBODY></TABLE>
</DIV>
<DIV class=adminsubmit>

<input type="submit" class="button" value="ȫ������"  onClick="return confirm('ȷ��Ҫ������')" class="btn"/>
<INPUT onClick="location.href='<%=getPageName()%>'" type="button" value="ˢ��" class="button" /> 
</DIV></DIV></FORM>

</BODY></HTML>

