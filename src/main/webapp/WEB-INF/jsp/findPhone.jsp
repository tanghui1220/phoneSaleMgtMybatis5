<%@page import="com.easytop.psm.model.Phone"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
    
<title>查询手机</title>

<script type="text/javascript">
 	  
 	  function actionFormatrer(value, row, index, field){
 		  return "<button class='btn btn-warning' onclick='deleteUser(\""+value+"\")'>删除</button>";
 	  }
 	  function deleteUser(username){
 		  console.log("--------delete user :",username);
 	  }
 	  
</script>
<style>
#div2 {
	width: 700px;
	height: 600px;
	border: 1px solid red;
	margin: -650px 350px;
	position: absolute;
}

input {
	width: 80px;
}
</style>
</head>

<body>

	<div id="div2">

		<table border="1" width="550px"

		 class="table" data-classes="table table-hover"
			data-toggle="table" 
			data-url="/phone/query" 
			data-id-field="username"
			 data-page-list="[ 5, 10, 15]"
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
				<tr >
					<th data-field="p_id">编号</th>
					<th data-field="p_model" data-sortable="true">手机型号</th>
					<th data-field="p_brand">销售价格</th>
					<th data-field="p_color">颜色</th>
					<th data-field="p_size">尺寸/分辨率</th>
					<th data-field="p_date">生成日期</th>
					<th data-field="p_id" data-align="center" data-formatter="actionFormatrer"></th>
				</tr>
			</thead>
		
		</table>
	</div>

</body>
</html>