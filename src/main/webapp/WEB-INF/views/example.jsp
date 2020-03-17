<%@page import="org.springframework.web.context.annotation.RequestScope"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<title>main</title>
	<!-- 링크 넣어주기  -->
<link rel="canonical" href="https://getbootstrap.com/docs/4.4/examples/starter-template/">
<link rel="stylesheet" href="resources/css/example.css" >
<link href="https://fonts.googleapis.com/css?family=Song+Myung:400" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Gamja+Flower:400" rel="stylesheet">
<script src="resources/js/bootstrap.min.js"></script>
 <style>
  header{
    display: grid;
    grid-template-columns: 3fr 1fr;
    padding-top: 30px;
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
      width: 20%;
      margin: 10px;
  }
  img{
    margin:auto auto;
  }


  body{
	  background: linear-gradient(to bottom,rgba(92, 77, 66, 0.4) 0,rgba(92,77,66,.8) 100%),url(resources/images/aaa.jpg);
    background-position: center;
    background-repeat: no-repeat;
    background-attachment: scroll;
    background-size: cover;
}
.form-control.login {
    background-color: rgba(255, 255, 255, 0.07);
    border: 1px solid rgba(238, 238, 238, 0.27);
    color: #ffffff;
}

.form-control.login:focus  {
    border-color: #FFFFFF;

   }
   .form-control.login::placeholder {
  color: #ffffff57;
  opacity: 1;
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
    <form method="POST" name="loginform" action="/oive/">
	    <input type="hidden" name="" value="">
	    <input class="form-control login" type="text" name="userId" style="width:200px;" placeholder="아이디를 입력하세요" required><br>
   		<input class="form-control login" type="password" name="password" style="width:200px;" placeholder="비밀번호를 입력하세요" required><br>
   		<input class="btn btn-primary" type="submit" name="" value="로그인" style="width:200px;"><br>
	</form>
	<button class="btn btn-primary" style="width:200px;" onclick="location.href='join'">회원가입</button><br>
	<button class="btn btn-primary" style="width:200px;" onclick="location.href='join'">비밀번호찾기</button><br>

  </div>
 </div>
<script>
	var msg = '${msg}';
	if(msg && msg != '')	window.alert(msg);
</script>

</body>
</html>

