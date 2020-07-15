<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
}

.navbar {
  overflow: hidden;
  background-color: #cccccc;
}

.navbar a {
  float: left;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.dropdown {
  float: left;
  overflow: hidden;
}

.dropdown .dropbtn {
  font-size: 16px;  
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: red;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: #ddd;
}

.dropdown:hover .dropdown-content {
  display: block;
}
</style>
<div class="navbar">
  <a href="main.do">대가</a>
  <div class="dropdown">
    <button class="dropbtn">성적관리 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="gradeCal.do">학점계산</a>
      <a href="performGrade.do">목표학점</a>
    </div>
  </div> 
  <a href="community.do">커뮤니티</a>
  <div class="dropdown">
    <button class="dropbtn">평가
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="professor.do">교수</a>
      <a href="subject.do">과목</a>
    </div>
  </div> 
  <a href="study.do">스터디</a>
  <a href="book.do">중고거래</a> 
  <span style="float:right;">
			<a style="color:white;" href="logout.do">로그아웃</a>
		</span>
</div>
