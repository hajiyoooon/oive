
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="org.springframework.web.context.annotation.RequestScope"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html><head>
	<title>Home</title>
	<!-- 링크 넣어주기  -->
	<!-- <link rel="canonical" href="https://getbootstrap.com/docs/4.4/examples/starter-template/"> -->
	<link rel="stylesheet" href="/oive/resources/css/bootstrap.css">
	<link rel="stylesheet" href="/oive/resources/css/oive.css">
    <link rel="stylesheet" href="/oive/resources/css/registration.css">
	<link href="https://fonts.googleapis.com/css?family=Song+Myung:400" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Gamja+Flower:400" rel="stylesheet">
	<script src="/oive/resources/js/bootstrap.min.js"></script>
  </head>
  <body>
	


    <header class="header navbar sticky-top">
      <a class="navbar-brand" href="/oive/">spec overflow :</a>
        <ul>
          <li><a href="/oive/profile">프로필</a></li>
          <li><a href="/oive/self_introduce/list">자기소개서</a></li>
          <li>이력서만들기</li>
          <li>파일업로드</li>
          <li><a href="/oive/mypage">내정보</a></li>
      	<li><a href="/oive/logout">로그아웃</a></li>
      </ul>
    </header>

  

	<div class="container">
		<div class="row justify-content-center">
			<div class="col-lg-6 align-self-center">
				<form class="" action="editUserInfo" method="POST">
			
					<div class="input-group">
					  <label class="col-md-4 control-label" for="textinput">아이디</label>  
					  <div class="col-md">
					  <input id="textinput" name="userId" type="text" value="test" class="input--style-2"> 
					  </div>
					</div>
							
					<div class="input-group">
					  <label class="col-md-4 control-label" for="passwordinput">비밀번호</label>
					  <div class="col-md">
						<input id="passwordinput" name="password" type="password" placeholder="placeholder" class="input--style-2 ">
					  </div>
					</div>
					
					<!-- Password input-->
					<div class="input-group">
					  <label class="col-md-4 control-label" for="passwordinput">비밀번호 확인</label>
					  <div class="col-md">
					  <!-- TODO : 이 부분은 js로 비교하는게 좋을 것 같음 -->
						<input id="passwordinput" type="password" placeholder="placeholder" class="input--style-2 ">
					  </div>
					</div>
						
							
					<!-- Text input-->
					<div class="input-group">
					  <label class="col-md-4 control-label" for="textinput">e-mail</label>  
					  <div class="col-md">
					  <input id="textinput" name="email" type="text" value="abc@abc.com" class="input--style-2 ">  
					  </div>
					</div>
					
					<div class="input-group">
					  <label class="col-md-4 control-label" for="textinput">생일</label>  
					  <div class="col-md">
					  <input id="textinput" name="birthday" type="date" value="1996-03-25" class="input--style-2 ">
					  </div>
					</div>
							
					 &nbsp;<input type="submit" value="회원정보수정" class="btn btn-primary">
					 &nbsp;
		
			</form>	
    				<form id="unregister" method="POST" action="unregister">
					<input type="hidden" name="password">
				</form>
				<input onclick="unregister()" type="submit" value="회원탈퇴" class="btn btn-danger">
				</div>
			
			
				</div>
	
		</div>
		
		<div class="row">
			<div class="col-sm offset-sm-10">

    
			</div>
	    	
    	</div>
	
	
    
	


<footer class="footer">
	<div class="container">
		presented by OIVE

	</div>
</footer>

	<script>
		function unregister(){
			var rawPassword = prompt("비밀번호를 입력해주세요.");
			var dom = document.querySelector('#unregister');
			console.log(rawPassword);
			dom.querySelector('input').value = rawPassword;
			dom.submit();
		}
		(function ($) {
		    'use strict';

		    try {
		        $('.js-datepicker').daterangepicker({
		            "singleDatePicker": true,
		            "showDropdowns": true,
		            "autoUpdateInput": false,
		            locale: {
		                format: 'DD/MM/YYYY'
		            },
		        });
		    
		        var myCalendar = $('.js-datepicker');
		        var isClick = 0;
		    
		        $(window).on('click',function(){
		            isClick = 0;
		        });
		    
		        $(myCalendar).on('apply.daterangepicker',function(ev, picker){
		            isClick = 0;
		            $(this).val(picker.startDate.format('DD/MM/YYYY'));
		    
		        });
		    
		        $('.js-btn-calendar').on('click',function(e){
		            e.stopPropagation();
		    
		            if(isClick === 1) isClick = 0;
		            else if(isClick === 0) isClick = 1;
		    
		            if (isClick === 1) {
		                myCalendar.focus();
		            }
		        });
		    
		        $(myCalendar).on('click',function(e){
		            e.stopPropagation();
		            isClick = 1;
		        });
		    
		        $('.daterangepicker').on('click',function(e){
		            e.stopPropagation();
		        });
		    
		    
		    } catch(er) {console.log(er);}

		    try {
		        var selectSimple = $('.js-select-simple');
		    
		        selectSimple.each(function () {
		            var that = $(this);
		            var selectBox = that.find('select');
		            var selectDropdown = that.find('.select-dropdown');
		            selectBox.select2({
		                dropdownParent: selectDropdown
		            });
		        });
		    
		    } catch (err) {
		        console.log(err);
		    }
		    

		})(jQuery);

	</script>

  
</body></html>