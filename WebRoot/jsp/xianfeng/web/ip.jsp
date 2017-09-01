<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://javax.xianfeng.mhtml" prefix="mhtml"%>
<%@ taglib uri="http://javax.xianfeng.mhtml/base" prefix="base"%>
<%@ taglib uri="http://javax.xianfeng.mhtml/model" prefix="model"%>
<%@ page import="javax.xianfeng.web.util.RequestUtil" %>
<%@ include file="../system.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<title>测试ip地址</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<script type="text/javascript">
			
		</script>
	</head>
	<body>
	<%
	String ip = request.getRemoteAddr();
	out.println("IP: " + ip);
	
	out.println("<br/>");
	
	ip = RequestUtil.getRemoteAddr(request);
	out.println("IP: " + ip);
	%>
	</body>
</html>

