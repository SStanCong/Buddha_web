<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>供应商信息</title>
	
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
	document.location.href="gongyingshangxinxi_add.jsp?id=<%=id%>";
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







new CommDAO().insert(request,response,"gongyingshangxinxi",ext,true,false,""); 

}

%>

  <body >
 <form  action="gongyingshangxinxi_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  添加供应商信息:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">供应商名称：</td><td><input name='gongyingshangmingcheng' type='text' id='gongyingshangmingcheng' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelgongyingshangmingcheng' /></td></tr>		<tr><td  width="200">供应类别：</td><td><input name='gongyingleibie' type='text' id='gongyingleibie' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelgongyingleibie' /></td></tr>		<tr><td  width="200">电话：</td><td><input name='dianhua' type='text' id='dianhua' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabeldianhua' />必需手机格式</td></tr>		<tr><td  width="200">地址：</td><td><input name='dizhi' type='text' id='dizhi' value='' onblur='' size='50' style='border:solid 1px #000000; color:#666666' /></td></tr>		<tr><td  width="200">备注：</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' onblur='' style='border:solid 1px #000000; color:#666666' ></textarea></td></tr>		
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
 
	var gongyingshangmingchengobj = document.getElementById("gongyingshangmingcheng"); if(gongyingshangmingchengobj.value==""){document.getElementById("clabelgongyingshangmingcheng").innerHTML="&nbsp;&nbsp;<font color=red>请输入供应商名称</font>";return false;}else{document.getElementById("clabelgongyingshangmingcheng").innerHTML="  "; } 	var gongyingshangmingchengobj = document.getElementById("gongyingshangmingcheng");  
if(gongyingshangmingchengobj.value!=""){  
var ajax = new AJAX();
ajax.post("factory/checkno.jsp?table=gongyingshangxinxi&col=gongyingshangmingcheng&value="+gongyingshangmingchengobj.value+"&checktype=insert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabelgongyingshangmingcheng").innerHTML="&nbsp;&nbsp;<font color=red>供应商名称已存在</font>";  
return false;
}else{document.getElementById("clabelgongyingshangmingcheng").innerHTML="  ";  
}  
} 	var gongyingleibieobj = document.getElementById("gongyingleibie"); if(gongyingleibieobj.value==""){document.getElementById("clabelgongyingleibie").innerHTML="&nbsp;&nbsp;<font color=red>请输入供应类别</font>";return false;}else{document.getElementById("clabelgongyingleibie").innerHTML="  "; } 	var dianhuaobj = document.getElementById("dianhua"); if(dianhuaobj.value!=""){ if(/^1[3|4|5|6|7|8|9][0-9]\d{8,8}$/.test(dianhuaobj.value)){document.getElementById("clabeldianhua").innerHTML=""; }else{document.getElementById("clabeldianhua").innerHTML="&nbsp;&nbsp;<font color=red>必需手机格式</font>"; return false;}}      


return true;   
}   
popheight=450;
</script>  


