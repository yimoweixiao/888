<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://javax.xianfeng.mhtml/model" prefix="model"%>
<%@ include file="../../system.jsp"%>
<%
	String id = request.getParameter("id");
	String includeSelf = "true";
	if (id == null) {
		id = "";
		includeSelf = "false"; //新增下级节点类型不包含本身
	}
	String typeId = request.getParameter("typeId");
	String parentId = request.getParameter("parentId");
%>
<!DOCTYPE html>
<html>
<head>
	<title>组织机构维护</title>
	<base href="<%=basePath%>" />
	<jsp:include page="../../easyui.jsp"></jsp:include>
	<model:DataSet id="organTypeDs" command="javax.xianfeng.platform.organ.command.OrganTypeCommand" type="json">
		<model:Parameter name="includeSelf" value="<%=includeSelf %>"/>
    	<model:Parameter name="typeId" value="<%=typeId %>"/>
    </model:DataSet>
    <script type="text/javascript">
    	var _id = "<%=id%>";
    </script>
</head>
<body>
	<div class="easyui-panel" title="组织机构维护" data-options="footer:'#footer', border: false" fit="true">
		<form id="dataForm" action="<%=basePath%>/action/platform/organ/doSave.action" method="post" style="padding-top:10px; padding-left:20px;">
			<input type="hidden" id="id" name="id" value="<%=id%>">
			<input type="hidden" name="parentId" value="<%=parentId%>">
			<table width="600" border="0" cellpadding="6">
				<tr>
					<td width="60">简称：</td>
					<td>
						<input type="text" name="name" class="easyui-textbox" data-options="prompt:'请输入...'" required="true" />
					</td>
				</tr>
				<tr>
					<td>全称：</td>
					<td>
						<input type="text" name="fullName" class="easyui-textbox" style="width: 320px;" required="true" />
					</td>
				</tr>
				<tr>
					<td>类型：</td>
					<td>
						<select id="typeId" class="easyui-combobox" name="typeId" data-options="editable:false" style="width: 153px;" required="true">
							<c:forEach items="${organTypeDs.records}" var="record">
								<option value="${record.key }">${record.value }</option>
							</c:forEach>
						</select>
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
		$('#dataForm').form('load', '<%=basePath%>/action/platform/organ/doEdit.action?id=<%=id%>');
	} else {
		//新增
		$('#dataForm').form('load', {seq: 0});
	}

	$("#dataForm").form({
		onLoadSuccess: function (data) {
			if (data && data.type) {
				$('#typeId').combobox('setValue', data.type.id);
			}
		}
	});
	
	$("#dataForm").validate();
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
				
				//更新管理树
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