<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://javax.xianfeng.mhtml/model" prefix="model"%>
<%@ include file="../../system.jsp"%>
<%
String typeId = request.getParameter("typeId");
if (typeId == null) {
	typeId = "SYSTEM";
}
%>
<!DOCTYPE html>
<html>
<head>
	<title>预置菜单</title>
	<base href="<%=basePath%>" />
	<jsp:include page="../../easyui.jsp"></jsp:include>
</head>
<body class="easyui-layout">
	<div id="treeDiv" class="easyui-panel" title="菜单树" data-options="region:'west', split:true, collapsed:false" style="width: 250px">
		<ul id="dataTree"></ul>
	</div>
</body>
<script type="text/javascript">
$(document).ready(function() {
	$("#dataTree").tree( {
		url : "<%=basePath%>/action/system/menu/doList.action?typeId=<%=typeId%>",
		dnd: true,
		onDragOver: function (node) {
			return false;
		},
		onDragEnter: function (node) {
			return false;
		},
		loadFilter : function(data) {
			var roots = $(this).tree("getRoots");
			if (roots.length <= 0 || (data && data.length > 0 && data[0].parentId == null)) {
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
		}
	});
	$("#dataTree").tree("expand");
});

function refreshEvt() {
	var node = $('#dataTree').tree('getSelected');
	if (node.isRoot) {
		//根节点
		$("#dataTree").tree("reload");
	} else {
		//子节点：刷新本节点
		$("#dataTree").tree("reload", node.target);
	}
}
</script>
</html>