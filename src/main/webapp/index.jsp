<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<script>
	if('${loginUser.memId}'){
		location.href="<%=request.getContextPath()%>/index";
	}else{
		location.href="<%=request.getContextPath()%>/common/loginForm";
	}
		
</script>    