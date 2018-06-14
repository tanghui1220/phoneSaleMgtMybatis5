<%@page import="java.sql.ResultSet"%>
<%@page import="com.easytop.psm.dao.SellsDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ include file="catalog.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>销售录入</title>
<style>
	#div2{ width:600px; height:600px; border:1px solid red; margin: -300px -250px; position:absolute; top:50%; left:50%; font-size: 20px; }
	input{ width:80px;}
</style>

</head>
<body>

<div id="div2" >
	<form:form action="/sell/add" method="post" modelAttribute="sellEntry">
		<h1>手机销售录入</h1>
	
	<%-- 	<form:select path="brandId">
					<form:options items="${brands }"  itemValue="id" itemLabel="name"/>
		</form:select> --%>
		
		销售商名称
				<select name = "s_sellName" required >
					<c:forEach items="${requestScope.retailerList}" var="area">
						<option value="${area}">${area}</option>
					</c:forEach>	
				</select><br /> 
				
		 品牌 <select name = "s_brand" required >
					<c:forEach items="${requestScope.brandList}" var="area">
						<option value="${area}">${area}</option>
					</c:forEach>	
				</select><br />  
			
		销售手机型号<select name = "s_model" required >
					<c:forEach items="${requestScope.modelList}" var="area">
						<option value="${area}">${area}</option>
					</c:forEach>	
				</select><br />  
	
		销售日期 <input type="text" name="s_date" required /><br />
		销售数量 <input type="text" name="s_number" required />	<br />
		<input type="submit" value="录入" />
		<input type="reset" value="重置" />
		
	</form:form>
</div>

</body>
</html>