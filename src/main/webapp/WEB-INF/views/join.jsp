
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="org.springframework.web.context.annotation.RequestScope"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
	<!-- 링크 넣어주기  -->
	<!-- <link rel="canonical" href="https://getbootstrap.com/docs/4.4/examples/starter-template/"> -->
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
    #body{
      display: grid;
      grid-template-columns: 1fr 3fr 1fr;
    }
    nav{
    	background-color: #24b4a0;
    	height: 700px;
    }
  	main{
 		display:grid;
 		grid-template-columns: 2fr 3fr;
    }
  
  	aside{
		background-color: #ccea53;
    	height: 700px;
    }
  	footer{
    	background-color: #a7d54f;
    	height: 100px;
    }
    #title{
    	text-align: left;
    	font-weight: bold;
    	padding-top: 20px;
    	padding-left:30px;
    	
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
  	form span{
    	color:red;
  	}
    </style>
  </head>
  <body>
    <header>
      <h2><em>spec overflow:</em> <span>회원 가입</span ></h2>
       <ul>
      	<li>프로필작성</li>
      	<li>자기소개서</li>
      	<li>이력서만들기</li>
      	<li>파일업로드</li>
      	<li>내 정보</li>
      	<li>로그아웃</li>
      </ul>
      <h4> presented by oive </h4>
    </header>
  <div id="body">
    <nav>
    </nav>
    <main>
    <h1 id="title"> 회원가입 </h1>
    <!-- <form>
      &nbsp;<span>*</span>아이디: <input type="text" name="" style="width:200px;"><br>
      &nbsp;<span>*</span>비밀번호:<input type="text" name="" style="width:200px;"><br>
      &nbsp;<span>*</span>비밀번호 확인: <input type="text" name="" style="width:200px;"><br>
      &nbsp;<span>*</span>이름: <input type="text" name="" style="width:200px;"><br>
      &nbsp;<span>*</span>e-mail: <input type="text" name="" style="width:200px;"><br>
      &nbsp;<span>*</span>생년월일: <input type="date" name="" style="width:200px;"><br><br>
      &nbsp;<input type="submit" value="회원가입">
      &nbsp;<input type="reset" value="취소">
    </form> -->
    <form class="form-horizontal">
<!-- Text input-->
<br>
<br>
<div id="one">
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">아이디:</label>  
  <div class="col-md-4">
  <input id="textinput" name="textinput" type="text" placeholder="placeholder" class="form-control input-md">
  <span class="help-block">help</span>  
  </div>
</div>

<!-- Password input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="passwordinput">비밀번호:</label>
  <div class="col-md-4">
    <input id="passwordinput" name="passwordinput" type="password" placeholder="placeholder" class="form-control input-md">
    <span class="help-block">help</span>
  </div>
</div>

<!-- Password input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="passwordinput">비밀번호 확인:</label>
  <div class="col-md-4">
    <input id="passwordinput" name="passwordinput" type="password" placeholder="placeholder" class="form-control input-md">
    <span class="help-block">help</span>
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">이름:</label>  
  <div class="col-md-4">
  <input id="textinput" name="textinput" type="text" placeholder="placeholder" class="form-control input-md">
  <span class="help-block">help</span>  
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">e-mail:</label>  
  <div class="col-md-4">
  <input id="textinput" name="textinput" type="text" placeholder="placeholder" class="form-control input-md">
  <span class="help-block">help</span>  
  </div>
</div>

 &nbsp;<input type="submit" value="회원가입">
 &nbsp;<input type="reset" value="취소">
 </div>
</form>
    
    </main>
    <aside>
    </aside>
 </div>
  <footer>
  </footer>	
  </body>
</html>