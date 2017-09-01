<%@ page language="java" import="java.util.List" pageEncoding="UTF-8"%>
<%@ page import="javax.xianfeng.core.model.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://javax.xianfeng.mhtml" prefix="mhtml"%>
<%@ taglib uri="http://javax.xianfeng.mhtml/base" prefix="base"%>
<%@ taglib uri="http://javax.xianfeng.mhtml/model" prefix="model"%>

<%@ include file="../system.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<title></title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
	</head>
	<model:DataSet id="ds2" metaName="App.State" type="json"/>
	<body>
		Loading...
	</body>
	<script type="text/javascript">
		alert(_ds2.length);
	</script>
</html>

