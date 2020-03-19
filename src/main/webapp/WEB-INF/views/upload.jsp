
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
                <img class="card-img-top" data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail" alt="Thumbnail [100%x225]" style="height: 225px; width: 100%; display: block;" src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22348%22%20height%3D%22225%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20348%20225%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_170e7b0e69e%20text%20%7B%20fill%3A%23eceeef%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A17pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_170e7b0e69e%22%3E%3Crect%20width%3D%22348%22%20height%3D%22225%22%20fill%3D%22%2355595c%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%22116.71875%22%20y%3D%22120.3%22%3EThumbnail%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E" data-holder-rendered="true">
                <div class="card-body">
                  <p class="card-text">${ item.fileName }</p>
                  <div class="d-flex justify-content-between align-items-center">

                      <button type="button" class="btn btn-warning"
                      	onclick="downloadFile(this, '${item.fileName}');">다운로드</button>
                      
                      <button type="button" class="btn btn-warning"
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
 		function uploadFile(){
 		}

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
						link.href.revokeObjectURL();
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