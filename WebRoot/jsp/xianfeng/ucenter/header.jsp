<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="javax.xianfeng.ApplicationConfig"%>
<%@ page import="javax.xianfeng.system.security.entity.UserView"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://javax.xianfeng.mhtml/base" prefix="base"%>
<%@ taglib uri="http://javax.xianfeng.mhtml/model" prefix="model"%>
<%@ include file="../system.jsp"%>
<%
UserView user = (UserView)session.getAttribute(ApplicationConfig.USER);
java.util.Date today = new java.util.Date();
java.text.SimpleDateFormat dateFormat = new java.text.SimpleDateFormat("yyyy年MM月dd日 EEEE");
%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<base href="<%=basePath%>" />
<jsp:include page="../easyui.jsp"></jsp:include>
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
				<div class="prompt">
					<span>您好，<%=user.getName() %>！&nbsp;&nbsp;欢迎使用本系统&nbsp;&nbsp;今天是<%=dateFormat.format(today) %></span>
				</div>
				<div class="headerMenu">
					<ul>
						<li>
							<a href="javascript:void(0);" target="_top" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-shutdown'" onclick="logoutEvt();return false;">注销</a>
						</li>
						<li>
							<a href="javascript:void(0);" class="easyui-menubutton" data-options="plain:true,iconCls:'icon-user',menu:'#menu1'">设置</a>
						</li>
						<li>
							<a href="javascript:void(0);" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-monitor'" onclick="lockScreenEvt();return false;">锁屏</a>
						</li>
						<li>
							<a href="javascript:void(0);" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-home'" onclick="homePageEvt();return false;">首页</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div id="menu1">
		<div onclick="editUserPwdEvt('修改密码', '<%=basePath %>/jsp/xianfeng/ucenter/userpwd_edit.jsp');" data-options="iconCls:'icon-edit'">
			修改密码
		</div>
		<div onclick="editBaseInfoEvt('基本信息', '<%=basePath %>/jsp/xianfeng/system/permit/userLink_edit.jsp?openType=userSelf&target=<%=user.getId() %>');" data-options="iconCls:'icon-vcard'">
			基本信息
		</div>
		<div data-options="iconCls:'icon-menustyle'">
			<span>菜单风格</span>
			<div>
				<div onclick="saveMenuStyle('tree');return false;" data-options="iconCls:'icon-tree'">
					树形样式
				</div>
				<div onclick="saveMenuStyle('items');return false;" data-options="iconCls:'icon-items'">
					折叠样式
				</div>
			</div>
		</div>
	</div>
</body>
</html>