<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://javax.xianfeng.mhtml/model" prefix="model"%>
<%@ include file="../../system.jsp"%>
<%
String baseLoadPath = basePath + "/action/platform/organ/doList.action?r=1";
%>
<!DOCTYPE html>
<html>
<head>
	<title>组织管理</title>
	<base href="<%=basePath%>" />
	<jsp:include page="../../easyui.jsp"></jsp:include>
</head>
<body class="easyui-layout">
	<div id="treeDiv" class="easyui-panel" title="组织机构树" data-options="region:'west', split:true, collapsed:false" style="width: 300px">
		<ul id="dataTree"></ul>
	</div>
	<div id="detailDiv" class="easyui-panel" data-options="region: 'center'" style="overflow: hidden;">
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
		url : "<%=baseLoadPath%>",
		/*onBeforeExpand: function (node) {
			return false;
		},*/
		loadFilter : function(data) {
			var isRootNodeLoad = false;
			if (data && data.length > 0) {
				var firstId = data[0].id;
				var firstNode = $(this).tree("find", firstId);
				if (firstNode && !firstNode.parentId) {
					isRootNodeLoad = true;
				}
			}
			var roots = $(this).tree("getRoots");
			if (roots.length <= 0 || isRootNodeLoad) {
				//根节点初始化加载数据、根节点刷新加载数据
				var tree = [];
				var root = {
					id : "root",
					text : "根节点",
					isRoot : true,
					type: {
						id: "CORP"
					},
					iconCls : "icon-home",
					state : "open"
				};
				root.children = data;
				tree.push(root);
				return tree;
			} else {
				//非根节点的子节点加载数据
				return data;
			}
		},
		onLoadError : function() {
			$.messager.alert("系统提示", "加载数据失败，请稍后再试！", "info");
		},
		onLoadSuccess : function(node, data) {
			for ( var i = 0; i < data.length; i++) {
				afterLoadInit(data[i]);
			}
		},
		onContextMenu : function(e, node) {
			e.preventDefault();
			$('#dataTree').tree('select', node.target);
			if (node.isRoot) {
				$('#rootMenu').menu('show', {
					left : e.pageX,
					top : e.pageY
				});
			} else if (node.type.id == "EMP") {
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
			var url = "<%=basePath%>/jsp/xianfeng/platform/organ/organ_edit.jsp";
			url += "?id=" + node.id;
			url += "&typeId=" + node.type.id;
			document.getElementById("detailFrame").src = url;
		}
	});
	$("#dataTree").tree("expand");
});

function afterLoadInit(data) {
	data.state = "closed";
	if (!data.children) {
		return;
	}
	for ( var i = 0; i < data.children.length; i++) {
		afterLoadInit(data.children[i]);
	}
}

function addEvt() {
	var url = "<%=basePath%>/jsp/xianfeng/platform/organ/organ_edit.jsp";
	var node = $('#dataTree').tree('getSelected');
	url += "?typeId=" + node.type.id;
	url += "&parentId=" + node.id;
	document.getElementById("detailFrame").src = url;
}

function refreshEvt() {
	var node = $('#dataTree').tree('getSelected');
	var options = $('#dataTree').tree('options');
	options.url = "<%=baseLoadPath%>";
	if (node.isRoot) {
		//根节点刷新
		$("#dataTree").tree("reload");
	} else {
		//子节点刷新
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
	    
	    $.post("<%=basePath%>/action/platform/organ/doDrop.action", 
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