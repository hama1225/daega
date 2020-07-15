<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
  text-align:center;
}
table{
	text-align:center;
	margin : auto;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<jsp:include page="/Header.jsp"/>
<br/>
<button type="button" class="btn btn-default" onclick="rowAdd();">항목 추가</button>
<button type="button" class="btn btn-default" onclick="rowDelete();">항목 삭제</button>
<button type="button" class="btn btn-default" onclick="">목표학점</button>
<table id ="myTable" class="table" style="margin-top:20px;">
<thead>
	<tr class="active">	
		<td class="text-center"><strong>항목</strong></td>
		<td class="text-center"><strong>과목</strong></td>
		<td class="text-center"><strong>점수</strong></td>
		<td class="text-center"><strong>학점</strong></td>
		<td class="text-center"><strong>전공</strong></td>
	</tr>
</thead>
<tbody id="tbody">
	<tr style="font-size:12px; font-weight:600;">
		<td>1</td>
		<td><input type="text" name="subject"  placeholder="과목"/></td>
		<td>
		<select name="score" id="score">
							<option value="A+">A+</option>
							<option value="A">A</option>
							<option value="B+">B+</option>
							<option value="B">B</option>
							<option value="B+">C+</option>
							<option value="C">C</option>
							<option value="D">D</option>
							<option value="F">F</option>
							<option value="P">P</option>
					</select></td>
		<td><input type="text" name="grade" size="1" placeholder="학점"/></td>
		<td>
			<input type="checkbox" name="major" value="major">
		</td>
	</tr>
</tbody>
</table>
<br/>
<button type="button" class="btn btn-default" onclick="" style="margin:auto;">계산</button>
<h1>당신의 평균 학점은 : <input type="text" name="average" size="4" placeholder="평균학점" disabled/> 입니다.</h1>
<jsp:include page="/Tail.jsp"/>
<script>
	function rowAdd(){
		var trCnt=$('#myTable tr').length;
			var innerHtml = "";
			innerHtml += '<tr style="font-size:12px; font-weight:600;">';
			innerHtml += '	<td>'+trCnt+'</td>';
			innerHtml += '	<td><input type="text" name="subject" placeholder="과목"/></td>';
			innerHtml += '	<td>';
			innerHtml += '		<select name="score" id="score">';
			innerHtml += '		<option value="A+">A+</option>';
			innerHtml += '		<option value="A">A</option>';
			innerHtml += '		<option value="B+">B+</option>';
			innerHtml += '		<option value="B">B</option>';
			innerHtml += '		<option value="C+">C+</option>';
			innerHtml += '		<option value="C">C</option>';
			innerHtml += '		<option value="D">D</option>';
			innerHtml += '		<option value="F">F</option>';
			innerHtml += '		<option value="P">P</option>';
			innerHtml += '	</select></td>';
			innerHtml += '	<td><input type="text" name="grade" size="1" placeholder="학점"/></td>';
			innerHtml += '	<td><input type="checkbox" name = "major"/></td>';
			innerHtml += '</tr>';
			$('#myTable > tbody:last').append(innerHtml);
	}
	function rowDelete(){
		$('#myTable > tbody:last > tr:last').remove();
	}
</script>
</body>
</html>