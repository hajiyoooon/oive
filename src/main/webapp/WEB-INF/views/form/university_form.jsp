<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:forEach var="i" begin="0" end="${uvo.size()-1}">
<form class="profile" action="edit" method="GET">
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
      	<option value="0">선택하세요.</option>
		<option value="1">단일전공</option>
		<option value="2">복수전공</option>
		<option value="3">부전공</option>
		<option value="9">기타</option>
	  </select>
    </div>
    <div class="col form-group">
      <label for="degree">학위 유형</label>
      <select name="degree" class="custom-select">
        <option value="0">선택하세요.</option>
        <option value="1">학사</option>
        <option value="2">전문학사</option>
        <option value="3">석사</option>
        <option value="4">박사</option>
      	<option value="5">기타</option>
      </select>
    </div>
    <div class="col form-group">
      <label for="isTransfer" class="">편입</label>
      <input type="checkbox" name="isTransfer" value="${uvo[i].isTransfer}" class="">
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
      	<input type="checkbox" name="status" value="${uvo[i].status }" checked>
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
			<option>4.3</option>
			<option>4.5</option>
			<option>4.7</option>
			<option>5</option>
			<option>직접입력</option>
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
    </div>
  </div>
  <div class="form-group profile-btn-group">
    <button class="btn btn-success" type="submit">수정</button>
    <a href="/oive/delete?id=${vo.id}&category='university'"><button class="btn btn-danger" type="button" name="button">삭제</button></a>
    <!-- GET 형식으로 삭제 구현함 -->
    <button id="university" class="btn btn-primary" type="button" onclick="add(id);false;">추가</button>
  </div>
 </form>
 </c:forEach>
