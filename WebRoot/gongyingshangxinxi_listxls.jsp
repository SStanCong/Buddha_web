<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=gongyingshangxinxi.xls");
%>
<html>
  <head>
    <title>供应商信息</title>
  </head>

  <body >
  <p>已有供应商信息列表：</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>供应商名称</td>    <td bgcolor='#CCFFFF'>供应类别</td>    <td bgcolor='#CCFFFF'>电话</td>    <td bgcolor='#CCFFFF'>地址</td>        
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    

  </tr>
  <% 

    String url = "gongyingshangxinxi_list.jsp?1=1"; 
    String sql =  "select * from gongyingshangxinxi where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;

     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("gongyingshangmingcheng") %></td>    <td><%=map.get("gongyingleibie") %></td>    <td><%=map.get("dianhua") %></td>    <td><%=map.get("dizhi") %></td>        
    <td width="138" align="center"><%=map.get("addtime") %></td>
  </tr>
  	<%
  }
   %>
</table>

<br>
以上数据共<%=i %>条
  </body>
</html>

