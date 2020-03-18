
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="org.springframework.web.context.annotation.RequestScope"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
	<!-- 링크 넣어주기  -->
	<!-- <link rel="canonical" href="https://getbootstrap.com/docs/4.4/examples/starter-template/"> -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css" >
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/oive.css" >
	<link href="https://fonts.googleapis.com/css?family=Song+Myung:400" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Gamja+Flower:400" rel="stylesheet">
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
  </head>
  <body>
	<%@ include file="header.jsp" %>
  
  	<div id="body">
    <div class="container">
		<div class="row">
	   <form id="f" enctype="multipart/form-data" method="POST" >
		  <div class="custom-file">
		    <input id="input" type="file" class="custom-file-input" name="uploadFile" required>
		    <label class="custom-file-label" for="validatedCustomFile">업로드할 파일을 선택하세요</label>
		    <div class="invalid-feedback">Example invalid custom file feedback</div>
		  </div>
		  <input type="button" value="파일 업로드" onclick="xxx();return false;">
	   </form>
	   </div>
	   <div class="row">
	   <c:forEach var="item" items="${ filelist }" >
			<div class="col-md-4">
              <div class="card mb-4 box-shadow">
                <img class="card-img-top" data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail" alt="Thumbnail [100%x225]" style="height: 225px; width: 100%; display: block;" src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22348%22%20height%3D%22225%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20348%20225%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_170e7b0e69e%20text%20%7B%20fill%3A%23eceeef%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A17pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_170e7b0e69e%22%3E%3Crect%20width%3D%22348%22%20height%3D%22225%22%20fill%3D%22%2355595c%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%22116.71875%22%20y%3D%22120.3%22%3EThumbnail%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E" data-holder-rendered="true">
                <div class="card-body">
                  <p class="card-text">${ item.fileName }</p>
                  <div class="d-flex justify-content-between align-items-center">

                      <button type="button" class="btn btn-warning">삭제</button>

                  </div>
                </div>
              </div>
            </div>
       </c:forEach>
	   </div>
    </div>
 	</div>
 	<script>
 		 function xxx(){
 			var xhr = new XMLHttpRequest();
 			var data = new FormData(document.getElementById("f"));
 			xhr.onload=function(e){
 				var str = xhr.responseText;
 	 			var result = JSON.parse(str);
 	 			alert(result['msg']);
 	 		}
 			xhr.onerror=function(e){alert(e);};
 			xhr.open('POST','/oive/upload',true);
 			xhr.send(data);
 		};
/*  		
 		document.querySelector("input[type=button]")
 				.addEventListener("click", uploadFile); */
 	</script>
  </body>
</html>