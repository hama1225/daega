<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#memberRegistFormArea {
	width: 800px;
	margin: auto;
	border: 1px solid black;
}

table {
	text-align: center;
	width: 780px;
	margin: auto;
}

h1 {
	text-align: center;
	border-bottom: 3px double #cccccc;
}

.td_left {
	text-align: right;
	width: 300px;
}

.td_right {
	text-align: left;
	width: 480px;
}
</style>
<script>
	function idCheck() {
		//var id = document.myForm.id; // document. --> html문서 전체에서 하나하나 찾아가기
		//var id = document.getElementById("id"); // id로 접근하기
		window
				.open("idCheck?id=" + id.value, "window1",
						"width=400,height=300"); //띄어줄 url id값을 던지면서 id 체크 , 새로 뜨는 윈도우 팝업창이름, 팝업창 모양

	}

	function checkPasswd() {
		var passwd1 = document.getElementById("passwd1"); // id로 접근해서 값 받아오기	
		var passwd2 = document.getElementById("passwd2"); // id로 접근해서 값 받아오기
		var errorMessage = document.getElementById("errorMessage"); // id로 접근해서 값 받아오기

		if (passwd1.value != passwd2.value) { // 입력 양식의 값
			errorMessage.innerHTML = "<font color = 'red'>비밀번호가 일치하지 않습니다.</font>";//innerHTML 은 그 엘리먼트 안에 HTML태그를 삽입하는 것이다
		} else {
			errorMessage.innerHTML = "";
		}
	}

	function searchZip() {
		window.open("zipSearch.jsp", "window1", "width=400,height=300");
	}
</script>
</head>
<body>
	<jsp:include page="/Header.jsp" />
	<section id="memberRegistFormArea">
		<h1>회원등록</h1>
		<form action="memberRegist" method="POST" name="myForm">
			<table>
				<tr>
					<td class="td_left"><label for="id">아이디 : </label></td>
					<td class="td_right"><input type="text" name="id" id="id">
						<input type="button" onclick="idCheck()" value="아이디중복체크">
					</td>
				</tr>
				<tr>
					<td class="td_left"><label for="passwd1">비밀번호 : </label></td>
					<td class="td_right"><input type="password" name="passwd1"
						id="passwd1"></td>
				</tr>
				<tr>
					<td class="td_left"><label for="passwd2">비밀번호 확인 : </label></td>
					<td class="td_right"><input type="password" name="passwd2"
						id="passwd2" onblur="checkPasswd()">
						<div id="errorMessage"></div></td>
				</tr>
				<tr>
					<td class="td_left"><label for="name">이름 : </label></td>
					<td class="td_right"><input type="text" name="name" id="name">
					</td>
				</tr>
				<tr>
					<td class="td_left"><label for="nickname">닉네임 : </label></td>
					<td class="td_right"><input type="text" name="nickname"
						id="nickname"></td>
				</tr>
				<tr>
					<td class="td_left"><label for="email">이메일 : </label></td>
					<td class="td_right"><input type="email" name="email"
						id="email"></td>
				</tr>
				<tr>
					<td class="td_left"><label for="grade">학년 : </label></td>
					<td class="td_right">
						<select name="grade" id="grade">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
					</select>
					</td>
				</tr>
				<tr>
					<td colspan="2" style="text-align: center"><input
						type="submit" value="회원가입" /></td>
				</tr>
			</table>
		</form>
	</section>
	<jsp:include page="/Tail.jsp" />
</body>
</html>