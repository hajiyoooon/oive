<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Clean Blog - Start Bootstrap Theme</title>

  <!-- Bootstrap core CSS -->
  <link href="resources/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
 


<style>
ul.list-header {
    font-weight: bold;
    border-bottom: #adb5bd solid 1px;
}
.header-right {
    position:relative;

}
.header-left{
    float:left;
}
.post-list li{
     display: inline-block;
     text-overflow: ellipsis;
     overflow: hidden;
     height: 30px;
     white-space: nowrap;
}

.post-list .keyword{
    width: 30%
}

.post-list .company{
    width : 20%;
}

.post-list .applied-date{
    width:15%;
}
.post-list .last-modified {
    width: 15%;
}

ul.pagination li{
	height: 50px;
}
a {
  color: #212529;
  transition: all 0.2s;
}

a:focus, a:hover {
  color: #0085A1;
}
span.bd-content-title {
    font-size: 2rem;
    font-weight: bold;

}
.fas fa-search:before {
    content: "\f002";
}
.search {
    margin-top: 2%;
    height: 60px;
    background-color: #ffffff;
    border-radius: 10px;
    padding: 10px;
    border: 1px solid #dee2e6;
    margin-bottom: 5%;
    width:300px;
}
    
    .search-dropdown{
    	width:20%;
    	border: none;
    }

    .search-input{
    color: white;
    border: 0;
	padding: 0 10px;
    outline: 0;
    background: none;
    width: 80%;
    transition: width 0.4s linear;
    }

    .search-icon{
    height: 40px;
    width: 40px;
    float: right;
    display: flex;
    justify-content: center;
    align-items: center;
    border-radius: 50%;
    color:white;
    }
</style>
</head>

<body>

  <!-- Navigation -->
  

  <!-- Main Content -->
  <div class="container">
    <div class="row">
      <div class="col-lg-8 col-md-10 mx-auto post-list">
		<div class="header">
			<div class="header-left">
				<span class="bd-content-title">나의 자기소개서(2)</span>
			</div>
			<div class="header-right">
				<div class="search row">
				    <select class="form-control search-dropdown col-sm-3" id="exampleFormControlSelect1">
				      <option>1</option>
				      <option>2</option>
				      <option>3</option>
				      <option>4</option>
				      <option>5</option>
				    </select>
					<input class="search-input col-sm">
					<a class="search-icon">
						<i class="fas fa-search"></i>
					</a>			
				</div>
			</div>
		</div>

		<ul class="list-header">
        	<li class="keyword">키워드</li>
        	<li class="company">지원 회사</li>
        	<li class ="applied-date">지원일자</li>
        	<li class="last-modified">최종수정일</li>
        	<li></li>
        </ul>
        <ul>
	        <li class="keyword"><a href="#" class="badge badge-primary">#도전정신</a> #책임감 #키워드 #키워드 #키워드</li>
	        <li class="company">삼성전자</li>
     	    <li class="applied-date">2020.01.01</li>
     	    <li class="last-modified">2020.01.01</li>
     	    <li class="view"><a href="#">조회</a></li>
     	    <li class="edit"><a href="#">수정</a></li>	        
     	    <li class="delete"><a href="#">삭제</a></li>	        
	    </ul>	
	    <ul>
	        <li class="keyword">#도전정신 #책임감</li>
	        <li class="company">삼성전자</li>
     	    <li class="applied-date">2020.01.01</li>
     	    <li class="last-modified">2020.01.01</li>
     	    <li class="view"><a href="#">조회</a></li>
     	    <li class="edit"><a href="#">수정</a></li>	        
     	    <li class="delete"><a href="#">삭제</a></li>	       
	    </ul>	

        <!-- Pager -->
		<div class="d-flex justify-content-center">
<nav aria-label="Page navigation example" class="justify-content-center">
  <ul class="pagination">
    <li class="page-item">
      <a class="page-link" href="#" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    <li class="page-item"><a class="page-link" href="#">1</a></li>
    <li class="page-item"><a class="page-link" href="#">2</a></li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item">
      <a class="page-link" href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
</nav>		
		
		</div>


      </div>
    </div>
  </div>

  <hr>

  <!-- Footer -->
  <footer>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <ul class="list-inline text-center">
            <li class="list-inline-item">
              <a href="#">
                <span class="fa-stack fa-lg">
                  <i class="fas fa-circle fa-stack-2x"></i>
                  <i class="fab fa-twitter fa-stack-1x fa-inverse"></i>
                </span>
              </a>
            </li>
            <li class="list-inline-item">
              <a href="#">
                <span class="fa-stack fa-lg">
                  <i class="fas fa-circle fa-stack-2x"></i>
                  <i class="fab fa-facebook-f fa-stack-1x fa-inverse"></i>
                </span>
              </a>
            </li>
            <li class="list-inline-item">
              <a href="#">
                <span class="fa-stack fa-lg">
                  <i class="fas fa-circle fa-stack-2x"></i>
                  <i class="fab fa-github fa-stack-1x fa-inverse"></i>
                </span>
              </a>
            </li>
          </ul>
          <p class="copyright text-muted">Copyright &copy; Your Website 2019</p>
        </div>
      </div>
    </div>
  </footer>

  <!-- Custom scripts for this template -->
  <script src="resources/js/list.js"></script>
  <script src="resources/js/jquery.min.js"></script>
</body>

</html>
