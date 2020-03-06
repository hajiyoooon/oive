
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
<%-- 	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/oive.css" > --%>
	<link href="https://fonts.googleapis.com/css?family=Song+Myung:400" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Gamja+Flower:400" rel="stylesheet">
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
  <style>


    </style>
  </head>
  <body>
	<%@ include file="header.jsp" %>
  <div id="body">
    <nav>
    </nav>
    <div class="row temp">
    	<form>
	    	<input type="button" class="btn btn-dark" name="" value="검색"> &nbsp;
	    	<input type="text" class="form-control" name="" style="width:300px;height:35px"><br><br>
    	
    	</form>
    	<form>
    		<div class="row">
	    		<div class="form-group col-sm">
		    		<textarea class="form-control" id="exampleFormControlTextarea1" placeholder="질문" rows="3" style="width:500px;"></textarea>
		    		<br>
		    		<textarea class="form-control" id="exampleFormControlTextarea1" placeholder="답변" rows="3" style="width:500px;"></textarea>
	  			</div>
	
				<div class="form-group col-sm-3">
			  			<input id="textinput" name="" type="text" placeholder="키워드" class="form-control input-md"><br><br>
			  			<input id="textinput" name="" type="text" placeholder="지원회사" class="form-control input-md"><br><br>
			  			<input id="textinput" name="" type="DATE" placeholder="지원일자" class="form-control input-md"><br><br>
			  		
				</div>    		
    		</div>

			<div class="from-group">
				<input type="submit" name="" value="저장" class="btn btn-dark" style="width:100px">
				<input type="reset" name="" value="취소" class="btn btn-dark" style="width:100px">	
			</div>		
    	</form>
    </div>
    <aside>
    </aside>
 </div>

  </body>
</html>