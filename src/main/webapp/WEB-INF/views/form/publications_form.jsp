<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<c:if test="${ not empty vo }">
<c:forEach var="i" begin="0" end="${vo.size()==0?0:vo.size()-1}">
<div id="formGroup_publications_${vo[i].id}">
<form id="form_publications_${vo[i].id}" class="profile">
	<input type="" name="userId" value="${sessionScope.user.userId}">
	<input type="" name="category" value="publications"> 
	<input type="" name="Id" value="${vo[i].id}">
	<div class="form-row">
		<div class="col-12 form-group">
			<label for="PubName">논문 &middot; 저서명</label>
			<input type="text" name="PubName" class="form-control"
			maxlength="33" value="${vo[i].pubName}">
		</div> 
	</div>
	<div class="form-row">
		<div class="col-3 form-group">
			<label for="Publisher">출판사</label>
			<input type="text" name="Publisher" class="form-control"
			maxlength="16" value="${vo[i].publisher}">
		</div> 		
		<div class="col-3 form-group">
			<label for="Authors">저자명</label>
			<input type="text" name="Authors" class="form-control"
			maxlength="16" value="${vo[i].authors}">
		</div>
		<div class="col-3 form-group">
			<label for="PubNumber">서지번호</label>
			<input type="text" name="PubNumber" class="form-control"
			maxlength="6" value="${vo[i].pubNumber}">
		</div> 
		<div class="col-3 form-group">
			<label for="PubDate">발행일</label>
			<input type="date" name="PubDate" class="form-control"
			 value="${vo[i].pubDate}">
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
		<button id="publications_${vo[i].id}" class="btn btn-success" onclick="edit(id);false;">수정</button>
		<button id="delete/publications/${vo[i].id}" class="btn btn-danger" onclick="del(id);false;">삭제</button>
		<button id="publications-add_${vo[i].id}" class="btn btn-primary" onclick="add(id);false;">추가</button>
	</div>
</div>
</c:forEach>
</c:if> 