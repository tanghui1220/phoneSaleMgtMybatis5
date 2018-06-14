<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>XMLHttpRequest 学习</title>

<script type="text/javascript">

	/** 发送同步Get请求
	*/
	function sendGetRequest(){
		
		//创建xmlhttprequest对象
		var request=new XMLHttpRequest();
		
		//打开同步请求地址
		request.open('GET','api/user/add?username=admn',false);
		
		//同步和异步的区别在,发送同步请求,该API发送方法会等待服务器的返回
		//如果服务器没有响应,该方法一直等待
		//js 单线程
		//获取服务器响应的类容
		//send(data)-->post 才能发送数据
		request.send();
		
		//获取服务器的响应的文本类容
		var responseText=request.responseText;
		//json 格式的文本类容(JSON.parse 将JSON 字符串装换成js 对象)
		var jsObject=JSON.parse(responseText);
		
		//dom 编程
		var h1=document.createElement("h1");
		h1.innerHTML=jsObject.username;
		
		document.querySelector("#httpresult").appendChild(h1);
		
		//js 与服务器进行通信--需要一种协议数据类型
		//java,js 能够识别(JSON== js对象标示的字符串)
		//"[]","{}" 
	}
	
	function deleteUser(id){
		
		var request=new XMLHttpRequest();
		
		//发送同步POST请求
		request.open('POST','api/user/delete?id='+id,false);
		
		//数据必须使用urlencode 格式发送
		//k=v&k=v
		request.send();
		
		//获取服务器的响应的文本类容
		var responseText=request.responseText;
		
		//json {success:true}
		var jsObject = JSON.parse(responseText);
		
		//{success:true}
		if(jsObject['success']){
			// 获取被删除的行
			var tr=document.querySelector("#tr_"+td);
			var tbody=document.querySelector("#tbody");
			tbody.removeChild(tr);
			
		}
		
	}
	
	
	// 发送ajax 异步请求
	function anyncGetHandler(){
		
		//注册状态改变句柄,用于监听请求状态改变
		request.onreadystatechange=function(){
			
			if(request.readyState==1){//请求已经打开
				document.querySelector("#httpresult").innerHTML="请求已经打开.."
			}else if(request.readyState==2){//请求已经发送
				document.querySelector("#httpresult").innerHTML="请求已经发送.";				
			}else if(request.readyState==3){// 请求处理过程中
				document.querySelector("#httpresult").innerHTML="请求处理过程中.";
			}else if(request.readyState==4){
				document.querySelector("#httpresult").innerHTML="请求已经完成.";
				
				var responseText=request.responseText;
				console.log("异步请求获取的结果:"+responseText);
				
				//json.parse 将JSON字符串转换为 js对象
				initTableWithData(JSON.parse(responseText));
			}
		}
		
		//打开请求
		request.open("GET","/api/user/get",true);
		
		//发送请求
		request.send();
		
		//获取服务器的响应的文本类容
		// var responseText=request.responseText;
		
		//console.log("异步请求获取的解结果:"+responseText);
	}
	
	/***将制定的数据初始化到表格中去**/
	
	function initTableWithData(users){
		
		let tbody = document.querySelector("#tbody");
		
		for(let i=0; i<users.length; i++){
			//tr
			let userObj=users[i];
			let tr=document.createElement("tr");
			tr.id="tr_"+userObj.username;
			
			//td
			let td=document.createElement("td");
			td.innerHTML=userObj.id;
			tr.appendChild(td);
			
			td=document.createElement("td");
			td.innerHTML=userObj.username;
			tr.appendChild(td);
			
			td=document.createElement("td");
			td.innerHTML=userObj.sex;
			tr.appendChild(td);
			
			td=document.createElement("td");
			td.innerHTML=userObj.birthDate;
			tr.appendChild(td);
			
			td=document.createElement("td");
			td.innerHTML="<button onclick='deleteUser(\""+tr.id+"\")'>删除</button>"
			
			//button = document.createElement("button");
			tr.appendChild(td);
			
			tbody.appendChild(tr);
		}
	}
</script>

</head>
<body>

<button  onclick="sendGetRequest();">
	发送GET 同步请求
</button>

	<table>
			<thead>
				<tr>
					<th>编号</th>
					<th>名字</th>
					<th>性别</th>
					<th>出生日期</th>
					<th>操作按钮</th>
				</tr>
			
			</thead>
			
			<tbody id="tbody">
				<tr id="tr_1001">
					<td>1001</td>
					<td>张三</td>
					<td>男</td>
					<td>1999-12-12</td>
					<td><input type="button" value="删除" onclick="deleteUser('1001')"></td>
				</tr>
				
			
			</tbody>
		
		</table>
		
		<div id="httpresult" style="width:300px;height:300px;border:1px solid red"></div>

</body>
</html>