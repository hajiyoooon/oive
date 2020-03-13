<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="org.springframework.web.context.annotation.RequestScope"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="resources/css/bootstrap.css" >
	<link href="https://fonts.googleapis.com/css?family=Song+Myung:400" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Gamja+Flower:400" rel="stylesheet">
	<script src="resources/js/bootstrap.min.js"></script>
	<style> * {font-family:Song Myung}</style>
<!-- 	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"> -->
<!-- 	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script> -->
<!-- 	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script> -->
<!-- 	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script><!DOCTYPE html> -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="org.springframework.web.context.annotation.RequestScope"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<title>프로필 입력</title>
<style>
	.form-group{
		display: flex;
	}
</style>
</head>
<body><!-- bootstrap의 form-control 사용 -->
	<div class="container">
	<h1>학력 사항</h1>	
	<%@ include file="./form/University_form.jsp" %>
	<%@ include file="./form/education_form.jsp" %>
	<hr>
	<h1>자격사항(자격증/시험성적)</h1>
	<%@ include file="./form/certification_form.jsp" %>
<hr>
<!-- award -->
	<h1>수상이력</h1>
	<%@ include file="./form/award_form.jsp" %>
	<hr>
<!-- skills -->
	<h1>기술</h1>
		<form>
    <!-- id         INT              NOT NULL,  -->
		<fieldset>
	   <legend>#Skills.id</legend>
			 <input type="hidden" name="category" value="skills">
			 <input type="hidden" name="id" value="{SkillsVO.id}">
			 <!-- skillsName       VARCHAR2(50)     NOT NULL,  -->
		   <div class="form-group">
				 <div class="col-3">
				 	<label for="skillsName">기술명<span class="text-muted">(필수)</span></label>
				 </div>
				 <div class="col-6">
				 	<input type="text" name="name" class="form-control-sm" required>
				 </div>
		   </div>
       <!-- level    VARCHAR2(6)      NULL,  -->
			 <div class="form-group">
				 <div class="col-3">
					 <label for="level">수준</label>
				 </div>
				 <div class="col-6">
					  <select name="level" class="custom-select-sm">
							<option value="">선택</option>
 							<option>초급</option>
 							<option>중급</option>
 							<option>고급</option>
						</select>
				 </div>
			 </div>
       <!-- skiilsComments    VARCHAR2(100)    NULL,  -->
			 <div class="form-group">
				 <div class="col-3">
				   <label for="skillsComments">기술 내용</label>
				 </div>
			 	 <div class="col-md-6">
			 	 	 <textarea name="skillsComments" class="form-control">기술 내용을 입력하세요.</textarea>
			 	 </div>
			 </div>
			 <button class="btn-success" type="submit">수정</button>
			 <button class="btn-danger">삭제</button>
			 <button class="btn-primary">추가</button>
		</fieldset>
</form>
<hr>
<!-- languages -->
<h1>외국어</h1>
	<form>
	<!-- id         INT              NOT NULL,  -->
	<fieldset>
	 <legend>#languagesVO.id</legend>
		 <input type="hidden" name="category" value="languages">
		 <input type="hidden" name="id" value="{LanguagesVO.id}">
		 <!-- languageName    VARCHAR2(20)     NOT NULL  -->
		 <div class="form-group">
			 <div class="col-3">
				<label for="languageName">외국어<span class="text-muted">(필수)</span></label>
			 </div>
			 <div class="col-6">
				<input type="text" name="name" class="form-control-sm" required>
				<!-- 외국어이므로 언어 data를 연동시키는 것 고려해야 함. -->
			 </div>
		 </div>
		 <!-- fluency          VARCHAR2(20)     NULL  -->
		 <div class="form-group">
			 <div class="col-3">
				 <label for="fluency">수준</label>
			 </div>
			 <div class="col-6">
					<select name="fluency" class="custom-select-sm">
						<option value="">선택</option>
						<option value="">초급</option>
						<option value="">중급</option>
						<option value="">고급</option>
						<option value="">이중언어</option>
					</select>
			 </div>
		 </div>
		 <!-- languageComments         VARCHAR2(100)    NULL  -->
		 <div class="form-group">
			 <div class="col-3">
				 <label for="languageComments">설명</label>
			 </div>
			 <div class="col-md-6">
				 <textarea name="languageComments" class="form-control">외국어 내용을 입력하세요.</textarea>
			 </div>
		 </div>
		 <button class="btn-success" type="submit">수정</button>
		 <button class="btn-danger">삭제</button>
		 <button class="btn-primary">추가</button>
	</fieldset>
	</form>
	<hr>

	<h1>직장경력</h1>
	<form>
		<input type="hidden" name="category" value="work_experience">
		<input type="hidden" name="id" value="{}">
		<ul>
			<li>직장명 : <input type="text" name="company_name"></li>
			<li>취업형태 : <select name="emp_type">
				<option>정규직</option>
				<option>기간직</option>
				<option>인턴</option>
				<option>계약직</option>
				<option>프리랜서</option>
				<option>기타</option></select></li>
			<li>입사일 : <input type="date" name="start_date"></li>
			<li>퇴사일 : <input type="date" name="end_date"></li>
			<li>담당 업무 : <input type="date" name="duty"></li>
			<li>직책 : <input type="date" name="position"></li>
			<li>회사위치 : <input type="text" name="location"></li>
			<li>업무 내용 : <br><textarea name="comment"></textarea></li>
			<li>파일 : {{파일업로드 메뉴가 들어가야 함.}}</li>
		</ul>
		<button type="submit">수정</button>
		<button>삭제</button>
		<button>추가</button>
	</form>
	<h1>저서/논문</h1>
	<form>
		<input type="hidden" name="category" value="publication"> <input
			type="hidden" name="id" value="{}">
		<ul>
			<li>출판기관 : <input type="text" name="publisher"></li>
			<li>저서/논문명 : <input type="text" name="name"></li>
			<li>서지번호 : <input type="text" name="number"></li>
			<!-- ERD 추가 필요함. -->
			<li>출간일 : <input type="date" name="pub_date"></li>
			<li>저자 : <input type="text" name="authors"
				placeholder="공저자인 경우 쉼표(,)로 구분해 주세요."></li>
				<!-- 공저자 입력 방법 확인이 필요함.  -->
			<li>저서/논문 내용 : <textarea name="comment"></textarea></li>
			<li>파일 : {{파일업로드 메뉴가 들어가야 함.}}</li>
		</ul>
		<button type="submit">수정</button>
		<button>삭제</button>
		<button>추가</button>
	</form>
	<h1>특허</h1>
	<form>
		<input type="hidden" name="category" value="patent"> <input
			type="hidden" name="id" value="{}">
		<ul>
			<li>특허명 : <input type="text" name="name"></li>
			<li>출원국가 : <input type="text" name="country"></li>
			<li>출원번호 : <input type="text" name="number"></li>
			<!-- ERD 명칭변경 제안합니다. -->
			<li>취득일 : <input type="date" name="pub_date"></li>
			<li>특허 내용 : <br><textarea name="comment"></textarea></li>
			<!-- ERD 추가 필요함. -->
			<li>파일 : {{파일업로드 메뉴가 들어가야 함.}}</li>
		</ul>
		<button type="submit">수정</button>
		<button>삭제</button>
		<button>추가</button>
	</form>

<button class="btn btn-success" type="submit">수정</button>
</div>
</body>
</html>
<!-- 해야할 것 1.입력사항 "추가" 기능 구현 / 2.날짜 포커싱 기능/ 3.파일업로드기능 /4.언어명과 국가명 데이터 사용-->
