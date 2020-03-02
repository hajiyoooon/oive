
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
	<link rel="stylesheet" href="resources/css/bootstrap.css" >
	<link href="https://fonts.googleapis.com/css?family=Song+Myung:400" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Gamja+Flower:400" rel="stylesheet">
	<script src="resources/js/bootstrap.min.js"></script>
	<style> * {font-family:Song Myung}</style>
<title>프로필 입력</title>
</head>
<body>
<body><!-- bootstrap의 form-control 사용 -->
<div class="container">
	<h1>학력 사항</h1>
	<h2>대학교</h2><!-- university -->	
	<!-- 아래는 Bootstrap 공식사이트 form example 활용 -->
	<form>
		<input type="hidden" name="category" value="university"> <input
			type="hidden" name="id" value="${UniversityVO.id}">

			<label for="uName">학교명 :<span class="text-muted">(필수입력)</span></label>			
			<input type="text" class="form-control" id="uName" name="uName" required maxlength=16>
			<div class="invalid-feedback">학교명을 입력해 주세요.</div>
			<label for="majorName">학과명 :</label>
			<input type="text" class="form-control" id="majorName" name="majorName" maxlength=33>
			<label for="majorType">전공 유형 : </label>
			<select name="majorType" class="custom-select" id="majorType">
					<option value>선택하세요.</option>
					<option>단일전공</option>
					<option>복수전공</option>
					<option>부전공</option>
					<option>기타</option>

			</select>
			<label for="degree">학위 유형 : </label>
			<select name="degree" class="custom-select" id="degree">
					<option value>선택하세요.</option>

					<option>학사</option>
					<option>전문학사</option>
					<option>석사</option>
					<option>박사</option>
					<option>기타</option>

			</select>
			<label for="enrollDate">입학일 :</label><!-- 날짜관련 폼양식 체크하기 -->
			<input type="date" name="enrollDate" id="enrollDate">
			<label for="gradDate">졸업(예정)일 :</label>
			<input type="date" name="gradDate" id="gradDate">			
			<input type="checkbox" name="status" value="1" id="status"><!-- 기본값을 0으로 하는 방법 확인해서 적용하기 -->
			<label for="status">졸업 </label>			
			<input type="checkbox" name="isTransfer" value="1" id="isTransfer"><!-- 기본값을 0으로 하는 방법 확인해서 적용하기 -->
			<label for="isTransfer">편입 </label>
			<!-- XX.XX 형식으로 입력하는 방법 확인하기. -->
			<label>평점 평균(총 학점) : <input type="number" 
				name="totalGrade" min=0.00 max=4.99></label>
			<label>(만점(기준학점):<select name="maxGrade">
				<option>4.3</option>
				<option>4.5</option>
				<option>직접입력</option>
				<!-- 직접입력할 수 있는 방법 확인하기. -->
				</select>)</label>	
			<!-- XX.XX 형식으로 입력하는 방법 확인하기. -->			
			<label>전공 평점(전공학점) : 
			<input type="number" name="majorGrade" min=0.00 max=4.99></label>
			<label>관련 파일 : {이미 업로드된 파일이 있으면 표시됩니다.}</label><!-- 파일업로드와 파일명 표시 기능 2단계에서 구현함. -->
			<button>업로드</button><button>삭제하기</button>					
		<button class="btn-primary" type="submit">수정</button>
		<button class="btn-primary">삭제</button><!-- 내용을 삭제하는 onclick event 구현 필요함 -->
		<button class="btn-primary">추가</button><!-- 새로운 항목을 추가작성하는 onclick event 구현필요함 -->
	</form>
	<!-- 고등학교 사항 삭제함 -->
	
	<h2>교육사항</h2>
<%-- 	<form>
		<input type="hidden" name="category" value="education"> <input
			type="hidden" name="id" value="${EducationVO.id}">
			<label for="orgName">기관명 :</label>
			<input class="form-control" type="text" name="orgName" id="orgName" required maxlength=16>
			<label for="eduName">수업명 :</label>
			<input class="form-control" type="text" name="eduName" id="eduName"> --%>
			<!-- ERD에 항목 추가됨. VO 수정함 pull request 필요함. -->
			<!-- 여기까지 수정함. 아래 수정 필요함 -->
			
			
		<!-- 아래는 bootsnipp.com 사용하여 붙여넣음 -->


<form class="form-horizontal">
<fieldset>

<!-- Form Name -->
<legend>교육사항</legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="orgName">기관명</label>  
  <div class="col-md-4">
  <input id="orgName" name="orgName" type="text" placeholder="교육기관의 이름을 입력하세요." class="form-control input-md">
  <span class="help-block">교육이 진행된 기관의 이름을 입력하세요.</span>  
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="eduName">수업명</label>  
  <div class="col-md-4">
  <input id="eduName" name="eduName" type="text" placeholder="수업명/또는 강좌명을 입력하세요." class="form-control input-md" required="">
  <span class="help-block">대학강의의 경우 강좌명을 입력하세요.</span>  
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="totalHour">교육시간</label>  
  <div class="col-md-4">
  <input id="totalHour" name="totalHour" type="text" placeholder="교육시간/수업시수를 입력하세요." class="form-control input-md">
  <span class="help-block">대학 강의의 경우 수업시수에 해당합니다.</span>  
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="startDate">수업 시작일</label>  
  <div class="col-md-4">
  <input id="startDate" name="startDate" type="text" placeholder="placeholder" class="form-control input-md">
  <span class="help-block">수업시작일을 입력하세요.</span>  
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="endDate">수업 종료일</label>  
  <div class="col-md-4">
  <input id="endDate" name="endDate" type="text" placeholder="수업 종료일을 입력하세요." class="form-control input-md">
  <span class="help-block">완료되지 않았으면 예정일을 입력하세요.</span>  
  </div>
</div>

<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="classification">교육유형</label>
  <div class="col-md-4">
    <select id="classification" name="classification" class="form-control">
      <option value="1">학과수업</option>
      <option value="2">온라인강좌</option>
      <option value="3">학원</option>
      <option value="4">기타</option>
    </select>
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="grade">성적</label>  
  <div class="col-md-4">
  <input id="grade" name="grade" type="text" placeholder="성적을 입력하세요." class="form-control input-md">
  <span class="help-block">숫자 또는 등급등 자유입력</span>  
  </div>
</div>

<!-- Textarea -->
<div class="form-group">
  <label class="col-md-4 control-label" for="comments">교육내용</label>
  <div class="col-md-4">                     
    <textarea class="form-control" id="comments" name="comments"></textarea>
  </div>
</div>

<!-- File Button --> 
<div class="form-group">
  <label class="col-md-4 control-label" for="filebutton">File Button</label>
  <div class="col-md-4">
    <input id="filebutton" name="filebutton" class="input-file" type="file">
  </div>
</div>

<!-- Button (Double) -->
<div class="form-group">
  <label class="col-md-4 control-label" for="button1id">수정하기</label>
  <div class="col-md-8">
    <button id="button1id" name="button1id" class="btn btn-success">Good Button</button>
    <button id="button2id" name="button2id" class="btn btn-danger">Scary Button</button>
  </div>
</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="singlebutton">Single Button</label>
  <div class="col-md-4">
    <button id="singlebutton" name="singlebutton" class="btn btn-primary">Button</button>
  </div>
</div>

</fieldset>
</form>

<!-- 여기까지 bootsnipp.com 사용하여 붙여넣음 -->

			
<%-- 			
			
			
			<label for="hour">수업시수 : </label>
			<input class="form-control" type="number" name="hour" id="hour">
			<label>수업유형 :</label>
			<input type="text" name="classification"></li>

	 --%>
	</div>
</body>
</html>
<!-- 해야할 것 1.입력사항 "추가" 기능 구현 / 2.날짜 포커싱 기능/ 3.파일업로드기능 /4.언어명과 국가명 데이터 사용-->

