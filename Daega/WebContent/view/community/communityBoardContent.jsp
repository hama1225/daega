<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script language="javascript"> 
<!-- 
function tableView() { 
  tableID.style.visibility="visible"; 
  } 
  function tableHiding()  { 
  tableID.style.visibility="hidden";; 
  } 
//--> 
</script> 
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
<jsp:include page="/Header.jsp"/>
<body>
<center>
<h1>커뮤니티 콘텐트</h1>
<hr>
<input type = "submit" value = "목록보기">
<input type = "submit" value = "수정">
<input type = "submit" value = "삭제">
<table align = "center">
	<tr>
		<td width = "100">제목</td>
		<td colspan="3">대가 프로젝트</td>
	</tr>
	<tr>
		<td width = "100">닉네임</td>
		<td>권오근</td>
		<td width = "100">작성일</td>
		<td>2020-07-14</td>
	</tr>
	<tr>
		<td width = "100">내용</td>
		<td colspan="3"><textarea rows="20" cols="50">내용은 없습니다.</textarea></td>
	</tr>
</table><br>
<a href="Javascript:tableView();">댓글쓰기</a> 
<form  method="post" action="update">
<table id="tableID" style="visibility:hidden;" align = "center";>
		<tr>
			<td>닉네임</td>
			<td>내용</td>
			<td>작성날짜</td>
			<td></td>
		</tr>

		<tr>
			<td><input type="text" name="name" id="name"></td>
			<td><input type="text" name="content" id="email"></td>
			<td></td>
			<td colspan="2" align="center">
			<input type="submit" value="추가">
			</td>

		</tr>
		<c:forEach items="${result}" var="member">
			<tr>
				<td>${member.name}</td>
				<td>${member.content}</td>
				<td></td>
				<td><a href = "delete?id=${member.id}">삭제</a>
				<a href = "updateForm?id=${member.id}">수정</a></td>
			</tr>
		</c:forEach>
	</table>
	</form>
</center>
<jsp:include page="/Tail.jsp" />
</body>
</html>