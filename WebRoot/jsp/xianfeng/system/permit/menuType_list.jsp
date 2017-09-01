<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../../system.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>菜单分类管理</title>
	<base href="<%=basePath%>" />
	<jsp:include page="../../easyui.jsp"></jsp:include>
	<script type="text/javascript">
	
	</script>
</head>
<body class="easyui-layout">
	<div class="easyui-panel" title="查询条件" data-options="region:'north', collapsible:true, split:false, border:false" style="height:80px; padding: 10px; overflow: hidden;">
		<form id="form1" onsubmit="return false;">
			<table width="100%" border="0">
				<tr>
					<td width="10%" align="right">分类编码：</td>
					<td width="15%" align="left">
						<input type="text" id="code" class="easyui-textbox" style="width:98%;" />
					</td>
					<td width="10%" align="right">分类名称：</td>
					<td width="15%" align="left">
						<input type="text" id="name" class="easyui-textbox" style="width:98%;" />
					</td>
					<td align="left">
						<a href="javascript:void(0)" class="easyui-linkbutton" onclick="queryEvt()" style="width: 60px;">查询</a> &nbsp;&nbsp;
						<a href="javascript:void(0)" class="easyui-linkbutton" onclick="returnEvt()" style="width: 60px;">重置</a>
					</td>
				</tr>
			</table>
		</form>
	</div>
	<div data-options="region:'center', border:false, split:false">
		<table id="dataGrid" fit="true" data-options="rownumbers:true, border:false, sortName:'id', sortOrder:'asc', pagination:true, toolbar:'#toolbar', onClickRow: rowClickEvt" 
			url="<%=basePath%>/action/system/menuType/doList.action">
			<thead>
				<tr>
					<th field="ck" checkbox="true"></th>
					<th data-options="field:'id',editor:{type:'textbox',options:{required:true}}" style="width: 200px">分类编码</th>
					<th data-options="field:'name',editor:{type:'textbox',options:{required:true}}" style="width: 200px">分类名称</th>
					<th data-options="field:'editTimeStr'" style="width: 135px" align="center">修改时间</th>
				</tr>
			</thead>
		</table>
	</div>
	<div id="toolbar">
		<a href="javascript:void(0);" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="addEvt()">新增</a>
		<a href="javascript:void(0);" class="easyui-linkbutton" iconCls="icon-delete" plain="true" onclick="deleteEvt()">删除</a>
		<a href="javascript:void(0);" class="easyui-linkbutton" iconCls="icon-saveall" plain="true" onclick="saveEvt()">保存</a>
		<a href="javascript:void(0);" class="easyui-linkbutton" iconCls="icon-detail" plain="true" onclick="menuMgrEvt()">菜单管理</a>
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

function addEvt() {
	if (stopEdit()) {
		$('#dataGrid').datagrid('appendRow', {
			state: 0
		});
		_index = $('#dataGrid').datagrid('getRows').length - 1;
		$('#dataGrid').datagrid('selectRow', _index).datagrid('beginEdit', _index);
	}
}
function deleteEvt() {
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
function saveEvt() {
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
			$.messager.alert("系统提示", "没有需要保存的数据！", "warning");
			return;
		}
		var str = JSON.stringify(rows);
		$.post("<%=basePath%>/action/platform/menuType/doSave.action", 
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
function menuMgrEvt() {
	var changes = $('#dataGrid').datagrid('getChanges');
	if (changes.length > 0) {
		$.messager.alert("系统提示", "请先保存数据！", "warning");
		return;
	}
	
	var selected = $("#dataGrid").datagrid("getSelections");
	if (selected.length != 1) {
		$.messager.alert("系统提示", "请选择1条记录！", "warning");
		return;
	}
	
	var typeId = selected[0].id;
	if (typeId == "SYSTEM") {
		location.href = "<%=basePath%>/jsp/xianfeng/system/permit/sysMenuMgr_tree.jsp?typeId="+typeId;
	} else if (typeId == "DEFAULT") {
		location.href = "<%=basePath%>/jsp/xianfeng/system/permit/menuMgr_tree.jsp?typeId="+typeId;
	} else {
		$.messager.alert("系统提示", "目前只支持维护默认菜单！", "warning");
		return;
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

function returnEvt() {
	$('#form1').form('clear');
}
</script>
</html>