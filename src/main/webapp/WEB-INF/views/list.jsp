
<%@page import="vo.SelfIntroduceVO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="org.springframework.web.context.annotation.RequestScope"%>
<%@page import="java.util.List"%>
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
	.remove{
		animation-name: remove;
		animation-duration: 2s;
		animation-fill-mode: forwards;
	}
	

	@keyframes remove {
		0% {}
		50%{
			line-height:0;
			opacity:0;
		}
		95%{
			line-height:0;
			opacity:0;
			height:0;
		}
		100%{
			line-height:0;
			margin-bottom:0;
			height:0;
		}
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
		<div class="post-list" id="post-list">
			<ul class="list-header2">
				<li class="keyword">키워드</li>
				<li class="company">지원 회사</li>
				<li class ="applied-date">지원일자</li>
				<li class="last-modified">최종수정일</li>
				<li></li>
			</ul>
			<c:forEach var="item" items="${ list }" >
				<ul data-sid="${item.id}">
					<li class="keyword">
						<c:forTokens var="keyword" items="${ item.keywords }" delims=",">
							<a href="?boundary=keyword&input=${ keyword }" class="badge badge-primary">${ keyword }</a>
						</c:forTokens>
					</li>
					<li class="company">${item.appliedCompany}</li>
					 <li class="applied-date">${item.applyDate}</li>
					 <li class="last-modified">${item.editDate}</li>
					 <li class="view"><a href="write/${ item.id }">조회/수정</a></li>        
					 <li class="delete"><a href="javascript:deletepost(${item.id});">삭제</a></li>	
				</ul>
			</c:forEach>

		</div>


        <!-- Pager -->
		<div class="d-flex justify-content-center">
			<button id="getpost" onclick="getpost('','')">getpost테스트</button>	
		
		</div>


      </div>
      
    <%@ include file="footer.jsp" %>
    <script>
		var startindex = 1;
		var total = ${total};
    	function deletepost(id){
    		console.log("실행");
			var req = new XMLHttpRequest();

			req.onload = function(e){
				if(this.status == 200){
					var ret = JSON.parse(e.target.responseText);
					
					window.alert(ret.msg);
					if(ret.status == "SUCCESS"){
						var dom = document.querySelector('[data-sid="' + id + '"');
						dom.className += 'remove';
						var children = dom.getElementsByTagName('li');
						for(var i in children){
							children[i].className +=" removechild";
						}
					}

				}
			};
			req.open('POST', 'delete/'+id, true);
			req.send();
			

		}
		
		function getpost(category, input){
			startindex += 10;
			var req = new XMLHttpRequest();

			req.onload = function(e){
				if(this.status == 200){
					var ret = e.target.responseText;
					console.log(ret);
					// 이 부분 작동시키는 방법?
					if(ret == ""){
						document.getElementById("getpost").style.display="none";
					}
					if(true){
						var dom = document.querySelector('#post-list');
						dom.innerHTML += ret;
					}
				}
				else{
					startindex -= 10;
				}
			};
			req.open('GET', 'list/getpost?boundary='+category+'&input=' + input + '&startindex='+startindex, true);
			req.send();
		}
    </script>
  </body>

</html>
