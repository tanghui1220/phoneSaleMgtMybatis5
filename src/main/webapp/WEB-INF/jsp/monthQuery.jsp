<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>月份视图</title>

<script src="js/echarts.min.js"></script>
<style>
	#div2{ width:800px; height:600px; border:1px solid red; margin: -300px -250px; position:absolute; top:50%; left:50%; font-size: 20px; }
</style>
</head>
<body>

<c:import url="catalog.jsp" var="header"></c:import>
${pageScope.header }

<script type="text/javascript">

</script>

<div id="div2">
	<form action = "areaQuery" method = "get">
		年度:<select name="year">
				<option>2010</option>
				<option>2011</option>
				<option>2012</option>
				<option>2013</option>
				<option>2014</option>
				<option>2015</option>
				<option>2016</option>
				<option>2017</option>
			</select>
		<input type="submit" value="查询" />
	</form>
	<div id="main" style="width:600px; height:400px;"></div>
	<script type="text/javascript">
	
		//基于准备好的dom 初始化 echarts 实例
		var myChart = echarts.init(document.getElementById('main'));
		
		// 指定图表的配置项和数据
		option = {
    title: {
        text: '折线图堆叠'
    },
    tooltip: {
        trigger: 'axis'
    },
    legend: {
        data:['邮件营销','联盟广告','视频广告','直接访问','搜索引擎']
    },
    grid: {
        left: '3%',
        right: '4%',
        bottom: '3%',
        containLabel: true
    },
    toolbox: {
        feature: {
            saveAsImage: {}
        }
    },
    xAxis: {
        type: 'category',
        boundaryGap: false,
        data: ['周一','周二','周三','周四','周五','周六','周日']
    },
    yAxis: {
        type: 'value'
    },
    series: [
        {
            name:'邮件营销',
            type:'line',
            stack: '总量',
            data:[120, 132, 101, 134, 90, 230, 210]
        },
        {
            name:'联盟广告',
            type:'line',
            stack: '总量',
            data:[220, 182, 191, 234, 290, 330, 310]
        },
        {
            name:'视频广告',
            type:'line',
            stack: '总量',
            data:[150, 232, 201, 154, 190, 330, 410]
        },
        {
            name:'直接访问',
            type:'line',
            stack: '总量',
            data:[320, 332, 301, 334, 390, 330, 320]
        },
        {
            name:'搜索引擎',
            type:'line',
            stack: '总量',
            data:[820, 932, 901, 934, 1290, 1330, 1320]
        }
    ]
};

		
		// 使用刚指定的配置项和数据显示图表。
		myChart.setOption(option);
		
	</script>

</div>

</body>
</html>