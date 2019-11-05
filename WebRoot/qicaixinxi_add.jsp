<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>器材信息</title>
	
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
  String id="";
  id=request.getParameter("id");
 HashMap mlbdq = new CommDAO().getmap(id,"cangkuxinxi");
 String cangkuhao="";
  	
 cangkuhao=(String)mlbdq.get("cangkuhao");
  	 
 
   %>
<script language="javascript">

function gow()
{
	document.location.href="qicaixinxi_add.jsp?id=<%=id%>";
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







new CommDAO().insert(request,response,"qicaixinxi",ext,true,false,""); 

}

%>

  <body >
 <form  action="qicaixinxi_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  添加器材信息:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">器材编号：</td><td><input name='qicaibianhao' type='text' id='qicaibianhao' value='<%=Info.getID()%>' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td  width="200">器材名称：</td><td><input name='qicaimingcheng' type='text' id='qicaimingcheng' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelqicaimingcheng' /></td></tr>
		<tr><td  width="200">器材规格：</td><td><input name='qicaiguige' type='text' id='qicaiguige' value='' onblur='' size='50' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td  width="200">价格：</td><td><input name='jiage' type='text' id='jiage' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabeljiage' />必需数字型</td></tr>
		<tr><td  width="200">数量：</td><td><input name='shuliang' type='text' id='shuliang' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabelshuliang' />必需数字型</td></tr>
		<tr><td  width="200">仓库号：</td><td><input name='cangkuhao' type='text' id='cangkuhao' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.cangkuhao.value='<%=cangkuhao%>';document.form1.cangkuhao.setAttribute("readOnly",'true');</script>
		<tr><td>供应商名称：</td><td><%=Info.getselect("gongyingshangmingcheng","gongyingshangxinxi","gongyingshangmingcheng")%></td></tr>
		<tr><td  width="200">生产地：</td><td><input name='shengchandi' type='text' id='shengchandi' value='' onblur='' size='50' style='border:solid 1px #000000; color:#666666' /></td></tr>
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
 
	var qicaimingchengobj = document.getElementById("qicaimingcheng"); if(qicaimingchengobj.value==""){document.getElementById("clabelqicaimingcheng").innerHTML="&nbsp;&nbsp;<font color=red>请输入器材名称</font>";return false;}else{document.getElementById("clabelqicaimingcheng").innerHTML="  "; } 
	var jiageobj = document.getElementById("jiage"); if(jiageobj.value!=""){ if(/^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$/.test(jiageobj.value)){document.getElementById("clabeljiage").innerHTML=""; }else{document.getElementById("clabeljiage").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}  
    var shuliangobj = document.getElementById("shuliang"); if(shuliangobj.value!=""){ if(/^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$/.test(shuliangobj.value)){document.getElementById("clabelshuliang").innerHTML=""; }else{document.getElementById("clabelshuliang").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}  
    


return true;   
}   
popheight=450;
</script>  


