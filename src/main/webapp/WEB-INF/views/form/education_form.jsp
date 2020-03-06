<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
	<!-- 아래는 bootsnipp.com 사용하여 붙여넣음/수정함. -->
	<form class="">
		<fieldset>
			<legend>교육사항</legend>
			<input type="hidden" name="category" value="education"> <input
					type="hidden" name="id" value="{EducationVO.id}">
			<!-- 기관명 -->
				<div class="form-group">
				  <label class="col-md-4" for="orgName">기관명</label>
				  <div class="col-md-4">
				  <input id="orgName" name="orgName" type="text"
					placeholder="교육기관의 이름을 입력하세요." class="form-control">
				  </div>
				</div>

			<!-- 과정명-->
			<div class="form-group">
			  <label class="col-md-4" for="eduName">과정명<span class="text-muted">(필수입력)</span></label>
			  <div class="col-md-4">
			  <input id="eduName" name="eduName" type="text"
				placeholder="수업명/또는 강좌명을 입력하세요." class="form-control" required>
			  </div>
			</div>

			<!-- 교육시간-->
			<div class="form-group">
			  <label class="col-md-4" for="totalHour">교육시간</label>
			  <div class="col-md-4">
			  <input id="totalHour" name="totalHour" type="number"
				placeholder="교육시간/수업시수를 입력하세요." class="form-control">
			  <span class="help-block">대학 강의의 경우 이수학점을 입력하세요.</span>
			  </div>
			</div>
			<div class="container row">
				<!-- 시작일-->
				<div class="form-group col-md-3">
				  <label for="startDate">수업 시작일</label>
				  <input id="startDate" name="startDate" type="date"
					placeholder="수업 시작일을 입력하세요." class="form-control">
				  </div>
				<!-- 종료일-->
				<div class="form-group col-md-3">
				  <label for="endDate">수업 종료(예정)일</label>
				  <input id="endDate" name="endDate" type="date"
					placeholder="수업 종료일을 입력하세요." class="form-control">
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
				<div class="form-group">
				  <label for="grade">성적</label>
					<div class="col-md-4">
						<input id="grade" name="grade" type="text"
						placeholder="성적을 입력하세요." class="form-control">
					</div>
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
				  <div class="col-md-4">
						<label>관련 파일 : {이미 업로드된 파일이 있으면 표시됩니다.}</label><!-- 파일업로드와 파일명 표시 기능 2단계에서 구현함. -->
						<button>업로드</button><button>삭제하기</button>
				</div>

				<!-- Button (Double) -->
				<div class="form-group">
				    <button class="btn-success" type="submit">수정</button>
				    <button class="btn-danger">삭제</button>
				  </div>
				</div>
</fieldset>
</form>
    <button id="education" class="btn-primary" onclick="add(id)">추가</button>
    <div class="" id="education-add"><!-- 추가버튼 클릭시 여기에 폼이 붙게됨. --></div>