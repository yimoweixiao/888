<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://javax.xianfeng.mhtml/model" prefix="model"%>
<%@ include file="../system.jsp"%>
<%
%>
<!DOCTYPE html>
<html>
<head>
	<title>系统帮助</title>
	<base href="<%=basePath%>" />
	<jsp:include page="../easyui.jsp"></jsp:include>
	<link rel="stylesheet" href="<%=basePath %>/jsp/xianfeng/ucenter/default.css"/>
	<style type="text/css">
	.head {height: 28px;}
	.panel-title {text-align: center; font-size: 18px; line-height: 28px;}
	</style>
</head>
<body class="easyui-layout">
    <div id="divHeader" data-options="region:'north',border:false,href:'<%=basePath %>/jsp/xianfeng/ucenter/login-header.jsp'"></div>
    <div id="divContent" data-options="region:'center',border:false" style="">
    	<br/><br/>
    	<table width="100%" border="0">
    		<tr>
    			<td width="20%">&nbsp;</td>
    			<td width="60%" align="center">
    				 <div id="loginDiv" title="系统帮助" class="easyui-panel" data-options="headerCls:'head', border:true" style="width:780px;height:400px;padding:20px;">
			        	正在建设中……
			        </div>
    			</td>
    			<td width="20%">&nbsp;</td>
    		</tr>
    	</table>
    	<p align="center">
    		<a href="javascript:void(0)" onclick="closeEvt();return false;" style="width:60px;">关闭窗口</a>
    	</p>
    </div>
    <div id="divFooter" data-options="region:'south',border:false,href:'<%=basePath %>/jsp/xianfeng/ucenter/footer.jsp'"></div>
</body>
<script type="text/javascript">
function closeEvt () {
	window.opener = null;
	window.open('', '_self'); //IE7+
	window.close();
}
</script>
</html>
