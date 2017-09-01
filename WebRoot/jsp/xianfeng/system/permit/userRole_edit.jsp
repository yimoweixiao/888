<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://javax.xianfeng.mhtml/model" prefix="model"%>
<%@ include file="../../system.jsp"%>
<%
	String id = request.getParameter("id");
	if (id == null) {
		id = "";
	}
	String openType = request.getParameter("openType");
%>
<!DOCTYPE html>
<html>
<head>
	<title>用户角色</title>
	<base href="<%=basePath%>" />
	<jsp:include page="../../easyui.jsp"></jsp:include>
	<model:DataSet id="userTypeDs" metaName="System.User.Type" type="json" />
	<model:DataSet id="userStatusDs" metaName="System.User.Status" type="json" />
	<script type="text/javascript">
		var _id = "<%=id%>";
	</script>
</head>
<body>
	<div class="easyui-panel" title="" data-options="footer:'#footer', border: false" fit="true">
		<table id="dataGrid" fit="true" data-options="rownumbers:true, border:false, sortName:'id, seq', sortOrder:'asc'" 
			url="<%=basePath%>/action/system/role/doList.action">
			<thead>
				<tr>
					<th field="ck" checkbox="true"></th>
					<th data-options="field:'id',editor:{type:'textbox',options:{required:true}}" style="width: 20%">角色编码</th>
					<th data-options="field:'name',editor:{type:'textbox',options:{required:true}}" style="width: 25%">角色名称</th>
					<th data-options="field:'desc',editor:{type:'textbox'}" style="width: 25%">描述</th>
				</tr>
			</thead>
		</table>
	</div>
	<div id="footer" class="footbar">
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitEvt()" style="width: 60px;">保存</a>
		&nbsp;&nbsp;&nbsp;&nbsp;
		<%if("dialog".equals(openType)) {%> 
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="closeEvt()" style="width: 60px;">关闭</a>
		<%} else {%>
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="returnEvt()" style="width: 80px;">返回列表</a>
		<%} %>
	</div>
</body>
<script type="text/javascript">
var _data = null; //后台加载用户角色列表
var _changed = null; //前台用户角色变化列表
$(document).ready(function() {
	if (_id != "") {
		$("#dataGrid").datagrid({
			onLoadSuccess: function (gridData) {
				$.post("<%=basePath%>/action/system/userRole/doList.action", 
					{userId: "<%=id%>"}, 
					function (data) {
						if (data.error) {
							$.messager.alert("系统提示", data.error, "error");
						} else {
							_data = new Array();
							for (var i = 0; i < data.rows.length; i++) {
								var userRoleId = data.rows[i].roleId;
								//alert(userRoleId);
								_data.push(userRoleId);
								for (var j = 0; j < gridData.rows.length; j++) {
									if (gridData.rows[j].id == userRoleId) {
										$("#dataGrid").datagrid("selectRow", j);
										break;
									}
								}
							}
							_changed = new Array();
						}
					}
				);
			},
			onSelect: function (rowIndex, rowData) {
				if (_changed == null) {
					return; //初始化加载数据选中
				}
				var roleId = rowData.id;
				var index = -1;
				for (var i = 0; i < _changed.length; i++) {
					if (_changed[i].roleId == roleId) {
						index = i;
						break;
					}
				}
				
				if (index < 0) {
					_changed.push({roleId: roleId, type:"check"});
				} else {
					_changed[index].type = "check";
				}
			},
			onUnselect: function (rowIndex, rowData){
				var roleId = rowData.id;
				var index = -1;
				for (var i = 0; i < _changed.length; i++) {
					if (_changed[i].roleId == roleId) {
						index = i;
						break;
					}
				}
				
				if (index < 0) {
					_changed.push({roleId: roleId, type:"uncheck"});
				} else {
					_changed[index].type = "uncheck";
				}
			}
		});
	} else {
		$.messager.alert("系统提示", "请先维护用户基本信息！", "error");
	}
});

function submitEvt() {
	var rows = new Array();
	//alert(_changed.length);
	for (var i = 0; i < _changed.length; i++) {
		var row = {userId: _id, roleId: _changed[i].roleId};
		
		for (var j = 0; j < _data.length; j++) {
			if (_data[j] ==  _changed[i].roleId && _changed[i].type == "check") {
				_changed[i].type = "null"; //后台数据先反选又选中，视为无变化
				break;
			}
		}
		//alert(_changed[i].type);
		if (_changed[i].type == "check") {
			//新增
			row.state = 0;
			rows.push(row);
		} else if(_changed[i].type == "uncheck"){
			//删除
			row.state = 2;
			rows.push(row);
		} else {
			continue;
		}
	}
	
	if (rows.length == 0) {
		$.messager.alert("系统提示", "没有数据需要保存！", "warning");
		return;
	}
	
	var str = JSON.stringify(rows);
	$.post("<%=basePath%>/action/system/userRole/doSave.action", 
		{records: str}, 
		function (result) {
			result = eval('(' + result + ')');
			if (result.error) {
				$.messager.alert("系统提示", result.error, "error");
			}  else {
				$.messager.alert("系统提示", "数据保存成功！", "info");
				_changed = null;
				$("#dataGrid").datagrid("reload");
			}
		}
	);
}

function returnEvt() {
	window.parent.location.href = "<%=basePath%>/jsp/xianfeng/system/permit/user_list.jsp";
}

function closeEvt () {
	window.parent.$('#dialog').dialog('close');
}
</script>
</html>