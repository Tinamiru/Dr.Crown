<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<p> 얼굴인식중입니다...</p>
	<!--     <iframe
											    src="http://localhost:5005"
											    name="프레임 이름"
											    width="600px"
											    height="600px"
											    sandbox="allow-scripts allow-popups">
											  iframe를 지원하지 않는 브라우저인 경우 대체정보를 제공  
											</iframe> 
 -->    
<script>
<%-- 	if('${loginUser.memId}'){
		location.href="<%=request.getContextPath()%>/index";
	}else{
		location.href="<%=request.getContextPath()%>/common/loginForm";
	} --%>

</script>    
<script src="<%=request.getContextPath()%>/resources/vendor/jquery/jquery.min.js" ></script>
<script>
<%-- setInterval(function() {
	$.ajax({

    type : "GET",
    url :  "<%=request.getContextPath()%>/api/proxy",
    dataType : "text",
    error : function() {
    	alert("통신실패")
    },
    success : function(data) {
    	console.log(data)
    	
    	 if('${loginUser.memId}' == data){
    		alert("${loginUser.memId}"+"님 환영합니다")
    		location.href="<%=request.getContextPath()%>/index";
    	}else{
    		location.href="<%=request.getContextPath()%>/common/loginForm";
    	} 
    }

})},3000); --%>


</script>