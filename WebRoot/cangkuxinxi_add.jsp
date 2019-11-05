<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>仓库信息</title>
	
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
  String id="";
  
 
   %>
<script language="javascript">

function gow()
{
	document.location.href="cangkuxinxi_add.jsp?id=<%=id%>";
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







new CommDAO().insert(request,response,"cangkuxinxi",ext,true,false,""); 

}

%>

  <body >
 <form  action="cangkuxinxi_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  添加仓库信息:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">仓库号：</td><td><input name='cangkuhao' type='text' id='cangkuhao' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelcangkuhao' /></td></tr>		<tr><td  width="200">容量：</td><td><input name='rongliang' type='text' id='rongliang' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelrongliang' /></td></tr>		<tr><td  width="200">剩余容量：</td><td><input name='shengyurongliang' type='text' id='shengyurongliang' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabelshengyurongliang' />必需数字型</td></tr>		<tr><td  width="200">备注：</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' onblur='' style='border:solid 1px #000000; color:#666666' ></textarea></td></tr>		
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
 
	var cangkuhaoobj = document.getElementById("cangkuhao"); if(cangkuhaoobj.value==""){document.getElementById("clabelcangkuhao").innerHTML="&nbsp;&nbsp;<font color=red>请输入仓库号</font>";return false;}else{document.getElementById("clabelcangkuhao").innerHTML="  "; } 	var cangkuhaoobj = document.getElementById("cangkuhao");  
if(cangkuhaoobj.value!=""){  
var ajax = new AJAX();
ajax.post("factory/checkno.jsp?table=cangkuxinxi&col=cangkuhao&value="+cangkuhaoobj.value+"&checktype=insert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabelcangkuhao").innerHTML="&nbsp;&nbsp;<font color=red>仓库号已存在</font>";  
return false;
}else{document.getElementById("clabelcangkuhao").innerHTML="  ";  
}  
} 	var rongliangobj = document.getElementById("rongliang"); if(rongliangobj.value==""){document.getElementById("clabelrongliang").innerHTML="&nbsp;&nbsp;<font color=red>请输入容量</font>";return false;}else{document.getElementById("clabelrongliang").innerHTML="  "; } 	var rongliangobj = document.getElementById("rongliang"); if(rongliangobj.value!=""){ if(/^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$/.test(rongliangobj.value)){document.getElementById("clabelrongliang").innerHTML=""; }else{document.getElementById("clabelrongliang").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}      var shengyurongliangobj = document.getElementById("shengyurongliang"); if(shengyurongliangobj.value!=""){ if(/^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$/.test(shengyurongliangobj.value)){document.getElementById("clabelshengyurongliang").innerHTML=""; }else{document.getElementById("clabelshengyurongliang").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}      


return true;   
}   
popheight=450;
</script>  


