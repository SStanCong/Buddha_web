<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>质检信息详细</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"zhijianxinxi");
     %>
  质检信息详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>质检日期：</td><td width='39%'><%=m.get("zhijianriqi")%></td><td width='11%'>器材名称：</td><td width='39%'><%=m.get("qicaimingcheng")%></td></tr><tr><td width='11%'>器材规格：</td><td width='39%'><%=m.get("qicaiguige")%></td><td width='11%'>仓库号：</td><td width='39%'><%=m.get("cangkuhao")%></td></tr><tr><td width='11%'>质检结果：</td><td width='39%'><%=m.get("zhijianjieguo")%></td><td width='11%'>备注：</td><td width='39%'><%=m.get("beizhu")%></td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>


