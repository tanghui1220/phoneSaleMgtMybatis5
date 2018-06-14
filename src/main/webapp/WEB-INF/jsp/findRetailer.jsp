<%@page import="com.easytop.psm.model.Retailer"%>
<%@page import="java.util.List"%>
<%@page import="com.easytop.psm.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.ResultSet"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="catalog.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//Dth HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dth">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<%@ include file="catalog.jsp" %>
<%@ include file="base.jsp" %>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/bootstrap-table/bootstrap-table.css">
    <link rel="stylesheet" href="assets/examples.css">
    <script src="assets/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/bootstrap-table/bootstrap-table.js"></script>
    <script src="assets/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
    
<title>销售商查询</title>

<script type="text/javascript">


</script>

<style>
#div2 {
	width: 700px;
	height: 600px;
	border: 1px solid red;
	margin: -650px 350px;
	position: absolute;
}
</style>
</head>


<body>

	<div id ="div2">
		
		<table border="1" width="550px"
		calss="table" data-classes="table table-hover"
		data-toggle="table"
		data-url="/retailer/query"
		data-id-field="username"
		 data-page-list="[ 1, 2, 5]"
		 data-page-size="2"
		 data-data-field="result"
		 data-show-columns="true"
		 data-pagination="true"
		 data-side-pagination="server"
		 data-search="true"
		 data-search-align="left"
		 data-detail-view="false"
		 data-detail-formatter="detailFormatter">
		>
			<thead>
				<tr bgcolor=#C0C0C0>
					<!-- 单选框 -->
					<th data-radio="true"></th> 
					<th data-field="r_id">编号</th>
					<th data-field="r_name">销售商名称</th>
					<th data-field="r_area">所属区域</th>
					<th data-field="r_principal">负责人</th>
					<th data-field="r_phone">联系电话</th>
					<th data-field="r_site">联系地址</th>
				</tr>
			</thead>
		</table>
	</div>
</body>
</html>