<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://javax.xianfeng.mhtml/base" prefix="base"%>
<%@ taglib uri="http://javax.xianfeng.mhtml/model" prefix="model"%>
<%@ include file="../system.jsp"%>
<%
%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<base href="<%=basePath%>" />
	<script type="text/javascript">
	</script>
</head>
<body>
	<div class="header1">
		<div class="header2">
			<div class="logo">
				<strong>
					<base:Property name="System.Title"/>
				</strong>
				<label style="font-size:24px;">
					<base:Property name="System.SubTitle"/>
				</label>
			</div>
			<div class="contact">
				<div class="headerMenu">
					<ul>
						<li>
							<a href="<%=basePath %>/jsp/xianfeng/ucenter/linkus.jsp" target="_blank" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-logout'">联系我们</a>
						</li>
						<li>
							<a href="<%=basePath %>/jsp/xianfeng/ucenter/syshelp.jsp" target="_blank" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-help'">用户帮助</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
