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
    <title>����</title>
  </head>

  <body >
  <p>���н����б�</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>���ı��</td>    <td bgcolor='#CCFFFF'>��������</td>    <td bgcolor='#CCFFFF'>���Ĺ��</td>    <td bgcolor='#CCFFFF'>��Ӧ������</td>    <td bgcolor='#CCFFFF' width='65' align='center'>����ʱ��</td>    <td bgcolor='#CCFFFF'>�����۸�</td>    <td bgcolor='#CCFFFF'>��������</td>    <td bgcolor='#CCFFFF'>�������</td>    <td bgcolor='#CCFFFF'>����Ա</td>    <td bgcolor='#CCFFFF' width='80' align='center'>�Ƿ����</td>
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    

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
    <td><%=map.get("qicaibianhao") %></td>    <td><%=map.get("qicaimingcheng") %></td>    <td><%=map.get("qicaiguige") %></td>    <td><%=map.get("gongyingshangmingcheng") %></td>    <td><%=map.get("jinhuoshijian") %></td>    <td><%=map.get("jinhuojiage") %></td>    <td><%=map.get("jinhuoshuliang") %></td>    <td><%=map.get("jinhuojine") %></td>    <td><%=map.get("jinhuoyuan") %></td>    <td align='center'><a href="sh.jsp?id=<%=map.get("id")%>&yuan=<%=map.get("issh")%>&tablename=jinhuo" onclick="return confirm('��ȷ��Ҫִ�д˲�����')"><%=map.get("issh")%></a></td>
    <td width="138" align="center"><%=map.get("addtime") %></td>
  </tr>
  	<%
  }
   %>
</table>

<br>
�������ݹ�<%=i %>��
  </body>
</html>

