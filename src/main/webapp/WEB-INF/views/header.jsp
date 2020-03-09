<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="org.springframework.web.context.annotation.RequestScope"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
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
