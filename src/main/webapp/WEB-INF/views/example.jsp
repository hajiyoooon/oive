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
	<script src="resources/js/bootstrap.min.js"></script>
  <style>
  #header{
    display: grid;
    grid-template-columns: 1fr 1fr;
  }
  h2{
    text-align: left;
  }
  h4{
    text-align:right;
    }
  #body{
    display: grid;
    grid-template-columns: 3fr 1fr;
  }
  #main{
      text-align: left;
      width: 50px;
  }
  img{
    margin:auto auto;
  }

  </style>

  <body>
  <div id="header">
    <h2><em>spec overflow:</em> <span style="font-style:italic"><em>미래를 여는 넘치는 열정</em></span ></h2>
    <h4> presented by oive </h4>
  </div>
  <hr>
<div id="body">
  <img src="../paik.jpg">
  <div id="main">
    <input class="btn btn-primary" type="button" name="" value="회원가입" style="width:200px;"><br>
    <form method="" name="" action="">
    <input type="submit" name="" value="로그인" style="width:200px;"><br>
    <input type="hidden" name="" value="">
    <input type="text" name="" style="width:200px;"><br>
    <input type="password" name="" style="width:200px;"><br>
  </form>
    <input type="button" class="btn btn-warning" name="" value="프로필관리" style="width:200px;"><br>
    <input type="button" name="" value="자기소개서" style="width:200px;"><br>
    <input type="button" name="" value="파일업로드" style="width:200px;"><br>
    <input type="button" name="" value="이력서 만들기" style="width:200px;"><br>
  </div>
</div>
  </body>
</html>