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
if ("items".equals(menuStyle)) {
	response.sendRedirect("default.jsp");
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
	<script type="text/javascript">
		var _basePath = "<%=basePath%>";
		var _isLockSrc = "<%=isLockSrc%>";
		var _menuStyle = "<%=menuStyle%>";
		
		//保存菜单风格
		if (_menuStyle == "") {
			_menuStyle = "tree";
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
    <div id="divHeader" data-options="region:'north',border:false,href:'<%=basePath%>/jsp/xianfeng/ucenter/header.jsp'"></div>
    <div id="divMenu" data-options="region:'west',split:true,collappsible:true,title:'功能菜单',href:'<%=basePath%>/jsp/xianfeng/ucenter/menu.jsp'"></div>
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
</html>