
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="org.springframework.web.context.annotation.RequestScope"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>프로필</title>
	<!-- 링크 넣어주기  -->
	<!-- <link rel="canonical" href="https://getbootstrap.com/docs/4.4/examples/starter-template/"> -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css" >
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/oive.css" >	
	<link href="https://fonts.googleapis.com/css?family=Song+Myung:400" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Gamja+Flower:400" rel="stylesheet">
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<style> * {font-family:Song Myung}</style>
  </head>
  <body>
	<%@ include file="header.jsp" %>
  	<div id="body">
    <nav class="navbar">
    	<ul class="navbar-nav">
	    	<li class="nav-item"><a href="#university" class="nav-link">학력 사항</li></a>
	    	<li class="nav-item"><a href="#certification" class="nav-link">자격 사항</li></a>
	    	<li class="nav-item"><a href="#award" class="nav-link">수상이력</li></a>
    	</ul>
    </nav>
    <div class="row temp">
    	<!-- 여기에 메인 컨텐츠를 넣어주세요! -->
    	<div class="container">
    	<h1 id="university">학력 사항</h1>
		<%@ include file="./form/university_form.jsp" %>
		<%@ include file="./form/education_form.jsp" %>						
		<h1 id="certification">자격사항(자격증/시험성적)</h1>
		<%@ include file="./form/certification_form.jsp" %>
		
    	</div>
    	
		<!-- award -->
		<div>
		<h1 id="award">수상이력</h1>
		<%@ include file="./form/award_form.jsp" %>
		
		</div>
		    </div>
    <aside></aside>
 	</div>

 <script>
    function add(id){
      var target = document.getElementById(id+"-add");
      console.log(target);
      var xhr = new XMLHttpRequest();
      xhr.onload=function(){
        if(xhr.status==200){
          target.innerHTML += this.responseText;
        }
      }
      xhr.open("GET", "/oive/form/"+id, true);
      xhr.send();
    }
    </script>
  </body>
  </html>