<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
	<head>
	<title>프로필</title>
	<!-- 링크 넣어주기  -->
	<!-- <link rel="canonical" href="https://getbootstrap.com/docs/4.4/examples/starter-template/"> -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css" >
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/oive.css" >	
	<link href="https://fonts.googleapis.com/css?family=Song+Myung:400" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Gamja+Flower:400" rel="stylesheet">
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	</head>
	<body>
	<%-- <c:if test="${ not empty vo }">
	<c:forEach var="i" begin="0" end="${vo.size()==0?0:vo.size() - 1}"> --%>
	<!-- 나중에 이 부분 주석처리해서 사용 -->
		<form>
			<input type="hidden" name="category" value="patent"> 
			<input type="hidden" name="Id" value="${vo[i].id}">
			<!-- private String patentName;
			private String country; 
			private String pubNumber;
			private String pubDate;
			private String fileId;
			private String patentComment; -->
			<div class="form row">
				<div class="col-sm-5 form-group">
					<div class="col">
						<label for="patentName">특허명</label>
					</div>
					<div class="col-sm">
						<input type="text" name="PatentName" class="form-control" value="${vo[i].patentName}">
					</div>
				</div> 
				<div class="col-sm-3 form-group">
					<div class="col">
						<label for="country">출원국가</label>
					</div>
					<div class="col-sm">
						<input type="text" name="Country" class="form-control" value="${vo[i].country}" required>
					</div>
				</div>
			</div>
			<div class="form row">
				<div class="col-sm-4 form-group">
					<div class="col">
						<label for="pubNumber">특허출원번호</label>
					</div>
					<div class="col-sm">
						<input type="text" name="PubNumber" class="form-control" value="${vo[i].pubNumber}">
					</div>
				</div> 
				<div class="col-sm-4 form-group">
					<div class="col">
						<label for="pubDate">특허출원일</label>
					</div>
					<div class="col-sm">
						<input type="date" name="PubDate" class="form-control" value="${vo[i].pubDate}" required>
					</div>
				</div>
			</div>
			<div class="form row">
				<div class="col-sm-8 form-group">
					<div class="col">
						<label for="patentComment">내용</label>
					</div>
					<div class="col-sm">
						<textarea name="PatentComment" class="form-control" style="margin-top: 0px; margin-bottom: 0px; height: 83px;"
							value="${vo[i].patentComment}">내용을 입력하세요.</textarea>
					</div>
				</div>
			</div>

					<!-- fileId         INT              NULL -->
			<div class="form-group">
				<div class="col-3">
					<label for="fileId">관련 파일</label>
				</div>
				<div class="col-md-4">
					<button type="button" name="button">업로드</button>
					<button type="button" name="button">삭제하기</button>
				</div>
			</div>
			<div class="form-group">
				<button class="btn-success" type="submit">수정</button>
				<button class="btn-danger">삭제</button>
				<button class="btn-primary">추가</button>
			</div>
		</form>
		 <%-- </c:forEach>
	</c:if> --%>
	
    <div class="" id="award-add"><!-- 추가버튼 클릭시 여기에 폼이 붙게됨. --></div>
    </body>