<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>����</title>
	
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
  String id="";
  id=request.getParameter("id");
 HashMap mlbdq = new CommDAO().getmap(id,"qicaixinxi");
 String qicaibianhao="";  	String qicaimingcheng="";  	String qicaiguige="";  	
 qicaibianhao=(String)mlbdq.get("qicaibianhao");  	qicaimingcheng=(String)mlbdq.get("qicaimingcheng");  	qicaiguige=(String)mlbdq.get("qicaiguige");  	 
 
   %>
<script language="javascript">

function gow()
{
	document.location.href="jinhuo_add.jsp?id=<%=id%>";
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

double jinhuojinej=0;jinhuojinej=Float.valueOf(request.getParameter("jinhuojiage")).floatValue()*Float.valueOf(request.getParameter("jinhuoshuliang")).floatValue();

ext.put("issh","��");

ext.put("jinhuojine",jinhuojinej);

new CommDAO().insert(request,response,"jinhuo",ext,true,false,""); 

}

%>

  <body >
 <form  action="jinhuo_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  ��ӽ���:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">���ı�ţ�</td><td><input name='qicaibianhao' type='text' id='qicaibianhao' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.qicaibianhao.value='<%=qicaibianhao%>';document.form1.qicaibianhao.setAttribute("readOnly",'true');</script>		<tr><td  width="200">�������ƣ�</td><td><input name='qicaimingcheng' type='text' id='qicaimingcheng' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.qicaimingcheng.value='<%=qicaimingcheng%>';document.form1.qicaimingcheng.setAttribute("readOnly",'true');</script>		<tr><td  width="200">���Ĺ��</td><td><input name='qicaiguige' type='text' id='qicaiguige' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.qicaiguige.value='<%=qicaiguige%>';document.form1.qicaiguige.setAttribute("readOnly",'true');</script>		<tr><td>��Ӧ�����ƣ�</td><td><%=Info.getselect("gongyingshangmingcheng","gongyingshangxinxi","gongyingshangmingcheng")%></td></tr>		<tr><td width="200">����ʱ�䣺</td><td><input name='jinhuoshijian' type='text' id='jinhuoshijian' value='' onblur='' readonly='readonly' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:100px; height:16px; border:solid 1px #000000; color:#666666'/></td></tr>		<tr><td  width="200">�����۸�</td><td><input name='jinhuojiage' type='text' id='jinhuojiage' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabeljinhuojiage' />����������</td></tr>		<tr><td  width="200">����������</td><td><input name='jinhuoshuliang' type='text' id='jinhuoshuliang' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabeljinhuoshuliang' />����������</td></tr>		<tr><td  width="200">������</td><td> �������д��ϵͳ�Զ�����</td></tr>		<tr><td  width="200">����Ա��</td><td><input name='jinhuoyuan' type='text' id='jinhuoyuan' onblur='' style='border:solid 1px #000000; color:#666666' value='<%=request.getSession().getAttribute("username")%>' readonly="readonly" /></td></tr>		
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
 
	var jinhuojiageobj = document.getElementById("jinhuojiage"); if(jinhuojiageobj.value!=""){ if(/^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$/.test(jinhuojiageobj.value)){document.getElementById("clabeljinhuojiage").innerHTML=""; }else{document.getElementById("clabeljinhuojiage").innerHTML="&nbsp;&nbsp;<font color=red>����������</font>"; return false;}}      var jinhuoshuliangobj = document.getElementById("jinhuoshuliang"); if(jinhuoshuliangobj.value!=""){ if(/^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$/.test(jinhuoshuliangobj.value)){document.getElementById("clabeljinhuoshuliang").innerHTML=""; }else{document.getElementById("clabeljinhuoshuliang").innerHTML="&nbsp;&nbsp;<font color=red>����������</font>"; return false;}}      


return true;   
}   
popheight=450;
</script>  


