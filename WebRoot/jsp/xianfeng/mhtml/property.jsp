<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://javax.xianfeng.mhtml" prefix="mhtml"%>
<%@ taglib uri="http://javax.xianfeng.mhtml/base" prefix="base"%>
<%@ taglib uri="http://javax.xianfeng.mhtml/model" prefix="model"%>

<%@ include file="../system.jsp"%>

<%
	request.setAttribute("key", "Team.Name");
	request.setAttribute("value", "Good Man");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<title>测试Property标签</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<script type="text/javascript">
			
		</script>
	</head>
	<body>
		<base:Property name="Demo.Message"/>
		<br>
		<base:Property name="Demo.Info" value="Hello"/>
		<br>
		<base:Property name="${key}" value="Good Man"/>
		<br>
		<%-- 
		<base:Property name="${key}" value="${value}"/>
		--%>
	</body>
</html>

