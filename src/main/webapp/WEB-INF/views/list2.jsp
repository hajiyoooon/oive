<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="org.springframework.web.context.annotation.RequestScope"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
    
<c:if test="${!empty list }">
	<!DOCTYPE html>
	<c:forEach var="item" items="${ list }" >
		<ul data-sid="${item.id}">
			<li class="keyword">
				<c:forTokens var="keyword" items="${ item.keywords }" delims=",">
					<a href="?boundary=keyword&input=${ keyword }" class="badge badge-primary">${ keyword }</a>
				</c:forTokens>
			</li>
			<li class="company">${item.appliedCompany}</li>
			 <li class="applied-date">${item.applyDate}</li>
			 <li class="last-modified">${item.editDate}</li>
			 <li class="view"><a href="write/${ item.id }">조회/수정</a></li>        
			 <li class="delete"><a href="javascript:deletepost(${item.id});">삭제</a></li>	
		</ul>
	</c:forEach>
</c:if>
