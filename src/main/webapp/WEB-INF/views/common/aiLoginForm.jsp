<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                            <div class="col-xl-12">
                                <div class="auth-form loginBoxBackground">
									<div class="text-center mb-5">
									 <a><img src="<%=request.getContextPath()%>/resources/images/logo-full.png" alt=""></a>
									</div>
                      					 <div class="row justify-content-center m-5">
                                        <div class="text-center mb-5 mr-5 mt-5">
									    <a><img src="<%=request.getContextPath()%>/resources/icons/face.png" alt=""></a>
									   	<h4>얼굴인식</h4>
									    </div>  
									    
										<div class="text-center mb-5 ml-5 mt-5">
										<a><img src="<%=request.getContextPath()%>/resources/icons/touch.png" alt=""></a>
										<h4>지문인식</h4>
									    </div>
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


</body>
</html>