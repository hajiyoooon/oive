<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<c:if test="${ not empty vo }">
<c:forEach var="i" begin="0" end="${vo.size()==0?0:vo.size()-1}">
<div id="formGroup_workExperience_${vo[i].id}">
<form id="form_workExperience_${vo[i].id}" class="profile">
	<input type="hidden" name="userId" value="${sessionScope.user.userId}">
	<input type="hidden" name="category" value="workExperience"> 
	<input type="hidden" name="Id" value="${vo[i].id}">
	<div class="form-row">
		<div class="col-6 form-group">
			<label for="CompanyName">회사명</label>
			<input type="text" name="CompanyName" class="form-control"
			maxlength="" value="${vo[i].companyName}">
		</div> 
		<div class="col-3 form-group">
			<label for="EmpType">고용형태</label>
			<select name="EmpType" class="form-control">
				<option value="">선택하세요</option>
				<option value="1" ${vo[i].empType==1?'selected':''}>정규직</option>
				<option value="2" ${vo[i].empType==2?'selected':''}>임시직</option>
				<option value="3" ${vo[i].empType==3?'selected':''}>기간직</option>
				<option value="4" ${vo[i].empType==3?'selected':''}>프리랜서</option>
				<option value="9" ${vo[i].empType==3?'selected':''}>기타</option>
			</select>
		</div> 	
	</div>
	<div class="form-row">			
		<div class="col-3 form-group">
			<label for="Duty">직무</label>
			<input type="text" name="Duty" class="form-control"
			maxlength="16" value="${vo[i].duty}">
		</div>
		<div class="col-3 form-group">
			<label for="WorkPosition">직위</label>
			<input type="text" name="WorkPosition" class="form-control"
			maxlength="6" value="${vo[i].workPosition}">
		</div> 
		<div class="col-3 form-group">
			<label for="StartDate">입사일</label>
			<input type="date" name="StartDate" class="form-control"
			 value="${vo[i].startDate}">
		</div>
		<div class="col-3 form-group">
			<label for="EndDate">퇴사일</label>
			<input type="date" name="EndDate" class="form-control"
			 value="${vo[i].endDate}">
		</div>
		
	</div>
	<div class="form-row">
		<div class="form-group col">
			<label for="WorkComments">내용</label>
			<textarea name="WorkComments" class="form-control" 
			 maxlength="66" placeholder="">${vo[i].workComments}</textarea>
		</div>
	</div>	

			<!-- fileId         INT              NULL -->
  <div class="form-row" style="/* display:none */">
    <div class="col">
      <label for="FileId">관련파일</label>
      <button class="btn-sm btn-secondary">업로드</button>
      <button class="btn-sm btn-secondary">파일삭제</button>
    </div>
  </div>
</form>
	<div class="form-group profile-btn-group">
		<button id="workExperience_${vo[i].id}" class="btn btn-success" onclick="edit(id);false;">수정</button>
		<button id="delete/workExperience/${vo[i].id}" class="btn btn-danger" onclick="del(id);false;">삭제</button>
		<button id="workExperience-add_${vo[i].id}" class="btn btn-primary" onclick="add(id);false;">추가</button>
	</div>
</div>
</c:forEach>
</c:if> 

<c:if test="${ empty vo }">
  <div class="d-flex justify-content-end mb-3" id="workExperience-add_fornull">
    <button id="workExperience-add_" onclick="hide(id);add(id);false;"
    class="p-1 btn btn-outline"><img src="/oive/resources/images/plus.svg" alt="" width="32" height="32" title="추가하기"></button>
  </div>
</c:if>