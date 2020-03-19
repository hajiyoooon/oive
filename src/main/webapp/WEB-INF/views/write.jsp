
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="org.springframework.web.context.annotation.RequestScope"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="vo.SelfIntroduceVO, java.util.List" %>
<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
	<!-- 링크 넣어주기  -->
	<!-- <link rel="canonical" href="https://getbootstrap.com/docs/4.4/examples/starter-template/"> -->
	
	<!-- tagify : https://github.com/yairEO/tagify -->
	<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jQuery.tagify.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/minty.css" >
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap_darkmode.css" >
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/oive.css" >
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/tagify.css" >
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />

	<style>
		li.post-content {
			/* border: black 1px solid; */
			/* display: block;
			margin: 20px; */
		}

		ul.post-content-box {
			background: #0000000d;
			margin-left: 50px;
			margin-top: -2%;
			padding: 5px;
			transition: height 3s;
			height: 100px;
		}
		
		div#preview {
		    padding: 20px;
		}
    </style>
  </head>
  <body>
	<%@ include file="header.jsp" %>
  <div id="body">

    <div class="container">
		<div class="row">
			<div class="search col-sm">
				<select class="form-control-sm search-dropdown" id="search" name="boundary">
					<option value="company">지원회사</option>
					<option value="keyword">키워드</option>
					<option value="question">질문</option>
					<option value="answer">답변</option>					
				</select>
				<input class="search-input" name="input" id="input">
				<button onclick="myexample();" class="search-icon"  data-toggle="modal" data-target=".bd-example-modal-lg">
					<i class="fas fa-search"></i>
				</button>
			<!-- 검색 결과 모달 시작 -->
				<div id="searchList" class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
				  	<div class="modal-dialog modal-lg">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title">검색 결과</h5>
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<div class="post-list">
									<ul class="list-header2">
										<li class="keyword">키워드</li>
										<li class="company">지원회사</li>
										<li class ="applied-date">작성일자</li>
									</ul>
									
									<div  id="one">
									<ul onclick="showContent(this)" data-id="1">
										<li class="keyword">keywords</li>
										<li class="company">지원회사</li>
										<li class ="applied-date">2019-09-09</li>
									</ul>
									</div>
										<ul class="post-content-box border" data-id="1" style="display: none;">
											<li class="post-content">게시글</li>
											<hr>
											<li class="btn btn-dark btn-sm" onclick="showPreview(this)">분할 화면으로 표시</li>
										</ul>

									</div>
							</div>
						</div>
				  	</div>
				</div>	
				
			<!-- 모달 끝 -->		
			</div>
		</div>
		<div class="row">
			<div class="col-sm">
				<a href="javascript:toggleDarkmode();">자소서로 혹사한 👀을 편안하게(Beta)</a>
			
			</div>
		</div>
    	<div class="form-group" id="myForm">
			<div class="row" id="form-content">
				<div id="preview" class="col-sm" style="display: none; padding-top:0;">
					
				</div>
				<div class="form-group col-sm">
					<input type="text" class="form-control" name="question" placeholder="질문을 입력해주세요" value="${vo.question }"></input>
					<br>
					<textarea class="form-control" name="answer" placeholder="" rows="10" >${vo.answer }</textarea>
				</div>

				<div class="form-group col-sm-3">
					<input name="tags" placeholder="write some tags" value="${vo.keywords}">
					<input id="textinput" name="appliedCompany" type="text" placeholder="지원회사" value="${vo.appliedCompany }"class="form-control input-md">
					<input id="textinput" name="applyDate" type="DATE" placeholder="지원일자" value="${vo.applyDate }" class="form-control input-md">
					<input type="hidden" name="action" value="insert">	
					<input type="hidden" name="id" value="${ vo.id }">	
				</div>    		
			</div>

			<div class="form-group">
				<input type="submit" value="저장" class="btn btn-dark" style="width:100px">
				<input type="reset" value="취소" class="btn btn-dark" style="width:100px">
				<!-- <input type="button" class="btn btn-dark" value="항목 추가" style="width:100px">	 -->
			</div>		
    	</div>
    </div>
	<%@ include file="footer.jsp" %>
	<script>
	
	var myInput = $('[name=tags]').tagify();

	myInput.on('add', function(e, tagName){
	  	var xhr = new XMLHttpRequest();
	  	xhr.onload = function(e){
			if(this.status == 200){
				console.log("태그 저장 성공");
			}
	  	};
		xhr.open('GET', 'write/keyword?sid=${ vo.id }&keyword='+tagName.data.value);
		xhr.send();
	});
	myInput.on('removeTag', function(e, tagName){
		console.log("삭제 시도");
	  	var xhr = new XMLHttpRequest();
	  	xhr.onload = function(e){
			if(this.status == 200){
				console.log(this.responseText);
			}
	  	};
		xhr.open('GET', 'delete/keyword?id=${ vo.id }&keyword='+tagName.data.value);
		xhr.send();
	});

	
	var modal = document.querySelector("#searchList");
	function showContent(e) {
		var id = e.dataset.id;
		var dom = document.querySelector('.post-content-box[data-id="' + id + '"]');
		console.log(e);
		if(dom.style.display=="block"){
			dom.style.display="none";
		}
		else{
			dom.style.display="block";
		}
	}
	
	var event;
	function showPreview(e){
		var dom = document.querySelector('#preview');

		dom.style.display ="block";
		dom.innerHTML = '<div class="card">'
						+'<h5 class="card-header"><button type="button" class="close" aria-label="Close">'
						+'<span aria-hidden="true">&times;</span></button></h5>'					
						+'<div class="card-body"><p class="display-6">'+e.parentNode.querySelector('span[class="question"]').textContent+'</p><hr>'
						+'<p>'+e.parentNode.querySelector('span[class="answer"]').textContent+'</p></div></div>';

		$('#searchList').modal('hide');

		dom.querySelector('button').addEventListener("click", ()=>{
			dom.style.display ="none";
		});
	}

	function closePreview(){
		console.log(this);
	}

	var myForm = document.querySelector("#form-content");
	var mySubmit = document.querySelector("input[type=submit]");
	mySubmit.addEventListener("click", (e)=>{
		var xhr = new XMLHttpRequest();
		
		var data = {
			'id':myForm.querySelector("input[name=id]").value ,
			'question' :myForm.querySelector("input[name=question]").value ,
			'answer': myForm.querySelector("textarea[name=answer]").value,
			'appliedCompany': myForm.querySelector("input[name=appliedCompany]").value,
			'applyDate': myForm.querySelector("input[name=applyDate]").value
		}
		var jsonString = JSON.stringify(data);
		console.log(jsonString);
		
		xhr.open("POST", "save");
		xhr.setRequestHeader("Content-Type","application/json");
		xhr.send(jsonString);
	})

	var myexample = function(e){
		var xhr = new XMLHttpRequest();
		
		var sdom = document.getElementById("search");
		var svalue = sdom.options[sdom.selectedIndex].value;
		var ivalue = document.getElementById("input").value;
		xhr.onload = function(e){
				if(xhr.status == 200){
					var str = xhr.responseText;
					var result = JSON.parse(str); // str값은 JSON파싱함, //자동으로 배열로 변경
					var output = "";
					/* console.log(result);
					console.log(result[0].appliedcompany); */ // 배열안에 이름과 동일해야만 찾을 수 있다.
					for(var i in result){
						output += '<ul onclick="showContent(this)" data-id="'+result[i].id+'">'
								+'<li class="keyword">'+result[i].keywords+'</li>'
								+'<li class="company">'+result[i].appliedCompany+'</li>'
								+'<li class="applied-date">'+result[i].applyDate+'</li></ul>'	

								+'<ul class="post-content-box border" data-id="'+result[i].id+'" style="display: none;">'
								
								+'<li class="post-content"><span class="question">'+result[i].question+'</span><br><span class="answer">'+result[i].answer+'</span></li><hr>'
								+'<li class="btn btn-dark btn-sm" onclick="showPreview(this);">분할 화면으로 표시</li></ul>';

					} 
					document.getElementById("one").innerHTML = output;
			}
		};
		xhr.open('GET','/oive/self_introduce/search?boundary='+svalue+'&input='+ivalue,true);
		xhr.send();
	}
	
	
	function toggleDarkmode(){
		var html = document.querySelector("html");
		if(html.className=="darkmode"){
			html.removeAttribute("class");
		}
		else{
			html.setAttribute('class', 'darkmode');
		}
	}
</script>
</div>




  </body>
</html>