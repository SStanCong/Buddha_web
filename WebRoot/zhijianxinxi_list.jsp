<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�ʼ���Ϣ</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>�����ʼ���Ϣ�б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  �ʼ����ڣ�<input name="zhijianriqi1" type="text" id="zhijianriqi1"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:80px; height:20px; border:solid 1px #000000; color:#666666' />-<input name="zhijianriqi2" type="text" id="zhijianriqi2"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:80px; height:20px; border:solid 1px #000000; color:#666666' />  �������ƣ�<input name="qicaimingcheng" type="text" id="qicaimingcheng" style='border:solid 1px #000000; color:#666666' size="12" />  ���Ĺ��<input name="qicaiguige" type="text" id="qicaiguige" style='border:solid 1px #000000; color:#666666' size="12" />
   <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="����EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='zhijianxinxi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF' width='65' align='center'>�ʼ�����</td>
    <td bgcolor='#CCFFFF'>��������</td>
    <td bgcolor='#CCFFFF'>���Ĺ��</td>
    <td bgcolor='#CCFFFF'>�ֿ��</td>
    <td bgcolor='#CCFFFF'>�ʼ���</td>
    
    <td bgcolor='#CCFFFF' width='80' align='center'>�Ƿ����</td>
	
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">����</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"zhijianxinxi"); 
    String url = "zhijianxinxi_list.jsp?1=1"; 
    String sql =  "select * from zhijianxinxi where 1=1";
	
if (request.getParameter("zhijianriqi1")==""  ||request.getParameter("zhijianriqi1")==null ) {}else{sql=sql+" and zhijianriqi >= '"+request.getParameter("zhijianriqi1")+"'";}
if (request.getParameter("zhijianriqi2")==""  ||request.getParameter("zhijianriqi2")==null ) {}else {sql=sql+" and zhijianriqi <= '"+request.getParameter("zhijianriqi2")+"'";}
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
    <td><%=map.get("zhijianriqi") %></td>
    <td><%=map.get("qicaimingcheng") %></td>
    <td><%=map.get("qicaiguige") %></td>
    <td><%=map.get("cangkuhao") %></td>
    <td><%=map.get("zhijianjieguo") %></td>
    
    <td align='center'><a href="sh.jsp?id=<%=map.get("id")%>&yuan=<%=map.get("issh")%>&tablename=zhijianxinxi" onClick="return confirm('��ȷ��Ҫִ�д˲�����')"><%=map.get("issh")%></a></td>
	
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="zhijianxinxi_updt.jsp?id=<%=map.get("id")%>">�޸�</a>  <a href="zhijianxinxi_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('���Ҫɾ����')">ɾ��</a> <a href="zhijianxinxi_detail.jsp?id=<%=map.get("id")%>">��ϸ</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
${page.info }


  </body>
</html>

