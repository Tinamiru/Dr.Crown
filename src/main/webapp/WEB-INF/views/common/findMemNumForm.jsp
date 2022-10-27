<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사번 찾기</title>
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
									<div class="text-center mb-3">
									  <a href="<%=request.getContextPath()%>/common/loginForm"><img src="<%=request.getContextPath()%>/resources/images/logo-full.png" alt=""></a>
									</div>
                                    
                                    <form action="index.html">
                                        
                                        <div class="form-group">
                                            <label class="text-white"><strong>이름</strong></label>
                                            <input type="text" class="form-control form-control-input" value=""placeholder="이름을 입력하세요">
                                        </div>
                                        
                                        
                                        <label class="text-white"><strong>전화번호</strong></label>
                                         <div class="input-group mb-3">
                                            <input type="text" class="form-control form-control-input"  placeholder="-없이 숫자만 입력">
                                            <div class="input-group-append ">
                                                <button class="loginBtn btn btn-block" type="button">인증번호 받기</button>
                                            </div>
                                        </div>
                                       
                                        <div class="input-group mb-3">
                                            <input type="text" class="form-control form-control-input"  placeholder="인증번호를 입력하세요">
                                            <div class="input-group-append ">
                                                <button class="loginBtn btn btn-block" type="button">확인</button>
                                            </div>
                                        </div>
                                        
                                        <div class="text-center">
                                            <button type="submit" class="loginBtn btn btn-block">사번찾기</button>
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