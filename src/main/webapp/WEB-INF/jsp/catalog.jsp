

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	#div{ width:200px; height:650px; font-size: 20px; text-align:center; padding-top: 40px; padding-left: 100px;}
	.a{padding-top: 0px; color: blue;height:30px; }
	.a1{padding-top: 0px;height:50px; background-color:blue; color:white; line-height: 50px; font-size: 23px;}
	a{text-decoration: none;}
</style>

</head>
<body>
	<div id="div">
		<div class="a1">手机管理</div>
		<a href="/phone/add/toPhone"><div class="a">手机添加</div></a>
		<a href="/phone/toQueryPhone"><div class="a">手机查询</div></a>
		<div class="a1">销售商管理</div>
		<a href="/addRetailer"><div class="a">销售商添加</div></a>
		<a href="/retailer/toQueryRetailer"><div class="a">销售商查询</div></a>
		<div class="a1">销售管理</div>
		<a href="/sell/toQuerySell"><div class="a">销售查询</div></a>
		<a href="/sell/queryAreas"><div class="a">销售录入</div></a>
		<div class="a1">销售统计</div>
		<a href="queryDate"><div class="a">按品牌统计</div></a>
		<div class="a">按月份统计</div>
		<a href="monthQuery"><div class="a">按销售商统计</div></a>
		<a href="/sell/areaQuery"><div class="a">按区域统计</div></a>
	</div>
</body>
</html>