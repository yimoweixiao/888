<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../system.jsp"%>
<!-- 登录页面跳转页面，可以解决iframe页面无权限访问直接跳转出现内嵌登录页面问题 -->
<html>
<head>
<script type="text/javascript" src="<%=basePath %>/plugin/jquery/jquery.min.js"></script>
</head>
<body></body>
<script type="text/javascript">
function loginEvt () {
	window.top.location.href = "<%=basePath%>/jsp/xianfeng/ucenter/login.jsp";
}
$("<a href='javascript:;' onclick='loginEvt()'></a>").appendTo("body").click();
</script>
</html>