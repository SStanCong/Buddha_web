<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>������Ϣ</title>
	
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







new CommDAO().insert(request,response,"qicaixinxi",ext,true,false,""); 

}

%>

  <body >
 <form  action="qicaixinxi_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  ���������Ϣ:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">���ı�ţ�</td><td><input name='qicaibianhao' type='text' id='qicaibianhao' value='<%=Info.getID()%>' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td  width="200">�������ƣ�</td><td><input name='qicaimingcheng' type='text' id='qicaimingcheng' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelqicaimingcheng' /></td></tr>
		<tr><td  width="200">���Ĺ��</td><td><input name='qicaiguige' type='text' id='qicaiguige' value='' onblur='' size='50' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td  width="200">�۸�</td><td><input name='jiage' type='text' id='jiage' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabeljiage' />����������</td></tr>
		<tr><td  width="200">������</td><td><input name='shuliang' type='text' id='shuliang' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabelshuliang' />����������</td></tr>
		<tr><td  width="200">�ֿ�ţ�</td><td><input name='cangkuhao' type='text' id='cangkuhao' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.cangkuhao.value='<%=cangkuhao%>';document.form1.cangkuhao.setAttribute("readOnly",'true');</script>
		<tr><td>��Ӧ�����ƣ�</td><td><%=Info.getselect("gongyingshangmingcheng","gongyingshangxinxi","gongyingshangmingcheng")%></td></tr>
		<tr><td  width="200">�����أ�</td><td><input name='shengchandi' type='text' id='shengchandi' value='' onblur='' size='50' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td  width="200">��ע��</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' onblur='' style='border:solid 1px #000000; color:#666666' ></textarea></td></tr>
		
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
 
	var qicaimingchengobj = document.getElementById("qicaimingcheng"); if(qicaimingchengobj.value==""){document.getElementById("clabelqicaimingcheng").innerHTML="&nbsp;&nbsp;<font color=red>��������������</font>";return false;}else{document.getElementById("clabelqicaimingcheng").innerHTML="  "; } 
	var jiageobj = document.getElementById("jiage"); if(jiageobj.value!=""){ if(/^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$/.test(jiageobj.value)){document.getElementById("clabeljiage").innerHTML=""; }else{document.getElementById("clabeljiage").innerHTML="&nbsp;&nbsp;<font color=red>����������</font>"; return false;}}  
    var shuliangobj = document.getElementById("shuliang"); if(shuliangobj.value!=""){ if(/^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$/.test(shuliangobj.value)){document.getElementById("clabelshuliang").innerHTML=""; }else{document.getElementById("clabelshuliang").innerHTML="&nbsp;&nbsp;<font color=red>����������</font>"; return false;}}  
    


return true;   
}   
popheight=450;
</script>  


