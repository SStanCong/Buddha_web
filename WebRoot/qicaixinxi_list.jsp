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
  <p>����������Ϣ�б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  ���ı�ţ�<input name="qicaibianhao" type="text" id="qicaibianhao" style='border:solid 1px #000000; color:#666666' size="12" />  �������ƣ�<input name="qicaimingcheng" type="text" id="qicaimingcheng" style='border:solid 1px #000000; color:#666666' size="12" />  ���ʱ�䣺<input name="rukushijian1" type="text" id="rukushijian1"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:80px; height:20px; border:solid 1px #000000; color:#666666' />-<input name="rukushijian2" type="text" id="rukushijian2"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:80px; height:20px; border:solid 1px #000000; color:#666666' />  �ֿ�ţ�<input name="cangkuhao" type="text" id="cangkuhao" style='border:solid 1px #000000; color:#666666' size="12" />  ��Ӧ�����ƣ�<%=Info.getselect("gongyingshangmingcheng","gongyingshangxinxi","gongyingshangmingcheng"," 1=1 ")%>
   <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="����EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='qicaixinxi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>���ı��</td>
    <td bgcolor='#CCFFFF'>��������</td>
    <td bgcolor='#CCFFFF'>���Ĺ��</td>
    <td bgcolor='#CCFFFF'>�۸�</td>
    <td bgcolor='#CCFFFF'>����</td>
    <td bgcolor='#CCFFFF'>�ֿ��</td>
    <td bgcolor='#CCFFFF'>��Ӧ������</td>
    <td bgcolor='#CCFFFF'>������</td>
    
    
	
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">����</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"qicaixinxi"); 
    String url = "qicaixinxi_list.jsp?1=1"; 
    String sql =  "select * from qicaixinxi where 1=1";
	
if(request.getParameter("qicaibianhao")=="" ||request.getParameter("qicaibianhao")==null ){}else{sql=sql+" and qicaibianhao like '%"+request.getParameter("qicaibianhao")+"%'";}
if(request.getParameter("qicaimingcheng")=="" ||request.getParameter("qicaimingcheng")==null ){}else{sql=sql+" and qicaimingcheng like '%"+request.getParameter("qicaimingcheng")+"%'";}
if (request.getParameter("rukushijian1")==""  ||request.getParameter("rukushijian1")==null ) {}else{sql=sql+" and rukushijian >= '"+request.getParameter("rukushijian1")+"'";}
if (request.getParameter("rukushijian2")==""  ||request.getParameter("rukushijian2")==null ) {}else {sql=sql+" and rukushijian <= '"+request.getParameter("rukushijian2")+"'";}
if(request.getParameter("cangkuhao")=="" ||request.getParameter("cangkuhao")==null ){}else{sql=sql+" and cangkuhao like '%"+request.getParameter("cangkuhao")+"%'";}
if(request.getParameter("gongyingshangmingcheng")=="" ||request.getParameter("gongyingshangmingcheng")==null ){}else{sql=sql+" and gongyingshangmingcheng like '%"+request.getParameter("gongyingshangmingcheng")+"%'";}
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
    <td><%=map.get("jiage") %></td>
    <td><%=map.get("shuliang") %></td>
    <td><%=map.get("cangkuhao") %></td>
    <td><%=map.get("gongyingshangmingcheng") %></td>
    <td><%=map.get("shengchandi") %></td>
    
    
	
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="qicaixinxi_updt.jsp?id=<%=map.get("id")%>">�޸�</a>  <a href="qicaixinxi_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('���Ҫɾ����')">ɾ��</a> <a href="qicaixinxi_detail.jsp?id=<%=map.get("id")%>">��ϸ</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
${page.info }


  </body>
</html>

