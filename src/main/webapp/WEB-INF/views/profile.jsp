
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
    <nav>
    	<ul>
    	<a href="#university"><li>학력 사항</li></a>
    	<a href="#certification"><li>자격 사항</li></a>
    	<a href="#award"><li>수상이력</li></a>
    	</ul>
    </nav>
    <div class="row temp">
    	<!-- 여기에 메인 컨텐츠를 넣어주세요! -->
    	<h1 id="university">학력 사항</h1>
<%-- 		<%@ include file="./form/university_form.jsp" %> --%>
<%-- 		<%@ include file="./form/education_form.jsp" %>						 --%>
		<h1 id="certification">자격사항(자격증/시험성적)</h1>
<%-- 		<%@ include file="./form/certification_form.jsp" %> --%>
		<hr>
		<!-- award -->
		<h1 id="award">수상이력</h1>
		<%@ include file="./form/award_form.jsp" %>
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