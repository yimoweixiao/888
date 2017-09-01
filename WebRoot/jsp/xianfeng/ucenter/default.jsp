<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="javax.xianfeng.ApplicationConfig"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://javax.xianfeng.mhtml/model" prefix="model"%>
<%@ include file="../system.jsp"%>
<%
//是否锁屏
String isLockSrc = (String) session.getAttribute(ApplicationConfig.LOCK_SCREEN);
if (isLockSrc == null) {
	isLockSrc = "false";
}

//菜单风格
Cookie[] cookies = request.getCookies();
String menuStyle = null;
for (Cookie cookie: cookies) {
	String cookieName = cookie.getName();
	String cookieVal = cookie.getValue();
	//System.out.println(">>> " + cookieName + " = " + cookieVal);
	if (cookieName.equals(ApplicationConfig.MENU_STYLE)) {
		menuStyle = cookieVal;
		break;
	}
}
//System.out.println("menuStyle=" + menuStyle);
if (menuStyle == null) {
	menuStyle = "";
}
if ("tree".equals(menuStyle)) {
	response.sendRedirect("index.jsp");
}
%>
<!DOCTYPE html>
<html>
<head>
	<title>主页</title>
	<base href="<%=basePath%>" />
	<jsp:include page="../easyui.jsp"></jsp:include>
	<link rel="stylesheet" href="<%=basePath %>/jsp/xianfeng/ucenter/default.css"/>
	<script type="text/javascript" src="<%=basePath %>/jsp/xianfeng/ucenter/index.js"></script>
	<style type="text/css">
	.menuBody{text-align:center;}
	</style>
	<script type="text/javascript">
		var _basePath = "<%=basePath%>";
		var _isLockSrc = "<%=isLockSrc%>";
		var _menuStyle = "<%=menuStyle%>";
		
		
		//保存菜单风格
		if (_menuStyle == "") {
			_menuStyle = "items";
			$.ajax( {
				type: "post",
				url: _basePath + "/action/system/auth/doMenuStyle.action", 
				async: true,
				cache: false,
				data: {menuStyle: _menuStyle},
				success: function (result) {
					result = eval('(' + result + ')');
					if (result.error) {
						$.messager.alert("系统提示", data.error, "error");
						return;
					}
				},
			});
		}
	</script>
</head>
<body class="easyui-layout">
    <div id="divHeader" data-options="region:'north',border:false,href:'<%=basePath%>/jsp/xianfeng/ucenter/header_default.jsp'"></div>
    <div id="divMenu" class="easyui-layout" data-options="region:'west',split:false,collappsible:false,border:false" style="width:200px">
		<div data-options="region:'north', border:false">
			<%-- 
			<select id="menuModule" data-options="editable:false" style="width:100%; height:26px; font-size:14px; text-align:center;">
				<option>一级菜单</option>
			</select>
			--%>
		</div>
		<div id="menuAccrodion" class="easyui-accordion" data-options="region:'center', border:false">
		    <div id="div1" title="二级菜单" style="padding:0; text-align:center">
		        <a href="javascript:;" class="easyui-linkbutton" data-options="plain:true, iconCls:'icon-add32', size:'large', iconAlign:'top'">三级菜单</a><br/>
		    </div>
		</div>
    </div>
    <div id="divContent" data-options="region:'center',title:false">
        <div id="tabs" class="easyui-tabs" data-options="fit:true,border:false">
        	<c:forEach items="${LoginUser.defaultPageCfgs}" var="defaultPage">  
				<div id="defaultPage_${defaultPage.key}" title="${defaultPage.key}">
					<iframe id="defaultPageFrame_${defaultPage.key}" width="100%" height="99%" frameborder="0" marginwidth="0" marginheight="0"></iframe>
					<script type="text/javascript">
						 $("#defaultPageFrame_${defaultPage.key}").ready(function(){
							 document.getElementById("defaultPageFrame_${defaultPage.key}").src="<%=basePath%>/${defaultPage.value}";
						 });
					</script>
				</div>
			</c:forEach>
        </div>
        <div id="tabMenu" class="easyui-menu" style="width:120px;">
        	<div id="tabMenu-close" data-options="iconCls:'icon-wrong'">关闭</div>
        	<div id="tabMenu-closeOther" data-options="iconCls:'icon-wrong'">关闭其它</div>
        	<div id="tabMenu-closeAll" data-options="iconCls:'icon-wrong'">关闭全部</div>
        	<div class="menu-sep"></div>
        	<div id="tabMenu-refresh" data-options="iconCls:'icon-refresh'">刷新</div>
        </div>
    </div>
    <div id="divFooter" data-options="region:'south',border:false,href:'<%=basePath%>/jsp/xianfeng/ucenter/footer.jsp'"></div>
</body>
<script type="text/javascript">
var _USER_MENUS = null;
var _MENU_MODULES = new Array();
$(document).ready(function() {
	$.ajax( {
		url: "<%=basePath%>/action/system/auth/doLoadMenu.action",
		type: "post",
		async: false,
		cache: false,
		success : function (data) {
			_USER_MENUS = data;
			
			// 组装模块菜单列表
			$.each(_USER_MENUS, function(i, menu){
				var item = {text: menu.name, value: menu.id};
				_MENU_MODULES.push(item);
			});
			
			// 默认选中第一个模块菜单
			/*if (_USER_MENUS && _USER_MENUS.length > 0) {
				$("#menuModule").combobox({
					data: _MENU_MODULES,
					onSelect: function(record){
						//alert(record.text);
						$.each(_USER_MENUS, function(i, moduleMenu){
							if (record.value == moduleMenu.id) {
								//alert(moduleMenu.name);
								initAccrodionMenu(moduleMenu);
								return false;
							}
						});
						return true;
					}
				}).combobox("select", _MENU_MODULES[0].value);
			}*/
			
			// 组装一级菜单
			if (_USER_MENUS && _USER_MENUS.length > 0) {
				initAccrodionMenuByIndex(0);
				// ie 异步加载head，使用定时器监听dom加载方式初始化一级菜单
				var intervalId = window.setInterval(function (){
					if ($("#moduleMenu")) {
						window.clearInterval(intervalId); //结束定时事件
						
						var html = "";
						$.each(_USER_MENUS, function(i, moduleMenu){
							var icon = moduleMenu.icon2;
							if (icon == null ||　icon == "") {
								icon = "icon-add32";
							}
							html += "<a id='" + moduleMenu.id + "' href='javascript:void(0);' xtype='easyui-linkbutton' ";
							html += "data-options=\"toggle:true, group:'moduleMenu', plain:true, iconCls:'" + icon + "', size:'large', iconAlign:'top', ";
							if (i == 0) {
								html += "selected:true\"";
							} else {
								html += "selected:false\"";
							}
							html += "onclick=\"initAccrodionMenuByIndex(" + i + ");return false;\" ";
							html += "style='padding-left:4px;padding-right:4px;'>" + moduleMenu.name + "</a>";
						});
						//alert($("#moduleMenu").html());
						$("#moduleMenu").html(html);
						$("#moduleMenu").find("a[xtype='easyui-linkbutton']").linkbutton();
					}
				}, 1000);
			}
		}
	});
});

function initAccrodionMenuByIndex (i){
	initAccrodionMenu(_USER_MENUS[i]);
}
/**
 * 初始化手风琴菜单
 * @param {Object} moduleMenu
 */
function initAccrodionMenu (moduleMenu) {
	//删除旧菜单：因一次获取panels删除遍历到第2个会出现异常，因此使用循环获取panels方法
	while (true) {
		var panels = $("#menuAccrodion").accordion("panels");
		if (panels.length <= 0) {
			break;
		}
		$("#menuAccrodion").accordion("remove", $(panels[0]).panel("options").title);
	}
	//alert("剩余：" + $("#menuAccrodion").accordion("panels").length);
	
	
	//增加新菜单
	var funcMenuItemSize = 0;
	$.each(moduleMenu.children, function(i, funcMenu){
		if (funcMenu.children.length <= 0) {
			return true;
		}
		
		var html = "";
		//html += "<div id='div" + funcMenu.id + "' title='" + funcMenu.name+ "' style='padding:0; text-align:center'>";
		$.each(funcMenu.children, function(j, leafMenu){
			var icon = leafMenu.icon2;
			if (icon == null ||　icon == "") {
				icon = "icon-add32";
			}
			html += "<a id='" + leafMenu.id + "' href='javascript:void(0);' class='easyui-linkbutton' ";
			html += "data-options=\"toggle:true, group:'menu', plain:true, iconCls:'" + icon + "', size:'large', iconAlign:'top'\" ";
			html += "onclick=\"openMenu2Tab('" + leafMenu.name + "', '" + leafMenu.url + "');return false;\" ";
			html += "style='width:100%;'>" + leafMenu.name + "</a>";
			html += "<br/>";
		});
		//html += "</div>";
		
		var isSelected = false;
		if (funcMenuItemSize++ == 0) {
			isSelected = true;
		}
		
		$("#menuAccrodion").accordion("add", {
			id: funcMenu.id,
			title: funcMenu.name,
			content: html,
			selected: isSelected,
			border: false,
			bodyCls: "menuBody",
			style: {
				fontWeight: 'normal'
			}
		});
	});
	
}
 
function openMenu2Tab (title, url) {
	addNewTab(title, "<%=basePath%>/" + url);
}
</script>
</html>