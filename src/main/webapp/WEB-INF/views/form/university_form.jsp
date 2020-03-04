<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%-- 	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css" > --%>
<%-- 	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/oive.css" >	 --%>
<!-- 	<link href="https://fonts.googleapis.com/css?family=Song+Myung:400" rel="stylesheet"> -->
<!-- 	<link href="https://fonts.googleapis.com/css?family=Gamja+Flower:400" rel="stylesheet"> -->
<%-- 	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script> --%>
<!-- 	<style> * {font-family:Song Myung}</style> -->
<style>
.form-group {border:1px solid black;}
.row {border:1px solid red;}
.my-row{border: 4px solid green;}
</style>
<form class="row">
	<fieldset>
		<legend>대학교</legend>
		<!-- university -->
		<!-- 아래는 Bootstrap 공식사이트 form example 활용/했다가 수정함 -->
		<input type="hidden" name="category" value="university"> <input
			type="hidden" name="id" value="{UniversityVO.id}"
		>
		<div class="form-group row">
			<label for="uName" class="col-md-4">학교명<span class="text-muted">(필수입력)</span></label>
			<input type="text" class="form-control-sm col-md-8" id="uName" name="uName"
				required maxlength=16 placeholder="학교명을 입력하세요.">
			<div class="invalid-feedback">필수입력 사항입니다.</div>
		</div>
		<div class="form-group row">
			<label for="majorName" class="col-md-4">학과명</label> <input type="text"
				class="form-control-sm col-md-8" id="majorName" name="majorName" maxlength=33
				placeholder="학과명을 입력하세요.">
		</div>
		<div class="container row">
			<div class="form-group col-md-5 row">
				<label for="majorType" class="">전공 유형 </label> 
				<select name="majorType"
					class="form-control-sm" id="majorType">
					<option value="0">선택하세요.</option>
					<option value="1">단일전공</option>
					<option value="2">복수전공</option>
					<option value="3">부전공</option>
					<option value="9">기타</option>
				</select>
			</div>
			<div class="form-group col-md-5 row">
				<label for="degree">학위 유형</label> <select name="degree"
					class="form-control-sm" id="degree">
					<option value="0">선택하세요.</option>
					<option>학사</option>
					<option>전문학사</option>
					<option>석사</option>
					<option>박사</option>
					<option>기타</option>
				</select>
			</div>
			<div class="form-check col-md-2">
				<label for="isTransfer">편입 </label> 
				<input type="checkbox"
					name="isTransfer" value="1" id="isTransfer"
					class="custom-check-input">
				<!-- 기본값을 0으로 하는 방법 확인해서 적용하기 -->
			</div>
		</div>
		<div class="container row">
			<div class="form-group col-5 row">
				<label for="enrollDate" class="">입학일</label>
				<!-- 날짜관련 폼양식 체크하기 -->
				<input type="date" name="enrollDate" id="enrollDate"
					class="form-control-sm">
			</div>
			<div class="form-group col-5 row">
				<label for="gradDate">졸업(예정)일</label> 
				<input type="date"
					name="gradDate" id="gradDate" class="form-control-sm">
			</div>
			<div class="form-check col-2">
				<label for="status" class="form-control-sm">졸업 </label> <input type="checkbox" name="status"
					value="1" id="status" class="custom-check-input" checked
				>
				<!-- 기본값을 0으로 하는 방법 확인해서 적용하기 -->
			</div>
		</div>
		<div class="container row">
			<div class="form-row my-row">
			<div class="form-group">
			 <div class="col">
			  
				<!-- XX.XX 형식으로 입력하는 방법 확인하기. -->
				<label for="totalGrade">총 학점</label>
				<input type="number" id="totalGrade"
					name="totalGrade" min=0.00 max=4.99 
					class="form-control-sm" placeholder="평점 입력">
			  </div>
			 </div>					
			</div>
			<div class="form-row my-row">	
			<div class="form-group col-4">			  		  
				<!-- XX.XX 형식으로 입력하는 방법 확인하기. -->
				<label for="majorGrade">전공 학점 </label>
				<input type="number" id="majorGrade" name="majorGrade" min=0.00
					max=4.99 class="form-control-sm" placeholder="전공평점 입력" width="20px">
			  </div>
			</div>
			<div class="form-group">
			 <div class="col">
			  <div class="form-row my-row">
				<label>최고학점 </label>
				<select name="maxGrade" id="maxGrade"
					class="form-control-sm">
						<option>선택하세요.</option>
						<option>4.3</option>
						<option>4.5</option>
						<option>5</option>
						<option>직접입력</option>
						<!-- 직접입력할 수 있는 방법 확인하기. -->
				</select>
			  </div>
			 </div>
			</div>
		</div>
		<div class="form-group">
			<label>관련 파일 : {이미 업로드된 파일이 있으면 표시됩니다.}</label>
			<!-- 파일업로드와 파일명 표시 기능 2단계에서 구현함. -->
			<button>업로드</button>
			<button>삭제하기</button>
		</div>
		<div class="form-group">
			<button class="btn-success" type="submit">수정</button>
			<a href="/oive/delete?id={vo.id}&category='university'">
				<button class="btn-danger">삭제</button>
			</a>
			<!-- GET 형식으로 구현함 -->
		</div>
	</fieldset>
</form>
<div class="form-group">
	<button id="university" class="btn-primary" onclick="add(id)">추가</button>
</div>
<div class="" id="university-add">
	<!-- 추가버튼 클릭시 여기에 폼이 붙게됨. -->
</div>
