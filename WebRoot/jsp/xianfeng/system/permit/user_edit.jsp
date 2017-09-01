<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://javax.xianfeng.mhtml/model" prefix="model"%>
<%@ include file="../../system.jsp"%>
<%
	String id = request.getParameter("id");
	if (id == null) {
		id = "";
	}
%>
<!DOCTYPE html>
<html>
<head>
	<title>用户维护</title>
	<base href="<%=basePath%>" />
	<jsp:include page="../../easyui.jsp"></jsp:include>
	<model:DataSet id="userTypeDs" metaName="System.User.Type" type="json" />
	<model:DataSet id="userStatusDs" metaName="System.User.Status" type="json" />
	<script type="text/javascript">
		var _id = "<%=id%>";
	</script>
</head>
<body>
<div id="mytabs" fit="true">
	<div id="tab1" title="基本信息" style="overflow: hidden;">
		<iframe id="frame1" width="100%" height="100%" frameborder="no" border="0" marginwidth="0" marginheight="0"></iframe>
	</div>
	<%
	if (!"".equals(id)) {
	%>
	<div id="tab2" title="通讯信息" style="overflow: hidden;">
		<iframe id="frame2" width="100%" height="100%" frameborder="no" border="0" marginwidth="0" marginheight="0"></iframe>
	</div>
	<div id="tab2" title="权限设置" style="overflow: hidden;">
		<iframe id="frame3" width="100%" height="100%" frameborder="no" border="0" marginwidth="0" marginheight="0"></iframe>
	</div>
	<%} %>
</div>
</body>
<script type="text/javascript">
var tab1 = false;
var tab2 = false;
var tab3 = false;

$(document).ready(function() {
	$("#mytabs").tabs({
		border: false,
		onSelect: function (title){
			if (title == "基本信息" && !tab1) {
				var url1 = "<%=basePath%>/jsp/xianfeng/system/permit/userBase_edit.jsp";
				if (_id != "") {
					url1 += "?id=" + _id;
				}
				document.getElementById("frame1").src = url1;
				tab1 = true;
			} else if (title == "通讯信息" && !tab2) {
				var url2 = "<%=basePath%>/jsp/xianfeng/system/permit/userLink_edit.jsp?openType=list&target=" + _id;
				document.getElementById("frame2").src = url2;
				tab2 = true;
			} else if (title == "权限设置" && !tab3) {
				var url3 = "<%=basePath%>/jsp/xianfeng/system/permit/userRole_edit.jsp?id=" + _id;
				document.getElementById("frame3").src = url3;
				tab3 = true;
			}
		}
	});
});
</script>
</html>