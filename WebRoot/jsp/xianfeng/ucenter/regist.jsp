<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://javax.xianfeng.mhtml/model" prefix="model"%>
<%@ include file="../system.jsp"%>
<%
%>
<!DOCTYPE html>
<html>
<head>
	<title>注册</title>
	<base href="<%=basePath%>" />
	<jsp:include page="../easyui.jsp"></jsp:include>
	<link rel="stylesheet" href="<%=basePath %>/jsp/xianfeng/ucenter/default.css"/>
	<link rel="stylesheet" href="<%=basePath %>/skins/css/pwdstyle.css"/>
	<script type="text/javascript" src="<%=basePath %>/skins/pwdstyle.js"></script>
	<style type="text/css">
	.head {height: 28px;}
	.panel-title {text-align: center; font-size: 18px; line-height: 28px;}
	</style>
</head>
<body class="easyui-layout">
    <div id="divHeader" data-options="region:'north',border:false,href:'<%=basePath %>/jsp/xianfeng/ucenter/login-header.jsp'"></div>
    <div id="divContent" data-options="region:'center',border:false" style="">
    	<br/>
    	<table width="100%" border="0">
    		<tr>
    			<td width="20%">&nbsp;</td>
    			<td width="60%" align="center">
    				 <div id="loginDiv" title="用户注册" class="easyui-panel" data-options="headerCls:'head', border:true" style="width:560px;height:450px;">
			        	<form id="dataForm" action="#" method="post">
				           <table width="500" cellpadding="6" style="margin-top:10px;">
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
				           			<td align="right">确认密码：</td>
				           			<td>
				           				<input type="password" id="regxpwdd" class="easyui-textbox" value="" required="true" style="width: 150px;"/>
				           			</td>
				           		</tr>
				           		<tr>
									<td align="right">所在单位：</td>
									<td>
										<input type="text" id="corpName" name="corpName" class="easyui-textbox" data-options="editable:false, icons:[{iconCls:'icon-search', handler:corpSelect}]" required="true" style="width: 150px;"/>
										<input type="hidden" id="corpId" name="corpId"/>
									</td>
								</tr>
				           		<tr>
									<td align="right">所在部门：</td>
									<td>
										<input type="text" id="deptName" name="deptName" class="easyui-textbox" data-options="editable:false, icons:[{iconCls:'icon-search', handler:deptSelect}]" required="true" style="width: 150px;"/>
										<input type="hidden" id="deptId" name="deptId"/>
									</td>
								</tr>
								<tr>
									<td align="right">岗位：</td>
									<td>
										<input type="text" id="postName" name="postName" class="easyui-textbox" data-options="editable:false, icons:[{iconCls:'icon-search', handler:postSelect}]" required="true" style="width: 150px;"/>
										<input type="hidden" id="postId" name="postId"/>
									</td>
								</tr>
								<tr>
				           			<td align="right">用户名：</td>
				           			<td>
				           				<input type="text" id="userName" class="easyui-textbox" value="" required="true" style="width: 150px;"/>
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
				           				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				           				<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-select'" onclick="submitEvt();return false;" style="width:60px;">注册</a>
				    					&nbsp;&nbsp;
				    					<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-undo'" onclick="loginEvt();return false;" style="width:80px;">返回登录</a>
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
	
	//密码强度校验
	$('#password').textbox("textbox").keyup(function () { 
		pwdChgEvt($(this).val());
	}); 
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
	$.post("<%=basePath%>/action/system/auth/doRegist.action", {
			id : $("#userId").val(),
			name : $("#userName").val(),
			password : $("#password").val(),
			corpName : $("#corpName").val(),
			deptName : $("#deptName").val(),
			postId : $("#postId").val(),
			verifyCode : $("#verifycode").val()
		}, 
		function (data) {
			data = eval('(' + data + ')')
			if (data.error) {
				$.messager.alert("系统提示", data.error, "error");
				return;
			} else {
				location.href = "<%=basePath%>/jsp/xianfeng/ucenter/login.jsp";
			}
		}
	);
}

/**
 * 选择单位
 */
function corpSelect () {
	var url = "<%=basePath%>/jsp/xianfeng/platform/organ_help.jsp?showType=CORP&selectType=CORP";
	url += "&expend=true";
	art.dialog.open(url, {
		title: "选择单位",
		width: 420,
		height: 300,
		button: [{
			name: "确定",
			focus: true,
			callback: function () {
				var result = this.iframe.contentWindow.getSelectedEvt();
				if(result == null || result.length == 0) {
					art.dialog({
						title: "系统提示", 
						content: "请选择节点！", 
						icon: "warning",
						time: 2
					});
					return false;
				} else {
					var organ = result[0];
					$("#corpName").textbox("setValue", organ.name);
					$("#corpId").val(organ.id);
					this.close();
				}
			}
		}, {
			name: "清空",
			callback: function () {
				$("#corpName").textbox("setValue", "");
				$("#corpId").val("");
				this.close();
			}
		}, {
			name: "关闭",
			callback: function () {
				this.close();
			}
		}]
	});
}

/**
 * 选择部门
 */
function deptSelect () {
	var corpId = $("#corpId").val();
	if (corpId == ""){
		art.dialog({
			title: "系统提示", 
			content: "请先选择单位！", 
			icon: "warning",
			time: 2
		});
		return;
	}
	
	var url = "<%=basePath%>/jsp/xianfeng/platform/organ_help.jsp?showType=CORP,DEPT&selectType=DEPT";
	url += "&parentId=" + corpId;
	url += "&expend=true";
	art.dialog.open(url, {
		title: "选择部门",
		width: 420,
		height: 300,
		button: [{
			name: "确定",
			focus: true,
			callback: function () {
				var result = this.iframe.contentWindow.getSelectedEvt();
				if(result == null || result.length == 0) {
					art.dialog({
						title: "系统提示", 
						content: "请选择节点！", 
						icon: "warning",
						time: 2
					});
					return false;
				} else {
					var organ = result[0];
					$("#deptName").textbox("setValue", organ.name);
					$("#deptId").val(organ.id);
					this.close();
				}
			}
		}, {
			name: "清空",
			callback: function () {
				$("#deptName").textbox("setValue", "");
				$("#deptId").val("");
				this.close();
			}
		}, {
			name: "关闭",
			callback: function () {
				this.close();
			}
		}]
	});
}
/**
 * 选择岗位
 */
function postSelect () {
	var deptId = $("#deptId").val();
	if (deptId == ""){
		art.dialog({
			title: "系统提示", 
			content: "请先选择部门！", 
			icon: "warning",
			time: 2
		});
		return;
	}
	
	var url = "<%=basePath%>/jsp/xianfeng/platform/organ_help.jsp?showType=CORP,DEPT,POST&selectType=POST";
	url += "&parentId=" + deptId;
	url += "&expend=true";
	art.dialog.open(url, {
		title: "选择岗位",
		width: 420,
		height: 300,
		button: [{
			name: "确定",
			focus: true,
			callback: function () {
				var result = this.iframe.contentWindow.getSelectedEvt();
				if(result == null || result.length == 0) {
					art.dialog({
						title: "系统提示", 
						content: "请选择节点！", 
						icon: "warning",
						time: 2
					});
					return false;
				} else {
					var organ = result[0];
					$("#postName").textbox("setValue", organ.name);
					$("#postId").val(organ.id);
					this.close();
				}
			}
		}, {
			name: "清空",
			callback: function () {
				$("#postName").textbox("setValue", "");
				$("#postId").val("");
				this.close();
			}
		}, {
			name: "关闭",
			callback: function () {
				this.close();
			}
		}]
	});
}

function loginEvt() {
	location.href = "<%=basePath%>/jsp/xianfeng/ucenter/login.jsp";
}
</script>
</html>
