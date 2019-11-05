<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=dingdanxinxi.xls");
%>
<html>
  <head>
    <title>订单信息</title>
  </head>

  <body >
  <p>已有订单信息列表：</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>订单编号</td>    <td bgcolor='#CCFFFF'>金额</td>    <td bgcolor='#CCFFFF'>订单内容</td>    <td bgcolor='#CCFFFF'>采购员工号</td>    <td bgcolor='#CCFFFF'>姓名</td>    <td bgcolor='#CCFFFF'>手机</td>    <td bgcolor='#CCFFFF'>备注</td>    <td bgcolor='#CCFFFF' width='80' align='center'>是否支付</td>    <td bgcolor='#CCFFFF' width='80' align='center'>是否审核</td>
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    

  </tr>
  <% 

    String url = "dingdanxinxi_list.jsp?1=1"; 
    String sql =  "select * from dingdanxinxi where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;

     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("dingdanbianhao") %></td>    <td><%=map.get("jine") %></td>    <td><%=map.get("dingdanneirong") %></td>    <td><%=map.get("caigouyuangonghao") %></td>    <td><%=map.get("xingming") %></td>    <td><%=map.get("shouji") %></td>    <td><%=map.get("beizhu") %></td>    <td align='center'><%=map.get("iszf")%></td>    <td align='center'><a href="sh.jsp?id=<%=map.get("id")%>&yuan=<%=map.get("issh")%>&tablename=dingdanxinxi" onclick="return confirm('您确定要执行此操作？')"><%=map.get("issh")%></a></td>
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

