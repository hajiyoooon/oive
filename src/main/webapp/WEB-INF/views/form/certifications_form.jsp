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
		<fieldset>
			<legend>#CertificationsVO.id-1</legend>
	<!-- userId         VARCHAR2(20)     NOT NULL -->
		<input type="hidden" name="category" value="certifications"> <input
			type="hidden" name="id" value="{CertificationsVO.id}">
			<!-- orgName        VARCHAR2(100)    NULL -->
			<div class="form-group">
				<label for="orgName">인증기관</label>
				<input type="text" name="orgName" class="form-control-sm">
			</div>
			<!-- certName            VARCHAR2(100)    NOT NULL -->
			<div class="form-group">
				<label for="certName">자격증/시험명<span class="text-muted">(필수입력)</span></label>
				<input type="text" name="certName" class="form-control-sm"
				placeholder="자격증/시험명을 입력하세요." required>
			</div>
			<!-- certNumber          VARCHAR2(50)     NULL -->
			<div class="form-group">
				<label for="certNumber">발급번호</label>
				<input type="text" name="number" class="form-control-sm" placeholder="고유번호를 입력하세요.">
			</div>
			<!-- aquiredDate    DATE             NULL -->
			<div class="form-group">
				<label for="aquiredDate">취득일</label>
				<input type="date" name="aquiredDate" class="form-control-sm">
			</div>
		  <!-- expDate        DATE             NULL -->
			<div class="form-group">
				<label for="expDate">만료일</label>
				<input type="date" name="expDate" class="form-control-sm">
			</div>
			<!-- grade           VARCHAR2(20)     NULL -->
			<div class="form-group">
				<label for="grade">점수</label>
				<input type="text" name="grade" class="form-control-sm" placeholder="등급 또는 성적을 입력하세요.">
			</div>
			<!-- certType            VARCHAR2(20)     NULL -->
			<div class="form-group">
				<label for="cerType">종류</label>
				<select name="type" class="form-control-sm">
					<option value="">선택하세요</option>
					<option>어학</option>
					<option>IT</option>
					<option>교양</option>
					<option>기타</option>
				</select>
			</div>
			<!-- certComments         VARCHAR2(100)    NULL -->
			<div class="form-group">
				<label for="certComments">자격증/시험 내용</label>
				<textarea name="comment" class="form-control"></textarea>
			</div>
			<!-- fileId         INT              NULL -->
			<div class="form-group">
				<label>관련 파일 : {이미 업로드된 파일이 있으면 표시됩니다.}</label><!-- 파일업로드와 파일명 표시 기능 2단계에서 구현함. -->
				<button>업로드</button><button>삭제하기</button>
			</div>
		<button type="submit" class="btn-success">수정</button>
		<button class="btn-danger">삭제</button>
		<button class="btn-primary">추가</button>
		</fieldset>
		<fieldset>
			<legend>#CertificationsVO.id-2</legend>
	    <!-- 수상이력이 추가되면 fieldset이 추가 되는 형식을 고려하고 있습니다.-->
		</fieldset>
	</form>
    <button id="certification" class="btn-primary" onclick="add(id)">추가</button>

    <div class="" id="certification-add"><!-- 추가버튼 클릭시 여기에 폼이 붙게됨. --></div>
    </body>