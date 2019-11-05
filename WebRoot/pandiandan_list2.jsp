<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>盘点单</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>已有盘点单列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:  仓库号：<input name="cangkuhao" type="text" id="cangkuhao" style='border:solid 1px #000000; color:#666666' size="12" />  容量：<input name="rongliang" type="text" id="rongliang" style='border:solid 1px #000000; color:#666666' size="12" />  盘点日期：<input name="pandianriqi1" type="text" id="pandianriqi1"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:80px; height:20px; border:solid 1px #000000; color:#666666' />-<input name="pandianriqi2" type="text" id="pandianriqi2"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:80px; height:20px; border:solid 1px #000000; color:#666666' />
   <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="导出EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='pandiandan_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td width="127" bgcolor='#CCFFFF'>仓库号</td>
    <td width="112" bgcolor='#CCFFFF'>容量</td>
    <td bgcolor='#CCFFFF' width='106' align='center'>盘点日期</td>
    <td bgcolor='#CCFFFF' width='323' align='center'>盘点结果</td>
    
    <td bgcolor='#CCFFFF' width='80' align='center'>是否审核</td>
	
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"pandiandan"); 
    String url = "pandiandan_list.jsp?1=1"; 
    String sql =  "select * from pandiandan where 1=1";
	
if(request.getParameter("cangkuhao")=="" ||request.getParameter("cangkuhao")==null ){}else{sql=sql+" and cangkuhao like '%"+request.getParameter("cangkuhao")+"%'";}
if(request.getParameter("rongliang")=="" ||request.getParameter("rongliang")==null ){}else{sql=sql+" and rongliang like '%"+request.getParameter("rongliang")+"%'";}
if (request.getParameter("pandianriqi1")==""  ||request.getParameter("pandianriqi1")==null ) {}else{sql=sql+" and pandianriqi >= '"+request.getParameter("pandianriqi1")+"'";}
if (request.getParameter("pandianriqi2")==""  ||request.getParameter("pandianriqi2")==null ) {}else {sql=sql+" and pandianriqi <= '"+request.getParameter("pandianriqi2")+"'";}
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
    <td><%=map.get("pandianriqi") %></td>
    <td><%=map.get("pandianjieguo") %></td>
	
    
    <td width='80' align='center'><%=map.get("issh")%></td>
	
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center">
	
	
	<%	
	if(map.get("issh").equals("否"))
	{
	%>
	
	<a href="jinhuo_updt.jsp?id=<%=map.get("id")%>">修改</a>  <a href="jinhuo_list2.jsp?scid=<%=map.get("id") %>" onClick="return confirm('真的要删除？')">删除</a>
	
	
		<%
	} 
	else
	{
	%>
	
	 <a href="jinhuo_detail.jsp?id=<%=map.get("id")%>">详细</a>  
	
	
	<%
	}
	 %>
	
	
	
	</td>
	
  </tr>
  	<%
  }
   %>
</table>
<br>
  
${page.info }


  </body>
</html>

