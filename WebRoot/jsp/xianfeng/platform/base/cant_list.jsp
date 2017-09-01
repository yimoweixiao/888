<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../../system.jsp"%>
<%
String cantCode = request.getParameter("cantCode");

String parentPath = request.getParameter("parentPath");
if (parentPath == null) {
	parentPath = "";
}

String parentCode = request.getParameter("parentCode");
if (parentCode == null) {
	parentCode = "";
}
%>
<!DOCTYPE html>
<html>
<head>
	<title>行政区划管理</title>
	<base href="<%=basePath%>" />
	<jsp:include page="../../easyui.jsp"></jsp:include>
	<script type="text/javascript">
	var _cantCode = "<%=cantCode%>";
	var _parentPath = "<%=parentPath%>";
	var _parentCode = "<%=parentCode%>";
	
	var _cantTypeDs = new Array();
	$.post("<%=basePath%>/action/platform/cantType/doList.action", 
		function (data) {
			if (data.error) {
				$.messager.alert("系统提示", data.error, "error");
			} else {
				for (var i = 0; i < data.rows.length; i++) {
					var row = data.rows[i];
					//alert(row.id + ":" + row.name);
					_cantTypeDs.push({key:  row.id, value: row.name});
				}
			}
		}
	);
	</script>
</head>
<body class="easyui-layout">
	<div class="easyui-panel" title="查询条件" data-options="region:'north', collapsible:true, split:false, border:false" style="height:80px; padding: 10px; overflow: hidden;">
		<form id="form1" onsubmit="return false;">
			<table width="100%" border="0">
				<tr>
					<td width="10%" align="right">编码：</td>
					<td width="15%" align="left">
						<input type="text" id="code" class="easyui-textbox" style="width:98%;" />
					</td>
					<td width="10%" align="right">名称：</td>
					<td width="15%" align="left">
						<input type="text" id="name" class="easyui-textbox" style="width:98%;" />
					</td>
					<td align="left">
						<a href="javascript:void(0)" class="easyui-linkbutton" onclick="queryEvt()" style="width: 60px;">查询</a> &nbsp;&nbsp;
						<a href="javascript:void(0)" class="easyui-linkbutton" onclick="resetEvt()" style="width: 60px;">重置</a>
					</td>
				</tr>
			</table>
		</form>
	</div>
	<div data-options="region:'center', border:false, split:false">
		<table id="dataGrid" fit="true" data-options="rownumbers:true, border:false, sortName:'code', sortOrder:'asc', pagination:true, toolbar:'#toolbar', onClickRow: rowClickEvt"
			url="<%=basePath%>/action/platform/cant/doList.action?cantCode=<%=cantCode %>&parentCode=<%=parentCode %>">
			<thead>
				<tr>
					<th field="ck" checkbox="true"></th>
					<th data-options="field:'code',editor:{type:'textbox',options:{required:true}}" style="width: 150px">编码</th>
					<th data-options="field:'name',editor:{type:'textbox',options:{required:true}}" style="width: 150px">名称</th>
					<th data-options="field:'fullName',editor:{type:'textbox',options:{required:true}}" style="width: 300px">全称</th>
					<th data-options="field:'typeId',editor:{type:'combobox', options:{editable:false, data:_cantTypeDs, textField:'value', valueField:'key'}},
					formatter:function(type, row){
						 for (var i=0; i<_cantTypeDs.length; i++){
                       		if (_cantTypeDs[i].key == type) {
                       			return _cantTypeDs[i].value;
                       		}
                       }
					}" style="width: 150px" align="center">类型</th>
					<th data-options="field:'seq',editor:{type:'numberspinner',options:{min:0, required:true}}" style="width: 100px" align="center">序号</th>
				</tr>
			</thead>
		</table>
	</div>
	<div id="toolbar">
		<a href="javascript:void(0);" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="addEvt()">新增</a>
		<a href="javascript:void(0);" class="easyui-linkbutton" iconCls="icon-delete" plain="true" onclick="deleteEvt()">删除</a>
		<a href="javascript:void(0);" class="easyui-linkbutton" iconCls="icon-saveall" plain="true" onclick="saveEvt()">保存</a>
		<%
		if (!"".equals(parentCode)) {
		%>
		<a href="javascript:void(0);" class="easyui-linkbutton" iconCls="icon-parent" plain="true" onclick="parentEvt()">上级</a>
		<%} %>
		<a href="javascript:void(0);" class="easyui-linkbutton" iconCls="icon-children" plain="true" onclick="childrenEvt()">下级</a>
		<%
		if (!"".equals(parentCode)) {
		%>
		<a href="javascript:void(0);" class="easyui-linkbutton" iconCls="icon-undo" plain="true" onclick="returnEvt()">返回列表</a>
		<%} %>
	</div>
</body>
<script type="text/javascript">
$(document).ready(function() {
	$("#dataGrid").datagrid({
		onSelect: function (rowIndex, rowData) {
			stopEdit();
		},
		onUnselect: function (rowIndex, rowData){
			stopEdit();
		}
	});
});

function addEvt () {
	if (stopEdit()) {
		var newRow = {
			cantCode: _cantCode,
			state: 0,
			status: 1,
			seq: 0
		};
		if (_parentCode != "") {
			newRow.parentCode = _parentCode;
		}
		$('#dataGrid').datagrid('appendRow', newRow);
		_index = $('#dataGrid').datagrid('getRows').length - 1;
		$('#dataGrid').datagrid('selectRow', _index).datagrid('beginEdit', _index);
	}
}
function deleteEvt () {
	if (_index) {
		$('#dataGrid').datagrid('cancelEdit', _index);
		_index = undefined;
	}
	var rows = $('#dataGrid').datagrid("getSelections");
	for (var i = 0; i < rows.length; i++) {
		var index = $('#dataGrid').datagrid('getRowIndex',rows[i]);
           $('#dataGrid').datagrid('deleteRow',index);
	}
}
function saveEvt () {
	if (stopEdit()) {
		var rows = new Array();
		var inserted = $('#dataGrid').datagrid('getChanges', "inserted");
		for (var i = 0; i < inserted.length; i++) {
			rows.push(inserted[i]);
		}
		
		var deleted = $('#dataGrid').datagrid('getChanges', "deleted");
		for (var i = 0; i < deleted.length; i++) {
			deleted[i].state = 2;
			rows.push(deleted[i]);
		}
		
		var updated = $('#dataGrid').datagrid('getChanges', "updated");
		for (var i = 0; i < updated.length; i++) {
			updated[i].state = 1;
			rows.push(updated[i]);
		}
		if (rows.length == 0) {
			$.messager.alert("系统提示", "没有需要保存的数据", "warning");
			return;
		}
		var str = JSON.stringify(rows);
		$.post("<%=basePath%>/action/platform/cant/doSave.action", 
			{records: str}, 
			function (result) {
				result = eval('(' + result + ')');
				if (result.error) {
					$.messager.alert("系统提示", result.error, "error");
				} else {
					$.messager.alert("系统提示", "数据保存成功！", "info", queryEvt);
				}
			}
		);
	}
}

var _index = undefined;
function rowClickEvt(index) {
	//连续单击当前行
	if (_index == index) {
		return;
	}
	
	//反选其他行
	var rows = $('#dataGrid').datagrid("getSelections");
	for (var i = 0; i < rows.length; i++) {
		var rowIndex = $('#dataGrid').datagrid('getRowIndex',rows[i]);
        if (rowIndex != index) {
        	$("#dataGrid").datagrid("unselectRow", rowIndex);
        }
	}
		
	//编辑当前行
	if (stopEdit()) {
		$("#dataGrid").datagrid("selectRow", index).datagrid("beginEdit", index);
		_index = index;
	} else {
		$("#dataGrid").datagrid("selectRow", index);
	}
}

function stopEdit() {
	if (_index == undefined) {
		return true;
	}
	
	if ($('#dataGrid').datagrid('validateRow', _index)) {
		$('#dataGrid').datagrid('endEdit', _index);
		_index = undefined;
		return true;
	} else {
		return false;
	}
}

function queryEvt() {
	$('#dataGrid').datagrid('load', {
		code: $("#code").val(),
		name: $("#name").val()
	});
}

function parentEvt () {
	var url = "<%=basePath%>/jsp/xianfeng/platform/base/cant_list.jsp?cantCode=<%=cantCode%>";
	if (_parentPath != "") {
		var arr = _parentPath.split("|");
		url += "&parentCode=" + arr[arr.length-1];
		var parentPath = "";
		for (var i = 0; i < arr.length - 1; i++) {
			parentPath += arr[i];
			if (i < arr.length - 2) {
				parentPath += "|";
			}
		}
		url += "&parentPath=" + parentPath;
	}
	location.href = url;
}

function childrenEvt () {
	var rows = $('#dataGrid').datagrid("getSelections");
	if (rows.length != 1) {
		$.messager.alert("系统提示", "请选择1条记录！", "warning");
		return;
	}
	
	var url = "<%=basePath%>/jsp/xianfeng/platform/base/cant_list.jsp?cantCode=<%=cantCode%>";
	if (_parentPath != "") {
		_parentPath += "|";
	}
	url += "&parentPath=" + _parentPath + _parentCode;
	url += "&parentCode=" + rows[0].code;
	location.href = url;
}

function returnEvt() {
	location.href = "<%=basePath%>/jsp/xianfeng/platform/base/cant_list.jsp";
}
</script>
</html>