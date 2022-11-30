<%@ page language="java" contentType="text/html; charset=UTF-8"	
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:if test="${from eq 'denied'}">
	<script>
		window.onload = function(){
			alert("비밀번호가 일치하지 않습니다.");
			window.parent.location.href="/index";
		}
	</script>
</c:if>

