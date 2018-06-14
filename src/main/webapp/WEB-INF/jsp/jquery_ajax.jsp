<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<%@ include file="base.jsp" %>

<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<title>jquery 发送ajax 请求</title>

</head>
	<script type="text/javascript">
		$(function(){
		
			$("#ajax_get").bind("click",function(){
				
				//发送ajax请求
				$.ajax({url:'api/user/get?t='+new Date().getTime(),type:'get',success:function(data){
					console.log("服务器返回的数据为:","data");
				}})
			});
			
			$("#ajax_post").bind("click",function(){
				$.post('api/user/get','name=zhangsan',function(data){
					console.log('$.post 返回的结果为:',data);
				},'json');
			})
		});
		
	</script>

<body>
	<button id="ajax_get">通过jQuery发送ajax get请求</button>
	<button id="ajax_post">通过jquery发送$.post请求</button>

</body>
</html>