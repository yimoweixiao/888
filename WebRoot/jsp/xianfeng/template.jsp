<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
	<head>
		<base href="<%=basePath%>">
		<title>demo</title>
		<link rel="stylesheet" type="text/css" href="styles.css">
	</head>
	<body>
		This is my JSP page.
		<br>
	</body>
</html>
