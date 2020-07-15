<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>목표학점계산기</title>
<style>
	div {
	width: 500px;
	margin: auto;
	border: 1px solid black;
	}
</style>
</head>
<body>

<h4>
	<form>
		<INPUT type="button" value="학점계산">
	</form>
</h4>
<div>
	이수학점 :  <INPUT type="text"><br>
	전체점수 :  <INPUT type="text"><br>
	남은학점 :  <INPUT type="text"><br>
	목표점수 :  <INPUT type="text"><br><br>
	
	<div align="right">
	<form>
		<INPUT type="button" value="계산">
	</form>
	</div>
	
	<div>
	목표점수를 위한 평균점수는 : <INPUT type="text"> 입니다.
	</div>
</div>
</body>
</html>