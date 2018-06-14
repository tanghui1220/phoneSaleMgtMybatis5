<%@page import="java.util.Iterator"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ include file="catalog.jsp" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>区域统计</title>

<script src="js/echarts.min.js"></script>
<style>
	#div2{width:600px; height:600px; border:1px solid red; margin:-300px -250px;
	position:absolute; top:50%; left:50%; font-size:20px;}
</style>

</head>
<body>

<script type="text/javascript">

	var legends = [];
	var value ;
	var name ;
 	var temp = [];
	var seriess = []; 

	out.print("legends.push('"+sl+"');");
	out.print("temp.push('"+map.get(sl)+"','"+sl+"');");
	
	$(function(){
		
		$("#submit").bind("click",function(){
			// 发送请求
			$.ajax({url:'/area/query/st?year='+$("#year"),type:'get',succee:function(data){
				
				
			}})
		})
	})
	
</script>
<div id="div2">
		年度:<select name="year" id="year">
				<option>2010</option>
				<option>2011</option>
				<option>2012</option>
				<option>2013</option>
				<option>2014</option>
				<option>2015</option>
				<option>2016</option>
				<option>2017</option>
			</select>
		<input id="submit" value="查询" />
		
	<div id="main" style="width:600px; height:400px;"></div>
	<script type="text/javascript">
	
		//基于准备好的dom 初始化 echarts 实例
		var myChart = echarts.init(document.getElementById('main'));
		
		// 指定图表的配置项和数据
		option = {
    title : {
        text: '按区域统计',
        subtext: 'java',
        x:'center'
    },
    tooltip : {
        trigger: 'item',
        formatter: "{a} <br/>{b} : {c} ({d}%)"
    },
    legend: {
        orient: 'vertical',
        left: 'left',
        data: legends
    },
    series : [
        {
            name: '访问来源',
            type: 'pie',
            radius : '55%',
            center: ['50%', '60%'],
            data: temp  ,
            itemStyle: {
                emphasis: {
                    shadowBlur: 10,
                    shadowOffsetX: 0,
                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                }
            }
        }
    ]
};
		// 使用刚指定的配置项和数据显示图表。
		myChart.setOption(option);
		
	</script>

</div>
</body>
</html>