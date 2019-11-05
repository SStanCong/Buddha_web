<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=jinhuo.xls");
%>
<html>
  <head>
    <title>进货</title>
  </head>

  <body >
  <p>已有进货列表：</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>器材编号</td>    <td bgcolor='#CCFFFF'>器材名称</td>    <td bgcolor='#CCFFFF'>器材规格</td>    <td bgcolor='#CCFFFF'>供应商名称</td>    <td bgcolor='#CCFFFF' width='65' align='center'>进货时间</td>    <td bgcolor='#CCFFFF'>进货价格</td>    <td bgcolor='#CCFFFF'>进货数量</td>    <td bgcolor='#CCFFFF'>进货金额</td>    <td bgcolor='#CCFFFF'>进货员</td>    <td bgcolor='#CCFFFF' width='80' align='center'>是否审核</td>
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    

  </tr>
  <% 

    String url = "jinhuo_list.jsp?1=1"; 
    String sql =  "select * from jinhuo where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;

     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("qicaibianhao") %></td>    <td><%=map.get("qicaimingcheng") %></td>    <td><%=map.get("qicaiguige") %></td>    <td><%=map.get("gongyingshangmingcheng") %></td>    <td><%=map.get("jinhuoshijian") %></td>    <td><%=map.get("jinhuojiage") %></td>    <td><%=map.get("jinhuoshuliang") %></td>    <td><%=map.get("jinhuojine") %></td>    <td><%=map.get("jinhuoyuan") %></td>    <td align='center'><a href="sh.jsp?id=<%=map.get("id")%>&yuan=<%=map.get("issh")%>&tablename=jinhuo" onclick="return confirm('您确定要执行此操作？')"><%=map.get("issh")%></a></td>
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

