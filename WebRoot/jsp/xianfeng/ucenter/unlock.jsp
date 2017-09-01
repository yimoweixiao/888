<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://javax.xianfeng.mhtml/model" prefix="model"%>
<%@ include file="../system.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>用户解锁</title>
<base href="<%=basePath%>" />
<jsp:include page="../easyui.jsp"></jsp:include>
<script type="text/javascript">
$(document).ready(function() {
	$("#dataForm").validate();
});
</script>
</head>
<body>
<div class="easyui-panel" data-options="border: false" fit="true">
	<form onsubmit="return false;" style="padding-top: 30px;">
		<table width="100%">
			<tr>
				<td width="25%" align="right">用户密码：</td>
				<td align="left">
					<input type="password" id="password" class="easyui-textbox" required="true" >
				</td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>
