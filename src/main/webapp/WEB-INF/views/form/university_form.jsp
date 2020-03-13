<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<c:if test="${ not empty vo }">
<c:forEach var="i" begin="0" end="${vo.size()==0?0:vo.size()-1}">
<div id="formGroup_university_${vo[i].id}">
<form id="form_university_${vo[i].id}" class="profile" 
	action="edit" method="POST" enctype="multipart/form-data">
<!-- 구현이 끝난 후 type을 "hidden"으로 바꿀 것  -->
	<input type="text" name="userId" value="${sessionScope.user.userId}">
	<input type="text" name="category" value="university">
	<input type="text" name="Id" value="${vo[i].id}">
	
  <div class="form-row">
    <div class="col form-group">
      <label for="uName" class="">학교명<span class="text-muted">(필수입력)</span></label>
      <input type="text" name="uName" value="${vo[i].uName}" class="form-control"
      	required maxlength=16 placeholder="학교명을 입력하세요.">
    </div>
    <div class="col form-group">
      <label for="MajorName">학과명</label>
      <input type="text" name="MajorName" value="${vo[i].majorName}" class="form-control"
      maxlength=33 placeholder="학과명을 입력하세요.">
    </div>
  </div>
  <div class="form-row">
    <div class="col form-group">
      <label for="MajorType">전공 유형</label>
      <select name="MajorType" class="custom-select">
      	<option value="" >선택하세요.</option>
		<option value="단일전공" 
		${vo[i].majorType=='단일전공'?'selected':''}>단일전공</option>
		<option value="복수전공"
		${vo[i].majorType=='복수전공'?'selected':''}>복수전공</option>
		<option value="부전공"
		${vo[i].majorType=='부전공'?'selected':''}>부전공</option>
		<option value="기타"
		${vo[i].majorType=='기타'?'selected':''}>기타</option>
	  </select>
    </div>
    <div class="col form-group">
      <label for="Degree">학위 유형</label>
      <select name="Degree" class="custom-select">
        <option value="">선택하세요.</option>
        <option ${vo[i].degree=='학사'?'selected':''}>학사</option>
        <option ${vo[i].degree=='전문학사'?'selected':''}>전문학사</option>
        <option ${vo[i].degree=='석사'?'selected':''}>석사</option>
        <option ${vo[i].degree=='박사'?'selected':''}>박사</option>
      	<option ${vo[i].degree=='기타'?'selected':''}>기타</option>
      </select>
    </div>
    <div class="col form-group">
      <label for="IsTransfer" class="">편입</label>
      <input type="checkbox" name="IsTransfer" value="1" class=""
      ${vo[i].isTransfer=='1'?'checked':''}>
    </div>
  </div>
  <div class="form-row">
    <div class="col form-group">
    	<label for="EnrollDate">입학일</label>
    	<input type="date" name="EnrollDate" value="${vo[i].enrollDate}" class="form-control">
    </div>
    <div class="col form-group">
    	<label for="GradeDate">졸업(예정)일</label>
    	<input type="date" name="GradDate" value="${vo[i].gradDate}" class="form-control">
    </div>
    <div class="col form-group">
      	<label for="Status">졸업</label>
<!--       	<select name="status" class="custom-select"> -->
<%--       		<option ${vo[i].status=='졸업'?'selected':''}>졸업</option> --%>
<%--       		<option ${vo[i].status=='수료'?'selected':''}>수료</option> --%>
<%--       		<option ${vo[i].status=='재학'?'selected':''}>재학</option> --%>
<%--       		<option ${vo[i].status=='기타'?'selected':''}>기타</option> --%>
<!--       	</select> -->
      	<input type="checkbox" name="Status" value="졸업" class=""
      ${vo[i].status=='졸업'?'checked':''}>
      	
    </div>
  </div>
  <div class="form-row">
    <div class="col form-group">
      <label for="TotalGrade">총 학점</label>
      <input type="number" name="TotalGrade" value="${vo[i].totalGrade}" min=0.00 max=4.99 class="form-control"
      step="0.01" placeholder="평점평균 입력">
    </div>
    <div class="col form-group">
      <label for="MajorGrade">전공 학점</label>
      <input type="text" name="MajorGrade" value="${vo[i].majorGrade}" class="form-control">
    </div>
    <div class="col form-group">
      <label for="MaxGrade" class="">최고학점</label>
      <select name="MaxGrade" class="custom-select">
            <option value="0">선택하세요.</option>
			<option value="4.3" ${vo[i].maxGrade=='4.3'?'selected':''}>4.3</option>
			<option value="4.5" ${vo[i].maxGrade=='4.5'?'selected':''}>4.5</option>
			<option value="4.7" ${vo[i].maxGrade=='4.7'?'selected':''}>4.7</option>
			<option value="5.0" ${vo[i].maxGrade=='5'?'selected':''}>5</option>
			<option value="-1" ${vo[i].maxGrade=='0'?'selected':''}>직접입력</option>
			<!-- 직접입력할 수 있는 방법 확인하기. -->
      </select>
    </div>
  </div>
  <div class="form-row">
    <div class="col">
      <label for="FileId1">관련파일</label>
      <!-- 파일업로드와 파일명 표시 기능 2단계에서 구현함. -->
      <button class="btn-sm btn-secondary">업로드</button>
      <button class="btn-sm btn-secondary">삭제하기</button>
<%-- 		<input type="text" name="fileId1" value="${vo[i].fileId1}"> --%>
<!-- 		<label for="fileId2">관련파일2</label> -->
<%-- 		<input type="text" name="fileId2" value="${vo[i].fileId2}"> --%>
    </div>
  </div>
  </form>
  <div class="form-group profile-btn-group">
    <button id="university_${vo[i].id}" class="btn btn-success" onclick="edit(id);false;">수정</button>
<%-- 	<a href="/oive/delete/university/${vo[i].id}"> --%>
<!-- 	<button class="btn btn-danger" type="button" name="button">삭제</button></a> -->
    <!-- GET 형식으로 삭제 구현함 -->
    <!-- ajax 로 삭제 구현 -->
    <button id="delete/university/${vo[i].id}" class="btn btn-danger" type="button" name="button" onclick="del(id);false;">삭제</button>
    <button id="university-add_${vo[i].id}" class="btn btn-primary" type="button" onclick="add(id);false;">추가</button>
  </div>
</div>  
 </c:forEach>
 </c:if>
