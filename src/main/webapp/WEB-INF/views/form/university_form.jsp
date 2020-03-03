<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>

<form class="">
	<fieldset>
		<legend>대학교</legend>
		<!-- university -->
		<!-- 아래는 Bootstrap 공식사이트 form example 활용/했다가 수정함 -->
		<input type="hidden" name="category" value="university"> <input
			type="hidden" name="id" value="{UniversityVO.id}"
		>
		<div class="input-group col-md-4">
			<label for="uName">학교명<span class="text-muted">(필수입력)</span></label>
			<input type="text" class="form-control" id="uName" name="uName"
				required maxlength=16 placeholder="학교명을 입력하세요."
			>
			<div class="invalid-feedback">필수입력 사항입니다.</div>
		</div>
		<div class="input-group col-md-4">
			<label for="majorName">학과명</label> <input type="text"
				class="form-control" id="majorName" name="majorName" maxlength=33
				placeholder="학과명을 입력하세요."
			>
		</div>
		<div class="container row">
			<div class="input-group col-md-3">
				<label for="majorType">전공 유형 </label> <select name="majorType"
					class="custom-select-sm" id="majorType"
				>
					<option value="0">선택하세요.</option>
					<option value="1">단일전공</option>
					<option value="2">복수전공</option>
					<option value="3">부전공</option>
					<option value="9">기타</option>
				</select>
			</div>
			<div class="input-group col-md-3">
				<label for="degree">학위 유형</label> <select name="degree"
					class="custom-select" id="degree"
				>
					<option value="0">선택하세요.</option>
					<option>학사</option>
					<option>전문학사</option>
					<option>석사</option>
					<option>박사</option>
					<option>기타</option>
				</select>
			</div>
			<div class="form-check col-md-2">
				<label for="isTransfer">편입 </label> <input type="checkbox"
					name="isTransfer" value="1" id="isTransfer"
					class="custom-check-input"
				>
				<!-- 기본값을 0으로 하는 방법 확인해서 적용하기 -->
			</div>
		</div>
		<div class="container row">
			<div class="input-group col-md-3">
				<label for="enrollDate">입학일</label>
				<!-- 날짜관련 폼양식 체크하기 -->
				<input type="date" name="enrollDate" id="enrollDate"
					class="form-control"
				>
			</div>
			<div class="input-group col-md-3">
				<label for="gradDate">졸업(예정)일</label> <input type="date"
					name="gradDate" id="gradDate" class="form-control"
				>
			</div>
			<div class="form-check col-md-2">
				<label for="status">졸업 </label> <input type="checkbox" name="status"
					value="1" id="status" class="custom-check-input" checked
				>
				<!-- 기본값을 0으로 하는 방법 확인해서 적용하기 -->
			</div>
		</div>
		<div class="container row">
			<div class="input-group col-2">
				<!-- XX.XX 형식으로 입력하는 방법 확인하기. -->
				<label>총 학점 <input type="number" id="totalGrade"
					name="totalGrade" min=0.00 max=4.99 placeholder="평점 입력"
					class="form-control"
				>
				</label>
			</div>
			<div class="input-group col-2">
				<!-- XX.XX 형식으로 입력하는 방법 확인하기. -->
				<label>전공 학점 <input type="number" name="majorGrade" min=0.00
					max=4.99 class="form-control" placeholder="전공평점 입력"
				></label>
			</div>
			<div class="input-group col-2">
				<label>(최고학점 : <select name="maxGrade" id="maxGrade"
					class="custom-select"
				>
						<option>선택하세요.</option>
						<option>4.3</option>
						<option>4.5</option>
						<option>5</option>
						<option>직접입력</option>
						<!-- 직접입력할 수 있는 방법 확인하기. -->
				</select>)
				</label>
			</div>
		</div>
		<div class="input-group col-md-6">
			<label>관련 파일 : {이미 업로드된 파일이 있으면 표시됩니다.}</label>
			<!-- 파일업로드와 파일명 표시 기능 2단계에서 구현함. -->
			<button>업로드</button>
			<button>삭제하기</button>
		</div>
		<div class="input-group">
			<button class="btn-success" type="submit">수정</button>
			<a href="/oive/delete?id={vo.id}&category='university'">
				<button class="btn-danger">삭제</button>
			</a>
			<!-- GET 형식으로 구현함 -->
		</div>
	</fieldset>
</form>
<div class="input-group">
	<button id="university" class="btn-primary" onclick="add(id)">추가</button>
</div>
<div class="" id="university-add">
	<!-- 추가버튼 클릭시 여기에 폼이 붙게됨. -->
</div>
