<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://javax.xianfeng.mhtml/model" prefix="model"%>
<%@ include file="../../system.jsp"%>
<%
String baseLoadRuleDataPath = basePath + "/action/platform/organRule/doList.action";
%>
<!DOCTYPE html>
<html>
<head>
	<title>组织类型管理</title>
	<base href="<%=basePath%>" />
	<jsp:include page="../../easyui.jsp"></jsp:include>
	<model:DataSet id="yesNoDs" metaName="Platform.YesOrNo" type="json" />
	<model:DataSet id="organTypeDs" command="javax.xianfeng.platform.organ.command.OrganTypeCommand" type="json" />
</head>
<body class="easyui-layout">
	<div class="easyui-panel" title="组织类型列表" data-options="region:'center', width:'50%'">
		<table id="dataGrid1" height="100%" data-options="rownumbers:true, border:false, sortName:'seq', sortOrder:'asc', singleSelect:false, pagination:true, toolbar:'#toolbar1', onClickRow: rowClickEvt1" 
			url="<%=basePath%>/action/platform/organType/doList.action">
			<thead>
				<tr>
					<th field="ck" checkbox="true"></th>
					<th data-options="field:'id',editor:{type:'textbox',options:{required:true}}" style="width: 100px">类型编码</th>
					<th data-options="field:'name',editor:{type:'textbox',options:{required:true}}" style="width: 100px">类型名称</th>
					<th data-options="field:'isLeaf',editor:{type:'combobox', options:{editable:false, data:_yesNoDs, textField:'value', valueField:'key'}},
					formatter:function(value, row){
						 for (var i = 0; i < _yesNoDs.length; i++){
                       		if (_yesNoDs[i].key == (''+ value)) {
                       			return _yesNoDs[i].value;
                       		}
                       }
					}" style="width: 100px" align="center" align="center">叶子节点</th>
					<th data-options="field:'seq',editor:{type:'numberspinner',options:{min:0, required:true}}" style="width: 100px" align="center">序号</th>
				</tr>
			</thead>
		</table>
	</div>
	<div id="toolbar1">
		<a href="javascript:void(0);" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="addEvt1()">新增</a>
		<a href="javascript:void(0);" class="easyui-linkbutton" iconCls="icon-delete" plain="true" onclick="deleteEvt1()">删除</a>
		<a href="javascript:void(0);" class="easyui-linkbutton" iconCls="icon-saveall" plain="true" onclick="saveEvt1()">保存</a>
	</div>
	<div id="div2" class="easyui-panel" title="下级类型列表" data-options="region:'east', width:'50%', closed:false, split:true">
		<table id="dataGrid2" height="100%" data-options="rownumbers:true, border:false, pagination:true, toolbar:'#toolbar2', onClickRow: rowClickEvt2">
			<thead>
				<tr>
					<th field="ck" checkbox="true"></th>
					<th data-options="field:'childId',editor:{type:'combobox', options:{editable:false, data:_organTypeDs, textField:'value', valueField:'key'}},
					formatter:function(value, row){
						 for (var i = 0; i < _organTypeDs.length; i++){
                       		if (_organTypeDs[i].key == value) {
                       			return _organTypeDs[i].value;
                       		}
                       }
					}" style="width: 100px" align="center" align="left">下级类型名称</th>
				</tr>
			</thead>
		</table>
	</div>
	<div id="toolbar2">
		<a href="javascript:void(0);" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="addEvt2()">新增</a>
		<a href="javascript:void(0);" class="easyui-linkbutton" iconCls="icon-delete" plain="true" onclick="deleteEvt2()">删除</a>
		<a href="javascript:void(0);" class="easyui-linkbutton" iconCls="icon-saveall" plain="true" onclick="saveEvt2()">保存</a>
	</div>
</body>
<script type="text/javascript">
$(document).ready(function() {
	$("#dataGrid1").datagrid({
		onSelect: function(rowIndex, rowData){
			stopEdit1();
			//取消勾选其他行
			var rows = $("#dataGrid1").datagrid("getSelections");
			for (var i = 0; i < rows.length; i++) {
				if (rowData.id != rows[i].id) {
					var _rowIndex = $("#dataGrid1").datagrid("getRowIndex", rows[i]);
					$(this).datagrid("unselectRow", _rowIndex);
				}
			}
			//加载下级类型数据
			var options = $('#dataGrid2').datagrid('options');
			options.url = "<%=baseLoadRuleDataPath%>?typeId=" + rowData.id;
			//alert(options.url);
			$("#dataGrid2").datagrid("reload");
		},
		onUnselect: function(rowIndex, rowData){
			//$("#div2").panel("close");
			stopEdit1();
			
			var options = $('#dataGrid2').datagrid('options');
			options.url = "<%=baseLoadRuleDataPath%>?typeId=undefined";
			$("#dataGrid2").datagrid("reload");
		}
	});
	
	$("#dataGrid2").datagrid({
		onSelect: function (rowIndex, rowData) {
			stopEdit2();
		},
		onUnselect: function (rowIndex, rowData){
			stopEdit2();
		}
	});
});

function addEvt1 () {
	if (stopEdit1()) {
		$('#dataGrid1').datagrid('appendRow', {
			state: 0
		});
		_index1 = $('#dataGrid1').datagrid('getRows').length - 1;
		$('#dataGrid1').datagrid('selectRow', _index1).datagrid('beginEdit', _index1);
	}
}
function deleteEvt1 () {
	if (_index1) {
		$('#dataGrid1').datagrid('cancelEdit', _index);
		_index1 = undefined;
	}
	var rows = $('#dataGrid1').datagrid("getSelections");
	for (var i = 0; i < rows.length; i++) {
		var index = $('#dataGrid1').datagrid('getRowIndex',rows[i]);
           $('#dataGrid1').datagrid('deleteRow',index);
	}
}
function saveEvt1 () {
	if (stopEdit1()) {
		var rows = new Array();
		var inserted = $('#dataGrid1').datagrid('getChanges', "inserted");
		for (var i = 0; i < inserted.length; i++) {
			rows.push(inserted[i]);
		}
		var deleted = $('#dataGrid1').datagrid('getChanges', "deleted");
		for (var i = 0; i < deleted.length; i++) {
			deleted[i].state = 2;
			rows.push(deleted[i]);
		}
		
		var updated = $('#dataGrid1').datagrid('getChanges', "updated");
		for (var i = 0; i < updated.length; i++) {
			updated[i].state = 1;
			rows.push(updated[i]);
		}
		if (rows.length == 0) {
			$.messager.alert("系统提示", "没有需要保存的数据！", "warning");
			return;
		}
		var str = JSON.stringify(rows);
		$.post("<%=basePath%>/action/platform/organType/doSave.action", 
			{records: str}, 
			function (result) {
				result = eval('(' + result + ')');
				if (result.error) {
					$.messager.alert("系统提示", result.error, "error");
				} else {
					$('#dataGrid1').datagrid('reload');
				}
			}
		);
	}
}

var _index1 = undefined;
function rowClickEvt1(index) {
	//连续单击当前行
	if (_index1 == index) {
		return;
	}
	
	//反选其他行
	var rows = $('#dataGrid1').datagrid("getSelections");
	for (var i = 0; i < rows.length; i++) {
		var rowIndex = $('#dataGrid1').datagrid('getRowIndex',rows[i]);
        if (rowIndex != index) {
        	$("#dataGrid1").datagrid("unselectRow", rowIndex);
        }
	}
		
	//编辑当前行
	if (stopEdit1()) {
		$("#dataGrid1").datagrid("selectRow", index).datagrid("beginEdit", index);
		_index1 = index;
	} else {
		$("#dataGrid1").datagrid("selectRow", index);
	}
}

function stopEdit1() {
	if (_index1 == undefined) {
		return true;
	}
	
	if ($('#dataGrid1').datagrid('validateRow', _index1)) {
		$('#dataGrid1').datagrid('endEdit', _index1);
		_index1 = undefined;
		return true;
	} else {
		return false;
	}
}

function isSelectGrid1 () {
	var rows = $('#dataGrid1').datagrid("getSelections");
	if (rows.length > 0) {
		return true;
	} else {
		return false;
	}
}

function addEvt2 () {
	if (!isSelectGrid1()) {
		$.messager.alert("系统提示", "请先选择左侧的组织类型！", "warning");
		return;
	}
	
	if (stopEdit2()) {
		$('#dataGrid2').datagrid('appendRow', {
			state: 0,
		});
		_index2 = $('#dataGrid2').datagrid('getRows').length - 1;
		$('#dataGrid2').datagrid('selectRow', _index2).datagrid('beginEdit', _index2);
	}
}
function deleteEvt2 () {
	if (!isSelectGrid1()) {
		$.messager.alert("系统提示", "请先选择左侧的组织类型！", "warning");
		return;
	}
	
	if (_index2) {
		$('#dataGrid2').datagrid('cancelEdit', _index2);
		_index2 = undefined;
	}
	var rows = $('#dataGrid2').datagrid("getSelections");
	for (var i = 0; i < rows.length; i++) {
		var index = $('#dataGrid2').datagrid('getRowIndex',rows[i]);
           $('#dataGrid2').datagrid('deleteRow',index);
	}
}
function saveEvt2 () {
	if (!isSelectGrid1()) {
		$.messager.alert("系统提示", "请先选择左侧的组织类型！", "warning");
		return;
	}
	
	if (stopEdit2()) {
		var rows = new Array();
		var inserted = $('#dataGrid2').datagrid('getChanges', "inserted");
		var grid1Row = $("#dataGrid1").datagrid("getSelected");
		for (var i = 0; i < inserted.length; i++) {
			inserted[i].typeId = grid1Row.id;
			rows.push(inserted[i]);
		}
		var deleted = $('#dataGrid2').datagrid('getChanges', "deleted");
		for (var i = 0; i < deleted.length; i++) {
			deleted[i].state = 2;
			rows.push(deleted[i]);
		}
		
		var updated = $('#dataGrid2').datagrid('getChanges', "updated");
		for (var i = 0; i < updated.length; i++) {
			updated[i].state = 1;
			rows.push(updated[i]);
		}
		if (rows.length == 0) {
			$.messager.alert("系统提示", "没有需要保存的数据！", "warning");
			return;
		}
		var str = JSON.stringify(rows);
		$.post("<%=basePath%>/action/platform/organRule/doSave.action", 
			{records: str}, 
			function (result) {
				result = eval('(' + result + ')');
				if (result.error) {
					$.messager.alert("系统提示", result.error, "error");
				} else {
					$('#dataGrid2').datagrid('reload');
				}
			}
		);
		
	}
}

var _index2 = undefined;
function rowClickEvt2(index) {
	//连续单击当前行
	if (_index2 == index) {
		return;
	}
	
	//反选其他行
	var rows = $('#dataGrid2').datagrid("getSelections");
	for (var i = 0; i < rows.length; i++) {
		var rowIndex = $('#dataGrid2').datagrid('getRowIndex',rows[i]);
        if (rowIndex != index) {
        	$("#dataGrid2").datagrid("unselectRow", rowIndex);
        }
	}
		
	//编辑当前行
	if (stopEdit2()) {
		$("#dataGrid2").datagrid("selectRow", index).datagrid("beginEdit", index);
		_index2 = index;
	} else {
		$("#dataGrid2").datagrid("selectRow", index);
	}
}

function stopEdit2() {
	if (_index2 == undefined) {
		return true;
	}
	
	if ($('#dataGrid2').datagrid('validateRow', _index2)) {
		$('#dataGrid2').datagrid('endEdit', _index2);
		_index2 = undefined;
		return true;
	} else {
		return false;
	}
}

</script>
</html>