<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>出库记录</title>
	
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
  String id="";
  id=request.getParameter("id");
 HashMap mlbdq = new CommDAO().getmap(id,"qicaixinxi");
 String qicaibianhao="";
  	String qicaimingcheng="";
  	String qicaiguige="";
  	String jiage="";
  	String shuliang="";
  	
 qicaibianhao=(String)mlbdq.get("qicaibianhao");
  	qicaimingcheng=(String)mlbdq.get("qicaimingcheng");
  	qicaiguige=(String)mlbdq.get("qicaiguige");
  	jiage=(String)mlbdq.get("jiage");
  	shuliang=(String)mlbdq.get("shuliang");
  	 
 
   %>
<script language="javascript">

function gow()
{
	document.location.href="chukujilu_add.jsp?id=<%=id%>";
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

String sql="update qicaixinxi set shuliang=shuliang-"+request.getParameter("chukushuliang")+" where qicaibianhao='"+request.getParameter("qicaibianhao")+"'";
new CommDAO().commOper(sql);





new CommDAO().insert(request,response,"chukujilu",ext,true,false,""); 

}

%>

  <body >
 <form  action="chukujilu_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  添加出库记录:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">器材编号：</td><td><input name='qicaibianhao' type='text' id='qicaibianhao' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.qicaibianhao.value='<%=qicaibianhao%>';document.form1.qicaibianhao.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">器材名称：</td><td><input name='qicaimingcheng' type='text' id='qicaimingcheng' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.qicaimingcheng.value='<%=qicaimingcheng%>';document.form1.qicaimingcheng.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">器材规格：</td><td><input name='qicaiguige' type='text' id='qicaiguige' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.qicaiguige.value='<%=qicaiguige%>';document.form1.qicaiguige.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">价格：</td><td><input name='jiage' type='text' id='jiage' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.jiage.value='<%=jiage%>';document.form1.jiage.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">数量：</td><td><input name='shuliang' type='text' id='shuliang' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.shuliang.value='<%=shuliang%>';document.form1.shuliang.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">出库数量：</td><td><input name='chukushuliang' type='text' id='chukushuliang' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabelchukushuliang' />必需数字型</td></tr>
		<tr><td width="200">出库日期：</td><td><input name='chukuriqi' type='text' id='chukuriqi' value='' onblur='' readonly='readonly' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:100px; height:16px; border:solid 1px #000000; color:#666666'/></td></tr>
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
 
	var chukushuliangobj = document.getElementById("chukushuliang"); if(chukushuliangobj.value!=""){ if(/^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$/.test(chukushuliangobj.value)){document.getElementById("clabelchukushuliang").innerHTML=""; }else{document.getElementById("clabelchukushuliang").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}  
    


return true;   
}   
popheight=450;
</script>  


