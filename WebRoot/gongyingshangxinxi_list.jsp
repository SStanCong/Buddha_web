<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>供应商信息</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>已有供应商信息列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:  供应商名称：<input name="gongyingshangmingcheng" type="text" id="gongyingshangmingcheng" style='border:solid 1px #000000; color:#666666' size="12" />  供应类别：<input name="gongyingleibie" type="text" id="gongyingleibie" style='border:solid 1px #000000; color:#666666' size="12" />  电话：<input name="dianhua" type="text" id="dianhua" style='border:solid 1px #000000; color:#666666' size="12" />
   <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="导出EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='gongyingshangxinxi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>供应商名称</td>    <td bgcolor='#CCFFFF'>供应类别</td>    <td bgcolor='#CCFFFF'>电话</td>    <td bgcolor='#CCFFFF'>地址</td>        
	
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"gongyingshangxinxi"); 
    String url = "gongyingshangxinxi_list.jsp?1=1"; 
    String sql =  "select * from gongyingshangxinxi where 1=1";
	if(request.getParameter("gongyingshangmingcheng")=="" ||request.getParameter("gongyingshangmingcheng")==null ){}else{sql=sql+" and gongyingshangmingcheng like '%"+request.getParameter("gongyingshangmingcheng")+"%'";}if(request.getParameter("gongyingleibie")=="" ||request.getParameter("gongyingleibie")==null ){}else{sql=sql+" and gongyingleibie like '%"+request.getParameter("gongyingleibie")+"%'";}if(request.getParameter("dianhua")=="" ||request.getParameter("dianhua")==null ){}else{sql=sql+" and dianhua like '%"+request.getParameter("dianhua")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("gongyingshangmingcheng") %></td>    <td><%=map.get("gongyingleibie") %></td>    <td><%=map.get("dianhua") %></td>    <td><%=map.get("dizhi") %></td>        
	
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="gongyingshangxinxi_updt.jsp?id=<%=map.get("id")%>">修改</a>  <a href="gongyingshangxinxi_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('真的要删除？')">删除</a> <a href="gongyingshangxinxi_detail.jsp?id=<%=map.get("id")%>">详细</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
${page.info }


  </body>
</html>

