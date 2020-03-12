<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<c:forEach var="i" begin="0" end="${uvo.size()-1}">
<form id="form_university_${uvo[i].id}" class="profile" 
	action="edit" method="POST" enctype="multipart/form-data">
<!-- 구현이 끝난 후 type을 "hidden"으로 바꿀 것  -->
	<input type="text" name="userId" value="${sessionScope.user.userId}">
	<input type="text" name="category" value="university">
	<input type="text" name="id" value="${uvo[i].id}">
	
  <div class="form-row">
    <div class="col form-group">
      <label for="uName" class="">학교명<span class="text-muted">(필수입력)</span></label>
      <input type="text" name="uName" value="${uvo[i].uName}" class="form-control"
      	required maxlength=16 placeholder="학교명을 입력하세요.">
    </div>
    <div class="col form-group">
      <label for="majorName">학과명</label>
      <input type="text" name="majorName" value="${uvo[i].majorName}" class="form-control"
      maxlength=33 placeholder="학과명을 입력하세요.">
    </div>
  </div>
  <div class="form-row">
    <div class="col form-group">
      <label for="majorType">전공 유형</label>
      <select name="majorType" class="custom-select">
      	<option value="" >선택하세요.</option>
		<option value="단일전공" 
		${uvo[i].majorType=='단일전공'?'selected':''}>단일전공</option>
		<option value="복수전공"
		${uvo[i].majorType=='복수전공'?'selected':''}>복수전공</option>
		<option value="부전공"
		${uvo[i].majorType=='부전공'?'selected':''}>부전공</option>
		<option value="기타"
		${uvo[i].majorType=='기타'?'selected':''}>기타</option>
	  </select>
    </div>
    <div class="col form-group">
      <label for="degree">학위 유형</label>
      <select name="degree" class="custom-select">
        <option value="">선택하세요.</option>
        <option ${uvo[i].degree=='학사'?'selected':''}>학사</option>
        <option ${uvo[i].degree=='전문학사'?'selected':''}>전문학사</option>
        <option ${uvo[i].degree=='석사'?'selected':''}>석사</option>
        <option ${uvo[i].degree=='박사'?'selected':''}>박사</option>
      	<option ${uvo[i].degree=='기타'?'selected':''}>기타</option>
      </select>
    </div>
    <div class="col form-group">
      <label for="isTransfer" class="">편입</label>
      <input type="checkbox" name="isTransfer" value="1" class=""
      ${uvo[i].isTransfer=='1'?'checked':''}>
    </div>
  </div>
  <div class="form-row">
    <div class="col form-group">
    	<label for="enrollDate">입학일</label>
    	<input type="date" name="enrollDate" value="${uvo[i].enrollDate}" class="form-control">
    </div>
    <div class="col form-group">
    	<label for="gradeDate">졸업(예정)일</label>
    	<input type="date" name="gradDate" value="${uvo[i].gradDate}" class="form-control">
    </div>
    <div class="col form-group">
      	<label for="status">졸업</label>
<!--       	<select name="status" class="custom-select"> -->
<%--       		<option ${uvo[i].status=='졸업'?'selected':''}>졸업</option> --%>
<%--       		<option ${uvo[i].status=='수료'?'selected':''}>수료</option> --%>
<%--       		<option ${uvo[i].status=='재학'?'selected':''}>재학</option> --%>
<%--       		<option ${uvo[i].status=='기타'?'selected':''}>기타</option> --%>
<!--       	</select> -->
      	<input type="checkbox" name="status" value="졸업" class=""
      ${uvo[i].status=='졸업'?'checked':''}>
      	
    </div>
  </div>
  <div class="form-row">
    <div class="col form-group">
      <label for="totalGrade">총 학점</label>
      <input type="number" name="totalGrade" value="${uvo[i].totalGrade}" min=0.00 max=4.99 class="form-control"
      step="0.01" placeholder="평점평균 입력">
    </div>
    <div class="col form-group">
      <label for="majorGrade">전공 학점</label>
      <input type="text" name="majorGrade" value="${uvo[i].majorGrade}" class="form-control">
    </div>
    <div class="col form-group">
      <label for="maxGrade" class="">최고학점</label>
      <select name="maxGrade" class="custom-select">
            <option value="0">선택하세요.</option>
			<option value="4.3" ${uvo[i].maxGrade=='4.3'?'selected':''}>4.3</option>
			<option value="4.5" ${uvo[i].maxGrade=='4.5'?'selected':''}>4.5</option>
			<option value="4.7" ${uvo[i].maxGrade=='4.7'?'selected':''}>4.7</option>
			<option value="5.0" ${uvo[i].maxGrade=='5'?'selected':''}>5</option>
			<option value="-1" ${uvo[i].maxGrade=='0'?'selected':''}>직접입력</option>
			<!-- 직접입력할 수 있는 방법 확인하기. -->
      </select>
    </div>
  </div>
  <div class="form-row">
    <div class="col">
      <label for="fileId1">관련파일</label>
      <!-- 파일업로드와 파일명 표시 기능 2단계에서 구현함. -->
      <button class="btn-sm btn-secondary">업로드</button>
      <button class="btn-sm btn-secondary">삭제하기</button>
<%-- 		<input type="text" name="fileId1" value="${uvo[i].fileId1}"> --%>
<!-- 		<label for="fileId2">관련파일2</label> -->
<%-- 		<input type="text" name="fileId2" value="${uvo[i].fileId2}"> --%>
    </div>
  </div>
  </form>
  <div class="form-group profile-btn-group">
    <button id="university_${uvo[i].id}" class="btn btn-success" onclick="edit(id);false;">수정</button>
    <a href="/oive/delete?id=${uvo[i].id}&category='university'"><button class="btn btn-danger" type="button" name="button">삭제</button></a>
    <!-- GET 형식으로 삭제 구현함 -->
    <button id="university-add_${uvo[i].id}" class="btn btn-primary" type="button" onclick="add(id);false;">추가</button>
  </div>
 </c:forEach>
