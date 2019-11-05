<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>出库记录</title>
	
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

new CommDAO().update(request,response,"chukujilu",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"chukujilu"); 

%>
  <form  action="chukujilu_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  修改出库记录:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
          <tr><td>器材编号：</td><td><input name='qicaibianhao' type='text' id='qicaibianhao' value='<%= mmm.get("qicaibianhao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>器材名称：</td><td><input name='qicaimingcheng' type='text' id='qicaimingcheng' value='<%= mmm.get("qicaimingcheng")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>器材规格：</td><td><input name='qicaiguige' type='text' id='qicaiguige' value='<%= mmm.get("qicaiguige")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>价格：</td><td><input name='jiage' type='text' id='jiage' value='<%= mmm.get("jiage")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>数量：</td><td><input name='shuliang' type='text' id='shuliang' value='<%= mmm.get("shuliang")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>出库数量：</td><td><input name='chukushuliang' type='text' id='chukushuliang' value='<%= mmm.get("chukushuliang")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>出库日期：</td><td><input name='chukuriqi' type='text' id='chukuriqi' value='<%= mmm.get("chukuriqi")%>' onclick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" readonly='readonly'  /></td></tr>     <tr><td>备注：</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' style='border:solid 1px #000000; color:#666666'><%=mmm.get("beizhu")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return checkform();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


