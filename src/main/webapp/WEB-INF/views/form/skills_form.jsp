<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<c:if test="${ not empty vo }">
<c:forEach var="i" begin="0" end="${vo.size()==0?0:vo.size()-1}">
<div id="formGroup_skills_${vo[i].id}">		
<form id="form_skills_${vo[i].id}" class="profile">
	<input type="" name="userId" value="${sessionScope.user.userId}">
	<input type="" name="category" value="skills"> 
	<input type="" name="Id" value="${vo[i].id}">
	<div class="form-row">
		<div class="col-6 form-group">
			<label for="SkillsName">기술명</label>
			<input type="text" name="SkillsName" class="form-control" 
			 maxlength="6" value="${vo[i].skillsName}" required>
		</div> 
		<div class="col-6 form-group">
			<label for="SkillsLevel">수준</label>
			<select name="SkillsLevel" class="form-control">
				<option value="">선택하세요</option>
				<option value="1" ${vo[i].skillsLevel==1?'selected':''}>상급</option>
				<option value="2" ${vo[i].skillsLevel==2?'selected':''}>중급</option>
				<option value="3" ${vo[i].skillsLevel==3?'selected':''}>기초</option>
			</select>
		</div>
	</div>
	<div class="form-row">
		<div class="form-group col">
			<label for="SkillsComments">내용</label>
			<textarea name="SkillsComments" class="form-control" 
			 maxlength="66" placeholder="">${vo[i].skillsComments}</textarea>
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
		<button id="skills_${vo[i].id}" class="btn btn-success" onclick="edit(id);false;">수정</button>
		<button id="delete/skills/${vo[i].id}" class="btn btn-danger" onclick="del(id);false;">삭제</button>
		<button id="skills-add_${vo[i].id}" class="btn btn-primary" onclick="add(id);false;">추가</button>
	</div>
		
</div>		
</c:forEach>
</c:if>	
	