<%@page import="com.easytop.psm.model.SellEntry"%>
<%@page import="java.util.List"%>
<%@page import="com.easytop.psm.dao.SellsDao"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="base.jsp" %>
<%@ include file="catalog.jsp" %>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/bootstrap-table/bootstrap-table.css">
    <link rel="stylesheet" href="assets/examples.css">
    <script src="assets/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/bootstrap-table/bootstrap-table.js"></script>
    <script src="assets/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
    
<title>查询手机销售量</title>

<script type="text/javascript">
</script>

</head>
<body>

<style>
	#div2{ width:700px; height:600px; border:1px solid red; margin: -300px -250px; position:absolute; top:50%; left:50%;}
</style>

<div id ="div2"> 
	
	<table
		class="table" 
		data-classes="table table-hover"
		data-toggle="table" 
		data-url="/sell/query"
		data-page-list="[3, 5, 10]"
		data-page-size="5"
		data-data-field="result"
		data-show-columns="true" 
		data-pagination="true"
		data-side-pagination="server" 
		data-search="true"
		data-search-align="left" 
		data-striped="true"
	>
		<thead>
			<tr>
				<!-- 可以根据销售商名称跟手机品牌查找 -->
				<th data-field="s_date">销售日期</th>
				<th data-field="s_sellName">销售商名称</th>
				<th data-field="r_area">所属区域</th>
				<th data-field="s_brand">手机品牌</th>
				<th data-field="s_model">手机型号</th>
				<th data-field="s_number">销售量</th>
			</tr>
		</thead>
		<tbody>
		</tbody>
	</table>
</div>
</body>
</html>