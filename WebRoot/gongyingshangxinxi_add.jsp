<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>��Ӧ����Ϣ</title>
	
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
		eval("form1."+nwbk).value=eval("form1."+nwbk).value.replace(nstr+"��", "");
	}
	else
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value+nstr+"��";
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
  ���ӹ�Ӧ����Ϣ:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">��Ӧ�����ƣ�</td><td><input name='gongyingshangmingcheng' type='text' id='gongyingshangmingcheng' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelgongyingshangmingcheng' /></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ"  style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="����" style='border:solid 1px #000000; color:#666666' /></td>
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
 
	var gongyingshangmingchengobj = document.getElementById("gongyingshangmingcheng"); if(gongyingshangmingchengobj.value==""){document.getElementById("clabelgongyingshangmingcheng").innerHTML="&nbsp;&nbsp;<font color=red>�����빩Ӧ������</font>";return false;}else{document.getElementById("clabelgongyingshangmingcheng").innerHTML="  "; } 
if(gongyingshangmingchengobj.value!=""){  
var ajax = new AJAX();
ajax.post("factory/checkno.jsp?table=gongyingshangxinxi&col=gongyingshangmingcheng&value="+gongyingshangmingchengobj.value+"&checktype=insert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabelgongyingshangmingcheng").innerHTML="&nbsp;&nbsp;<font color=red>��Ӧ�������Ѵ���</font>";  
return false;
}else{document.getElementById("clabelgongyingshangmingcheng").innerHTML="  ";  
}  
} 


return true;   
}   
popheight=450;
</script>  

