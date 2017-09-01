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
<body id="view" class="easyui-layout">
	<div id="div1" class="easyui-panel" title="菜单树" data-options="region:'west', split:true, collapsed:false" style="width: 250px">
		<ul id="menuTree"></ul>
	</div>
	<div id="div2" class="easyui-panel" title="预置菜单" data-options="region:'center', split:false, collapsed:false">
		<ul id="sysMenuTree"></ul>
	</div>
	<div id="div3" class="easyui-panel" data-options="region:'east', split:false, collapsed:false" style="display: none; overflow: hidden;">
		<iframe id="detailFrame" width="100%" height="100%" frameborder="no" border="0" marginwidth="0" marginheight="0"></iframe>
	</div>
	<div id="rootMenu" class="easyui-menu" style="width: 120px;">
		<div onclick="addEvt()" data-options="iconCls:'icon-add'">增加</div>
		<div onclick="importEvt()" data-options="iconCls:'icon-undo'">导入</div>
		<div onclick="refreshEvt()" data-options="iconCls:'icon-refresh'">刷新</div>
	</div>
	<div id="childMenu" class="easyui-menu" style="width: 120px;">
		<div onclick="addEvt()" data-options="iconCls:'icon-add'">增加</div>
		<div onclick="importEvt()" data-options="iconCls:'icon-undo'">导入</div>
		<div onclick="editEvt()" data-options="iconCls:'icon-edit'">修改</div>
		<div onclick="deleteEvt()" data-options="iconCls:'icon-delete'">删除</div>
		<div onclick="refreshEvt()" data-options="iconCls:'icon-refresh'">刷新</div>
	</div>
	<div id="leafMenu" class="easyui-menu" style="width: 120px;">
		<div onclick="editEvt()" data-options="iconCls:'icon-edit'">修改</div>
		<div onclick="deleteEvt()" data-options="iconCls:'icon-delete'">删除</div>
	</div>
</body>
<script type="text/javascript">
var _MAIN_WIDTH = 0; //右侧区域宽度
var _MAIN_HEIGHT = 0; //右侧区域高度

function getWrapedSource (source, state) {
	source.state = state;
	var children = source.children;
	for (var i = 0; i < children.length; i++) {
		source.children[i] = getWrapedSource(children[i], state);
	}
	return source;
}

$(document).ready(function() {
	$("#menuTree").tree( {
		url : "<%=basePath%>/action/system/menu/doList.action?typeId=<%=typeId%>",
		dnd: true,
		onDrop: function (target, source, point) {
			var targetNode = $(this).tree("getNode", target);
			if (!targetNode) {
				$.messager.alert("系统提示", "不能拖放到根节点之外", "warning");
				return false;
			}
			
			var parentNode = null;
			if ("append" == point) {
				//source变成target的子节点
				parentNode = targetNode;
				source.seq = 0;
			} else if ("top" == point) {
				//source变成target的上方兄弟节点
				if (targetNode.isRoot) {
					$.messager.alert("系统提示", "不能拖放到根节点之外", "warning");
					return false;
				} else {
					parentNode = $(this).tree("getParent", target);
				}
				source.seq = target.seq - 1;
			} else if ("bottom" == point) {
				//source变成target的下方兄弟节点
				if (targetNode.isRoot) {
					$.messager.alert("系统提示", "不能拖放到根节点之外", "warning");
					return false;
				} else {
					parentNode = $(this).tree("getParent", target);
				}
				source.seq = target.seq - 1;
			} else {
				//未知的point类型
				$.messager.alert("系统提示", "未知的拖放操作位置类型" + point, "warning");
				return false;
			}
			source.parentId = parentNode.id;
			
			if (source.type.id == "SYSTEM") {
				// 预置菜单拖放：新增
				source = getWrapedSource(source, 0);
			} else {
				// 菜单树内部拖放：修改
				source = getWrapedSource(source, 1);
			}
			
			// 保存数据
			var str = JSON.stringify(source);
			$.ajax( {
				type : "post",
				url : "<%=basePath%>/action/system/menu/doAjaxSave.action",
				async : true,
				cache : false,
				data : {typeId: "<%=typeId%>", records: str},
				success : function (data) {
					var result = eval('(' + data + ')')
					if (result.error) {
						$.messager.alert("系统提示", result.error, "error");
					} else {
						if (targetNode.isRoot) {
							//根节点
							$("#menuTree").tree("reload");
						} else {
							//子节点：刷新本节点
							$("#menuTree").tree("reload", target);
						}
					}
				}
			});
			if (source.type.id == "SYSTEM") {
				// 预置菜单拖放：新增
				return false;
			} else {
				// 菜单树内部拖放：修改
				return true;
			}
		},
		loadFilter : function(data) {
			var isRootNodeLoadData = false;
			if (data && data.length > 0) {
				var firstId = data[0].id;
				var firstNode = $(this).tree("find", firstId);
				if (!firstNode || firstNode.parentId == null) {
					isRootNodeLoadData = true;
				}
			}
			var roots = $(this).tree("getRoots");
			if (roots.length <= 0 || (roots[0].isRoot && (!data || data.length <= 0)) || isRootNodeLoadData) {
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
			$('#menuTree').tree('select', node.target);
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
	$("#menuTree").tree("expand");
	
	// 预置菜单
	$("#sysMenuTree").tree( {
		url : "<%=basePath%>/action/system/menu/doList.action?typeId=SYSTEM",
		dnd: true,
		onDragOver: function (node) {
			return false;
		},
		onDragEnter: function (node) {
			return false;
		},
		onDragLeave: function (node) {
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
	$("#sysMenuTree").tree("expand");
	
	var ref = $('#view').layout("panel", "center");
	_MAIN_WIDTH = ref.width();
	_MAIN_HEIGHT = ref.height();
});

function addEvt() {
	if ($('#div3').is(":visible")) {
		return; //重复点击增加
	}
	
	$('#div3').panel("resize", {
		left: 0,
		top: 0,
		width: _MAIN_WIDTH, 
		height: _MAIN_HEIGHT
	}).show();
	
	$('#div2').panel("resize", {
		left: 0,
		top: 0,
		width: 0, 
		height: 0
	}).hide();
	
	$('#view').layout("resize");
	
	var url = "<%=basePath%>/jsp/xianfeng/system/permit/menu_edit.jsp?typeId=<%=typeId%>";
	var node = $('#menuTree').tree('getSelected');
	url += "&parentId=" + node.id;
	document.getElementById("detailFrame").src = url;
}

function importEvt () {
	if ($('#div2').is(":visible")) {
		return; //重复点击导入
	}
	
	$('#div2').panel("resize", {
		left: 0,
		top: 0,
		width: _MAIN_WIDTH, 
		height: _MAIN_HEIGHT
	}).show();
	
	$('#div3').panel("resize", {
		left: 0,
		top: 0,
		width: 0, 
		height: 0
	}).hide();
	
	$('#view').layout("resize");
}

function editEvt () {
	
}

function refreshEvt() {
	var node = $('#menuTree').tree('getSelected');
	if (node.isRoot) {
		//根节点
		$("#menuTree").tree("reload");
	} else {
		//子节点：刷新本节点
		$("#menuTree").tree("reload", node.target);
	}
}

function deleteEvt() {
	var node = $('#menuTree').tree('getSelected');
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
					var parentNode = $('#menuTree').tree('getParent', node.target);
					if (parentNode.isRoot) {
						$("#menuTree").tree("reload");
					} else {
						$("#menuTree").tree("reload", parentNode.target);
					}
				}
			}
		);
	});
}
</script>
</html>