
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="org.springframework.web.context.annotation.RequestScope"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
<style>*{font-family:Song Myung}</style>
<!-- <style>form.profile{margin-bottom:30px;}</style> -->
  </head>
	<body>
		<%@ include file="header.jsp" %>
	  	<div id="body"> 
		    <nav>
		    	<ul class="nav flex-column" style="/* position:fixed */;padding-top:40px;padding-left:30px;">
			    	<li class="nav-item"><a href="#university" class="nav-link">학력 사항</a></li>
			    		<ul>
			    			<li><a href="university">대학교</a></li>
			    			<li><a href="education">교육이력</a></li>
			    		</ul>
			    	<li class="nav-item"><a href="#certification" class="nav-link">자격 사항</a></li>
			    	<li class="nav-item"><a href="#award" class="nav-link">수상이력</a></li>
		    	</ul>
		    </nav>
		    <div class="row temp profile" style="display:inline-flex;flex-direction:column">
		    	<h2 style="margin-left:-10px">학력사항</h2> 
		    	<h3 id="university">대학교</h3>
		    	<%@ include file="./form/university_form.jsp" %>
		    	<div id="university-add"><!-- 이곳에 추가된 form이 붙음.--></div>
		    	    	
			</div>
	    	<aside><!-- 어사이드입니다. 작업이 끝나면 지워주세요. --></aside> 
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