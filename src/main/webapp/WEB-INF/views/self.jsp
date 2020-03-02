
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
    grid-template-columns: 4fr 5fr 2fr;
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
 		padding: 50px;
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
  	ul{
  		list-style-type: none;
		margin: 0;
		padding: 0;
		overflow: hidden;
  	}
  	li{
  		display: inline-block;
		color: white;
		text-align: center;
		padding: 16px 16px;
		text-decoration: none;
		margin-top: 10px;
  	}
  	form{
  		display:grid;
 		grid-template-columns: 5fr 4fr;
  	}
    </style>
  </head>
  <body>
    <header>
      <h2><em>spec overflow:</em> <span>자기소개성 작성</span ></h2>
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
    	<input type="button" class="btn btn-dark" name="" value="검색"> &nbsp;
    	<input type="text" class="form-control" name="" style="width:300px;height:35px"><br><br>
    	<form>
    	<div id="one">
    		<div class="form-group">
    		
    		<textarea class="form-control" id="exampleFormControlTextarea1" placeholder="질문" rows="3" style="width:500px;"></textarea>
    		<br>
    		<textarea class="form-control" id="exampleFormControlTextarea1" placeholder="답변" rows="3" style="width:500px;"></textarea>
  			</div>
  		</div>	
		<div class="form-group">
  		<div class="col-md-4">
  			<input id="textinput" name="" type="text" placeholder="키워드" class="form-control input-md"><br><br>
  			<input id="textinput" name="" type="text" placeholder="지원회사" class="form-control input-md"><br><br>
  			<input id="textinput" name="" type="DATE" placeholder="지원일자" class="form-control input-md"><br><br>
  		</div>
	</div>
		<div>
			<input type="submit" name="" value="저장" class="btn btn-dark" style="width:100px">
			<input type="reset" name="" value="취소" class="btn btn-dark" style="width:100px">	
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