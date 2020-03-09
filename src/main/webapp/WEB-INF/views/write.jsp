
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="org.springframework.web.context.annotation.RequestScope"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="vo.SelfIntroduceVO, java.util.List" %>
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
  <style>


    </style>
  </head>
  <body>
	<%@ include file="header.jsp" %>
  <div id="body">
    <nav>
    </nav>
    <% List<SelfIntroduceVO> list = (List<SelfIntroduceVO>)request.getAttribute("list"); // 나머지 전체
    SelfIntroduceVO vo = (SelfIntroduceVO)request.getAttribute("vo1"); // insert 부분 %>
    
    <div class="row temp">
    	<form method="GET" action="/oive/self_introduce/write">
    		<input type="hidden" name="action" value="search">
	    	<input type="button" class="btn btn-dark" name="" value="검색"> &nbsp;
	    	<input type="text" class="form-control" name="" style="width:300px;height:35px"><br><br> 	
    	</form>
    	
    	<form method="POST" action="/oive/self_introduce/write">
    		<input type="hidden" name="action" value="insert">
    		<div class="row">
	    		<div class="form-group col-sm">
		    		<textarea class="form-control" name="question" id="exampleFormControlTextarea1" placeholder="질문" rows="3" style="width:500px;"></textarea>
		    		<br>
		    		<textarea class="form-control" name="answer" id="exampleFormControlTextarea1" placeholder="답변" rows="3" style="width:500px;"></textarea>
	  			</div>
	
				<div class="form-group col-sm-3">
			  			<input id="textinput" name="key" type="text" placeholder="키워드" class="form-control input-md"><br><br>
			  			<input id="textinput" name="appliedCompany" type="text" placeholder="지원회사" class="form-control input-md"><br><br>
			  			<input id="textinput" name="writeDate" type="DATE" placeholder="지원일자" class="form-control input-md"><br><br>	
				</div>    		
    		</div>

			<div class="from-group">
				<input type="submit" value="저장" class="btn btn-dark" style="width:100px">
				<input type="reset" value="취소" class="btn btn-dark" style="width:100px">	
			</div>		
    	</form>
    </div>
    <aside>
    </aside>
 </div>

  </body>
</html>