
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
  
  	<div id="body">
    <nav><h3>자기소개서 관련 파일</h3></nav>
    <div class="container">
<%
   if( request.getAttribute("msg") == null ) {
%>
   <form action="/oive/upload" 
                  enctype="multipart/form-data" method="post">
       <input type="file" name="uploadFile" multiple/> <!--multiple로 처리-->
       <input type="submit" value="파일올리기"/>
   </form>
<%
   } else {
%>
    ${ msg }
<%
   }
%>
    </div>
    <aside></aside>
 	</div>
  </body>
  
</html>