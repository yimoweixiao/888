<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://javax.xianfeng.mhtml/model" prefix="model"%>
<%@ include file="../../system.jsp"%>
<%
%>
<!DOCTYPE html>
<html>
<head>
<title>欢迎页面</title>
<base href="<%=basePath%>" />
<script type="text/javascript" src="<%=basePath %>/plugin/jquery/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath %>/plugin/echarts/echarts-all.js"></script>
</head>
<body bgcolor="#ffffff" style="margin:4px;">
<div id="ichart" style="width:600px; height:400px;"></div>
<script type="text/javascript">
$(document).ready(function(){
	loadMemoryInfo();
	
	window.setInterval(function (){
		loadMemoryInfo();
	}, 600000); //600s
	
});

function loadMemoryInfo () {
	$.ajax( {
		type : "post",
		url : "<%=basePath%>/action/console/servmgr/doMemoryInfo.action",
		async : true,
		success : function (data) {
			var mRate = data.mUsed/data.mTotal;
			mRate = parseFloat(mRate*100+"").toFixed(2);
			//alert(mRate);
			var myChart = echarts.init(document.getElementById('ichart'));
			var option = {
				title: {
					text : "总内存：" + data.mTotal + " M",
                    itemGap : 10,  
                    subtext : "已用内存：" +  data.mUsed + " M",
                    subtextStyle :{  
                        fontSize: 14, 
                        fontWeight: 'bolder'  
                    },
                    x: 'left'
				},
			    tooltip : {
			        formatter: "{a} <br/> {b} : {c}%"
			    },
			    toolbox: {
			        show : true,
			        feature : {
			            mark : {show: true},
			            restore : {show: true},
			            saveAsImage : {show: true}
			        }
			    },
			    series : [{
				    name: '内存指标',
				    type: 'gauge',
				    detail : {formatter:'{value}%'},
				    data:[{value: mRate, name: "JVM内存使用率"}]
				}]
			};
			
			myChart.setOption(option);
		}
	});
}
</script>
</body>
</html>