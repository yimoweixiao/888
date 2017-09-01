<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://javax.xianfeng.mhtml/model" prefix="model"%>
<%@ include file="../system.jsp"%>
<%
%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<base href="<%=basePath%>" />
	<jsp:include page="../easyui.jsp"></jsp:include>
	<script type="text/javascript">
	</script>
</head>
<body>
<div class="easyui-panel" data-options="fit:true, border:false">
	<ul id="dataTree" class="easyui-tree" style="padding: 4px"></ul>
</div>
<script type="text/javascript">
$(document).ready(function() {
	$("#dataTree").tree( {
		url : "<%=basePath%>/action/system/auth/doLoadMenu.action",
		/*onBeforeExpand: function (node) {
			return false;
		},*/
		onLoadSuccess: function (node, data) {
			// 自动展开一级菜单
			var _rootMenus = $(this).tree("getRoots");
			$.each(_rootMenus, function (i, rootMenu) {
				$("#dataTree").tree("expand", rootMenu.target);
			});
		},
		onClick : function (node) {
			if (node.isLeaf) {
				//叶子节点
				addNewTab(node.text, "<%=basePath%>/" + node.url);
			} else {
				//子节点
				$(this).tree("expand", node.target);
			}
		}
	});
});
</script>
</body>
</html>