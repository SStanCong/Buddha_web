<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>出库记录</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>已有出库记录列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:  器材编号：<input name="qicaibianhao" type="text" id="qicaibianhao" style='border:solid 1px #000000; color:#666666' size="12" />  器材名称：<input name="qicaimingcheng" type="text" id="qicaimingcheng" style='border:solid 1px #000000; color:#666666' size="12" />
   <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="导出EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='chukujilu_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>器材编号</td>    <td bgcolor='#CCFFFF'>器材名称</td>    <td bgcolor='#CCFFFF'>器材规格</td>    <td bgcolor='#CCFFFF'>价格</td>    <td bgcolor='#CCFFFF'>数量</td>    <td bgcolor='#CCFFFF'>出库数量</td>    <td bgcolor='#CCFFFF' width='65' align='center'>出库日期</td>    <td bgcolor='#CCFFFF'>备注</td>    
	
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"chukujilu"); 
    String url = "chukujilu_list.jsp?1=1"; 
    String sql =  "select * from chukujilu where 1=1";
	if(request.getParameter("qicaibianhao")=="" ||request.getParameter("qicaibianhao")==null ){}else{sql=sql+" and qicaibianhao like '%"+request.getParameter("qicaibianhao")+"%'";}if(request.getParameter("qicaimingcheng")=="" ||request.getParameter("qicaimingcheng")==null ){}else{sql=sql+" and qicaimingcheng like '%"+request.getParameter("qicaimingcheng")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("qicaibianhao") %></td>    <td><%=map.get("qicaimingcheng") %></td>    <td><%=map.get("qicaiguige") %></td>    <td><%=map.get("jiage") %></td>    <td><%=map.get("shuliang") %></td>    <td><%=map.get("chukushuliang") %></td>    <td><%=map.get("chukuriqi") %></td>    <td><%=map.get("beizhu") %></td>    
	
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="chukujilu_updt.jsp?id=<%=map.get("id")%>">修改</a>  <a href="chukujilu_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('真的要删除？')">删除</a> <!--qiatnalijne--> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
${page.info }


  </body>
</html>

