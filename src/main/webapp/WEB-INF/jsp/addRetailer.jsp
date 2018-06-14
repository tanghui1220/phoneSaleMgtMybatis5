<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>销售商添加</title>
<style>
	#div2{ width:600px; height:600px; border:1px solid red; margin: -300px -250px; position:absolute; top:50%; left:50%; font-size: 20px; }
</style>
</head>
<body>
<jsp:include page="catalog.jsp"></jsp:include>

<div id="div2" >

	<form action="retailerOperation" method="get" >
		<h1>销售商添加</h1>
		销售商名称 <input type="text" name ="r_name" required /><br />
		销售区域 <select name="r_area" required>
				<option>湖南</option>
				<option>北京</option>
				<option>深圳</option>
				<option>上海</option>
				<option>湖北</option>
			</select><br />
		销售负责人 <input type="text" name="r_principal" required /><br />
		负责人电话  <input type="text" name="r_phone" required /><br />
		负责人身份证号码  <input type="text" name="r_Id_number" required /><br />	
		联系地址 <input type="text" name="r_site" required /><br />
		邮编号码<input type="text" name="r_postcode" required /><br />	
		<input type="submit" value="录入" />
		<input type="reset" value="重置" />
		
	</form>
</div>

</body>
</html>