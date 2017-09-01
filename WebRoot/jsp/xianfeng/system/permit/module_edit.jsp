<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://javax.xianfeng.mhtml/model" prefix="model"%>
<%@ include file="../../system.jsp"%>
<%
	String id = request.getParameter("id");
	if (id == null) {
		id = "";
	}
%>
<!DOCTYPE html>
<html>
<head>
	<title>模块管理</title>
	<base href="<%=basePath%>" />
	<jsp:include page="../../easyui.jsp"></jsp:include>
	<script type="text/javascript">
		var _id = "<%=id%>";
	</script>
</head>
<body>
	<div class="easyui-panel" title="模块维护" data-options="footer:'#footer', border: false" fit="true">
		<form id="dataForm" action="<%=basePath%>/action/system/module/doSave.action" method="post" style="padding-top:10px; padding-left:20px;">
			<input type="hidden" id="id" name="id" value="<%=id%>">
			<table width="600" border="0" cellpadding="6">
				<tr>
					<td width="60">名称：</td>
					<td>
						<input type="text" name="name" class="easyui-textbox" data-options="prompt:'请输入...'" required="true" />
					</td>
				</tr>
				<tr>
					<td>序号：</td>
					<td>
						<input type="text" name="seq" class="easyui-numberspinner" data-options="min:0" required="true" />
					</td>
				</tr>
			</table>
		</form>
	</div>
	<div id="footer" class="footbar">
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitEvt()" style="width: 60px;">提交</a>
		&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="resetEvt()" style="width: 60px;">重置</a>
	</div>
</body>
<script type="text/javascript">
$(document).ready(function() {
	if (_id != "") {
		//修改
		$.ajax({
			type: "post",
			url: "<%=basePath%>/action/system/module/doEdit.action?id=<%=id%>",
			async: false,
			cache: false,
			success : function (data) {
				$('#dataForm').form('load', data);
				$("#dataForm").validate();
			}
		});
	} else {
		//新增
		$('#dataForm').form('load', {seq: 0});
		$("#dataForm").validate();
	}
});

function submitEvt() {
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
				$.messager.alert("系统提示", "数据保存成功！", "info");
				
				//获取新增数据的id
				if (_id == "") {
					_id == result.data.id;
					document.getElementById("id").value = result.data.id;
				}
				
				//更新菜单树
				if (_id != "" && typeof(window.parent.updateNodeEvt) == "function") {
					window.parent.updateNodeEvt(result.data);
				}
			}
		}
	});
}

function resetEvt() {
	$('#dataForm').form('clear');
}
</script>
</html>