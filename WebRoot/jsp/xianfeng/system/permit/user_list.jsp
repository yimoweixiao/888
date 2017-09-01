<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://javax.xianfeng.mhtml/model" prefix="model"%>
<%@ include file="../../system.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>用户管理</title>
	<base href="<%=basePath%>" />
	<jsp:include page="../../easyui.jsp"></jsp:include>
	<model:DataSet id="userTypeDs" metaName="System.User.Type" type="json" />
	<model:DataSet id="userStatusDs" metaName="System.User.Status" type="json" />
</head>
<body class="easyui-layout">
	<div class="easyui-panel" title="查询条件" data-options="region:'north', collapsible:true, split:false, border:false" style="height:80px; padding: 10px; overflow: hidden;">
		<form id="form1" onsubmit="return false;">
			<table width="100%" border="0">
				<tr>
					<td width="10%" align="right">用户类型：</td>
					<td width="15%" align="left">
						<select class="easyui-combobox" id="type" name="type" data-options="editable:false" style="width:98%;">
							<option></option>
							<c:forEach items="${userTypeDs.records}" var="record">
								<option value="${record.key }">${record.value }</option>
							</c:forEach>
						</select>
					</td>
					<td width="10%" align="right">登录名：</td>
					<td width="15%" align="left">
						<input type="text" id="id" class="easyui-textbox" style="width:98%;" />
					</td>
					<td width="10%" align="right">用户名：</td>
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
		<table id="dataGrid" class="easyui-datagrid" fit="true" data-options="rownumbers:true, border:false, sortName:'id, seq', sortOrder:'asc', pagination:true, toolbar:'#toolbar'" 
			url="<%=basePath%>/action/system/user/doList.rmi">
			<thead>
				<tr>
					<th field="ck" checkbox="true"></th>
					<th data-options="field:'id'" style="width: 200px">登录名</th>
					<th data-options="field:'name'" style="width: 200px">用户名</th>
					<th data-options="field:'type',
					formatter:function(value, row){
						 for (var i=0; i<_userTypeDs.length; i++){
                       		if (_userTypeDs[i].key == value) {
                       			return _userTypeDs[i].value;
                       		}
                       }
					}" style="width: 100px" align="center">用户类型</th>
					<th data-options="field:'registTimeStr'" style="width: 135px" align="center">注册时间</th>
					<th data-options="field:'status',
					formatter:function(value, row){
						 for (var i=0; i<_userStatusDs.length; i++){
                       		if (_userStatusDs[i].key == value) {
                       			return _userStatusDs[i].value;
                       		}
                       }
					}" style="width: 100px" align="center">状态</th>
					<th data-options="field:'editTimeStr'" style="width: 135px" align="center">更新时间</th>
				</tr>
			</thead>
		</table>
	</div>
	<div id="dialog" style="overflow: hidden;">
		<iframe id="myframe" width="100%" height="100%" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no"></iframe>
	</div> 
	<div id="toolbar">
		<a href="javascript:void(0);" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="addEvt()">新增</a>
		<a href="javascript:void(0);" class="easyui-linkbutton" iconCls="icon-delete" plain="true" onclick="deleteEvt()">删除</a>
		<a href="javascript:void(0);" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editEvt()">修改</a>
		<a href="javascript:void(0);" class="easyui-linkbutton" iconCls="icon-lock" plain="true" onclick="lockEvt()">锁定</a>
		<a href="javascript:void(0);" class="easyui-linkbutton" iconCls="icon-unlock" plain="true" onclick="unlockEvt()">解锁</a>
		<a href="javascript:void(0);" class="easyui-linkbutton" iconCls="icon-tools" plain="true" onclick="setEvt()">权限</a>
	</div>
</body>
<script type="text/javascript">
function addEvt () {
	location.href = "<%=basePath%>/jsp/xianfeng/system/permit/user_edit.jsp";
}

function deleteEvt () {
	var rows = $('#dataGrid').datagrid("getSelections");
	if (rows.length <= 0) {
		$.messager.alert("系统提示", "请选择要删除的数据！", "warning");
		return;
	}
	
	$.messager.confirm("系统提示","确认要删除这些记录吗？", function(result){
		if (!result){    
	        return;    
	    }
		
		for (var i = 0; i < rows.length; i++) {
			rows[i].state = 2;
		}
		
		var str = JSON.stringify(rows);
		$.post("<%=basePath%>/action/system/user/doDrop.action", 
			{records: str}, 
			function (result) {
				if (typeof(result) == "string") {
					result = eval('(' + result + ')');
				}
				if (result.error) {
					$.messager.alert("系统提示", result.error, "error");
				} else {
					$.messager.alert("系统提示", "数据删除成功！", "info", queryEvt);
				}
			}
		);
	});
}
function editEvt () {
	var rows = $('#dataGrid').datagrid("getSelections");
	if (rows.length != 1) {
		$.messager.alert("系统提示", "请选择1条要修改的数据！", "warning");
		return;
	}
	var url = "<%=basePath%>/jsp/xianfeng/system/permit/user_edit.jsp?id=" + rows[0].id;
	url += "&openType=page";
	location.href = url;
}

function setEvt() {
	var rows = $('#dataGrid').datagrid("getSelections");
	if (rows.length != 1) {
		$.messager.alert("系统提示", "请选择1条要设置权限的数据！", "warning");
		return;
	}
	var userId = rows[0].id;
	var url = "jsp/xianfeng/system/permit/userRole_edit.jsp?id=" + userId;
	url += "&openType=dialog";
	document.getElementById("myframe").src = "<%=basePath%>/" + url;
	$('#dialog').dialog({    
	    title: "权限设置",    
	    width: 720,    
	    height: 428,    
	    modal: true   
	});
}
function queryEvt() {
	$('#dataGrid').datagrid('load', {
		id : $("#id").val(),
		name : $("#name").val(),
		type : $("#type").combobox("getValue")
	});
}

function lockEvt () {
	var rows = $('#dataGrid').datagrid("getSelections");
	if (rows.length <= 0) {
		$.messager.alert("系统提示", "请选择要锁定的数据！", "warning");
		return;
	}
	
	for (var i = 0; i < rows.length; i++) {
		rows[i].state = 1;
		rows[i].status = 0;
	}
	
	var str = JSON.stringify(rows);
	$.post("<%=basePath%>/action/system/user/doLock.action", 
		{records: str}, 
		function (result) {
			if (typeof(result) == "string") {
				result = eval('(' + result + ')');
			}
			if (result.error) {
				$.messager.alert("系统提示", result.error, "error");
			} else {
				$.messager.alert("系统提示", "锁定成功！", "info", queryEvt);
			}
		}
	);
}

function unlockEvt () {
	var rows = $('#dataGrid').datagrid("getSelections");
	if (rows.length <= 0) {
		$.messager.alert("系统提示", "请选择要解锁的数据！", "warning");
		return;
	}
	
	for (var i = 0; i < rows.length; i++) {
		rows[i].state = 1;
		rows[i].status = 1;
	}
	
	var str = JSON.stringify(rows);
	$.post("<%=basePath%>/action/system/user/doUnlock.action", 
		{records: str}, 
		function (result) {
			if (typeof(result) == "string") {
				result = eval('(' + result + ')');
			}
			if (result.error) {
				$.messager.alert("系统提示", result.error, "error");
			} else {
				$.messager.alert("系统提示", "解锁成功！", "info", queryEvt);
			}
		}
	);
}

function resetEvt() {
	$('#form1').form('clear');
}
</script>
</html>