	<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../../system.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>通讯录管理</title>
	<base href="<%=basePath%>" />
	<jsp:include page="../../easyui.jsp"></jsp:include>
</head>
<body class="easyui-layout">
	<div class="easyui-panel" title="查询条件" data-options="region:'north', collapsible:true, split:false, border:false" style="height:100px; padding: 10px; overflow: hidden;">
		<form id="form1" onsubmit="return false;">
			<table width="100%" border="0">
				<tr>
					<td width="10%" align="right">工作单位：</td>
					<td width="15%" align="left">
						<input type="text" id="corpName" class="easyui-textbox" style="width:98%;" />
					</td>
					<td width="10%" align="right">姓名：</td>
					<td width="15%" align="left">
						<input type="text" id="name" class="easyui-textbox" style="width:98%;" />
					</td>
					<td width="10%" align="right">手机号码：</td>
					<td width="15%" align="left">
						<input type="text" id="mobile" class="easyui-textbox" style="width:98%;" />
					</td>
					<td width="10%" align="right">固定电话：</td>
					<td width="15%" align="left">
						<input type="text" id="phone" class="easyui-textbox" style="width:98%;"/>
					</td>
				</tr>
				<tr>
					<td align="right">电子邮箱：</td>
					<td align="left">
						<input type="text" id="email" class="easyui-textbox" style="width:98%;"/>
					</td>
					<td align="right">联系地址：</td>
					<td align="left">
						<input type="text" id="address" class="easyui-textbox" style="width:98%;"/>
					</td>
					<td align="right">QQ号码：</td>
					<td align="left">
						<input type="text" id="qq" class="easyui-textbox" style="width:98%;"/>
					</td>
					<td align="center" colspan="2">
						<a href="javascript:void(0)" class="easyui-linkbutton" onclick="queryEvt()" style="width: 60px;">查询</a>
						&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="javascript:void(0)" class="easyui-linkbutton" onclick="resetEvt()" style="width: 60px;">重置</a>
					</td>
				</tr>
			</table>
		</form>
	</div>
	<div data-options="region:'center', border:false, split:false">
		<table id="dataGrid" fit="true" data-options="rownumbers:true, border:false, pagination:true, toolbar:'#toolbar'" 
			url="<%=basePath%>/action/platform/linkRec/doList.action">
			<thead>
				<tr>
					<th data-options="field:'mobile'" style="width: 150px">手机号码</th>
					<th data-options="field:'phone'" style="width: 150px">固定电话</th>
					<th data-options="field:'email'" style="width: 200px">电子邮箱</th>
					<th data-options="field:'qq'" style="width: 150px">QQ号码</th>
					<th data-options="field:'postcode'" style="width: 100px;" align="center">邮政编码</th>
					<th data-options="field:'address'" style="width: 200px">联系地址</th>
					<th data-options="field:'editTimeStr'" style="width: 135px" align="center">修改时间</th>
					<th data-options="field:'editTimeStr'" style="width: 135px" align="center">创建时间</th>
				</tr>
			</thead>
		</table>
	</div>
	<div id="toolbar">
		<!-- 
		<a href="javascript:void(0);" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="addEvt()">新增</a>
		<a href="javascript:void(0);" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editEvt()">修改</a>
		-->
		<a href="javascript:void(0);" class="easyui-linkbutton" iconCls="icon-delete" plain="true" onclick="deleteEvt()">删除</a>
		<a href="javascript:void(0);" class="easyui-linkbutton" iconCls="icon-excel" plain="true" onclick="excelEvt()">导出</a>
	</div>
</body>
<script type="text/javascript">
$(document).ready(function() {
	$("#dataGrid").datagrid({
		striped: true,
		frozenColumns: [[
			{field:'ck', checkbox:true}, 
			{field:'corpName', title:'工作单位', width:'200px'},
			{field:'name', title:'姓名', width:'100px'}
		]]	
	});
});

function addEvt() {
	
}

function editEvt() {
	
}

function deleteEvt() {
	var rows = $('#dataGrid').datagrid("getSelections");
	if (rows.length <= 0) {
		$.messager.alert("系统提示", "请选择要删除的记录！", "warning");
		return;
	}
	
	$.messager.confirm('系统提示', '确认要删除这些记录吗？', function(r){
		if (!r){
		   return;
		}
		
		var deleted = new Array();
		$(rows).each(function (i, row) {
			row.state = 2;
			deleted.push(row);
		});
		
		var str = JSON.stringify(deleted);
		$.post("<%=basePath%>/action/platform/linkRec/doDrop.action", 
			{records: str}, 
			function (result) {
				result = eval('(' + result + ')');
				if (result.error) {
					$.messager.alert("系统提示", result.error, "error");
				} else {
					$.messager.alert("系统提示", "数据删除成功！", "info", queryEvt);
				}
			}
		);
	});
}

function excelEvt() {
	var url = "<%=basePath%>/action/platform/linkRec/doExcel.action";
	//$.post(url);
	$.download(url, getQueryArgs());
}

function queryEvt() {
	$('#dataGrid').datagrid('load', getQueryArgs());
}

function getQueryArgs () {
	return {
		name : $("#name").val(),
		corpName: $("#corpName").val(),
		qq: $("#qq").val(),
		address: $("#address").val(),
		mobile : $("#mobile").val(),
		email : $("#email").val(),
		phone : $("#phone").val()
	};
}

function resetEvt() {
	$('#form1').form('clear');
}
</script>
</html>