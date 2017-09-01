<%@ page language="java" pageEncoding="UTF-8"%>
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
		<script type="text/javascript">
			
		</script>
	</head>
	<model:DataSet id="ds">
		<model:Record bean="javax.xianfeng.ssh.demo.entity.DemoEntity">
			<model:Field name="email"/>
		</model:Record>
		<model:Parameter name="name" value="Jakie"/>
	</model:DataSet>
	<body>

	</body>
</html>

