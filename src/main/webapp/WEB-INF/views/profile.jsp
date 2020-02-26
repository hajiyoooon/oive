<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>프로필 입력</title>
</head>
<body>
<body><!-- bootstrap의 form-control 사용 -->
	<h1>학력 사항</h1>
	<h2>대학교</h2><!-- university -->
	
	<div class="container">
	<form>
		<input type="hidden" name="category" value="university"> <input
			type="hidden" name="id" value="${UniversityVO.id}">

			<label for="uName">학교명 :</label>			
			<input type="text" class="form-control" id="uName" name="uName" required maxlength=16>
			<label for="majorName">학과명 :</label>
			<input type="text" class="form-control" id="majorName" name="majorName" maxlength=33>
			<label for="majorType">전공 유형 : </label>
			<select name="majorType" class="custom-select" id="majorType">
					<option value>선택하세요.</option>
					<option>단일전공</option>
					<option>복수전공</option>
					<option>부전공</option>
					<option>기타</option>
			</select>
			<label for="degree">학위 유형 : </label>
			<select name="degree" class="custom-select" id="degree">
					<option value>선택하세요.</option>
					<option>학사</option>
					<option>전문학사</option>
					<option>석사</option>
					<option>박사</option>
					<option>기타</option>
			</select>
			<label for="enrollDate">입학일 :</label><!-- 날짜관련 폼양식 체크하기 -->
			<input type="date" name="enrollDate" id="enrollDate">
			<label for="gradDate">졸업(예정)일 :</label>
			<input type="date" name="gradDate" id="gradDate">
			<label>졸업 :
			<input type="checkbox" name="status" value="1"></label> 
			<label>편입 : 
			<input type="checkbox" name="isTransfer" value="1"></label>
			<label>평점 평균(총 학점) : <input type="number" 
				name="totalGrade" min=0 max=5></label>
			<label>(만점(기준학점):<input type="number"
				name="maxGrade" min=0 max=5>)</label>			
			<label>전공 평점(전공학점) : <input type="number" name="majorGrade" min=0 max=5></label>
			<label>관련 파일 : {이미 업로드된 파일이 있으면 표시됩니다.}</label><!-- 파일업로드와 파일명 표시 기능 2단계에서 구현함. -->
			<button>업로드</button><button>삭제하기</button>					
		<button class="btn-primary" type="submit">수정</button>
		<button class="btn-primary">삭제</button><!-- 내용을 삭제하는 onclick event 구현 필요함 -->
		<button class="btn-primary">추가</button><!-- 새로운 항목을 추가작성하는 onclick event 구현필요함 -->
	</form>
	<!-- 고등학교 사항 삭제함 -->
	<h2>교육사항</h2>
	<form>
		<input type="hidden" name="category" value="education"> <input
			type="hidden" name="id" value="${EducationVO.id}">
			<label for="orgName">기관명 :</label>
			<input class="form-control" type="text" name="orgName" id="orgName" required maxlength=16>
			<label for="eduName">수업명 :</label>
			<input class="form-control" type="text" name="eduName" id="eduName">
			<!-- ERD에 항목 추가됨. VO 수정함 pull request 필요함. -->
			<!-- 여기까지 수정함. 아래 수정 필요함 -->
			
			
			
			
			<label for="hour">수업시수 : </label>
			<input class="form-control" type="number" name="hour" id="hour">
			<label>수업유형 :</label>
			<input type="text" name="classification"></li>
			<li>성적 : <input type="text" name="grade"></li>
			<li>수업시작일 : <input type="date" name="start_date"></li>
			<!-- ERD에 항목 추가 필요할 것임. 확인필요함. -->
			<li>수업종료일 : <input type="date" name="end_date"></li>
			<!-- ERD에 항목 추가 필요할 것임. 확인필요함. -->
			<li>수업내용 : <br><textarea name="comment"></textarea></li>
		</ul>
		<button type="submit">수정</button>
		<button>삭제</button>
		<button>추가</button>
	</form>
	<h1>자격사항(자격증/시험성적)</h1>
	<form>
		<input type="hidden" name="category" value="certifications"> <input
			type="hidden" name="id" value="${}">
		<ul>
			<li>인증기관 : <input type="text" name="org_name"></li>
			<li>자격증/시험명 : <input type="text" name="name"></li>
			<li>발급번호 :<input type="text" name="number"></li>
			<li>취득일 : <input type="date" name="aquired_date"></li>
			<li>만료일 : <input type="date" name="exp_date"></li>
			<li>점수 : <input type="text" name="grade"></li>
			<!-- ERD 추가 필요함. -->
			<li>종류 : <select name="type">
				<option>어학</option>
				<option>IT</option>
				<option>교양</option>
				<option>기타</option>
			</select></li>
			<li>자격증/시험 내용 : <br><textarea name="comment"></textarea></li>
			<!-- ERD 추가 필요함. -->
			<li>파일 : {{파일업로드 메뉴가 들어가야 함.}}</li>
		</ul>
		<button type="submit">수정</button>
		<button>삭제</button>
		<button>추가</button>
	</form>
	<h1>수상이력</h1>
	<form>
		<input type="hidden" name="category" value="award"> <input
			type="hidden" name="id" value="${}">
		<ul>
			<li>수여기관 : <input type="text" name="org_name"></li>
			<li>수상명 : <input type="text" name="name"></li>
			<li>발급번호 : <input type="text" name="number"></li>
			<!-- ERD 추가 필요함. -->
			<li>취득일 : <input type="date" name="aquired_date"></li>
			<li>종류 : <select name="type">
				<option>국내</option>
				<option>해외</option>
				<option>기타</option>
			</select></li><!-- 수상종류 논의 필요. 없다면 ERD에서 삭제 -->
			<li>수상내용 : <br><textarea name="comment"></textarea></li>
			<!-- ERD 추가 필요함. -->
			<li>파일 : {{파일업로드 메뉴가 들어가야 함.}}</li>
		</ul>
		<button type="submit">수정</button>
		<button>삭제</button>
		<button>추가</button>
	</form>

	<h1>외국어/기술</h1>
	<form>
		<input type="hidden" name="category" value="skills_and_languages">
		<!-- ERD 테이블명 수정 필요 -->
		<input type="hidden" name="id" value="${}">
		<ul>
			<li>외국어/기술명 : <input type="text" name="name"></li>
			<!-- 외국어의 경우 언어 data를 연동시키는 것 고려해야 함. -->
			<li>수준 : <select name="type">
					<option>초급</option>
					<option>중급</option>
					<option>고급</option></select></li>
			<li>외국어/기술 내용 : <br><textarea name="comment"></textarea></li>
		</ul>
		<button type="submit">수정</button>
		<button>삭제</button>
		<button>추가</button>
	</form>
	<h1>직장경력</h1>
	<form>
		<input type="hidden" name="category" value="work_experience">
		<input type="hidden" name="id" value="${}">
		<ul>
			<li>직장명 : <input type="text" name="company_name"></li>
			<li>취업형태 : <select name="emp_type">
				<option>정규직</option>
				<option>기간직</option>
				<option>인턴</option>
				<option>계약직</option>
				<option>프리랜서</option>
				<option>기타</option></select></li>
			<li>입사일 : <input type="date" name="start_date"></li>
			<li>퇴사일 : <input type="date" name="end_date"></li>
			<li>담당 업무 : <input type="date" name="duty"></li>
			<li>직책 : <input type="date" name="position"></li>
			<li>회사위치 : <input type="text" name="location"></li>
			<li>업무 내용 : <br><textarea name="comment"></textarea></li>
			<li>파일 : {{파일업로드 메뉴가 들어가야 함.}}</li>
		</ul>
		<button type="submit">수정</button>
		<button>삭제</button>
		<button>추가</button>
	</form>
	<h1>저서/논문</h1>
	<form>
		<input type="hidden" name="category" value="publication"> <input
			type="hidden" name="id" value="${}">
		<ul>
			<li>출판기관 : <input type="text" name="publisher"></li>
			<li>저서/논문명 : <input type="text" name="name"></li>
			<li>서지번호 : <input type="text" name="number"></li>
			<!-- ERD 추가 필요함. -->
			<li>출간일 : <input type="date" name="pub_date"></li>
			<li>저자 : <input type="text" name="authors"
				placeholder="공저자인 경우 쉼표(,)로 구분해 주세요."></li>
				<!-- 공저자 입력 방법 확인이 필요함.  -->
			<li>저서/논문 내용 : <textarea name="comment"></textarea></li>
			<li>파일 : {{파일업로드 메뉴가 들어가야 함.}}</li>
		</ul>
		<button type="submit">수정</button>
		<button>삭제</button>
		<button>추가</button>
	</form>
	<h1>특허</h1>
	<form>
		<input type="hidden" name="category" value="patent"> <input
			type="hidden" name="id" value="${}">
		<ul>
			<li>특허명 : <input type="text" name="name"></li>
			<li>출원국가 : <input type="text" name="country"></li>
			<li>출원번호 : <input type="text" name="number"></li>
			<!-- ERD 명칭변경 제안합니다. -->
			<li>취득일 : <input type="date" name="pub_date"></li>
			<li>특허 내용 : <br><textarea name="comment"></textarea></li>
			<!-- ERD 추가 필요함. -->
			<li>파일 : {{파일업로드 메뉴가 들어가야 함.}}</li>
		</ul>
		<button type="submit">수정</button>
		<button>삭제</button>
		<button>추가</button>
	</form>
	
	</div>
</body>
</html>
<!-- 해야할 것 1.입력사항 "추가" 기능 구현 / 2.날짜 포커싱 기능/ 3.파일업로드기능 /4.언어명과 국가명 데이터 사용-->