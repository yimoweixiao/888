<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	<model:DataSet id="ds1" dictName="DEMO_DICT">
		<model:Parameter name="state" type="Boolean" value="true"/>
	</model:DataSet>
	<body>
	
		<select id="dict">
			<c:forEach items="${ds1.records}" var="record">
				<option value="${record.key }">${record.value }</option>
			</c:forEach>
		</select>
	</body>
</html>

