<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<c:if test="${ not empty vo }">
<c:forEach var="i" begin="0" end="${vo.size()==0?0:vo.size()-1}">
<div id="formGroup_patent_${vo[i].id}">
<form id="form_patent_${vo[i].id}" class="profile">
	<input type="" name="userId" value="${sessionScope.user.userId}">
	<input type="" name="category" value="patent"> 
	<input type="" name="Id" value="${vo[i].id}">
	<div class="form-row">
		<div class="col-3 form-group">
			<label for="PatentName">특허명</label>
			<input type="text" name="PatentName" class="form-control"
			maxlength="16" value="${vo[i].patentName}">
		</div> 
		<div class="col-3 form-group">
			<label for="Country">출원국가</label>
			<input type="text" name="Country" class="form-control"
			maxlength="16" value="${vo[i].country}">
		</div>
		<div class="col-3 form-group">
			<label for="PatNumber">특허출원번호</label>
			<input type="text" name="PatNumber" class="form-control"
			maxlength="6" value="${vo[i].patNumber}">
		</div> 
		<div class="col-3 form-group">
			<label for="PatDate">특허출원일</label>
			<input type="date" name="PatDate" class="form-control"
			 value="${vo[i].patDate}">
		</div>
	</div>
	<div class="form-row">
		<div class="col form-group">
			<label for="PatentComments">내용</label>
			<textarea name="PatentComments" class="form-control" 
			maxlength="33"
			placeholder="내용을 입력하세요.">${vo[i].patentComments}</textarea>
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
		<button id="patent_${vo[i].id}" class="btn btn-success" onclick="edit(id);false;">수정</button>
		<button id="delete/patent/${vo[i].id}" class="btn btn-danger" onclick="del(id);false;">삭제</button>
		<button id="patent-add_${vo[i].id}" class="btn btn-primary" onclick="add(id);false;">추가</button>
	</div>
</div>
</c:forEach>
</c:if>
