<!--#include file="AspCms_OrderFun.asp" -->
<%
getContent
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE></TITLE>
<META http-equiv=Content-Type content="text/html; charset=gbk">
<LINK href="../../images/style.css" type=text/css rel=stylesheet>
</HEAD>
<BODY>
<FORM name="form" action="?action=edit" method="post" >
<DIV class=formzone>
<DIV class=namezone>�鿴������Ϣ</DIV>
<DIV class=tablezone>
<DIV class=noticediv id=notice></DIV>
<TABLE cellSpacing=0 cellPadding=2 width="100%" align=center border=0>
<TBODY>
<TR>						
<TD align=middle width=100 height=30>��������</TD>
<TD><INPUT class="input" style="WIDTH: 200px" maxLength="200" name="OrderName" value="<%=OrderName%>"/> <FONT color=#ff0000>*</FONT> </TD>
</TR>
<TR>
<TD align=middle width=100 height=30>��������</TD>    
<TD><input name="num" class="input"  type="text" style="width:60px;" value="<%=num%>" /></TD>
</tr>
<TR>
    <TD align=middle width=100 height=30>��ϵ��</TD>
    <TD><input class="input" name="Linkman" type="text" value="<%=Linkman%>" /></TD>
</TR>
<TR>
    <TD align=middle width=100 height=30>�Ա�</TD>
    <TD><input type="radio"  value="1" name="Gender" <% if Gender=1 then echo "checked" end if%>/>��
            <input type="radio" value="0" name="Gender" <% if Gender=0 then echo "checked" end if%>/>Ů</TD>
</TR>
<TR>
    <TD align=middle width=100 height=30>�ֻ�</TD>
    <TD><input class="input" name="Mobile" type="text" value="<%=Mobile%>" /></TD>
</TR>
<TR>
    <TD align=middle width=100 height=30>��ϵ�绰</TD>
    <TD><input class="input" name="Phone" type="text" value="<%=Phone%>" /></TD>
</TR>
<TR>
    <TD align=middle width=100 height=30>����</TD>
    <TD><input class="input" name="Email" type="text" value="<%=Email%>" /></TD>
</TR>
<TR>
    <TD align=middle width=100 height=30>QQ</TD>
    <TD><input class="input" name="QQ" type="text" value="<%=QQ%>" /></TD>
</TR>
<TR>
    <TD align=middle width=100 height=30>��ַ</TD>
    <TD><input class="input" name="Address" type="text" style="width:300px" value="<%=Address%>" /></TD>
</TR>
<TR>
    <TD align=middle width=100 height=30>��������</TD>
    <TD> <input class="input" name="PostCode" type="text" value="<%=PostCode%>" /></TD>
</TR>
<TR>
    <TD align=middle width=100 height=30>��ע</TD>
    <TD><textarea class="textarea" name="Remark" cols="40" rows="6" style="width:500px"><%=Remark%></textarea></TD>
</TR>
<TR>
    <TD align=middle width=100 height=30>�鿴״̬</TD>
    <TD><input class="input" type="checkbox"  value="1" name="OrderStatus" <% if OrderStatus then echo"checked=""checked"""%>/></TD>
</TR>
  
</TBODY>
</TABLE>
</DIV>
<DIV class=adminsubmit>
<input type="hidden"  name="OrderID" value="<%=OrderID%>"/>
<INPUT class="button" type="submit" value="�޸�" />
<INPUT class="button" type="button" value="����" onClick="history.go(-1)"/> 
</DIV></DIV></FORM>

</BODY></HTML>    