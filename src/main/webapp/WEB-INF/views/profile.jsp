<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>프로필 입력</title>
</head>
<body><!-- bootstrap의 form-control 사용 -->
	<div class="container">
	<h1>학력 사항</h1>
	<hr>
	<form class="">
	<fieldset>
	<legend>대학교</legend><!-- university -->	
	<!-- 아래는 Bootstrap 공식사이트 form example 활용/했다가 수정함 -->
	
		<input type="hidden" name="category" value="university"> <input
			type="hidden" name="id" value="${UniversityVO.id}">		
		<div class="form-group col-md-4">
			<label for="uName">학교명<span class="text-muted">(필수입력)</span></label>			
			<input type="text" class="form-control" id="uName" name="uName" required maxlength=16 placeholder="학교명을 입력하세요.">
			<div class="invalid-feedback">필수입력 사항입니다.</div>
		</div>
		<div class="form-group col-md-4">
			<label for="majorName">학과명</label>
			<input type="text" class="form-control" id="majorName" name="majorName" maxlength=33 placeholder="학과명을 입력하세요.">
		</div>
		<div class="container row">
			<div class="form-group col-md-3">
				<label for="majorType">전공 유형 </label>
				<select name="majorType" class="custom-select" id="majorType">
						<option value="0">선택하세요.</option>
						<option value="1">단일전공</option>
						<option value="2">복수전공</option>
						<option value="3">부전공</option>
						<option value="9">기타</option>
				</select>
			</div>
			<div class="form-group col-md-3">
				<label for="degree">학위 유형</label>
				<select name="degree" class="custom-select" id="degree">
						<option value>선택하세요.</option>
						<option>학사</option>
						<option>전문학사</option>
						<option>석사</option>
						<option>박사</option>
						<option>기타</option>
				</select>
			</div>
			<div class="form-check col-md-2">	
					<label for="isTransfer">편입 </label>			
					<input type="checkbox" name="isTransfer" value="1" id="isTransfer" class="custom-check-input"><!-- 기본값을 0으로 하는 방법 확인해서 적용하기 -->
				</div>	
		</div>
		<div class="container row">
			<div class="form-group col-md-3">
				<label for="enrollDate">입학일</label><!-- 날짜관련 폼양식 체크하기 -->
				<input type="date" name="enrollDate" id="enrollDate" class="form-control">
			</div>
			<div class="form-group col-md-3">
				<label for="gradDate">졸업(예정)일</label>
				<input type="date" name="gradDate" id="gradDate" class="form-control">
			</div>		
			<div class="form-check col-md-2">	
				<label for="status">졸업 </label>		
				<input type="checkbox" name="status" value="1" id="status" class="custom-check-input" checked><!-- 기본값을 0으로 하는 방법 확인해서 적용하기 -->
			</div>			
		</div>
		<div class="container row">
			<div class="form-group col-md-3">
				<!-- XX.XX 형식으로 입력하는 방법 확인하기. -->
				<label>총 학점
				<input type="number" id="totalGrade"
					name="totalGrade" min=0.00 max=4.99 placeholder="평점 입력" class="form-control">
					</label>
			</div>
			<div class="form-group col-md-3">
				<!-- XX.XX 형식으로 입력하는 방법 확인하기. -->			
				<label>전공 학점
				<input type="number" name="majorGrade" min=0.00 max=4.99 class="form-control" placeholder="전공평점 입력"></label> 
			</div>
			<div class="form-group col-md-3">
				<label>(최고학점 :
				<select name="maxGrade" id="maxGrade" class="custom-select">
					<option>선택하세요.</option>
					<option>4.3</option>
					<option>4.5</option>
					<option>5</option>
					<option>직접입력</option>
					<!-- 직접입력할 수 있는 방법 확인하기. -->
				</select>)</label>
			</div>	
			
		</div>
		<div class="form-group col-md-6">
			<label>관련 파일 : {이미 업로드된 파일이 있으면 표시됩니다.}</label><!-- 파일업로드와 파일명 표시 기능 2단계에서 구현함. -->
			<button>업로드</button><button>삭제하기</button>		
		</div>
		<div class="form-group">		
		<button class="btn-success" type="submit">수정</button>
		<button class="btn-danger">삭제</button><!-- 내용을 삭제하는 onclick event 구현 필요함 -->
		<button class="btn-primary">추가</button><!-- 새로운 항목을 추가작성하는 onclick event 구현필요함 -->
		</div>
		</fieldset>
	</form>	
	<hr>
	<!-- 고등학교 사항 삭제함 -->
	<!-- 아래는 bootsnipp.com 사용하여 붙여넣음/수정함. -->
	<form class="">
		<fieldset>
			<legend>교육사항</legend>
			<input type="hidden" name="category" value="education"> <input
					type="hidden" name="id" value="${EducationVO.id}">
			<!-- 기관명 -->
				<div class="form-group">
				  <label class="col-md-4" for="orgName">기관명</label>
				  <div class="col-md-4">
				  <input id="orgName" name="orgName" type="text" placeholder="교육기관의 이름을 입력하세요." class="form-control">
				  </div>
				</div>
			
			<!-- 과정명-->
			<div class="form-group">
			  <label class="col-md-4" for="eduName">과정명<span class="text-muted">(필수입력)</span></label>  
			  <div class="col-md-4">
			  <input id="eduName" name="eduName" type="text" placeholder="수업명/또는 강좌명을 입력하세요." class="form-control" required>
			  </div>
			</div>

			<!-- 교육시간-->
			<div class="form-group">
			  <label class="col-md-4" for="totalHour">교육시간</label>  
			  <div class="col-md-4">
			  <input id="totalHour" name="totalHour" type="number" placeholder="교육시간/수업시수를 입력하세요." class="form-control">
			  <span class="help-block">대학 강의의 경우 이수학점을 입력하세요.</span>  
			  </div>
			</div>
			<div class="container row">	
				<!-- 시작일-->
				<div class="form-group col-md-3">
				  <label for="startDate">수업 시작일</label>
				  <input id="startDate" name="startDate" type="date" placeholder="수업 시작일을 입력하세요." class="form-control">
				  </div>
				<!-- 종료일-->
				<div class="form-group col-md-3">
				  <label for="endDate">수업 종료(예정)일</label> 
				  <input id="endDate" name="endDate" type="date" placeholder="수업 종료일을 입력하세요." class="form-control">
				</div>
			</div>
			<div class="container row">
				<!-- 과정유형 -->
				<div class="form-group col-md-3">
				   <label for="classification">교육유형</label>				  
				   <select id="classification" name="classification" class="form-control">
				      <option value="0">선택하세요.</option>
				      <option value="1">학과수업</option>
				      <option value="2">온라인강좌</option>
				      <option value="3">학원</option>
				      <option value="4">기타</option>
				    </select>				  
				</div>
				
				<!-- 성적-->
				<div class="form-group cod-md-3">
				  <label for="grade">성적</label>  
				  <input id="grade" name="grade" type="text" placeholder="성적을 입력하세요." class="form-control">				  
				</div>
			</div>	
				<!-- 내용 -->
				<div class="form-group">
				  <label class="col-md-4" for="comments">교육내용</label>
				  <div class="col-md-4">                     
				    <textarea class="form-control" id="comments" name="comments"></textarea>
				  </div>
				</div>
				
				<!-- File Button --> <!--  파일업로드 기능은 스터디가 필요함. -->
				<div class="form-group">
				  <label class="col-md-4" for="filebutton">관련 파일</label>
				  <div class="col-md-4">
				    <input id="filebutton" name="filebutton" class="input-file" type="file">
				  </div>
				</div>
				
				<!-- Button (Double) -->
				<div class="form-group">
				    <button class="btn-success" type="submit">수정</button>
				    <button class="btn-danger">삭제</button>
				    <button class="btn-primary">추가</button>
				  </div>
				</div>
</fieldset>

<!-- 여기까지 bootsnipp.com 사용하여 붙여넣음 -->

			
<%-- 			
			
			
			<label for="hour">수업시수 : </label>
			<input class="form-control" type="number" name="hour" id="hour">
			<label>수업유형 :</label>
			<input type="text" name="classification"></li>
			<li>성적 : <input type="text" name="grade"></li>
			<li>수업시작일 : <input type="date" name="start_date"></li>
			<!-- ERD에 항목 추가 필요할 것임. 확인필요함. -->
			<li>수업종료일 : <input type="date" name="end_date"></li>
			<!-- ERD에 항목 추가 필요할 것임. 확인필요함. -->
			<li>수업내용 : <br><textarea name="comment"></textarea></li>
		</ul>
		<button type="submit">수정</button>
		<button>삭제</button>
		<button>추가</button>
	</form>
	<h1>자격사항(자격증/시험성적)</h1>
	<form>
		<input type="hidden" name="category" value="certifications"> <input
			type="hidden" name="id" value="${}">
		<ul>
			<li>인증기관 : <input type="text" name="org_name"></li>
			<li>자격증/시험명 : <input type="text" name="name"></li>
			<li>발급번호 :<input type="text" name="number"></li>
			<li>취득일 : <input type="date" name="aquired_date"></li>
			<li>만료일 : <input type="date" name="exp_date"></li>
			<li>점수 : <input type="text" name="grade"></li>
			<!-- ERD 추가 필요함. -->
			<li>종류 : <select name="type">
				<option>어학</option>
				<option>IT</option>
				<option>교양</option>
				<option>기타</option>
			</select></li>
			<li>자격증/시험 내용 : <br><textarea name="comment"></textarea></li>
			<!-- ERD 추가 필요함. -->
			<li>파일 : {{파일업로드 메뉴가 들어가야 함.}}</li>
		</ul>
		<button type="submit">수정</button>
		<button>삭제</button>
		<button>추가</button>
	</form>
	<h1>수상이력</h1>
	<form>
		<input type="hidden" name="category" value="award"> <input
			type="hidden" name="id" value="${}">
		<ul>
			<li>수여기관 : <input type="text" name="org_name"></li>
			<li>수상명 : <input type="text" name="name"></li>
			<li>발급번호 : <input type="text" name="number"></li>
			<!-- ERD 추가 필요함. -->
			<li>취득일 : <input type="date" name="aquired_date"></li>
			<li>종류 : <select name="type">
				<option>국내</option>
				<option>해외</option>
				<option>기타</option>
			</select></li><!-- 수상종류 논의 필요. 없다면 ERD에서 삭제 -->
			<li>수상내용 : <br><textarea name="comment"></textarea></li>
			<!-- ERD 추가 필요함. -->
			<li>파일 : {{파일업로드 메뉴가 들어가야 함.}}</li>
		</ul>
		<button type="submit">수정</button>
		<button>삭제</button>
		<button>추가</button>
	</form>

	<h1>외국어/기술</h1>
	<form>
		<input type="hidden" name="category" value="skills_and_languages">
		<!-- ERD 테이블명 수정 필요 -->
		<input type="hidden" name="id" value="${}">
		<ul>
			<li>외국어/기술명 : <input type="text" name="name"></li>
			<!-- 외국어의 경우 언어 data를 연동시키는 것 고려해야 함. -->
			<li>수준 : <select name="type">
					<option>초급</option>
					<option>중급</option>
					<option>고급</option></select></li>
			<li>외국어/기술 내용 : <br><textarea name="comment"></textarea></li>
		</ul>
		<button type="submit">수정</button>
		<button>삭제</button>
		<button>추가</button>
	</form>
	<h1>직장경력</h1>
	<form>
		<input type="hidden" name="category" value="work_experience">
		<input type="hidden" name="id" value="${}">
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
			type="hidden" name="id" value="${}">
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
			type="hidden" name="id" value="${}">
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
	 --%>
<button class="btn btn-success" type="submit">수정</button>
</div>	
</body>
</html>
<!-- 해야할 것 1.입력사항 "추가" 기능 구현 / 2.날짜 포커싱 기능/ 3.파일업로드기능 /4.언어명과 국가명 데이터 사용-->