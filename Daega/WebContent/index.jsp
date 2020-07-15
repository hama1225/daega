<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#loginFormArea{
		width : 500px;
		height : 300px;
		margin : auto;
		text-align : center;
		border : 1px solid black;
	}
	h1{
		text-align : center;
	}
</style>
</head>
<body>
<jsp:include page="/Header.jsp"/>
<section id= "loginFormArea">
<h1>로그인</h1>
	<form action="login" method = "POST">
		<input type = "text" name="id" id = "id" placeholder="ID"/><br><br/>
		<input type = "password" name="passwd" id = "password" placeholder="PASSWORD"/><br>
		<br/>
		<input type = "submit" value = "로그인"/>
		<input type = "submit" value = "회원가입"/>
	</form>
</section>
<jsp:include page="/Tail.jsp"/>
</body>
</html>