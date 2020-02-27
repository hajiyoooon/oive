<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="org.springframework.web.context.annotation.RequestScope"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

<html>
<head>
	<title>Home</title>
	<!-- 링크 넣어주기  -->
	<link rel="canonical" href="https://getbootstrap.com/docs/4.4/examples/starter-template/">
	<link rel="stylesheet" href="resources/css/bootstrap.css" >
	<link href="https://fonts.googleapis.com/css?family=Song+Myung:400" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Gamja+Flower:400" rel="stylesheet">
	<script src="resources/js/bootstrap.min.js"></script>
  <style>
  header{
    display: grid;
    grid-template-columns: 3fr 1fr;
    padding-top: 30px;
	background-color:#009999;  
	font-color:white;
	color:white;
  }
  
  @font-face {
  font-family: 'Noto Sans';
  font-style: normal;
  font-weight: 400;
  src: local('Noto Sans'), local('NotoSans'), url(https://fonts.gstatic.com/s/notosans/v9/o-0IIpQlx3QUlC5A4PNr6DRAW_0.woff2) format('woff2');
  unicode-range: U+0460-052F, U+1C80-1C88, U+20B4, U+2DE0-2DFF, U+A640-A69F, U+FE2E-FE2F;
}
 span{
 	font-size:1.2rem;
 }
  h2{
    text-align: left;
    padding-left: 20px;
    font-family:Noto Sans;
    font-weight:bold;
  }
  h4{
    text-align:right;
    padding-right: 20px;
    font-family:Gamja Flower;
    }
  #body{
    display: grid;
    grid-template-columns: 4fr 1fr;
  }
  #main{
      width: 50px;
  }
  img{
    margin:auto auto;
  }
  body{
  	background-image : url('resources/images/aaa.jpg');
	background-repeat : no-repeat;
	background-size : cover;
	background: linear-gradient(to bottom,rgba(94, 112, 34, 0.1) 0,rgba(65, 45, 30, 0.3) 100%),url("resources/images/aaa.jpg");
	}
  </style>

  <body>
  <header>
    <h2>spec overflow: <span>미래를 여는 넘치는 열정</span></h2>
    <h4> presented by oive </h4>
  </header>
  <hr>
<div id="body">
  <img id="images">
  <div id="main">
    <input class="btn btn-primary" type="button" name="" value="회원가입" style="width:200px;"><br>
    <form method="" name="" action="">
    <input class="btn btn-primary" type="submit" name="" value="로그인" style="width:200px;"><br>
    <input type="hidden" name="" value="">
    <input class="btn btn-light" type="text" name="" style="width:200px;" placeholder="아이디를 입력하세요"><br>
    <input class="btn btn-light" type="password" name="" style="width:200px;" placeholder="비밀번호를 입력하세요"><br>
  </form>
    <input class="btn btn-primary" type="button" name="" value="프로필관리" style="width:200px;"><br>
    <input class="btn btn-primary" type="button" name="" value="자기소개서" style="width:200px;"><br>
    <input class="btn btn-primary" type="button" name="" value="파일업로드" style="width:200px;"><br>
    <input class="btn btn-primary" type="button" name="" value="이력서 만들기" style="width:200px;"><br>
  </div>
</div>
  </body>
</html>