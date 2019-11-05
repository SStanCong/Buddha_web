<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>质检信息</title>
	<link rel="stylesheet" href="kindeditor_a5/themes/default/default.css" />
	<link rel="stylesheet" href="kindeditor_a5/plugins/code/prettify.css" />
	<script charset="utf-8" src="kindeditor_a5/kindeditor.js"></script>
	<script charset="utf-8" src="kindeditor_a5/lang/zh_CN.js"></script>
	<script charset="utf-8" src="kindeditor_a5/plugins/code/prettify.js"></script>
	<script>
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="zhijianjieguo"]', {
				cssPath : 'kindeditor_a5/plugins/code/prettify.css',
				uploadJson : 'kindeditor_a5/jsp/upload_json.jsp',
				fileManagerJson : 'kindeditor_a5/jsp/file_manager_json.jsp',
				allowFileManager : true,
				afterCreate : function() {
					var self = this;
					K.ctrl(document, 13, function() {
						self.sync();
						document.forms['example'].submit();
					});
					K.ctrl(self.edit.doc, 13, function() {
						self.sync();
						document.forms['example'].submit();
					});
				}
			});
			prettyPrint();
		});
	</script>
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
	document.location.href="zhijianxinxi_add.jsp?id=<%=id%>&qicaimingcheng="+document.form1.qicaimingcheng.value;
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



new CommDAO().insert(request,response,"zhijianxinxi",ext,true,false,""); 

}

%>

  <body >
 <form  action="zhijianxinxi_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  添加质检信息:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td width="200">质检日期：</td><td><input name='zhijianriqi' type='text' id='zhijianriqi' value='' onblur='checkform()' readonly='readonly' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:100px; height:16px; border:solid 1px #000000; color:#666666'/>&nbsp;*<label id='clabelzhijianriqi' /></td></tr>		<tr><td>器材名称：</td><td><%=Info.getselectsl("qicaimingcheng","qicaixinxi","qicaimingcheng")%>&nbsp;*<label id='clabelqicaimingcheng' /></td></tr>		<tr><td  width="200">器材规格：</td><td><input name='qicaiguige' type='text' id='qicaiguige' style='border:solid 1px #000000; color:#666666' ></td></tr>		<tr><td  width="200">仓库号：</td><td><input name='cangkuhao' type='text' id='cangkuhao' style='border:solid 1px #000000; color:#666666' ></td></tr>		<tr><td  width="200">质检结果：</td><td><textarea name="zhijianjieguo" cols="100" rows="8" style="width:700px;height:200px;visibility:hidden;"></textarea></td></tr>		<tr><td  width="200">备注：</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' onblur='' style='border:solid 1px #000000; color:#666666' ></textarea></td></tr>		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交"  style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>

<%
if(request.getParameter("qicaimingcheng")==null || request.getParameter("qicaimingcheng").equals("")){}else{

HashMap mmm = new CommDAO().getmaps("qicaimingcheng",request.getParameter("qicaimingcheng"),"qicaixinxi"); 
%>
<script language="javascript">
document.form1.qicaimingcheng.value="<%=mmm.get("qicaimingcheng")%>";document.form1.qicaiguige.value="<%=mmm.get("qicaiguige")%>";document.form1.cangkuhao.value="<%=mmm.get("cangkuhao")%>";//suilafuzhi

</script>
<%
}
%>


<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	var zhijianriqiobj = document.getElementById("zhijianriqi"); if(zhijianriqiobj.value==""){document.getElementById("clabelzhijianriqi").innerHTML="&nbsp;&nbsp;<font color=red>请输入质检日期</font>";return false;}else{document.getElementById("clabelzhijianriqi").innerHTML="  "; } 	var qicaimingchengobj = document.getElementById("qicaimingcheng"); if(qicaimingchengobj.value==""){document.getElementById("clabelqicaimingcheng").innerHTML="&nbsp;&nbsp;<font color=red>请输入器材名称</font>";return false;}else{document.getElementById("clabelqicaimingcheng").innerHTML="  "; } 	


return true;   
}   
popheight=450;
</script>  


