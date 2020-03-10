
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
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css" >
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/oive.css" >
	<link href="https://fonts.googleapis.com/css?family=Song+Myung:400" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Gamja+Flower:400" rel="stylesheet">
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
  </head>
  <body>
	<%@ include file="header.jsp" %>
  

	<div class="container">
		<div class="row">
	<div class="col-sm">
		    	<form class="" action="editUserInfo" method="POST">
	
					<div class="input-group">
					  <label class="col-md-4 control-label" for="textinput">아이디:</label>  
					  <div class="col-md">
					  <input id="textinput" name="userId" type="text" value="${user.userId}" class="form-control "> 
					  </div>
					</div>
							
					<!-- Password input-->
					<div class="input-group">
					  <label class="col-md-4 control-label" for="passwordinput">비밀번호:</label>
					  <div class="col-md">
					    <input id="passwordinput" name="password" type="password" placeholder="placeholder" class="form-control ">
					  </div>
					</div>
					
					<!-- Password input-->
					<div class="input-group">
					  <label class="col-md-4 control-label" for="passwordinput">비밀번호 확인:</label>
					  <div class="col-md">
					  <!-- TODO : 이 부분은 js로 비교하는게 좋을 것 같음 -->
					    <input id="passwordinput" type="password" placeholder="placeholder" class="form-control ">
					  </div>
					</div>
						
							
					<!-- Text input-->
					<div class="input-group">
					  <label class="col-md-4 control-label" for="textinput">e-mail:</label>  
					  <div class="col-md">
					  <input id="textinput" name="email" type="text" value="${user.email}" class="form-control ">  
					  </div>
					</div>
					
					<div class="input-group">
					  <label class="col-md-4 control-label" for="textinput">생일:</label>  
					  <div class="col-md">
					  <input id="textinput" name="birthday" type="date" value="${user.birthday}" class="form-control ">
					  </div>
					</div>
							
					 &nbsp;<input type="submit" value="회원정보수정">
					 &nbsp;<input type="reset" value="취소">
		
			</form>
    	</div>
	
	
		</div>
<div class="row">
			<div class="col-sm offset-sm-10">
			<button class="btn btn-danger">회원탈퇴</button>
    
			</div>
	    	
    	</div>
	</div>
	
    
	<%@ include file="footer.jsp" %>

  </body>
</html>