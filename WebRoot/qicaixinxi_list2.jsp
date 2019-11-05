<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>器材信息</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>已有器材信息列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:  器材编号：<input name="qicaibianhao" type="text" id="qicaibianhao" style='border:solid 1px #000000; color:#666666' size="12" />  器材名称：<input name="qicaimingcheng" type="text" id="qicaimingcheng" style='border:solid 1px #000000; color:#666666' size="12" />  入库时间：<input name="rukushijian1" type="text" id="rukushijian1"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:80px; height:20px; border:solid 1px #000000; color:#666666' />-<input name="rukushijian2" type="text" id="rukushijian2"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:80px; height:20px; border:solid 1px #000000; color:#666666' />  仓库号：<input name="cangkuhao" type="text" id="cangkuhao" style='border:solid 1px #000000; color:#666666' size="12" />  供应商名称：<%=Info.getselect("gongyingshangmingcheng","gongyingshangxinxi","gongyingshangmingcheng"," 1=1 ")%>
   <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="导出EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='qicaixinxi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td width="94" bgcolor='#CCFFFF'>器材编号</td>
    <td width="94" bgcolor='#CCFFFF'>器材名称</td>
    <td width="94" bgcolor='#CCFFFF'>器材规格</td>
    <td width="50" bgcolor='#CCFFFF'>价格</td>
    <td width="50" bgcolor='#CCFFFF'>数量</td>
    <td width="72" bgcolor='#CCFFFF'>仓库号</td>
    <td width="116" bgcolor='#CCFFFF'>供应商名称</td>
    <td width="77" bgcolor='#CCFFFF'>生产地</td>
    
    
	
    <td width="95" align="center" bgcolor="CCFFFF">添加时间</td>
    
    <td width="103" align="center" bgcolor="CCFFFF">操作</td>
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
    
    
	
    <td width="95" align="center"><%=map.get("addtime") %></td>
    <td width="103" align="center"><a href="qicaixinxi_detail.jsp?id=<%=map.get("id")%>">详细</a> <a href="jinhuo_add.jsp?id=<%=map.get("id")%>">进货</a></td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
${page.info }


  </body>
</html>

