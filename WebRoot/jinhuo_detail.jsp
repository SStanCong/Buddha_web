<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>进货详细</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"jinhuo");
     %>
  进货详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>器材编号：</td><td width='39%'><%=m.get("qicaibianhao")%></td><td width='11%'>器材名称：</td><td width='39%'><%=m.get("qicaimingcheng")%></td></tr><tr><td width='11%'>器材规格：</td><td width='39%'><%=m.get("qicaiguige")%></td><td width='11%'>供应商名称：</td><td width='39%'><%=m.get("gongyingshangmingcheng")%></td></tr><tr><td width='11%'>进货时间：</td><td width='39%'><%=m.get("jinhuoshijian")%></td><td width='11%'>进货价格：</td><td width='39%'><%=m.get("jinhuojiage")%></td></tr><tr><td width='11%'>进货数量：</td><td width='39%'><%=m.get("jinhuoshuliang")%></td><td width='11%'>进货金额：</td><td width='39%'><%=m.get("jinhuojine")%></td></tr><tr><td width='11%'>进货员：</td><td width='39%'><%=m.get("jinhuoyuan")%></td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>


