<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<c:if test="${ not empty vo }">
<c:forEach var="i" begin="0" end="${vo.size()==0?0:vo.size()-1}">
<div id="formGroup_award_${vo[i].id}">
<form id="form_award_${vo[i].id}" class="profile">
	<input type="" name="userId" value="${sessionScope.user.userId}">
	<input type="" name="category" value="award"> 
	<input type="" name="Id" value="${vo[i].id}">
	<div class="form-row">
		<div class="col-6 form-group">
	  		<label for="OrgName">수여기관</label>
			<input type="text" name="OrgName" 
			class="form-control"
			maxlength="6" value="${vo[i].orgName}">
		</div> 
		<div class="col-6 form-group">
			<label for="AwardName">수상명</label>
			<input type="text" name="AwardName" class="form-control" value="${vo[i].awardName}"
			maxlength="6" required>
		</div>
	</div>
	<div class="form-row">
		<div class="col-6 form-group">
			<label for="AwardType">유형</label>
			<select name="AwardType" class="form-control">
				<option value="">선택하세요</option>
				<option value="1" ${vo[i].awardType==1?'selected':''}>교내수상</option>
				<option value="2" ${vo[i].awardType==2?'selected':''}>공모전</option>
				<option value="3" ${vo[i].awardType==3?'selected':''}>국제대회</option>
				<option value="9" ${vo[i].awardType==3?'selected':''}>기타</option>
			</select>
		</div>
		<div class="col-6 form-group">
			<label for="AquiredDate">취득일</label>
			<input type="date" name="AquiredDate" class="form-control"
			 value="${vo[i].aquiredDate}">
		</div>
	</div>
	<div class="form-row">
		<div class="form-group col">				
			<label for="AwardComments">수상내용</label>
			<textarea name="AwardComments"
			maxlength="66" placeholder="">${vo[i].awardComments}</textarea>
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
</div>
	<div class="form-group profile-btn-group">
		<button id="award_${vo[i].id}" class="btn btn-success" onclick="edit(id);false;">수정</button>
		<button id="delete/award/${vo[i].id}" class="btn btn-danger" onclick="del(id);false;">삭제</button>
		<button id="award-add_${vo[i].id}" class="btn btn-primary" onclick="add(id);false;">추가</button>
	</div>

</c:forEach>
</c:if>