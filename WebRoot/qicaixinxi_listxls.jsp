<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=qicaixinxi.xls");
%>
<html>
  <head>
    <title>器材信息</title>
  </head>

  <body >
  <p>已有器材信息列表：</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>器材编号</td>    <td bgcolor='#CCFFFF'>器材名称</td>    <td bgcolor='#CCFFFF'>器材规格</td>    <td bgcolor='#CCFFFF' width='65' align='center'>入库时间</td>    <td bgcolor='#CCFFFF' width='65' align='center'>出库时间</td>    <td bgcolor='#CCFFFF'>价格</td>    <td bgcolor='#CCFFFF'>数量</td>    <td bgcolor='#CCFFFF'>仓库号</td>    <td bgcolor='#CCFFFF'>供应商名称</td>    <td bgcolor='#CCFFFF'>生产地</td>        
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    

  </tr>
  <% 

    String url = "qicaixinxi_list.jsp?1=1"; 
    String sql =  "select * from qicaixinxi where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;

     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("qicaibianhao") %></td>    <td><%=map.get("qicaimingcheng") %></td>    <td><%=map.get("qicaiguige") %></td>    <td><%=map.get("rukushijian") %></td>    <td><%=map.get("chukushijian") %></td>    <td><%=map.get("jiage") %></td>    <td><%=map.get("shuliang") %></td>    <td><%=map.get("cangkuhao") %></td>    <td><%=map.get("gongyingshangmingcheng") %></td>    <td><%=map.get("shengchandi") %></td>        
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

