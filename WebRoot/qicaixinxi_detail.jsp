<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>������Ϣ��ϸ</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"qicaixinxi");
     %>
  ������Ϣ��ϸ:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>���ı�ţ�</td><td width='39%'><%=m.get("qicaibianhao")%></td>
<td width='11%'>�������ƣ�</td><td width='39%'><%=m.get("qicaimingcheng")%></td></tr><tr>
<td width='11%'>���Ĺ��</td><td width='39%'><%=m.get("qicaiguige")%></td>
<td width='11%'>�۸�</td><td width='39%'><%=m.get("jiage")%></td></tr><tr>
<td width='11%'>������</td><td width='39%'><%=m.get("shuliang")%></td>
<td width='11%'>�ֿ�ţ�</td><td width='39%'><%=m.get("cangkuhao")%></td></tr><tr>
<td width='11%'>��Ӧ�����ƣ�</td><td width='39%'><%=m.get("gongyingshangmingcheng")%></td>
<td width='11%'>�����أ�</td><td width='39%'><%=m.get("shengchandi")%></td></tr><tr>
<td width='11%'>��ע��</td><td width='39%'><%=m.get("beizhu")%></td>
<tr>
		   <td colspan=4 align=center> <script src="js/jquery.min.js"></script>
		 
    <img id='qrImg' src="qrcode?website=<%
	String path = request.getContextPath(); 
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path; 
String name = request.getParameter("name");//��request�õ� 
	out.print(basePath);
	out.print(request.getServletPath());
	out.print("?id="+id);
	%>" /></td>
		   </tr>

<tr><td colspan=4 align=center><input type=button name=Submit5 value=���� onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=��ӡ onClick="javascript:window.print()" /></td></tr>
  </table>

  </body>
</html>

