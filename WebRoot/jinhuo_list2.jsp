<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>进货</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>已有进货列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:  器材编号：<input name="qicaibianhao" type="text" id="qicaibianhao" style='border:solid 1px #000000; color:#666666' size="12" />  器材名称：<input name="qicaimingcheng" type="text" id="qicaimingcheng" style='border:solid 1px #000000; color:#666666' size="12" />  器材规格：<input name="qicaiguige" type="text" id="qicaiguige" style='border:solid 1px #000000; color:#666666' size="12" />
     <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>器材编号</td>
    <td bgcolor='#CCFFFF'>器材名称</td>
    <td bgcolor='#CCFFFF'>器材规格</td>
    <td bgcolor='#CCFFFF'>供应商名称</td>
    <td bgcolor='#CCFFFF' width='65' align='center'>进货时间</td>
    <td bgcolor='#CCFFFF'>进货价格</td>
    <td bgcolor='#CCFFFF'>进货数量</td>
    <td bgcolor='#CCFFFF'>进货金额</td>
    <td bgcolor='#CCFFFF'>进货员</td>
    <td bgcolor='#CCFFFF' width='80' align='center'>是否审核</td>
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
 <% 
  	


  	 new CommDAO().delete(request,"jinhuo"); 
    String url = "jinhuo_list2.jsp?1=1"; 
    String sql =  "select * from jinhuo where jinhuoyuan='"+request.getSession().getAttribute("username")+"' ";
	
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
</table><br>
  
${page.info }


  <input type="submit" name="Submit2" value="生成订单" onClick="location.href='dingdanxinxi_add.jsp'" style='border:solid 1px #000000; color:#666666' />
  </body>
</html>

