<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://javax.xianfeng.mhtml/model" prefix="model"%>
<%@ include file="../../system.jsp"%>
<%
String baseLoadDataPath = basePath + "/action/system/module/doList.action?r=1";
%>
<!DOCTYPE html>
<html>
<head>
	<title>功能管理</title>
	<base href="<%=basePath%>" />
	<jsp:include page="../../easyui.jsp"></jsp:include>
</head>
<body class="easyui-layout">
	<div id="treeDiv" class="easyui-panel" title="功能树" data-options="region:'west', split:true, collapsed:false" style="width: 250px">
		<ul id="dataTree"></ul>
	</div>
	<div id="detailDiv" class="easyui-panel" data-options="region:'center'" style="overflow: hidden;">
		<iframe id="detailFrame" width="100%" height="100%" frameborder="no" border="0" marginwidth="0" marginheight="0"></iframe>
	</div>
	<div id="moduleMenu" class="easyui-menu" style="width: 120px;">
		<div onclick="addEvt('module')" data-options="iconCls:'icon-add'">增加模块</div>
		<div onclick="refreshEvt()" data-options="iconCls:'icon-refresh'">刷新</div>
	</div>
	<div id="funcMenu" class="easyui-menu" style="width: 120px;">
		<div onclick="addEvt('function')" data-options="iconCls:'icon-add'">增加功能</div>
		<div onclick="deleteEvt()" data-options="iconCls:'icon-delete'">删除</div>
		<div onclick="refreshEvt()" data-options="iconCls:'icon-refresh'">刷新</div>
	</div>
	<div id="leafFuncMenu" class="easyui-menu" style="width: 120px;">
		<div onclick="addEvt('function')" data-options="iconCls:'icon-add'">增加功能</div>
		<div onclick="deleteEvt()" data-options="iconCls:'icon-delete'">删除</div>
		<div onclick="refreshEvt()" data-options="iconCls:'icon-refresh'">刷新</div>
		<div class="menu-sep"></div>
		<div onclick="operMgtEvt()" data-options="iconCls:'icon-detail'">操作管理</div>
	</div>
</body>
<script type="text/javascript">
$(document).ready(function() {
	$("#dataTree").tree( {
		url : "<%=baseLoadDataPath%>",
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
			for ( var i = 0; i < data.length; i++) {
				afterLoadInit(data[i]);
			}
		},
		onContextMenu : function(e, node) {
			e.preventDefault();
			$('#dataTree').tree('select', node.target);
			if (node.isRoot) {
				$('#moduleMenu').menu('show', {
					left : e.pageX,
					top : e.pageY
				});
			} else if (node.type == "function" && node.children.length == 0) {
				$('#leafFuncMenu').menu('show', {
					left : e.pageX,
					top : e.pageY
				});
			} else {
				$('#funcMenu').menu('show', {
					left : e.pageX,
					top : e.pageY
				});
			}
		},
		onClick : function(node) {
			var url = "";
			if (node.type == "module") {
				url = "<%=basePath%>/jsp/xianfeng/system/permit/module_edit.jsp";
				url += "?id=" + node.id;
			} else if (node.type == "function") {
				url = "<%=basePath%>/jsp/xianfeng/system/permit/function_edit.jsp";
				url += "?id=" + node.id;
			} else {
				//$.messager.alert("系统提示", "未知的节点查看类型"+node.type, "warning");
				return;
			}
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

function addEvt(type) {
	var url = "";
	if (type == "module") {
		url = "<%=basePath%>/jsp/xianfeng/system/permit/module_edit.jsp";
	} else if (type == "function") {
		url = "<%=basePath%>/jsp/xianfeng/system/permit/function_edit.jsp?r=1";
		var node = $('#dataTree').tree('getSelected');
		if (node.type == "module") {
			url += "&moduleId=" + node.id;
		} else if (node.type == "function") {
			//url += "&moduleId=" + node.module.id;
			var moduleNode = getModuleNode(node);
			url += "&moduleId=" + moduleNode.id;
			url += "&parentId=" + node.id;
		} else {
			//$.messager.alert("系统提示", "未知增加父节点类型" + node.type, "warning");
			return;
		}
	} else {
		//$.messager.alert("系统提示", "未知数据增加类型" + type, "warning");
		return;
	}
	document.getElementById("detailFrame").src = url;
}

function getModuleNode(node) {
	if (node.type == "module") {
		return node;
	}
	var parentNode = $('#dataTree').tree('getParent', node.target);
	return getModuleNode(parentNode);
}

function refreshEvt() {
	var node = $('#dataTree').tree('getSelected');
	var options = $('#dataTree').tree('options');
	//根节点
	if (node.isRoot) {
		options.url = "<%=baseLoadDataPath%>";
		$("#dataTree").tree("reload");
		return;
	} else if (node.type == "module") {
		//子节点：模块刷新功能
		options.url = "<%=baseLoadDataPath%>&parentType=module";
		$("#dataTree").tree("reload", node.target);
	} else if (node.type == "function") {
		//子节点：功能刷新子节点
		options.url = "<%=baseLoadDataPath%>&parentType=function";
		$("#dataTree").tree("reload", node.target);
	} else {
		$.messager.alert("系统提示", "未知数据刷新异常！", "warning");
	}
}

function operMgtEvt() {
	var node = $('#dataTree').tree('getSelected');
	var url = "<%=basePath%>/jsp/xianfeng/system/permit/operation_list.jsp?functionId=" + node.id;
	document.getElementById("detailFrame").src = url;
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
	    var url = "";
	    if (node.type == "module") {
	    	//删除模块
	    	url = "<%=basePath%>/action/system/module/doDrop.action?id=" + node.id;
	    } else if (node.type == "function") {
			//删除功能
			url = "<%=basePath%>/action/system/function/doDrop.action?id=" + node.id;
	    } else {
	    	return;
	    }
	    
	     $.post(url, 
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