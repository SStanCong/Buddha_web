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
  <p>���ж�����Ϣ�б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  ������ţ�<input name="dingdanbianhao" type="text" id="dingdanbianhao" style='border:solid 1px #000000; color:#666666' size="12" />  ��<input name="jine" type="text" id="jine" style='border:solid 1px #000000; color:#666666' size="12" />  �ɹ�Ա���ţ�<input name="caigouyuangonghao" type="text" id="caigouyuangonghao" style='border:solid 1px #000000; color:#666666' size="12" />
   <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="����EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='dingdanxinxi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>�������</td>    <td bgcolor='#CCFFFF'>���</td>    <td bgcolor='#CCFFFF'>��������</td>    <td bgcolor='#CCFFFF'>�ɹ�Ա����</td>    <td bgcolor='#CCFFFF'>����</td>    <td bgcolor='#CCFFFF'>�ֻ�</td>    <td bgcolor='#CCFFFF'>��ע</td>    <td bgcolor='#CCFFFF' width='80' align='center'>�Ƿ�֧��</td>    <td bgcolor='#CCFFFF' width='80' align='center'>�Ƿ����</td>
	
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">����</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"dingdanxinxi"); 
    String url = "dingdanxinxi_list.jsp?1=1"; 
    String sql =  "select * from dingdanxinxi where 1=1";
	if(request.getParameter("dingdanbianhao")=="" ||request.getParameter("dingdanbianhao")==null ){}else{sql=sql+" and dingdanbianhao like '%"+request.getParameter("dingdanbianhao")+"%'";}if(request.getParameter("jine")=="" ||request.getParameter("jine")==null ){}else{sql=sql+" and jine like '%"+request.getParameter("jine")+"%'";}if(request.getParameter("caigouyuangonghao")=="" ||request.getParameter("caigouyuangonghao")==null ){}else{sql=sql+" and caigouyuangonghao like '%"+request.getParameter("caigouyuangonghao")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("dingdanbianhao") %></td>    <td><%=map.get("jine") %></td>    <td><%=map.get("dingdanneirong") %></td>    <td><%=map.get("caigouyuangonghao") %></td>    <td><%=map.get("xingming") %></td>    <td><%=map.get("shouji") %></td>    <td><%=map.get("beizhu") %></td>    <td align='center'><%=map.get("iszf")%></td>    <td align='center'><a href="sh.jsp?id=<%=map.get("id")%>&yuan=<%=map.get("issh")%>&tablename=dingdanxinxi" onclick="return confirm('��ȷ��Ҫִ�д˲�����')"><%=map.get("issh")%></a></td>
	
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="dingdanxinxi_updt.jsp?id=<%=map.get("id")%>">�޸�</a>  <a href="dingdanxinxi_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('���Ҫɾ����')">ɾ��</a> <!--qiatnalijne--> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
${page.info }


  </body>
</html>

