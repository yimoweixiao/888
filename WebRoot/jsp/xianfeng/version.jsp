<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://javax.xianfeng.mhtml/base" prefix="base"%>
<%@ include file="system.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>系统版本</title>
<base href="<%=basePath%>" />
<script type="text/javascript" src="<%=basePath %>/plugin/jquery/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath %>/plugin/artdialog/artDialog.source.js?skin=blue"></script>
<script type="text/javascript" src="<%=basePath %>/plugin/artdialog/plugins/iframeTools.js"></script>
<style type="text/css">
.fieldLabel{
 	text-align: right;
}

.fieldValue{
 	text-align: left;
}
</style>
</head>
<body bgcolor="#ffffff">
<div style="width:450px; height:300px; margin:60px auto; border:#c3c3c3 0px solid; text-align:center;">
	<table width="100%" border="1" cellpadding="6" style="font-size:14px;">
		<tr>
			<td colspan="2" align="center">
				<span style="font-size:26px;">
					<base:Property name="System.Title"/>
				</span>
			</td>
		</tr>
		<tr>
			<td class="fieldLabel">版本号：</td>
			<td class="fieldValue">
				<base:Property name="System.Version"/>
			</td>
		</tr>
		<tr>
			<td class="fieldLabel" width="25%">版本日期：</td>
			<td class="fieldValue" width="75%">
				<base:Property name="System.Version.Date"/>
			</td>
		</tr>
		<tr>
			<td class="fieldLabel" width="25%">配置管理：</td>
			<td class="fieldValue" width="75%" style="line-height:26px;">
				<a href="javascript:void(0);" onclick="reloadConfig();return false;">&gt;&gt;重新加载配置文件</a>
				<br/>
				<a href="<%=basePath %>/jsp/xianfeng/license.jsp" target="_blank">&gt;&gt;验证授权文件</a>
				<br/>
				<a href="javascript:void(0);" onclick="validateLic();return false;">&gt;&gt;验证授权文件（Ajax）</a>
			</td>
		</tr>
	</table>
</div>
<script type="text/javascript">
function reloadConfig() {
	var url = "<%=basePath%>/servlet/reloadc.exe?type=ajax";
	url += "&class=javax.xianfeng.ApplicationConfig";
	url += "&method=reload";
	$.ajax({
		type: "post",
		url: url, 
		async: true,
		success : function (data) {
			art.dialog({
				title: "系统提示",
				icon: "info",
				ok: true,
				cancel: true,
				cancelVal: "关闭",
				content: "异步重新加载配置文件命令已经开始执行，稍后即可生效..."
			});
		}
	});
}

function validateLic () {
	$.post("<%=basePath%>/action/system/auth/doLockScr.rmi", 
		function (result) {
			result = eval('(' + result + ')');
			if (result.error) {
				art.dialog({
					title: "系统提示",
					icon: "error",
					ok: true,
					cancel: true,
					cancelVal: "关闭",
					content: result.error
				});
			} else {
				art.dialog({
					title: "系统提示",
					icon: "info",
					ok: true,
					cancel: true,
					cancelVal: "关闭",
					content: "授权验证成功！"
				});
			}
		}
	);
}
</script>
</body>
</html>