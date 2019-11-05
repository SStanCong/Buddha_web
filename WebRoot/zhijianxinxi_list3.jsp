<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>质检信息</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>已有质检信息列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:  质检日期：<input name="zhijianriqi1" type="text" id="zhijianriqi1"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:80px; height:20px; border:solid 1px #000000; color:#666666' />-<input name="zhijianriqi2" type="text" id="zhijianriqi2"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:80px; height:20px; border:solid 1px #000000; color:#666666' />  器材名称：<input name="qicaimingcheng" type="text" id="qicaimingcheng" style='border:solid 1px #000000; color:#666666' size="12" />  器材规格：<input name="qicaiguige" type="text" id="qicaiguige" style='border:solid 1px #000000; color:#666666' size="12" />
   <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="导出EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='zhijianxinxi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF' width='65' align='center'>质检日期</td>
    <td bgcolor='#CCFFFF'>器材名称</td>
    <td bgcolor='#CCFFFF'>器材规格</td>
    <td bgcolor='#CCFFFF'>仓库号</td>
    <td bgcolor='#CCFFFF'>质检结果</td>
    
    <td bgcolor='#CCFFFF' width='80' align='center'>是否审核</td>
	
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
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
    
    <td width='80' align='center'><%=map.get("issh")%></td>
	
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="zhijianxinxi_detail.jsp?id=<%=map.get("id")%>">详细</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
${page.info }


  </body>
</html>

