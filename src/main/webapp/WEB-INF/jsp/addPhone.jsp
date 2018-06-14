<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="catalog.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	#div2{ width:600px; height:600px; border:1px solid red; margin: -300px -250px; position:absolute; top:50%; left:50%; font-size: 20px; }
</style>
</head>
<body>

<div id="div2" >
	<form action="addPhoneServlet" method="get">
		<h1>手机录入</h1>
		手机型号 <input type="text" name ="p_model" required /><br />
		品牌 <select name="p_brand" required>
				<option>华为</option>
				<option>vivo</option>
				<option>三星</option>
				<option>小米</option>
				<option>苹果</option>
			</select><br />
		销售价格 <input type="text" name="p_price" required /><br />
		颜色 <select name="p_color" required>
				<option>玫瑰金</option>
				<option>咖啡色</option>
				<option>纯白色</option>
				<option>深蓝色</option>
				<option>血红色</option>
			</select><br />
		分辨率/尺寸  <select name="p_size" required >
					<option>1920*1080</option>
					<option>1925*1120</option>
					<option>1930*1200</option>
					<option>1935*1250</option>
					<option>1950*1500</option>
				</select><br />	
		生成日期 <input type="text" name="p_date" placeholder = "按 2010-01-01格式输入" required /><br />
		手机描述 <input type="text" name="p_describe" required /><br />	
		<input type="submit" value="提交" />
		<input type="reset" value="重置" />
		
	</form>
</div>

</body>
</html>