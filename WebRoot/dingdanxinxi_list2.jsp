<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>������Ϣ</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>���ж�����Ϣ�б���</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  ������ţ�<input name="dingdanbianhao" type="text" id="dingdanbianhao" style='border:solid 1px #000000; color:#666666' size="12" />  ��<input name="jine" type="text" id="jine" style='border:solid 1px #000000; color:#666666' size="12" />  �ɹ�Ա���ţ�<input name="caigouyuangonghao" type="text" id="caigouyuangonghao" style='border:solid 1px #000000; color:#666666' size="12" />
     <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>�������</td>
    <td width="138" align="center" bgcolor="CCFFFF">����ʱ��</td>
    <td width="60" align="center" bgcolor="CCFFFF">����</td>
  </tr>
 <% 
  	


  	 new CommDAO().delete(request,"dingdanxinxi"); 
    String url = "dingdanxinxi_list2.jsp?1=1"; 
    String sql =  "select * from dingdanxinxi where caigouyuangonghao='"+request.getSession().getAttribute("username")+"' ";
	
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("dingdanbianhao") %></td>
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="dingdanxinxi_updt.jsp?id=<%=map.get("id")%>">�޸�</a>  <a href="dingdanxinxi_list2.jsp?scid=<%=map.get("id") %>" onClick="return confirm('���Ҫɾ����')">ɾ��</a>  </td>
  </tr>
  	<%
  }
   %>
</table><br>
  
${page.info }


  </body>
</html>
