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
		<script type="text/javascript">
			
		</script>
	</head>
	<model:DataSet id="ds2" metaName="App.State"/>
	<body>
	
		<select id="state">
			<%
				DataSet ds = (DataSet)request.getAttribute("ds2");
				if(ds != null){
					for(DataRecord record: ds.getRecords()){
						String key = (String)record.get("key");
						String value = (String)record.get("value");
			%>
			<option value="<%=key %>"><%=value %></option>
			<%
					}
				}
			%>
		</select>
	</body>
</html>

