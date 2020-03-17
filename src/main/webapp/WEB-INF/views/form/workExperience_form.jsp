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
			<input type="hidden" name="category" value="workExperience""> 
			<input type="hidden" name="Id" value="${vo[i].id}">
			<!-- private String companyName;
			private String empType;
			private String duty;
			private String workPosition;
			private String startDate;
			private String endDate;
			private String workComments;
			private String fileId;
			 -->
			<div class="form row">
				<div class="col-sm-4 form-group">
					<div class="col">
						<label for="companyName">회사명</label>
					</div>
					<div class="col-sm">
						<input type="text" name="CompanyName" class="form-control" value="${vo[i].companyName}">
					</div>
				</div> 
			</div>
			<div class="form row">
				<div class="col-sm-2 form-group">
					<div class="col">
						<label for="empType">고용형태</label>
					</div>
					<div class="col-sm">
						<input type="date" name="EmpType" class="form-control" value="${vo[i].empType}" required>
					</div>
				</div>
				<div class="col-sm-4 form-group">
					<div class="col">
						<label for="duty">직무</label>
					</div>
					<div class="col-sm">
						<input type="text" name="Duty" class="form-control"	value="${vo[i].duty}"></textarea>
					</div>
				</div>
				<div class="col-sm-2 form-group">
					<div class="col">
						<label for="workPosition">직위</label>
					</div>
					<div class="col-sm">
						<input type="test" name="WorkPosition" class="form-control"	value="${vo[i].workPosition}"></textarea>
					</div>
				</div>
			</div>
			<div class="form row">
				<div class="col-sm-3 form-group">
					<div class="col">
						<label for="startDate">시작일</label>
					</div>
					<div class="col-sm">
						<input type="date" name="startDate" class="form-control" value="${vo[i].startDate}" required>
					</div>
				</div>
				<div class="col-sm-3 form-group">
					<div class="col">
						<label for="endDate">종료일</label>
					</div>
					<div class="col-sm">
						<input type="date" name="EndDate" class="form-control" value="${vo[i].endDate}" required>
					</div>
				</div>
				<div class="col-sm form-group">
					<label for="IsTransfer" class="col">재직중</label>
					<div class="col-sm">
						<input type="checkbox" name="" value="1" class="" ${vo[i].isTransfer=='1'?'checked':''}>
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