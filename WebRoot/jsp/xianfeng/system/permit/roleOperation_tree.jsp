<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://javax.xianfeng.mhtml/model" prefix="model"%>
<%@ include file="../../system.jsp"%>
<%
String roleId = request.getParameter("roleId");
%>
<!DOCTYPE html>
<html>
<head>
	<title>角色权限设置</title>
	<base href="<%=basePath%>" />
	<jsp:include page="../../easyui.jsp"></jsp:include>
	<script type="text/javascript">
	var _roleId = "<%=roleId%>";
	</script>
</head>
<body class="easyui-layout">
	<div id="treeDiv" class="easyui-panel" title="" data-options="region:'center', border:false, footer:'#footer', collapsible:false">
		<ul id="dataTree"></ul>
	</div>
	<div id="footer" class="footbar">
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="saveEvt()" style="width: 60px;">保存</a>
	</div>
</body>
<script type="text/javascript">
$(document).ready(function() {
	$("#dataTree").tree( {
		checkbox: true,
		url : "<%=basePath%>/action/system/roleOperation/doList.action?roleId=<%=roleId%>",
		/*onBeforeExpand: function (node) {
			return false;
		},*/
		loadFilter : function(data) {
			var isRootNodeLoadData = false;
			if (data && data.length > 0) {
				var firstId = data[0].id;
				var firstNode = $(this).tree("find", firstId);
				if (firstNode && firstNode.type == "module") {
					isRootNodeLoadData = true;
				}
			}
			var roots = $(this).tree("getRoots");
			if (roots.length <= 0 || isRootNodeLoadData) {
				//根节点初始化加载数据、根节点刷新加载数据
				var treeData = [];
				var root = {
					id : "root",
					text : "根节点",
					isRoot : true,
					iconCls : "icon-home",
					state : "open"
				};
				root.children = data;
				treeData.push(root);
				return treeData;
			} else {
				//非根节点的子节点加载数据
				return data;
			}
		},
		onLoadError : function() {
			$.messager.alert("系统提示", "加载数据失败，请稍后再试！", "info");;
		},
		onLoadSuccess : function(node, data) {
			_data = new Array();
			_changed = new Array();
			
			for ( var i = 0; i < data.length; i++) {
				afterLoadInit(data[i]);
			}
			//alert(_data.length);
		},
		onCheck: function (node, checked) {
			//alert(node.text + ":" + checked);
			//对叶子节点进行新增/删除记录
			markCheckData (node, checked);
		}
	});
	$("#dataTree").tree("expand");
});

function markCheckData (node, checked) {
	if (node.iconCls != "icon-operation" && !node.children && checked) {
		$("#dataTree").tree("uncheck", node.target);
		//$.messager.alert("系统提示", "无操作的子节点不能选中！", "warning");
	}
	
	if (node.children) {
		for (var i = 0; i < node.children.length; i++) {
			markCheckData (node.children[i], checked);
		}
		return;
	}
	
	var index = -1;
	for (var i = 0; i < _changed.length; i++) {
		if (_changed[i].id == node.id) {
			index = i;
			break;
		}
	}
	if (index < 0) {
		if (checked) {
			_changed.push({operationId:node.id, type:"check"});
		} else {
			_changed.push({operationId:node.id, type:"uncheck"});
		}
	} else {
		if (checked) {
			_changed[index].type = "check";
		} else {
			_changed[index].type = "uncheck";
		}
	}
}

var _data = null; //后台加载的角色对应的操作
var _changed = null; //前台新增/删除的操作
function afterLoadInit(data) {
	if (!data.children) {
		if (data.iconCls == "icon-operation" && data.checked == false) {
			_data.push({roleId: _roleId, operationId: data.id}); //选中的叶子节点既操作，后台设置为true，前台变成false
		}
		return;
	} else {
		data.state = "closed";
	}
	
	for ( var i = 0; i < data.children.length; i++) {
		afterLoadInit(data.children[i]);
	}
}

function saveEvt() {
	//alert(_changed.length);
	var rows = new Array();
	for (var i = 0; i < _changed.length; i++) {
		var row = {roleId: _roleId, operationId: _changed[i].operationId};
		
		for (var j = 0; j < _data.length; j++) {
			if (_data[j].operationId ==  _changed[i].operationId && _changed[i].type == "check") {
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
		_changed = new Array();
		$.messager.alert("系统提示", "没有数据需要保存！", "warning");
		return;
	}
	
	var str = JSON.stringify(rows);
	$.post("<%=basePath%>/action/system/roleOperation/doSave.action", 
		{records: str}, 
		function (result) {
			result = eval('(' + result + ')');
			if (result.error) {
				$.messager.alert("系统提示", result.error, "error");
			} else {
				$.messager.alert("系统提示", "数据保存成功", "info");
				$("#dataTree").tree("reload");
			}
		}
	);
}
</script>
</html>