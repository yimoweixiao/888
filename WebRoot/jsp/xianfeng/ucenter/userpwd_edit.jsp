<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://javax.xianfeng.mhtml/model" prefix="model"%>
<%@ include file="../system.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>修改密码</title>
<base href="<%=basePath%>" />
<jsp:include page="../easyui.jsp"></jsp:include>
<link rel="stylesheet" href="<%=basePath %>/skins/css/pwdstyle.css"/>
<script type="text/javascript" src="<%=basePath %>/skins/pwdstyle.js"></script>
</head>
<body>
<div class="easyui-panel" data-options="footer:'#footer', border: false" fit="true">
	<form id="dataForm" action="<%=basePath%>/action/system/auth/doPwdEdit.action" method="post"  style="padding-top: 20px;">
		<table width="100%" border="0" cellpadding="6">
			<tr>
				<td width="25%" align="right">原密码：</td>
				<td align="left">
					<input type="password" id="password" name="password" class="easyui-textbox" required="true" >
				</td>
			</tr>
			<tr>
				<td align="right">新密码：</td>
				<td align="left">
					<input type="password" id="newpwd" name="newpwd" class="easyui-textbox" required="true" >
				</td>
			</tr>
			<tr>    
				<td></td>       
				<td id="level" class="pwd-strength">           	
					<div class="pwd-bar"></div>
					<div class="pwd-bar-on"></div>
					<div class="pwd-txt">
						<span>弱</span>
						<span>中</span>
						<span>强</span>
					</div>
				</td>	
			</tr>
			<tr>
				<td align="right">确认新密码：</td>
				<td align="left">
					<input type="password" id="regxpwd" name="regxpwd" class="easyui-textbox" required="true" >
				</td>
			</tr>
		</table>
	</form>
</div>
<div id="footer" class="footbar">
	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitEvt()" style="width: 60px;">保存</a>
	&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="resetEvt()" style="width: 60px;">重置</a>
</div>
</body>
<script type="text/javascript">
$(document).ready(function() {
	$("#dataForm").validate();
	
	$('#newpwd').textbox("textbox").keyup(function () { 
		pwdChgEvt($(this).val());
	}); 
});

function submitEvt () {
	$("#dataForm").form("submit", {
		onSubmit : function() {
			var isValid = $(this).form('validate');
			return isValid;
		},
		success : function(result) {
			result = eval('(' + result + ')');
			if (result.error) {
				$.messager.alert("系统提示", result.error, "error");
			} else {
				$.messager.alert("系统提示", "密码修改成功！", "info");
			}
		}
	});
}

function resetEvt() {
	$('#dataForm').form('clear');
}
</script>
</html>
