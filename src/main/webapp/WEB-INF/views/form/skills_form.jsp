<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<c:if test="${ not empty vo }">
	<c:forEach var="i" begin="0" end="${vo.size()==0?0:vo.size() - 1}">
	<!-- 나중에 이 부분 주석처리해서 사용 -->
		<form>
			<input type="hidden" name="category" value="skills"> 
			<input type="hidden" name="Id" value="${vo[i].id}">
			<!-- private String skillsName;
			private String level;
			private String skillsComments; -->
			<div class="form row">
				<div class="col-sm-5 form-group">
					<div class="col">
						<label for="skillsName">기술명</label>
					</div>
					<div class="col-sm">
						<input type="text" name="SkillsName" class="form-control" value="${vo[i].skillsName}">
					</div>
				</div> 
				<div class="col-sm-3 form-group">
					<div class="col">
						<label for="level">수준</label>
					</div>
					<div class="col-sm">
						<input type="text" name="Level" class="form-control" value="${vo[i].level}" required>
					</div>
				</div>
			</div>
			<div class="form row">
				<div class="col-sm-8 form-group">
					<div class="col">
						<label for="skillsComments">내용</label>
					</div>
					<div class="col-sm">
						<textarea name="SkillsComments" class="form-control" style="margin-top: 0px; margin-bottom: 0px; height: 83px;"
							value="${vo[i].skillsComments}">내용을 입력하세요.</textarea>
					</div>
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
	</c:forEach>
</c:if>
<div class="" id="award-add"><!-- 추가버튼 클릭시 여기에 폼이 붙게됨. --></div>
