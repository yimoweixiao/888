<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://javax.xianfeng.mhtml/model" prefix="model"%>
<%@ include file="../system.jsp"%>
<%
// 显示的节点类型，逗号分隔
String showType = request.getParameter("showType");
if (showType == null) {
	showType = "";
}

// 可选的接地那类型，逗号分隔
String selectType = request.getParameter("selectType");
if (selectType == null) {
	selectType = "";
}

// 多选，true/false
String multiSelect = request.getParameter("multiSelect");
if (multiSelect == null) {
	multiSelect = "false"; //默认单选
}

//父节点
String parentId = request.getParameter("parentId");
if (parentId == null) {
	parentId = "";
}

//是否自动展开
String expend = request.getParameter("expend");
if (expend == null) {
	expend = "";
}

String showBtn = request.getParameter("showBtn");
if (showBtn == null) {
	showBtn = "false";
}

String baseLoadPath = basePath + "/action/platform/organ/doList.action";
%>
<!DOCTYPE html>
<html>
<head>
	<title>组织机构选择</title>
	<base href="<%=basePath%>" />
	<jsp:include page="../easyui.jsp"></jsp:include>
</head>
<body>
	<div id="treeDiv" class="easyui-panel" title="" fit="true" data-options="footer:'#footer', border: false" style="padding: 10px;">
		<ul id="dataTree"></ul>
	</div>
	<%
	if ("true".equals(showBtn)) {
	%>
	<div id="footer" class="footbar">
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="confirmEvt()" data-options="iconCls:'icon-right'" style="width: 60px;">确定</a>
		&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearEvt()" data-options="iconCls:'icon-trashcan'" style="width: 60px;">清空</a>
		&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="closeEvt()" data-options="iconCls:'icon-wrong'" style="width: 60px;">关闭</a>
	</div>
	<%} %>
</body>
<script type="text/javascript">
var showType = "<%=showType%>";
var selectType = "<%=selectType%>";
var parentId = "<%=parentId%>";
var multiSelect = "<%=multiSelect%>" == "true" ? true : false;
var expend = "<%=expend%>";

$(document).ready(function() {
	$("#dataTree").tree( {
		url : "<%=baseLoadPath%>",
		/*onBeforeExpand: function (node) {
			return false;
		},*/
		queryParams: {
			id: parentId,
			showType: showType
		},
		checkbox: multiSelect,
		onlyLeafCheck: true,
		onBeforeCheck: function(node, checked){
			if (!multiSelect && checked) {
				// 反选其他节点
				$($(this).tree('getChecked')).each(function(i, k){
					$(this).tree('uncheck', k.target); //此事件有bug，不能反选其他节点，弃用checkbox反选其他节点的方式实现单选
				});
			}
			return checked;
		},
		onBeforeSelect: function (node) {
			//不限制返回节点类型
			if (selectType == "") {
				return true;
			}
			
			var arr = selectType.split(",");
			var isSelected = false;
			$(arr).each(function (i, type){
				if (node.type.id == type) {
					isSelected = true;
					return true;
				}
			});
			
			/*if (!isSelected) {
				$.messager.alert("系统提示", "不是需要返回的节点类型！", "warning");
			}*/
			return isSelected;
		},
		onLoadError : function() {
			$.messager.alert("系统提示", "加载数据失败，请稍后再试！", "info");;
		},
		loadFilter : function(data) {
			if ("true" == expend) {
				$(data).each(function (i, nodeData) {
					nodeData.isRoot = true;
					nodeData.state = "open";
				});
			}
			return data;
		}
	});
	
	/*if ("true" == expend) {
		var roots = $("#dataTree").tree("getRoots");
		$(roots).each(function(i, root){
			$("#dataTree").tree("expandAll", root.target);
			$(root.children).each(function (j, child){
				$("#dataTree").tree("expandAll", child.target);
			});
		});
	}*/
});

function confirmEvt () {
	var selectNodes = getSelectedEvt();
	if (!selectNodes) {
		$.messager.alert("系统提示", "请选择节点！", "warning");
		return;
	}
	window.returnValue = selectNodes;
	window.close();
	return selectNodes;
}

function clearEvt() {
	var selectNodes = [];
	window.returnValue = selectNodes;
	window.close();
	return selectNodes;
}

function getSelectedEvt() {
	var selectNodes = null;
	if (multiSelect) {
		selectNodes = $('#dataTree').tree('getChecked');
	} else {
		selectNodes = $('#dataTree').tree('getSelected');
		if (selectNodes != null) {
			selectNodes = [selectNodes]; //将单选结果转换成数组
		}
	}
	return selectNodes;
}

function closeEvt() {
	window.close();
}
</script>
</html>