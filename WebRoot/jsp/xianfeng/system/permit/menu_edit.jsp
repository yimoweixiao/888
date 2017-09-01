<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://javax.xianfeng.mhtml/model" prefix="model"%>
<%@ include file="../../system.jsp"%>
<%
	String id = request.getParameter("id");
	if (id == null) {
		id = "";
	}
	String typeId = request.getParameter("typeId");
	String parentId = request.getParameter("parentId");
%>
<!DOCTYPE html>
<html>
<head>
	<title>菜单管理</title>
	<base href="<%=basePath%>" />
	<jsp:include page="../../easyui.jsp"></jsp:include>
	<model:DataSet id="linkTypeDs" metaName="System.Menu.LinkType" type="json" />
	<model:DataSet id="openTypeDs" metaName="System.Menu.OpenType" type="json" />
	<script type="text/javascript">
		var _id = "<%=id%>";
	</script>
</head>
<body>
	<div class="easyui-panel" title="菜单维护" data-options="footer:'#footer', border: false" fit="true">
		<form id="dataForm" action="<%=basePath%>/action/system/menu/doSave.action" method="post" style="padding-top:10px; padding-left:20px;">
			<input type="hidden" id="id" name="id" value="<%=id%>">
			<input type="hidden" name="typeId" value="<%=typeId%>">
			<input type="hidden" name="parentId" value="<%=parentId%>">
			<table width="600" border="0" cellpadding="6">
				<tr>
					<td width="60">名称：</td>
					<td>
						<input type="text" name="name" class="easyui-textbox" data-options="prompt:'请输入...'" required="true" />
					</td>
				</tr>
				<tr>
					<td>地址：</td>
					<td>
						<input type="text" name="url" class="easyui-textbox" style="width: 420px;" />
					</td>
				</tr>
				<tr>
					<td>链接类型：</td>
					<td>
						<select class="easyui-combobox" name="linkType" data-options="editable:false" style="width: 153px;" required="true">
							<c:forEach items="${linkTypeDs.records}" var="record">
								<option value="${record.key }">${record.value }</option>
							</c:forEach>
						</select>
					</td>
				</tr>
				<tr>
					<td>类型定义：</td>
					<td>
						<input type="text" name="defineType" class="easyui-textbox" />
						<label class="field-tip">
							Frame框架名称、Script实例化组件的类型名称等
						</label>
					</td>
				</tr>
				<tr>
					<td>打开方式：</td>
					<td>
						<select class="easyui-combobox" name="openType" data-options="editable:false" style="width: 153px;">
							<c:forEach items="${openTypeDs.records}" var="record">
								<option value="${record.key }">${record.value }</option>
							</c:forEach>
						</select>
					</td>
				</tr>
				<tr>
					<td>1号图标：</td>
					<td>
						<input type="text" name="icon1" class="easyui-textbox" style="width: 153px;" />
						<label class="field-tip">16×16</label>
					</td>
				</tr>
				<tr>
					<td>2号图标：</td>
					<td>
						<input type="text" name="icon2" class="easyui-textbox" style="width: 153px;" />
						<label class="field-tip">32×32</label>
					</td>
				</tr>
				<tr>
					<td>3号图标：</td>
					<td>
						<input type="text" name="icon3" class="easyui-textbox" style="width: 153px;" />
						<label class="field-tip">48×48</label>
					</td>
				</tr>
				<tr>
					<td>叶子节点：</td>
					<td>
						<input type="radio" id="isLeaf1" name="isLeaf" value="true" required="true" />是
						<input type="radio" id="isLeaf2" name="isLeaf" value="false" />否
						<label for="isLeaf" class="error">请选择</label>
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
			url: "<%=basePath%>/action/system/menu/doEdit.action?id=<%=id%>",
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

	$("input[name='isLeaf']").change(function() {
		var isLeaf = $("input[name='isLeaf']:checked").val();
		if (isLeaf) {
			$("label[for='isLeaf']").hide();
		}
	});
});

function submitEvt() {
	$("#dataForm").form("submit", {
		onSubmit : function() {
			var isValid = $(this).form('validate');
			if (isValid) {
				//补充校验
				var isLeaf = $("input[name='isLeaf']:checked").val();
				if (!isLeaf) {
					isValid = false;
					$("label[for='isLeaf']").show();
				}
			}
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