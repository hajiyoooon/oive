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
	
	<!-- 아래는 bootsnipp.com 사용하여 붙여넣음/수정함. -->
	<c:forEach var="i" begin="0" end="${vo==null?0:vo.size()}">
	<form class="">
		<fieldset>
			<legend>교육사항</legend>
			<input type="hidden" name="category" value="education"> <input type="hidden" name="id" value="{EducationVO.id}">
			<!-- 기관명 -->
			<div class="form row">
				<div class="col-sm-2 form-group">
					<div class="col">
						<label for="orgName">기관명</label>
					</div>
					<div class="col-sm">
						<input type="text" name="orgName" class="form-control" value="">
					</div>
				</div>
				<div class="col-sm-4 form-group">
					<label class="col" for="eduName">과정명<span class="text-muted">(필수입력)</span></label>
					<div class="col-sm">
						<input id="eduName" name="eduName" type="text" placeholder="수업명/또는 강좌명을 입력하세요." class="form-control" required="">
					</div>
				  </div>
			<div class="col-sm-2 form-group">
			  <label class="col" for="totalHour">교육시간</label>
			  <div class="col-sm">
			  <input id="totalHour" name="totalHour" type="number" placeholder="교육시간/수업시수를 입력하세요." class="form-control">
			  <span class="help-block">대학 강의의 경우 이수학점을 입력하세요.</span>
			  </div>
			</div></div>


			<!-- 과정명-->


			<!-- 교육시간-->
			
			<div class="form row">
				<!-- 시작일-->
				<div class="form-group col-sm-2">
				  <label for="startDate" class="col">수업 시작일</label>
				  <div class="col-sm">
<input id="startDate" name="startDate" type="date" placeholder="수업 시작일을 입력하세요." class="form-control">
</div>

				  </div>
				<!-- 종료일-->
				<div class="form-group col-sm-2">
				  <label for="endDate" class="col">수업 종료(예정)일</label>
				  <div class="col-sm">
<input id="endDate" name="endDate" type="date" placeholder="수업 종료일을 입력하세요." class="form-control"></div>

				</div>
			<div class="form-group col-sm-2">
				   <label for="classification" class="col">교육유형</label>
				   <div class="col-sm">
<select id="classification" name="classification" class="form-control">
				      <option value="0">선택하세요.</option>
				      <option value="1">학과수업</option>
				      <option value="2">온라인강좌</option>
				      <option value="3">학원</option>
				      <option value="4">기타</option>
    </select></div>

				</div><div class="form-group col-sm-2">
				  <label for="grade" class="col">성적</label>
					<div class="col-sm">
						<input id="grade" name="grade" type="text" placeholder="성적을 입력하세요." class="form-control">
					</div>
				</div></div>
			
				<!-- 내용 -->
				<div class="form row">
<div class="form-group col-sm-8">
				  <label class="col" for="comments">교육내용</label>
				  <div class="col-sm">
				    <textarea class="form-control" id="comments" name="comments"></textarea>
				  </div>
				</div>
</div>

				<!-- File Button --> <!--  파일업로드 기능은 스터디가 필요함. -->
				<div class="form-group">
				  <div class="col-md-4">
						<label>관련 파일 : {이미 업로드된 파일이 있으면 표시됩니다.}</label><!-- 파일업로드와 파일명 표시 기능 2단계에서 구현함. -->
						<button>업로드</button><button>삭제하기</button>
				</div>

				<!-- Button (Double) -->
				<div class="form-group">
				    <button class="btn-success" type="submit">수정</button>
				    <button class="btn-danger">삭제</button>
				  <button id="education" class="btn-primary" onclick="add(id)">추가</button></div>
				</div>
</fieldset>
</form>
</c:forEach>
    <div class="" id="education-add"><!-- 추가버튼 클릭시 여기에 폼이 붙게됨. --></div>
    </body></html>