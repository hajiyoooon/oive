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
	<!-- 아래는 bootsnipp.com 사용하여 붙여넣음/수정함. -->
	<c:forEach var="i" begin="0" end="${vo.size()==0?0:vo.size()-1}">
	<div id="formGroup_education_${vo[i].id}">
	<form id="form_education_${vo[i].id}" class="profile">
<!-- 		<fieldset> -->
<!-- 			<legend>교육사항</legend> -->
			<input type="text" name="userId" value="${sessionScope.user.userId}">
			<input type="text" name="category" value="education"> 
			<input type="text" name="Id" value="${vo[i].id}">
			<!-- 기관명 -->
			<div class="form-row">
				<div class="col-sm-2 form-group">
					<div class="col">
						<label for="OrgName">기관명</label>
					</div>
					<div class="col-sm">
						<input type="text" name="OrgName" 
						class="form-control" value="${vo[i].orgName}">
					</div>
				</div>
				<div class="col-sm-4 form-group">
					<label class="col" for="EduName">과정명<span class="text-muted">(필수입력)</span></label>
					<div class="col-sm">
						<input name="EduName" type="text" value="${vo[i].eduName}"
						placeholder="수업명/또는 강좌명을 입력하세요." class="form-control" required>
					</div>
				  </div>
			<div class="col-sm-2 form-group">
			  <label class="col" for="TotalHour">교육시간</label>
			  <div class="col-sm">
			  <input name="TotalHour" type="number" value="${vo[i].totalHour}"  
			  placeholder="교육시간/수업시수를 입력하세요." class="form-control">
			  <span class="help-block">대학 강의의 경우 이수학점을 입력하세요.</span>
			  </div>
			</div></div>
			
			<div class="form-row">
				<!-- 시작일-->
				<div class="form-group col-sm-2">
				  <label for="StartDate" class="col">수업 시작일</label>
				  <div class="col-sm">
						<input name="StartDate" type="date" 
						value="${vo[i].startDate}" 
						placeholder="수업 시작일을 입력하세요." class="form-control">
				  </div>
				 </div>
				<!-- 종료일-->
				<div class="form-group col-sm-2">
				  <label for="EndDate" class="col">수업 종료(예정)일</label>
				  <div class="col-sm">
					<input name="EndDate" type="date" value="${vo[i].endDate}"
 					placeholder="수업 종료일을 입력하세요." class="form-control">
 				  </div>

				</div>
			<div class="form-group col-sm-2">
				   <label for="Classification" class="col">교육유형</label>
				   <div class="col-sm">
					<select name="Classification" class="form-control">
				      <option value="">선택하세요.</option>
				      <option value="1" ${vo[i].classification==1?'selected':''}>학과수업</option>
				      <option value="2" ${vo[i].classification==2?'selected':''}>온라인강좌</option>
				      <option value="3" ${vo[i].classification==3?'selected':''}>학원</option>
				      <option value="4" ${vo[i].classification==4?'selected':''}>기타</option>
    				</select></div>

				</div><div class="form-group col-sm-2">
				  <label for="Grade" class="col">성적</label>
					<div class="col-sm">
						<input name="Grade" type="text"
						 value="${vo[i].grade}" 
						 placeholder="성적을 입력하세요." class="form-control">
					</div>
				</div></div>
			
				<!-- 내용 -->
				<div class="form row">
<div class="form-group col-sm-8">
				  <label class="col" for="EduComments">교육내용</label>
				  <div class="col-sm">
				    <textarea class="form-control" name="EduComments">${vo[i].eduComments}</textarea>
				  </div>
				</div>
</div>

				<!-- File Button --> <!--  파일업로드 기능은 스터디가 필요함. -->
				<div class="form-group">
				  <div class="col-md-4">
						<label>관련 파일 : {이미 업로드된 파일이 있으면 표시됩니다.}</label><!-- 파일업로드와 파일명 표시 기능 2단계에서 구현함. -->
						<button class="btn-sm btn-secondary">업로드</button>
						<button class="btn-sm btn-secondary">삭제하기</button>
				</div>
				</div>
		</form>
				<!-- Button (Double) -->
				<div class="form-group profile-btn-group">
					<button id="education_${vo[i].id}" class="btn btn-success" onclick="edit(id);false;">수정</button>
				    <button id="delete/education/${vo[i].id}" class="btn btn-danger" type="button" name="button" onclick="del(id);false;">삭제</button>
				    <button id="education-add_${vo[i].id}" class="btn btn-primary" type="button" onclick="add(id);false;">추가</button>
				</div>
<!-- </fieldset> -->

</div>
</c:forEach>
</c:if>
<!--     <div class="" id="education-add">추가버튼 클릭시 여기에 폼이 붙게됨.</div> -->
    </body></html>