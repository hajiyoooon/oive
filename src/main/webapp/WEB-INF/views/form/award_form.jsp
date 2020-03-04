<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
	<form>
	<!-- id              INT              NOT NULL -->
		<fieldset>
			<legend>#AwardVO.id</legend>
		</fieldset>
		<input type="hidden" name="category" value="award"> <input
			type="hidden" name="id" value="{AwardVO.id}">
			<!-- orgName        VARCHAR2(50)     NULL -->
			<div class="form-group">
				<div class="col-3">
				  <label for="orgName">수여기관</label>
				</div>
				<div class="col-md-6">
					<input type="text" name="orgName" class="form-control-sm">
				</div>
			</div>
			<!-- awardName            VARCHAR2(100)    NOT NULL -->
			<div class="form-group">
				<div class="col-3">
					<label for="awardName">수상명<span class="text-muted">(필수)</span></label>
				</div>
				<div class="col-md-4">
					<input type="text" name="awardName" class="form-control-sm" required>
				</div>
			</div>
			<!-- aquiredDate    DATE             NULL -->
			<div class="form-group">
				<div class="col-3">
					<label for="aquiredDate">취득일</label>
				</div>
				<div class="col-md-4">
					<input type="date" name="aquiredDate" class="form-control-sm">
				</div>
			</div>
			<!-- awardType            VARCHAR2(20)     NULL -->
			<div class="form-group">
				<div class="col-3">
					<label for="awardType">종류</label>
				</div>
				<div class="col-md-4">
					<select name="type" class="custom-select-sm">
						<option value="">선택하세요.</option>
						<option>교내</option>
						<option>공모전</option>
						<option>기타</option>
					</select><!-- 수상종류 논의 필요. -->
				</div>
			</div>
			<!-- awardComments        VARCHAR2(100)    NULL -->
			<div class="form-group">
				<div class="col-3">
					<label for="awardComments">수상내용</label>
				</div>
				<div class="col-md-4">
					<textarea name="comment" class="form-control">수상 내용을 입력하세요.</textarea>
				</div>
			</div>
			<!-- fileId         INT              NULL -->
			<div class="form-group">
				<div class="col-3">
					<label for="fileId">관련 파일</label>
				</div>
				<div class="col-md-4">
					<button type="button" name="button">업로드</button>
					<button type="button" name="button">삭제하기</button>
				</div>
			</div>
			<div class="form-group">
				<button class="btn-success" type="submit">수정</button>
				<button class="btn-danger">삭제</button>
				<button class="btn-primary">추가</button>
			</div>
	</form>
	    <button id="award" class="btn-primary" onclick="add(id)">추가</button>
    <div class="" id="award-add"><!-- 추가버튼 클릭시 여기에 폼이 붙게됨. --></div>