<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
	<html><head>
	<title>프로필</title>
	<!-- 링크 넣어주기  -->
	<!-- <link rel="canonical" href="https://getbootstrap.com/docs/4.4/examples/starter-template/"> -->
	<link rel="stylesheet" href="/oive/resources/css/bootstrap.css">
	<link rel="stylesheet" href="/oive/resources/css/oive.css">	
	<link href="https://fonts.googleapis.com/css?family=Song+Myung:400" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Gamja+Flower:400" rel="stylesheet">
	<script src="/oive/resources/js/bootstrap.min.js"></script>
	</head>
	<body>
<c:if test="${ not empty vo }">
<c:forEach var="i" begin="0" end="${vo.size()}">
	<form>
		<input type="hidden" name="category" value="certifications"> 
		<input type="hidden" name="Id" value="${vo[i].id}">
		<div class="form row">
			<div class="col-sm-2 form-group">
				<label for="OrgName">인증기관</label>
				<input type="text" name="OrgName" class="form-control" value="${vo[i].orgName}">
			</div>
			<div class="col-sm-4 form-group">
				<label for="CertName">자격증/시험명<span class="text-muted">(필수입력)</span></label>
				<input type="text" name="CertName" class="form-control" 
					placeholder="자격증/시험명을 입력하세요." value="${vo[i].certName}">
			</div>

			<!-- grade           VARCHAR2(20)     NULL -->
			<div class="col-sm-2 form-group">
				<label for="Grade">점수</label>
				<input type="text" name="Grade" class="form-control" placeholder="등급 또는 성적을 입력하세요."
					value="${vo[i].grade}">
			</div>
		</div>
		<div class="form row">
			<!-- aquiredDate    DATE             NULL -->
			<div class="col-sm-2 form-group">
				<label for="AquiredDate">취득일</label>
				<input type="date" name="AquiredDate" class="form-control" value="${vo[i].aquriedDate}">
			</div>
			<!-- expDate        DATE             NULL -->
			<div class="col-sm-2 form-group">
				<label for="ExpDate">만료일</label>
				<input type="date" name="ExpDate" class="form-control" value="${vo[i].expDate}">
			</div>
			<!-- certNumber          VARCHAR2(50)     NULL -->
			<div class="col-sm-2 form-group">
				<label for="CertNumber">발급번호</label>
				<input type="text" name="CertNumber" class="form-control" placeholder="고유번호를 입력하세요."
					value="${vo[i].certNumbers}">
			</div>
			<!-- certType            VARCHAR2(20)     NULL -->
			<div class="col-sm-2 form-group">
				<label for="CerType">종류</label>
				<select name="type" class="form-control">
					<option value="">선택하세요</option>
					<option>어학</option>
					<option>IT</option>
					<option>교양</option>
					<option>기타</option>
				</select>
			</div>
		</div>
		<div class="form row">
			<!-- certComments         VARCHAR2(100)    NULL -->
			<div class="col-sm-8 form-group">
				<label for="CertComments">자격증/시험 내용</label>
				<textarea name="CertComments" class="form-control" value="${vo[i].certComments}"></textarea>
			</div>
		</div>

			<!-- fileId         INT              NULL -->
			<div class="form-group">
				<label>관련 파일 : {이미 업로드된 파일이 있으면 표시됩니다.}</label><!-- 파일업로드와 파일명 표시 기능 2단계에서 구현함. -->
				<button>업로드</button><button>삭제하기</button>
			</div>
		<button type="submit" class="btn-success">수정</button>
		<button class="btn-danger">삭제</button>
		<button id="certification" class="btn-primary" onclick="add(id)">추가</button>
	</form>
	</c:forEach>
</c:if>


    <div class="" id="certification-add"><!-- 추가버튼 클릭시 여기에 폼이 붙게됨. --></div>
    </body></html>