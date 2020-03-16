<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<c:if test="${ not empty vo }">
<c:forEach var="i" begin="0" end="${vo.size()==0?0:vo.size()-1}">
<div id="formGroup_languages_${vo[i].id}">		
<form id="form_languages_${vo[i].id}" class="profile">
	<input type="" name="userId" value="${sessionScope.user.userId}">
	<input type="" name="category" value="languages"> 
	<input type="" name="Id" value="${vo[i].id}">
	<div class="form-row">
		<div class="col-6 form-group">
			<label for="LanguageName">언어</label>
			<input type="text" name="LanguageName" class="form-control" 
			 maxlength="6" value="${vo[i].languageName}">
		</div> 
		<div class="col-6 form-group">
			<label for="Fluency">능숙도<span class="text-muted">(필수)</span></label>
			<select name="Fluency" class="form-control">
				<option value="">선택하세요</option>
				<option value="1" ${vo[i].fluency==1?'selected':''}>초급</option>
				<option value="2" ${vo[i].fluency==2?'selected':''}>중급</option>
				<option value="3" ${vo[i].fluency==3?'selected':''}>고급</option>
				<option value="4" ${vo[i].fluency==4?'selected':''}>모국어</option>			</select>
		</div>
	</div>
	<div class="form-row">
		<div class="form-group col">
			<label for="LanguageComments">내용</label>
			<textarea name="LanguageComments" class="form-control" 
			 maxlength="66" placeholder="">${vo[i].languageComments}</textarea>
		</div>
	</div>	
			<!-- fileId         INT              NULL -->
  <div class="form-row" style="/* display:none */">
    <div class="col">
      <label for="FileId1">관련파일</label>
      <button class="btn-sm btn-secondary">업로드</button>
      <button class="btn-sm btn-secondary">파일삭제</button>
    </div>
  </div>
</form>			
	<div class="form-group profile-btn-group">
		<button id="languages_${vo[i].id}" class="btn btn-success" onclick="edit(id);false;">수정</button>
		<button id="delete/languages/${vo[i].id}" class="btn btn-danger" onclick="del(id);false;">삭제</button>
		<button id="languages-add_${vo[i].id}" class="btn btn-primary" onclick="add(id);false;">추가</button>
	</div>
		
</div>		
</c:forEach>
</c:if>	
	