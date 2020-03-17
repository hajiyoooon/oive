<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="org.springframework.web.context.annotation.RequestScope"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
    <header class="header navbar sticky-top">
      <a class="navbar-brand" href="/oive/">spec overflow :</a>
        <ul>
          <li><a href="/oive/profile">프로필</a></li>
          <li class="dropdown-own">자기소개서
          		<ul>
          			<li><a href="/oive/self_introduce/list">조회</a></li>
          			<li><a href="/oive/self_introduce/write">작성</a></li>
          		</ul>
          </li>
          <li>이력서만들기</li>
          <li><a href="/oive/upload">파일함</a></li>
          <li><a href="/oive/mypage">내정보</a></li>
      	<li><a href="/oive/logout">로그아웃</a></li>
      </ul>
    </header>
