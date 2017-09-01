<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://javax.xianfeng.mhtml" prefix="mhtml"%>
<%@ taglib uri="http://javax.xianfeng.mhtml/base" prefix="base"%>
<%@ taglib uri="http://javax.xianfeng.mhtml/model" prefix="model"%>

<%@ include file="../system.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<title>测试jsp内容替换</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<script type="text/javascript">
			
		</script>
	</head>
	<body>
		原内容：>test< World<br/>
		<a href="#" safeURI="insert@demo">链接1</a><br/>
		你好<br/>
		<a href="#" safeURI="delete@demo">链接2</a><br/>
		你好<br/>
		<a href="#" safeURI="update@demo">链接3</a><br/>
		你好<br/>
		<a href="#" safeURI="select@demo">链接4</a><br/>
		你好<br/>
	</body>
</html>

