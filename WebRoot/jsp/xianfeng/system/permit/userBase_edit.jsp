<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://javax.xianfeng.mhtml/model" prefix="model"%>
<%@ include file="../../system.jsp"%>
<%
	String id = request.getParameter("id");
	if (id == null) {
		id = "";
	}
%>
<!DOCTYPE html>
<html>
<head>
	<title>基本信息</title>
	<base href="<%=basePath%>" />
	<jsp:include page="../../easyui.jsp"></jsp:include>
	<link rel="stylesheet" href="<%=basePath %>/skins/css/pwdstyle.css"/>
	<script type="text/javascript" src="<%=basePath %>/skins/pwdstyle.js"></script>
	<model:DataSet id="userTypeDs" metaName="System.User.Type" type="json" />
	<model:DataSet id="userStatusDs" metaName="System.User.Status" type="json" />
	<script type="text/javascript">
		var _id = "<%=id%>";
	</script>
</head>
<body>
	<div class="easyui-panel" title="" data-options="footer:'#footer', border: false" fit="true">
		<form id="dataForm" action="<%=basePath%>/action/system/user/doSave.action" method="post" style="padding-top:10px; padding-left:20px;">
			<table width="600" border="0" cellpadding="6">
				<tr>
					<td width="60">登录名：</td>
					<td>
						<input type="text" name="id" class="easyui-textbox" data-options="prompt:'请输入...'" required="true" />
					</td>
				</tr>
				<tr>
					<td>密码：</td>
					<td>
						<input type="password" id="password" name="password" class="easyui-textbox" data-options="" required="true" />
					</td>
				</tr>
				<tr>    
					<td></td>       
					<td id="level" class="pwd-strength">           	
						<div class="pwd-bar"></div>
						<div class="pwd-bar-on"></div>
						<div class="pwd-txt">
							<span>弱</span>
							<span>中</span>
							<span>强</span>
						</div>
					</td>	
				</tr>
				<tr>
					<td>用户名：</td>
					<td>
						<input type="text" id="name" name="name" class="easyui-textbox" data-options="editable:false, icons:[{iconCls:'icon-search', handler:organSelect}]" required="true"/>
						<input type="hidden" id="organId" name="organId"/>
					</td>
				</tr>
				<tr>
					<td>用户类型：</td>
					<td>
						<select class="easyui-combobox" name="type" data-options="editable:false" style="width: 153px;" required="true">
							<option></option>
							<c:forEach items="${userTypeDs.records}" var="record">
								<option value="${record.key }">${record.value }</option>
							</c:forEach>
						</select>
					</td>
				</tr>
				<tr>
					<td>状态：</td>
					<td>
						<select class="easyui-combobox" name="status" data-options="editable:false" style="width: 153px;">
							<option></option>
							<c:forEach items="${userStatusDs.records}" var="record">
								<option value="${record.key }">${record.value }</option>
							</c:forEach>
						</select>
					</td>
				</tr>
			</table>
		</form>
	</div>
	<div id="footer" class="footbar">
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitEvt()" style="width: 60px;">保存</a>
		&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="returnEvt()" style="width: 80px;">返回列表</a>
	</div>
</body>
<script type="text/javascript">
$(document).ready(function() {
	if (_id != "") {
		//修改
		$.ajax({
			type: "post",
			url: "<%=basePath%>/action/system/user/doEdit.action?id=<%=id%>",
			async: false,
			cache: false,
			success : function (data) {
				$('#dataForm').form('load', data);
				$("#dataForm").validate();
				pwdChgEvt($("#password").textbox("getValue"));
			}
		});
	} else {
		//新增
		$('#dataForm').form('load', {type: 'USER', status: -1});
		$("#dataForm").validate();
	}
	
	$('#password').textbox("textbox").keyup(function () { 
		pwdChgEvt($(this).val());
	}); 
});

function submitEvt() {
	$("#dataForm").form("submit", {
		onSubmit : function() {
			var isValid = $(this).form('validate');
			if (isValid) {
				
			}
			return isValid;
		},
		success : function(result) {
			result = eval('(' + result + ')');
			if (result.error) {
				$.messager.alert("系统提示", result.error, "error");
			} else {
				$.messager.alert("系统提示", "数据保存成功！", "info", function() {
					//获取新增数据的id
					if (_id == "") {
						_id = result.data.id;
						window.parent.location.href = "<%=basePath%>/jsp/xianfeng/system/permit/user_edit.jsp?id=" + _id;
					}
				});
			}
		}
	});
}

/**
 * 选择组织员工
 */
function organSelect () {
	var url = "<%=basePath%>/jsp/xianfeng/platform/organ_help.jsp?showType=CORP,DEPT,POST,EMP&selectType=EMP";
	art.dialog.open(url, {
		title: "选择员工",
		width: 560,
		height: 380,
		button: [{
			name: "确定",
			focus: true,
			callback: function () {
				var result = this.iframe.contentWindow.getSelectedEvt();
				if(result == null || result.length == 0) {
					art.dialog({
						title: "系统提示", 
						content: "请选择节点！", 
						icon: "warning",
						time: 2
					});
					return false;
				} else {
					var emp = result[0];
					$("#name").textbox("setValue", emp.name);
					$("#organId").val(emp.id);
				}
			}
		}, {
			name: "清空",
			callback: function () {
				$("#name").textbox("setValue", "");
				$("#organId").val("");
				this.close();
			}
		}, {
			name: "关闭",
			callback: function () {
				this.close();
			}
		}]
	});
}

function returnEvt() {
	window.parent.location.href = "<%=basePath%>/jsp/xianfeng/system/permit/user_list.jsp";
}
</script>
</html>