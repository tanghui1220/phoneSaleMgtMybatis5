<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login</title>

</head>
<body>
	<form action="/log/in"  method="post">
		<h2>手机销售后台管理系统</h2>
		登录用户:<input type="text" name="username" /><br />
		登录密码:<input type="password" name="password" /><br />
		验证码:<input type = "text" name="yzm" /><br />
		<input type="submit" name="submit" />
		<input type="reset" name ="reset" />
		
	</form>
</body>
</html>