<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>质检员信息</title>
	
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
new CommDAO().update(request,response,"zhijianyuanxinxi",ext,true,false,""); 
HashMap mmm = new CommDAO().getmaps("zhijianyuangonghao",(String)request.getSession().getAttribute("username"),"zhijianyuanxinxi"); 
%>
  <form  action="zhijianyuanxinxi_updt2.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  修改质检员信息:
  <br><br>
  <%
  
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
          <tr><td>质检员工号：</td><td><input name='zhijianyuangonghao' type='text' id='zhijianyuangonghao' value='<%= mmm.get("zhijianyuangonghao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>姓名：</td><td><input name='xingming' type='text' id='xingming' value='<%= mmm.get("xingming")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>性别：</td><td><select name='xingbie' id='xingbie'><option value="男">男</option><option value="女">女</option></select></td></tr><script language="javascript">document.form1.xingbie.value='<%=mmm.get("xingbie")%>';</script>     <tr><td>密码：</td><td><input name='mima' type='text' id='mima' value='<%= mmm.get("mima")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>入职时间：</td><td><input name='ruzhishijian' type='text' id='ruzhishijian' value='<%= mmm.get("ruzhishijian")%>' onclick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" readonly='readonly'  /></td></tr>     <tr><td>身份证：</td><td><input name='shenfenzheng' type='text' id='shenfenzheng' size='50' value='<%=mmm.get("shenfenzheng")%>' style='border:solid 1px #000000; color:#666666'/></td></tr>     <tr><td>照片：</td><td><input name='zhaopian' type='text' id='zhaopian' size='50' value='<%= mmm.get("zhaopian")%>' style='border:solid 1px #000000; color:#666666' />&nbsp;<input type='button' value='上传' onClick="up('zhaopian')" style='border:solid 1px #000000; color:#666666'/></td></tr>     <tr><td>手机：</td><td><input name='shouji' type='text' id='shouji' value='<%= mmm.get("shouji")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>备注：</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' style='border:solid 1px #000000; color:#666666'><%=mmm.get("beizhu")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return check();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


