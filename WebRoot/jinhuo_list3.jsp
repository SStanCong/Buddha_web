<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>����</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>���н����б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  ���ı�ţ�<input name="qicaibianhao" type="text" id="qicaibianhao" style='border:solid 1px #000000; color:#666666' size="12" />  �������ƣ�<input name="qicaimingcheng" type="text" id="qicaimingcheng" style='border:solid 1px #000000; color:#666666' size="12" />  ���Ĺ��<input name="qicaiguige" type="text" id="qicaiguige" style='border:solid 1px #000000; color:#666666' size="12" />
   <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="����EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='jinhuo_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>���ı��</td>
    <td bgcolor='#CCFFFF'>��������</td>
    <td bgcolor='#CCFFFF'>���Ĺ��</td>
    <td bgcolor='#CCFFFF'>��Ӧ������</td>
    <td bgcolor='#CCFFFF' width='65' align='center'>����ʱ��</td>
    <td bgcolor='#CCFFFF'>�����۸�</td>
    <td bgcolor='#CCFFFF'>��������</td>
    <td bgcolor='#CCFFFF'>�������</td>
    <td bgcolor='#CCFFFF'>����Ա</td>
    <td bgcolor='#CCFFFF' width='80' align='center'>�Ƿ����</td>
	
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">����</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"jinhuo"); 
    String url = "jinhuo_list.jsp?1=1"; 
    String sql =  "select * from jinhuo where 1=1";
	
if(request.getParameter("qicaibianhao")=="" ||request.getParameter("qicaibianhao")==null ){}else{sql=sql+" and qicaibianhao like '%"+request.getParameter("qicaibianhao")+"%'";}
if(request.getParameter("qicaimingcheng")=="" ||request.getParameter("qicaimingcheng")==null ){}else{sql=sql+" and qicaimingcheng like '%"+request.getParameter("qicaimingcheng")+"%'";}
if(request.getParameter("qicaiguige")=="" ||request.getParameter("qicaiguige")==null ){}else{sql=sql+" and qicaiguige like '%"+request.getParameter("qicaiguige")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("qicaibianhao") %></td>
    <td><%=map.get("qicaimingcheng") %></td>
    <td><%=map.get("qicaiguige") %></td>
    <td><%=map.get("gongyingshangmingcheng") %></td>
    <td><%=map.get("jinhuoshijian") %></td>
    <td><%=map.get("jinhuojiage") %></td>
    <td><%=map.get("jinhuoshuliang") %></td>
    <td><%=map.get("jinhuojine") %></td>
    <td><%=map.get("jinhuoyuan") %></td>
    <td width='80' align='center'><%=map.get("issh")%></td>
	
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="jinhuo_detail.jsp?id=<%=map.get("id")%>">��ϸ</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
${page.info }


  </body>
</html>

