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
	<title>菜单管理</title>
	<base href="<%=basePath%>" />
	<jsp:include page="../../easyui.jsp"></jsp:include>
</head>
<body class="easyui-layout">
	<div id="treeDiv" class="easyui-panel" title="菜单树" data-options="region:'west', split:true, collapsed:false" style="width: 250px">
		<ul id="dataTree"></ul>
	</div>
	<div id="detailDiv" class="easyui-panel" data-options="region:'center'" style="overflow: hidden;">
		<iframe id="detailFrame" width="100%" height="100%" frameborder="no" border="0" marginwidth="0" marginheight="0"></iframe>
	</div>
	<div id="rootMenu" class="easyui-menu" style="width: 120px;">
		<div onclick="addEvt()" data-options="iconCls:'icon-add'">增加</div>
		<div onclick="refreshEvt()" data-options="iconCls:'icon-refresh'">刷新</div>
	</div>
	<div id="childMenu" class="easyui-menu" style="width: 120px;">
		<div onclick="addEvt()" data-options="iconCls:'icon-add'">增加</div>
		<div onclick="deleteEvt()" data-options="iconCls:'icon-delete'">删除</div>
		<div onclick="refreshEvt()" data-options="iconCls:'icon-refresh'">刷新</div>
	</div>
	<div id="leafMenu" class="easyui-menu" style="width: 120px;">
		<div onclick="deleteEvt()" data-options="iconCls:'icon-delete'">删除</div>
	</div>
</body>
<script type="text/javascript">
$(document).ready(function() {
	$("#dataTree").tree( {
		url : "<%=basePath%>/action/system/menu/doList.action?typeId=<%=typeId%>",
		/*onBeforeExpand: function (node) {
			return false;
		},*/
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
		},
		onContextMenu : function(e, node) {
			e.preventDefault();
			$('#dataTree').tree('select', node.target);
			if (node.isRoot) {
				$('#rootMenu').menu('show', {
					left : e.pageX,
					top : e.pageY
				});
			} else if (node.isLeaf) {
				$('#leafMenu').menu('show', {
					left : e.pageX,
					top : e.pageY
				});
			} else {
				$('#childMenu').menu('show', {
					left : e.pageX,
					top : e.pageY
				});
			}
		},
		onClick : function(node) {
			var url = "<%=basePath%>/jsp/xianfeng/system/permit/menu_edit.jsp";
			url += "?id=" + node.id;
			document.getElementById("detailFrame").src = url;
		}
	});
	$("#dataTree").tree("expand");
});

function addEvt() {
	var url = "<%=basePath%>/jsp/xianfeng/system/permit/menu_edit.jsp?typeId=<%=typeId%>";
	var node = $('#dataTree').tree('getSelected');
	url += "&parentId=" + node.id;
	document.getElementById("detailFrame").src = url;
}

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

/**
 * 更新节点数据
 * @param {Object} data
 */
function updateNodeEvt(data) {
	var node = $('#dataTree').tree('getSelected');
	$('#dataTree').tree('update', {
		target: node.target,
		text: data.text
	});
}

function deleteEvt() {
	var node = $('#dataTree').tree('getSelected');
	$.messager.confirm("系统提示","确认想要删除【"+node.text+"】吗？",function(result){    
	    if (!result){    
	        return;    
	    }
	    
	    $.post("<%=basePath%>/action/system/menu/doDrop.action", 
			{id: node.id}, 
			function (result) {
				result = eval('(' + result + ')');
				if (result.error) {
					$.messager.alert("系统提示", "删除失败", "error");
				} else {
					var parentNode = $('#dataTree').tree('getParent', node.target);
					if (parentNode.isRoot) {
						$("#dataTree").tree("reload");
					} else {
						$("#dataTree").tree("reload", parentNode.target);
					}
				}
			}
		);
	});
}
</script>
</html>