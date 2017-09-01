<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://javax.xianfeng.mhtml/model" prefix="model"%>
<%@ include file="../../system.jsp"%>
<%
	String target = request.getParameter("target");
	if (target == null) {
		target = "";
	}
	
	String id = request.getParameter("id");
	if (id == null) {
		id = "";
	}
	
	String openType = request.getParameter("openType");
%>
<!DOCTYPE html>
<html>
<head>
	<title>通讯信息</title>
	<base href="<%=basePath%>" />
	<jsp:include page="../../easyui.jsp"></jsp:include>
</head>
<body>
	<div class="easyui-panel" title="" data-options="footer:'#footer', border: false" fit="true">
		<form id="dataForm" action="<%=basePath%>/action/platform/linkRec/doSave.action" method="post" style="padding-top:10px; padding-left:20px;">
			<input type="hidden" id="id" name="id"/>
			<input type="hidden" name="target"/>
			<table width="600" border="0" cellpadding="6">
				<tr>
					<td width="60">姓名：</td>
					<td>
						<input type="text" name="name" class="easyui-textbox" readonly="readonly"/>
					</td>
				</tr>
				<tr>
					<td>工作单位：</td>
					<td>
						<input type="corpName" name="corpName" class="easyui-textbox"  readonly="readonly" style="width: 250px;"/>
					</td>
				</tr>
				<tr>
					<td>手机号码：</td>
					<td>
						<input type="text" id="mobile" name="mobile" class="easyui-textbox" required="true"/>
					</td>
				</tr>
				<tr>
					<td>固定电话：</td>
					<td>
						<input type="text" name="phone" class="easyui-textbox" required="true" />
					</td>
				</tr>
				<tr>
					<td>QQ号码：</td>
					<td>
						<input type="text" name="qq" class="easyui-textbox" required="true" />
					</td>
				</tr>
				<tr>
					<td>电子邮箱：</td>
					<td>
						<input type="text" name="email" class="easyui-textbox" required="true" style="width: 250px;"/>
					</td>
				</tr>
				<tr>
					<td>邮政编码：</td>
					<td>
						<input type="text" name="postcode" class="easyui-textbox" required="true" />
					</td>
				</tr>
				<tr>
					<td>联系地址：</td>
					<td>
						<select id="addrProvinceId" name="addrProvinceId" data-options="editable:false" style="width:80px;" required="true"></select>
						<input type="hidden" id="addrProvinceName" name="addrProvinceName"/>
						<select id="addrCityId" name="addrCityId" data-options="editable:false" style="width:80px;" required="true">
							<option value="">请选择...</option>
						</select>
						<input type="hidden" id="addrCityName" name="addrCityName"/>
						<select id="addrCountyId" name="addrCountyId" data-options="editable:false" style="width:80px;" required="true">
							<option value="">请选择...</option>
						</select>
						<input type="hidden" id="addrCountyName" name="addrCountyName"/>
						<input type="text" name="addrDetail" class="easyui-textbox" required="true" style="width:150px;"/>
					</td>
				</tr>
			</table>
		</form>
	</div>
	<div id="footer" class="footbar">
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitEvt()" style="width: 60px;">保存</a>
		<%
		if ("list".equals(openType)) {
		%>
		&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="returnEvt()" style="width: 80px;">返回列表</a>
		<%} %>
	</div>
</body>
<script type="text/javascript">
// 初始化行政区划
function loadCascadeCant () {
	$.ajax( {
		type : "post",
		url: "<%=basePath%>/action/platform/cant/doList.action?typeId=1&pageSize=-1&sortField=code",
		async: false,
		cache: false,
		success : function (data) {
			//data.rows.unshift({code:"", name:"请选择..."});
			// 初始化一级省份
			var selectedLevels1 = null;
			$("#addrProvinceId").combobox({
			    valueField: 'code',    
			    textField: 'name',
			    data: data.rows,
			    onSelect: function (r1){
					if (!r1) {
						r1 = selectedLevels1;
					} else {
						$("#addrProvinceName").val(r1.name);
						//一级重选之后，二级重新初始化，同时清空三级
						$("#addrCountyId").combobox().combobox("loadData", []).combobox("clear");//先创建组件后清空
						$("#addrCountyName").val("");
					}
			    	//初始化二级地市
			    	var selectedLevels2 = null;
			    	$("#addrCityId").combobox({
			    		valueField: 'code',    
			   			textField: 'name',
			    		data: r1.children,
			    		onSelect: function (r2){
			    			if (!r2) {
			    				r2 = selectedLevels2;
			    			} else {
			    				$("#addrCityName").val(r2.name);
			    			}
			    			//初始化三级区县
			    			var selectedLevels3 = null;
					    	$("#addrCountyId").combobox({
					    		valueField: 'code',    
					   			textField: 'name',
					    		data: r2.children,
					    		onSelect: function (r3) {
					    			if (!r3) {
					    				r3 = selectedLevels3;
					    			} else {
					    				$("#addrCountyName").val(r3.name);
					    			}
					    		},
							    onLoadSuccess: function (){
							    	var addrCountyName = $("#addrCountyName").val();
							    	if (addrCountyName == "") {
							    		return;
							    	}
							    	$.each(r2.children, function(i, r){
							    		if (r.name == addrCountyName) {
							    			selectedLevels3 = r;
							    			return false;
							    		}
							    	});
							    	if (selectedLevels3) {
								    	//alert(selectedLevels3.name+ ":" + selectedLevels3.code);
								    	$("#addrCountyId").combobox("select", selectedLevels3.name);
							    	}
							    }
					    	});
					    },
					    onLoadSuccess: function (){
					    	var addrCityName = $("#addrCityName").val();
					    	if (addrCityName == "") {
					    		return;
					    	}
					    	$.each(r1.children, function(i, r){
					    		if (r.name == addrCityName) {
					    			selectedLevels2 = r;
					    			return false;
					    		}
					    	});
					    	if (selectedLevels2) {
						    	//alert(selectedLevels2.name+ ":" + selectedLevels2.code);
						    	$("#addrCityId").combobox("select", selectedLevels2.name);
					    	}
					    }
			    	});
			    },
			    onLoadSuccess: function (){
			    	var addrProvinceName = $("#addrProvinceName").val();
			    	if (addrProvinceName == "") {
			    		return;
			    	}
			    	$.each(data.rows, function(i, r){
			    		if (r.name == addrProvinceName) {
			    			selectedLevels1 = r;
			    			return false;
			    		}
			    	});
			    	if (selectedLevels1) {
				    	//alert(selectedLevels1.name+ ":" + selectedLevels1.code);
				    	$("#addrProvinceId").combobox("select", selectedLevels1.name);
			    	}
			    }
			});
		}
	});
}

$(document).ready(function() {
	$.ajax({
		type: "post",
		url: "<%=basePath%>/action/platform/linkRec/doEdit.action?id=<%=id%>&target=<%=target%>",
		async: false,
		cache: false,
		success : function (data) {
			$('#dataForm').form('load', data);
			loadCascadeCant(); 
			$("#dataForm").validate();
			$("#dataForm").validate();
		}
	});
});

function submitEvt() {
	$("#dataForm").form("submit", {
		onSubmit : function() {
			var isValid = $(this).form('validate');
			return isValid;
		},
		success : function(result) {
			result = eval('(' + result + ')');
			if (result.error) {
				$.messager.alert("系统提示", result.error, "error");
			} else {
				$.messager.alert("系统提示", "数据保存成功！", "info", function() {
					//获取新增数据的id
					var id = $("#id").val();
					if (id == "") {
						id = result.data.id;
						window.location.href = "<%=basePath%>/jsp/xianfeng/system/permit/userLink_edit.jsp?id=" + id;
					}
				});
			}
		}
	});
}

function returnEvt() {
	window.parent.location.href = "<%=basePath%>/jsp/xianfeng/system/permit/user_list.jsp";
}
</script>
</html>