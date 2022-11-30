<%@ page language="java" contentType="text/html; charset=UTF-8"	
    pageEncoding="UTF-8"%>
<%
response.setHeader("Access-Control-Allow-Origin","*");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
</head>

<body class="h-100">
    <div class="authincation h-100 loginFormBackground">
        <div class="container h-100">
            <div class="row justify-content-center h-100 align-items-center">
                <div class="col-md-6">
                    <div class="authincation-content">
                        <div class="row no-gutters">
                            <div class="col-xl-12" id="Context">
                                <div class="auth-form loginBoxBackground">
									<div class="text-center mb-5">
									<p id="contents">${loginUser.memId} 님 안녕하세요~</p>
									<progress value="0" max="5" id="progressBar"></progress>
									 <a><img src="<%=request.getContextPath()%>/resources/images/logo-full.png" alt=""></a>
									</div>
                      					 <div class="row justify-content-center m-5">
						 			    <iframe
											    src="http://192.168.141.29:5005"
											    name="프레임 이름"
											    width="600px"
											    height="200px"
											    sandbox="allow-scripts allow-popups">
											  브라우저 업데이트가 필요합니다! 
											</iframe> 								
                                        </div>
                                        
                                        
                                        <div class="text-center">
                                            <button type="submit"  onclick="window.close();" class="loginBtn btn btn-block">취소</button>
                                        </div>
                                   
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<script src="<%=request.getContextPath()%>/resources/vendor/jquery/jquery.min.js" ></script>
<script>
var timeleft = 5;
window.downloadTimer = setInterval(function(){
  if(timeleft <= 0){
    clearInterval(downloadTimer);
  }
  document.getElementById("progressBar").value = 5 - timeleft;
  timeleft -= 1;
}, 1000);


if (${loginUser ==null}) {
	
	location.reload();
	}else{
		
	
var count =5;
setInterval( window.relogin = function() {
console.log(count);
	$.ajax({
    type : "GET",
    url :  "<%=request.getContextPath()%>/api/proxy",
    dataType : "text",
    error : function() {
    	alert("통신실패")
    },
    success : function(data) {
    	console.log(data)
    	downloadTimer
    	if (count==0) {
    		alert("인식횟수 초과")
    		opener.location.href ="/common/logout";
    		window.close()
		}else{
			
    	 if(data== ""){
    		 downloadTimer
    		 count--;
    		 document.getElementById("contents").innerHTML = "인식이어렵습니다 카메라정면을봐주세요"+ " 인식횟수"+ count+"번 남았습니다"
    	}else if (data== "unknown") {
    		downloadTimer
    		count--;
    		 document.getElementById("contents").innerHTML = "인식이어렵습니다 카메라정면을봐주세요"+ " 인식횟수"+ count+"번 남았습니다"
		}else if('${loginUser.memId}' == data){
			
			alert("${loginUser.memId}"+"님 환영합니다")
    		location.href="<%=request.getContextPath()%>/index";
    		opener.location.href = "/index";
    		window.close()
    		<%-- location.href="<%=request.getContextPath()%>/common/loginForm"; --%>
    		
    	}else{
    		downloadTimer
    		count--;
    		 document.getElementById("contents").innerHTML = "다른사용자입니다"+ "인식횟수"+ count+"번 남았습니다" 
    	}
		}
    }

})},3000);
	}
	
</script>

</body>
</html>