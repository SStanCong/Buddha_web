<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>订单信息</title>
	
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
  String id="";
  
 

 HashMap mssdq = new CommDAO().getmaps("caigouyuangonghao",(String)request.getSession().getAttribute("username"),"caigouyuanxinxi");
 String caigouyuangonghao="";
  	String xingming="";
  	String shouji="";
  	
 caigouyuangonghao=(String)mssdq.get("caigouyuangonghao");
  	xingming=(String)mssdq.get("xingming");
  	shouji=(String)mssdq.get("shouji");
  	
   %>
<script language="javascript">

function gow()
{
	document.location.href="dingdanxinxi_add.jsp?id=<%=id%>";
}
function hsgxia2shxurxu(nstr,nwbk)
{
	if (eval("form1."+nwbk).value.indexOf(nstr)>=0)
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value.replace(nstr+"；", "");
	}
	else
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value+nstr+"；";
	}
}
</script>

 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){



ext.put("issh","否");
ext.put("iszf","否");


new CommDAO().insert(request,response,"dingdanxinxi",ext,true,false,""); 

}

%>

  <body >
 <form  action="dingdanxinxi_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  添加订单信息:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">订单编号：</td><td><input name='dingdanbianhao' type='text' id='dingdanbianhao' value='<%=Info.getID()%>' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabeldingdanbianhao' /></td></tr>
		
		
		<tr><td  width="200">金额：</td>
		  <td><input name='jine' type='text' id='jine' value='<%
   String sql="";
	 String qicaibianhao="";String qicaimingcheng="";String jinhuojine="";String jinhuoyuan="";String jinhuoshuliang="";String issh="";

	sql="select * from jinhuo where jinhuoyuan='"+request.getSession().getAttribute("username")+"' and issh='否'";
	// RS_result=connDbBean.executeQuery(sql);
	  double ze=0;
	 String ddnr="";
	  for(HashMap map:new CommDAO().select(sql))
	  {
	
	 
	  qicaibianhao=(String)map.get("qicaibianhao");
	  qicaimingcheng=(String)map.get("qicaimingcheng");
	  jinhuojine=(String)map.get("jinhuojine");
	 // faburen=RS_result.getString("faburen");
	  jinhuoyuan=(String)map.get("jinhuoyuan");
	  jinhuoshuliang=(String)map.get("jinhuoshuliang");
	  issh=(String)map.get("issh");

	  ze=ze+Float.valueOf(jinhuojine).floatValue();
	  ddnr=ddnr+"器材名称："+qicaimingcheng+" 进货数量："+jinhuoshuliang+" 进货金额："+jinhuojine;
	  
	  
	  }
	  out.print(ze);
	  
	  String tt="update jinhuo set issh='是' where qicaibianhao='"+qicaibianhao+"' ";

    new CommDAO().commOper(tt);
	 
   %>
		' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />		    &nbsp;*
	      <label id='clabeljine' /></td></tr>
		<tr><td  width="200">订单内容：</td><td><textarea name='dingdanneirong' cols='50' rows='5' id='dingdanneirong' onblur='' style='border:solid 1px #000000; color:#666666' ><%=ddnr%></textarea></td></tr>
		<tr><td  width="200">采购员工号：</td><td><input name='caigouyuangonghao' type='text' id='caigouyuangonghao' onblur='' style='border:solid 1px #000000; color:#666666' value='<%=request.getSession().getAttribute("username")%>' readonly="readonly" /></td></tr><script language="javascript">document.form1.caigouyuangonghao.value='<%=caigouyuangonghao%>';document.form1.caigouyuangonghao.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">姓名：</td><td><input name='xingming' type='text' id='xingming' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr><script language="javascript">document.form1.xingming.value='<%=xingming%>';document.form1.xingming.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">手机：</td><td><input name='shouji' type='text' id='shouji' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr><script language="javascript">document.form1.shouji.value='<%=shouji%>';document.form1.shouji.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">备注：</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' onblur='' style='border:solid 1px #000000; color:#666666' ></textarea></td></tr>
		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交"  style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>




<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	var dingdanbianhaoobj = document.getElementById("dingdanbianhao"); if(dingdanbianhaoobj.value==""){document.getElementById("clabeldingdanbianhao").innerHTML="&nbsp;&nbsp;<font color=red>请输入订单编号</font>";return false;}else{document.getElementById("clabeldingdanbianhao").innerHTML="  "; } 
	var jineobj = document.getElementById("jine"); if(jineobj.value==""){document.getElementById("clabeljine").innerHTML="&nbsp;&nbsp;<font color=red>请输入金额</font>";return false;}else{document.getElementById("clabeljine").innerHTML="  "; } 
	


return true;   
}   
popheight=450;
</script>  


