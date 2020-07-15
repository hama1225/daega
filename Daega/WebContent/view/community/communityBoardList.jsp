<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
	table {
		border : 1px solid black;
		text-align : center;
		align : center;
		border-collapse: collapse;
		width : 60%;
		height : 50%
	}

	tr, td {
		border : 1px solid black;
		text-align : center;
		border-collapse: collapse;
	}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/Header.jsp"/>
<center>
<h1>커뮤티니 게시판 리스트</h1>
<select name="head" id="head" align = "right">
    <option value="question">질문</option>
    <option value="tip">꿀팁</option>
    <option value="advice">상담</option>
  </select>
  <input type = "text" name = "search">
  <input type = "submit" value = "검색">
<table align = "center">
	<tr>
		<td width = "30">번호</td>
		<td width = "80">제목</td>
		<td width = "50">작성자</td>
		<td width = "50">날짜</td>
		<td width = "30">조회수</td>
	</tr>
	<tr>
	<td >10</td>
	<td>.....</td>
	<td>000</td>
	<td>2020-07-14</td>
	<td>88</td>
	</tr>
</table><br><br>
<label align = "center"><a href = "" align = "center">(첫 페이지)</a></label>
<a href = "" align = "center">(끝 페이지)</a>
<input type = "submit" value = "글쓰기">
</center>
<jsp:include page="/Tail.jsp"/>
</body>
</html>