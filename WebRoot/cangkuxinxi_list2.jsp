<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>仓库信息</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>已有仓库信息列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:  仓库号：<input name="cangkuhao" type="text" id="cangkuhao" style='border:solid 1px #000000; color:#666666' size="12" />  容量：<input name="rongliang1" type="text" id="rongliang1"  value='' style='border:solid 1px #000000; color:#666666;width:30px' />-<input name="rongliang2" type="text" id="rongliang2"  value='' style='border:solid 1px #000000; color:#666666;width:30px' />  剩余容量：<input name="shengyurongliang1" type="text" id="shengyurongliang1"  value='' style='border:solid 1px #000000; color:#666666;width:30px' />-<input name="shengyurongliang2" type="text" id="shengyurongliang2"  value='' style='border:solid 1px #000000; color:#666666;width:30px' />
   <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="导出EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='cangkuxinxi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td width="255" bgcolor='#CCFFFF'>仓库号</td>
    <td width="184" bgcolor='#CCFFFF'>容量</td>
    <td width="169" bgcolor='#CCFFFF'>剩余容量</td>
    
    
	
    <td width="157" align="center" bgcolor="CCFFFF">添加时间</td>
    
    <td width="199" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"cangkuxinxi"); 
    String url = "cangkuxinxi_list.jsp?1=1"; 
    String sql =  "select * from cangkuxinxi where 1=1";
	
if(request.getParameter("cangkuhao")=="" ||request.getParameter("cangkuhao")==null ){}else{sql=sql+" and cangkuhao like '%"+request.getParameter("cangkuhao")+"%'";}
if (request.getParameter("rongliang1")==""  ||request.getParameter("rongliang1")==null ) {}else{sql=sql+" and rongliang >= '"+request.getParameter("rongliang1")+"'";}
if (request.getParameter("rongliang2")==""  ||request.getParameter("rongliang2")==null ) {}else {sql=sql+" and rongliang <= '"+request.getParameter("rongliang2")+"'";}
if (request.getParameter("shengyurongliang1")==""  ||request.getParameter("shengyurongliang1")==null ) {}else{sql=sql+" and shengyurongliang >= '"+request.getParameter("shengyurongliang1")+"'";}
if (request.getParameter("shengyurongliang2")==""  ||request.getParameter("shengyurongliang2")==null ) {}else {sql=sql+" and shengyurongliang <= '"+request.getParameter("shengyurongliang2")+"'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("cangkuhao") %></td>
    <td><%=map.get("rongliang") %></td>
    <td><%=map.get("shengyurongliang") %></td>
    
    
	
    <td width="157" align="center"><%=map.get("addtime") %></td>
    <td width="199" align="center"><a href="cangkuxinxi_detail.jsp?id=<%=map.get("id")%>">详细</a> <a href="qicaixinxi_add.jsp?id=<%=map.get("id")%>">添加器材</a></td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
${page.info }


  </body>
</html>

