<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<c:if test="${ not empty vo }">
<c:forEach var="i" begin="0" end="${vo.size()==0?0:vo.size()-1}">
<div id="formGroup_education_${vo[i].id}">
<form id="form_education_${vo[i].id}" class="profile">
	<input type="" name="userId" value="${sessionScope.user.userId}">
	<input type="" name="category" value="education"> 
	<input type="" name="Id" value="${vo[i].id}">
	<!-- 기관명, 과정명, 교육시간 -->
	<div class="form-row">
		<div class="col-5 form-group">
				<label for="OrgName">기관명</label>
				<input type="text" name="OrgName" 
				class="form-control" value="${vo[i].orgName}"
				maxlength=16 placeholder="교육기관명을 입력하세요.">
		</div>
		<div class="col-5 form-group">
			<label for="EduName">과정명<span class="text-muted">(필수입력)</span></label>
<!-- 			<div class="col-sm"> -->
				<input name="EduName" type="text" value="${vo[i].eduName}"
				placeholder="수업명/또는 강좌명을 입력하세요." class="form-control" 
				maxlength=16 required>
<!-- 			</div> -->
		</div>
		<div class="col-2 form-group">
		  <label for="TotalHour">교육시간</label>
<!-- 		  <div class="col-sm"> -->
		  <input name="TotalHour" type="number" value="${vo[i].totalHour}"  
		  placeholder="교육시간" class="form-control">
<!-- 		  <span class="help-block">대학 강의의 경우 이수학점을 입력하세요.</span> -->
<!-- 		  </div> -->
		</div>
	</div>	
	<div class="form-row">
		<!-- 시작일-->
		<div class="form-group col-3">
		  <label for="StartDate">수업 시작일</label>
		  <input type="date" name="StartDate" value="${vo[i].startDate}" class="form-control">
		</div>
		<!-- 종료일-->
		<div class="form-group col-3">
		  <label for="EndDate">수업 종료(예정)일</label>
		  <input type="date" name="EndDate" value="${vo[i].endDate}" class="form-control">
		</div>
	
	<div class="form-group col-3">
		<label for="Classification">교육유형</label>
<!-- 		   <div class="col-sm"> -->
		<select name="Classification" class="custom-select">
			 <option value="">선택하세요.</option>
		     <option value="1" ${vo[i].classification==1?'selected':''}>학과수업</option>
		     <option value="2" ${vo[i].classification==2?'selected':''}>온라인강좌</option>
		     <option value="3" ${vo[i].classification==3?'selected':''}>학원</option>
		     <option value="4" ${vo[i].classification==4?'selected':''}>기타</option>
  		</select>
<!--   				</div> -->
	</div>
	<div class="form-group col-3">
	  	<label for="Grade">성적</label>
<!-- 		<div class="col-sm"> -->
		<input name="Grade" type="text"
			 value="${vo[i].grade}" 
			 placeholder="성적을 입력하세요." class="form-control">
<!-- 		</div> -->
	</div>
	</div>
<!-- 	</div>		 -->
				<!-- 내용 -->
	<div class="form-row">
		<div class="form-group col">
		  	<label for="EduComments">교육내용</label>
	<!-- 	  <div class="col-sm"> -->
		  	<textarea class="form-control" name="EduComments" maxlength=66>${vo[i].eduComments}</textarea>
	<!-- 	  </div> -->
		</div>
	</div>

				<!-- File Button --> <!--  파일업로드 기능은 스터디가 필요함. -->
  <div class="form-row">
    <div class="col">
      <label for="FileId1">관련파일</label>
      <!-- 파일업로드와 파일명 표시 기능 2단계에서 구현함. -->
      <button class="btn-sm btn-secondary">업로드</button>
      <button class="btn-sm btn-secondary">파일삭제</button>
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
<!--     </body></html> -->