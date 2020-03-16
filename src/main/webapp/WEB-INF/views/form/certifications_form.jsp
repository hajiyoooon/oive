<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<c:if test="${ not empty vo }">
<c:forEach var="i" begin="0" end="${vo.size()==0?0:vo.size()-1}">
<div id="formGroup_certifications_${vo[i].id}">
<form id="form_certifications_${vo[i].id}" class="profile">
	<input type="" name="userId" value="${sessionScope.user.userId}">
	<input type="" name="category" value="certifications"> 
	<input type="" name="Id" value="${vo[i].id}">
	<div class="form-row">
		<div class="col-4 form-group">
			<label for="OrgName">인증기관</label>
			<input type="text" name="OrgName" class="form-control" 
			value="${vo[i].orgName}">
		</div>
		<div class="col-4 form-group">
			<label for="CertName">자격증 &middot; 시험명<span class="text-muted">(필수입력)</span></label>
			<input type="text" name="CertName" class="form-control" 
				placeholder="자격증 및 시험명을 입력하세요." value="${vo[i].certName}">
		</div>
		<!-- grade           VARCHAR2(20)     NULL -->
		<div class="col-2 form-group">
			<label for="Grade">점수</label>
			<input type="text" name="Grade" class="form-control" placeholder="등급 또는 성적을 입력하세요."
				value="${vo[i].grade}">
		</div>
	</div>
	<div class="form-row">
		<!-- aquiredDate    DATE             NULL -->
		<div class="col-3 form-group">
			<label for="AquiredDate">취득일</label>
			<input type="date" name="AquiredDate" class="form-control" value="${vo[i].aquiredDate}">
		</div>
		<!-- expDate        DATE             NULL -->
		<div class="col-3 form-group">
			<label for="ExpDate">만료일</label>
			<input type="date" name="ExpDate" class="form-control" value="${vo[i].expDate}">
		</div>
		<!-- certNumber          VARCHAR2(50)     NULL -->
		<div class="col-3 form-group">
			<label for="CertNumber">발급번호</label>
			<input type="text" name="CertNumber" class="form-control" placeholder="고유번호를 입력하세요."
				value="${vo[i].certNumber}">
		</div>
		<!-- certType            VARCHAR2(20)     NULL -->
		<div class="col-3 form-group">
			<label for="Certtype">종류</label>
			<select name="Certtype" class="form-control">
				<option value="">선택하세요</option>
				<option value="1" ${vo[i].certtype==1?'selected':''}>어학</option>
				<option value="2" ${vo[i].certtype==2?'selected':''}>IT</option>
				<option value="3" ${vo[i].certtype==3?'selected':''}>교양</option>
				<option value="4" ${vo[i].certtype==4?'selected':''}>기타</option>
			</select>
		</div>
	</div>
	<div class="form-row">
		<!-- certComments         VARCHAR2(100)    NULL -->
		<div class="form-group col">
			<label for="CertComments">자격증 &middot; 시험 내용</label>
			<textarea name="CertComments" class="form-control" maxlength=66>${vo[i].certComments}</textarea>
		</div>
	</div>
			<!-- fileId         INT              NULL -->
  <div class="form-row">
    <div class="col">
      <label for="FileId1">관련파일</label>
      <button class="btn-sm btn-secondary">업로드</button>
      <button class="btn-sm btn-secondary">파일삭제</button>
    </div>
  </div>
</form>
	<div class="form-group profile-btn-group">
		<button id="certifications_${vo[i].id}" class="btn btn-success" onclick="edit(id);false;">수정</button>
		<button id="delete/certifications/${vo[i].id}" class="btn btn-danger" onclick="del(id);false;">삭제</button>
		<button id="certifications-add_${vo[i].id}" class="btn btn-primary" onclick="add(id);false;">추가</button>
	</div>
</div>		

</c:forEach>
</c:if>		