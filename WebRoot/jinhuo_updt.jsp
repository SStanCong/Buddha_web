<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>进货</title>
	
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>
<script language="javascript">

function hsgxia2shxurxu(nstr,nwbk)
{
	if (eval("form1."+nwbk).value.indexOf(nstr)>=0)
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value.replace(nstr+"；", "");
	}
	else
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value+nstr+"；";
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
  修改进货:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
          <tr><td>器材编号：</td><td><input name='qicaibianhao' type='text' id='qicaibianhao' value='<%= mmm.get("qicaibianhao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>器材名称：</td><td><input name='qicaimingcheng' type='text' id='qicaimingcheng' value='<%= mmm.get("qicaimingcheng")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>器材规格：</td><td><input name='qicaiguige' type='text' id='qicaiguige' value='<%= mmm.get("qicaiguige")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>供应商名称：</td><td><%=Info.getselect("gongyingshangmingcheng","gongyingshangxinxi","gongyingshangmingcheng")%></td></tr><script language="javascript">document.form1.gongyingshangmingcheng.value='<%=mmm.get("gongyingshangmingcheng")%>';</script>     <tr><td>进货时间：</td><td><input name='jinhuoshijian' type='text' id='jinhuoshijian' value='<%= mmm.get("jinhuoshijian")%>' onclick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" readonly='readonly'  /></td></tr>     <tr><td>进货价格：</td><td><input name='jinhuojiage' type='text' id='jinhuojiage' value='<%= mmm.get("jinhuojiage")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>进货数量：</td><td><input name='jinhuoshuliang' type='text' id='jinhuoshuliang' value='<%= mmm.get("jinhuoshuliang")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>进货金额：</td><td><input name='jinhuojine' type='text' id='jinhuojine' value='<%= mmm.get("jinhuojine")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>进货员：</td><td><input name='jinhuoyuan' type='text' id='jinhuoyuan' value='<%= mmm.get("jinhuoyuan")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return checkform();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


