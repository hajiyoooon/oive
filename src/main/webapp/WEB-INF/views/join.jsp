
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
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css"/ >
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/oive.css" />
	<link rel="stylesheet" href="/oive/resources/css/registration.css"/>
	<link href="https://fonts.googleapis.com/css?family=Song+Myung:400" rel="stylesheet"/>
	<link href="https://fonts.googleapis.com/css?family=Gamja+Flower:400" rel="stylesheet"/>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>

</head>
  <body>
  <script>
  	window.console(${msg});
  </script>
  
  <%@ include file="header.jsp" %>

    <main>

    <div class="container">
    	<div class="row justify-content-center">
    		<h1 class="title" class="col-sm-4"> 회원가입 </h1>
    		<div class="col-lg-6 align-self-center">
    		<form class="" action="join" method="POST">
			
					<div class="input-group">
					  <label class="col-md-4 control-label" for="textinput">아이디</label>  
					  <div class="col-md">
					  <input id="textinput" name="userId" placeholder="id" type="text" class="input--style-2"> 
					  </div>
					</div>
							
					<div class="input-group">
					  <label class="col-md-4 control-label" for="passwordinput">비밀번호</label>
					  <div class="col-md">
						<input id="passwordinput" name="password" type="password" placeholder="placeholder" class="input--style-2 ">
					  </div>
					</div>
					
					<!-- Password input-->
					<div class="input-group">
					  <label class="col-md-4 control-label" for="passwordinput">비밀번호 확인</label>
					  <div class="col-md">
					  <!-- TODO : 이 부분은 js로 비교하는게 좋을 것 같음 -->
						<input id="passwordinput" type="password" placeholder="placeholder" class="input--style-2 ">
					  </div>
					</div>
						
							
					<!-- Text input-->
					<div class="input-group">
					  <label class="col-md-4 control-label" for="textinput">e-mail</label>  
					  <div class="col-md">
					  <input id="textinput" name="email" placeholder="e-mail" type="text" class="input--style-2 ">  
					  </div>
					</div>
					
					<div class="input-group">
					  <label class="col-md-4 control-label" for="textinput">생일</label>  
					  <div class="col-md">
					  <input id="textinput" name="birthday" type="date" class="input--style-2 ">
					  </div>
					</div>
							
					 &nbsp;<input type="submit" value="회원가입" class="btn btn-primary">
					 &nbsp;
		
			</form>	
    		</div>
    	</div>
    	
    		
    		
    		
    </div>

    </main>



  </body>
</html>