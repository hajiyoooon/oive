
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="org.springframework.web.context.annotation.RequestScope"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
	<!-- 링크 넣어주기  -->
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css" >
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/oive.css" >

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
                <div class="card-body">
                  <p class="card-text">${ item.fileName }</p>
                  <div class="d-flex justify-content-between align-items-center">

                      <button type="button" class="btn btn-info"
                      	onclick="downloadFile(this, '${item.fileName}');">다운로드</button>
                      
                      <button type="button" class="btn btn-danger"
                      	onclick="deleteFile(this, '${item.fileId}', '${item.fileName }');">삭제</button>

                  </div>
                </div>
              </div>
            </div>
       </c:forEach>
	   </div>
    </div>
 	</div>
 	<script>

 		var test;
		function downloadFile(e, fileName){
			
			//지금은 파일 다운로드가 성공하는 경우만 잘됨...
			var xhr = new XMLHttpRequest();
			xhr.onload = function(){
				if(xhr.status == 200){
					if(true){
						var link = document.createElement('a');

						link.href = window.URL.createObjectURL(new Blob([xhr.response],  {type : xhr.getResponseHeader("content-type")}));
						link.download = fileName;  //&nbsp; 파일 이름을 설정
						link.click();
						link.remove();
					}
				}
				else if(xhr.status == 400){
					window.alert("잘못된 인코딩 방식을 적용하여 파일을 다운로드할 수 없습니다.");
				}
				else if(xhr.status == 500){
					window.alert("파일을 읽는 중 오류가 발생했습니다. 다시 한 번 시도해주세요.");
				}
				else if(xhr.status == 403){
					window.alert("파일을 찾을 수 없습니다");
				}
			}
			xhr.responseType = 'blob'; // 이걸해주면된다..?
			xhr.open('GET', 'download?fileName=' + fileName, true);
			xhr.send();
		}
		
		function deleteFile(e, fileId, fileName){
			var xhr = new XMLHttpRequest();
			xhr.onload = function(){
				if(xhr.status == 200){
					var jsonObject = JSON.parse(xhr.response);
					console.log(jsonObject['result'] == 'true');
					
					
					if(jsonObject['result'] == 'true'){
						window.alert("파일이 정상적으로 삭제되었습니다.");
						location.reload();
					}
					else{
						window.alert("파일을 삭제할 수 없습니다.");
					}
					
				}
			}

			xhr.open('GET', 'delete?fileId=' + fileId +'&fileName=' + fileName, true);
			xhr.send();
		}
 		 function xxx(){
 			var xhr = new XMLHttpRequest();
 			var data = new FormData(document.getElementById("f"));
 			xhr.onload=function(e){
 				var str = xhr.responseText;
 	 			var result = JSON.parse(str);
 	 			alert(result['msg']);
 	 			location.reload();
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