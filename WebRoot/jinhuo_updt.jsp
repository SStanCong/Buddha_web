<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>����</title>
	
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>
<script language="javascript">

function hsgxia2shxurxu(nstr,nwbk)
{
	if (eval("form1."+nwbk).value.indexOf(nstr)>=0)
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value.replace(nstr+"��", "");
	}
	else
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value+nstr+"��";
	}
}
</script>

  <body >
   <% 

String id = request.getParameter("id"); 

HashMap ext = new HashMap(); 

new CommDAO().update(request,response,"jinhuo",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"jinhuo"); 

%>
  <form  action="jinhuo_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  �޸Ľ���:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
          <tr><td>���ı�ţ�</td><td><input name='qicaibianhao' type='text' id='qicaibianhao' value='<%= mmm.get("qicaibianhao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>�������ƣ�</td><td><input name='qicaimingcheng' type='text' id='qicaimingcheng' value='<%= mmm.get("qicaimingcheng")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>���Ĺ��</td><td><input name='qicaiguige' type='text' id='qicaiguige' value='<%= mmm.get("qicaiguige")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>��Ӧ�����ƣ�</td><td><%=Info.getselect("gongyingshangmingcheng","gongyingshangxinxi","gongyingshangmingcheng")%></td></tr><script language="javascript">document.form1.gongyingshangmingcheng.value='<%=mmm.get("gongyingshangmingcheng")%>';</script>     <tr><td>����ʱ�䣺</td><td><input name='jinhuoshijian' type='text' id='jinhuoshijian' value='<%= mmm.get("jinhuoshijian")%>' onclick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" readonly='readonly'  /></td></tr>     <tr><td>�����۸�</td><td><input name='jinhuojiage' type='text' id='jinhuojiage' value='<%= mmm.get("jinhuojiage")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>����������</td><td><input name='jinhuoshuliang' type='text' id='jinhuoshuliang' value='<%= mmm.get("jinhuoshuliang")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>������</td><td><input name='jinhuojine' type='text' id='jinhuojine' value='<%= mmm.get("jinhuojine")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>����Ա��</td><td><input name='jinhuoyuan' type='text' id='jinhuoyuan' value='<%= mmm.get("jinhuoyuan")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return checkform();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


