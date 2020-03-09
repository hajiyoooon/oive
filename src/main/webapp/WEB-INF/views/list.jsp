
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
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
	<link href="https://fonts.googleapis.com/css?family=Song+Myung:400" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Gamja+Flower:400" rel="stylesheet">
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>

  </head>
  
<style>
@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css); .jejugothic * { font-family: 'Jeju Gothic', sans-serif; }


	ul.list-header2 {
	    font-weight: bold;
	    border-bottom: #adb5bd solid 1px;
	}

	.post-list li{
	     display: inline-block;
	     text-overflow: ellipsis;
	     overflow: hidden;
	     height: 30px;
	     white-space: nowrap;
	}
	
	.post-list .keyword{
	    width: 30%
	}
	
	.post-list .company{
	    width : 20%;
	}
	
	.post-list .applied-date{
	    width:15%;
	}
	.post-list .last-modified {
	    width: 15%;
	}
	
	ul.pagination li{
		height: 50px;
	}
	a {
	  color: #212529;
	  transition: all 0.2s;
	}
	
	a:focus, a:hover {
	  color: #0085A1;
	}
	span.bd-content-title {
	    font-size: 2rem;
	    font-weight: bold;
	
	}
	.fas fa-search:before {
	    content: "\f002";
	}
	.search {
		height: 60px;
		background-color: #ffffff;
		border-radius: 30px;
		padding: 10px;
		border: 1px solid #dee2e6;
		margin-bottom: 5%;
	}
	    
	.search-dropdown{
		width:20%;
		border: none;
	}
	
	.search-input{
	    color: black;
	    border: 0;
		padding: 0 10px;
	    outline: 0;
	    background: none;
	    width: 70%;
	}
	
	.search-icon{
	    height: 40px;
	    width: 40px;
	    float: right;
	    display: flex;
	    justify-content: center;
	    align-items: center;
	    border-radius: 50%;
	    color:white;
	}
</style>
  <body>
	<%@ include file="header.jsp" %>

    <div class="container">
    	<!-- 여기에 메인 컨텐츠를 넣어주세요! -->
    	<div class="row">
			<div class="col-sm-4">
				<span class="bd-content-title" style="font-family: Jeju Gothic;">나의 자기소개서</span>
			</div>
			<form class="search col-sm" action="" method="GET">
				<select class="form-control search-dropdown" id="search" name="boundary">
					<option value="company">지원회사</option>
					<option value="keyword">키워드</option>
					<option value="question">질문</option>
					<option value="answer">답변</option>					
				</select>
				<input class="search-input" name="input">
				<a class="search-icon">
					<i class="fas fa-search"></i>
				</a>			
			</form>
		</div>
		<div class="post-list">
			<ul class="list-header2">
				<li class="keyword">키워드</li>
				<li class="company">지원 회사</li>
				<li class ="applied-date">지원일자</li>
				<li class="last-modified">최종수정일</li>
				<li></li>
			</ul>
			<c:forEach var="item" items="${ list }" >
				<ul>
					<li class="keyword">
						<c:forTokens var="keyword" items="${ item.keywords }" delims=",">
							<a href="?boundary=keyword&input=${ keyword }" class="badge badge-primary">${ keyword }</a>
						</c:forTokens>
					</li>
					<li class="company">${item.appliedCompany}</li>
					 <li class="applied-date">${item.applyDate}</li>
					 <li class="last-modified">${item.editDate}</li>
					 <li class="view"><a href="write/${ item.id }">조회/수정</a></li>        
					 <li class="delete"><a href="#">삭제</a></li>	
				</ul>
			</c:forEach>

		</div>


        <!-- Pager -->
		<div class="d-flex justify-content-center">
			<div aria-label="Page navigation example" class="justify-content-center">
			  <ul class="pagination">
			    <li class="page-item">
			      <a class="page-link" href="#" aria-label="Previous">
			        <span aria-hidden="true">&laquo;</span>
			      </a>
			    </li>
			    <li class="page-item"><a class="page-link" href="#">1</a></li>
			    <li class="page-item"><a class="page-link" href="#">2</a></li>
			    <li class="page-item"><a class="page-link" href="#">3</a></li>
			    <li class="page-item">
			      <a class="page-link" href="#" aria-label="Next">
			        <span aria-hidden="true">&raquo;</span>
			      </a>
			    </li>
			  </ul>
			</div>		
		
		</div>


      </div>
    </div>
  </body>
</html>