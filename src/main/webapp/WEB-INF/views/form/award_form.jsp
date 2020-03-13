<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
	<head>
	<title>프로필</title>
	<!-- 링크 넣어주기  -->
	<!-- <link rel="canonical" href="https://getbootstrap.com/docs/4.4/examples/starter-template/"> -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css" >
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/oive.css" >	
	<link href="https://fonts.googleapis.com/css?family=Song+Myung:400" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Gamja+Flower:400" rel="stylesheet">
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	</head>
	<body>
		<form>
			<input type="hidden" name="category" value="award"> <input type="hidden" name="id" value="${vo[i].id}">
				<div class="form row">
					<div class="col-sm-3 form-group">
						<div class="col">
					  		<label for="orgName">수여기관</label>
						</div>
						<div class="col-sm">
							<input type="text" name="orgName" class="form-control" value="${vo[i].orgName}">
						</div>
					</div> 
					<div class="col-sm-5 form-group">
						<div class="col">
							<label for="awardName">수상명<span class="text-muted">(필수)</span></label>
						</div>
						<div class="col-md">
							<input type="text" name="awardName" class="form-control" value="${vo[i].awardName}" required>
						</div>
					</div>
				</div>
				<div class="form row">
					<div class="col-sm-2 form-group">
						<div class="col">
							<label for="awardType">종류</label>
						</div>
						<div class="col-md">
							<select name="type" class="custom-select">
								<option value="">선택하세요.</option>
								<option>교내</option>
								<option>공모전</option>
								<option>기타</option>
							</select><!-- 수상종류 논의 필요. -->
						</div>
					</div>
					<div class="col-sm-2 form-group">
						<div class="col">
							<label for="aquiredDate">취득일</label>
						</div>
						<div class="col-sm">
							<input type="date" name="aquiredDate" class="form-control" value="${vo[i].aquiredDate}">
						</div>
					</div>
					<div class="col-sm-4 form-group">
						<div class="col">
							<label for="awardName">유형<span class="text-muted"></span></label>
						</div>
						<div class="col-md">
							<input type="text" name="awardName" class="form-control" value="${vo[i].awardType}" required>
						</div>
					</div>
				</div>
				<div class="form row">
					<div class="col-sm-8 form-group">
						<div class="col">
							<label for="awardComments">수상내용</label>
						</div>
						<div class="col-sm">
							<textarea name="awardComments" class="form-control" style="margin-top: 0px; margin-bottom: 0px; height: 83px;"
								value="${vo[i].awardComments}">수상 내용을 입력하세요.</textarea>
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
    <div class="" id="award-add"><!-- 추가버튼 클릭시 여기에 폼이 붙게됨. --></div>
    </body>