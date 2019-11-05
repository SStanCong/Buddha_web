<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>器材信息</title>
	
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

new CommDAO().update(request,response,"qicaixinxi",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"qicaixinxi"); 

%>
  <form  action="qicaixinxi_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  修改器材信息:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     
     <tr><td>器材编号：</td><td><input name='qicaibianhao' type='text' id='qicaibianhao' value='<%= mmm.get("qicaibianhao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>器材名称：</td><td><input name='qicaimingcheng' type='text' id='qicaimingcheng' value='<%= mmm.get("qicaimingcheng")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>器材规格：</td><td><input name='qicaiguige' type='text' id='qicaiguige' size='50' value='<%=mmm.get("qicaiguige")%>' style='border:solid 1px #000000; color:#666666'/></td></tr>
     <tr><td>价格：</td><td><input name='jiage' type='text' id='jiage' value='<%= mmm.get("jiage")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>数量：</td><td><input name='shuliang' type='text' id='shuliang' value='<%= mmm.get("shuliang")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>仓库号：</td><td><input name='cangkuhao' type='text' id='cangkuhao' value='<%= mmm.get("cangkuhao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>供应商名称：</td><td><%=Info.getselect("gongyingshangmingcheng","gongyingshangxinxi","gongyingshangmingcheng")%></td></tr><script language="javascript">document.form1.gongyingshangmingcheng.value='<%=mmm.get("gongyingshangmingcheng")%>';</script>
     <tr><td>生产地：</td><td><input name='shengchandi' type='text' id='shengchandi' size='50' value='<%=mmm.get("shengchandi")%>' style='border:solid 1px #000000; color:#666666'/></td></tr>
     <tr><td>备注：</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' style='border:solid 1px #000000; color:#666666'><%=mmm.get("beizhu")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return checkform();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


