<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://javax.xianfeng.mhtml/model" prefix="model"%>
<%@ include file="../system.jsp"%>
<%
%>
<!DOCTYPE html>
<html>
<head>
	<title>登录</title>
	<base href="<%=basePath%>" />
	<jsp:include page="../easyui.jsp"></jsp:include>
	<link rel="stylesheet" href="<%=basePath %>/jsp/xianfeng/ucenter/default.css"/>
	<style type="text/css">
	.head {height: 28px;}
	.panel-title {text-align: center; font-size: 18px; line-height: 28px;}
	</style>
</head>
<body class="easyui-layout">
    <div id="divHeader" data-options="region:'north',border:false,href:'<%=basePath %>/jsp/xianfeng/ucenter/login-header.jsp'"></div>
    <div id="divContent" data-options="region:'center',border:false" style="">
    	<br/><br/><br/><br/>
    	<table width="100%" border="0">
    		<tr>
    			<td width="20%">&nbsp;</td>
    			<td width="60%" align="center">
    				 <div id="loginDiv" title="用户登录" class="easyui-panel" data-options="headerCls:'head', border:true" style="width:450px;height:300px;">
			        	<form id="dataForm" action="#" method="post">
				           <table width="420" cellpadding="6" style="margin-top:40px;">
				           		<tr>
				           			<td width="150" align="right">登录名：</td>
				           			<td>
				           				<input type="text" id="userId" class="easyui-textbox" value="" required="true" style="width: 150px;"/>
				           			</td>
				           		</tr>
				           		<tr>
				           			<td align="right">密码：</td>
				           			<td>
				           				<input type="password" id="password" class="easyui-textbox" value="" required="true" style="width: 150px;"/>
				           			</td>
				           		</tr>
				           		<tr>
				           			<td align="right">验证码：</td>
				           			<td>
				           				<img src="<%=basePath %>/servlet/verifycode.exe" class="yzm-img" title="看不清？请点击刷新" width="75" height="24" 
											onclick="this.src='<%=basePath %>/servlet/verifycode.exe?time='+new Date().getTime()" style="margin-bottom: -10px;"/>
										<input type="text" id="verifycode" name="verifycode" class="easyui-textbox" required="true" validType="length[0,4]" style="width: 70px;"/>
				           			</td>
				           		</tr>
				           		<tr>
				           			<td colspan="2" align="center">
				           				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				           				<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-select'" onclick="submitEvt();return false;" style="width:60px;">登录</a>
				    					&nbsp;&nbsp;
				    					<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-user'" onclick="registEvt();return false;" style="width:60px;">注册</a>
				    					&nbsp;&nbsp;
				    					<a href="javascript:void(0);" onclick="forgetPwdEvt();">忘记密码？</a>
				           			</td>
				           		</tr>
				           </table>
			           </form>
			        </div>
    			</td>
    			<td width="20%">&nbsp;</td>
    		</tr>
    	</table>
    </div>
    <div id="divFooter" data-options="region:'south',border:false,href:'<%=basePath %>/jsp/xianfeng/ucenter/footer.jsp'"></div>
</body>
<script type="text/javascript">
$(document).ready(function() {
	$("#dataForm").validate();
	
});

$("#dataForm").keyup(function(event){
	if(event.keyCode == 13){
		submitEvt();
	}
});

function submitEvt() {
	$("#dataForm").form("submit", {
		onSubmit : function() {
			var isValid = $(this).form('validate');
			if (!isValid) {
				return isValid;
			}
			submitHandler();
			return false;
		}
	});
}

function submitHandler() {
	$.ajax( {
		type : "post",
		url : "<%=basePath%>/action/system/auth/doLogin.action",
		async : false,
		cache: false,
		data : {
			userId : $("#userId").val(),
			password : $("#password").val(),
			verifyCode : $("#verifycode").val()
		},
		success : function (data) {
			data = eval('(' + data + ')')
			if (data.error) {
				$.messager.alert("系统提示", data.error, "error");
				return;
			} else {
				location.href = "<%=basePath%>/jsp/xianfeng/ucenter/index.jsp";
			}
		}
	});
}

function registEvt () {
	location.href = "<%=basePath%>/jsp/xianfeng/ucenter/regist.jsp";
}

function forgetPwdEvt () {
	art.dialog({
		title: "系统提示",
		content: "请联系管理员重置密码！",
		icon: "warning"
	});
}
</script>
</html>
