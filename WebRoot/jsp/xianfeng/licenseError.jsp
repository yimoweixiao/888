<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://javax.xianfeng.mhtml/base" prefix="base"%>
<%@ page import="javax.xianfeng.license.License"%>
<%@ page import="javax.xianfeng.license.client.*"%>
<%@ include file="system.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>授权信息</title>
<base href="<%=basePath%>" />
<style type="text/css">
.fieldLabel{
 	text-align: right;
}

.fieldValue{
 	text-align: left;
}
</style>
</head>
<body bgcolor="#ffffff">
<div style="width:560px; height:300px; margin:60px auto; border:#c3c3c3 0px solid; text-align:center;">
	<table width="100%" border="1" cellpadding="6" style="font-size:14px;">
		<tr>
			<td colspan="2" align="center">
				<span style="font-size:26px;">
					<%=LicenseValidateConfig.getProperty(License.COMPANY) %>
				</span>
			</td>
		</tr>
		<tr>
			<td class="fieldLabel" width="40%">版本号：</td>
			<td class="fieldValue" width="60%">
				<%=LicenseValidateConfig.getProperty(License.VERSION) %>
			</td>
		</tr>
		<tr>
			<td class="fieldLabel">应用服务器CPU序列号：</td>
			<td class="fieldValue">
				<%=LicenseValidateConfig.getProperty(License.CPU_NO) %>
			</td>
		</tr>
		<tr>
			<td class="fieldLabel">授权开始日期：</td>
			<td class="fieldValue">
				<%=LicenseValidateConfig.getProperty(License.START_DATE) %>
			</td>
		</tr>
		<tr>
			<td class="fieldLabel">授权截止日期：</td>
			<td class="fieldValue">
				<%=LicenseValidateConfig.getProperty(License.END_DATE) %>
			</td>
		</tr>
		<tr>
			<td class="fieldLabel">授权验证结果：</td>
			<%
			try {
				LicenseValidator.newInstance().validate();
				out.println("<td class='fieldValue' style='color:#0000ff;'>");
				out.print("授权验证有效");
				out.println("</td>");
			} catch (LicenseValidateException e) {
				out.println("<td class='fieldValue' style='color:#ff0000;'>");
				out.print(e.getMessage());
				out.println("</td>");
			}
			%>
		</tr>
	</table>
</div>
<script type="text/javascript">
</script>
</body>
</html>