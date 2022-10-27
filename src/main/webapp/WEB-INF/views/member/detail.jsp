<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
</head>

<body class="h-100">
    <div class="authincation h-100 loginFormBackground">
        <div class="container h-100">
            <div class="row justify-content-center h-100 align-items-center">
			
			
			
                <div class="col-md-8">
					<div style="text-align : center; margin: 10px;">
				     	<img src="<%=request.getContextPath()%>/resources/images/logo-full.png" alt="" width= "50%" height=" 50%" >
					</div>

                    <div class="authincation-content">
                        <div class="row no-gutters">
                            <div class="col-xl-12">
                            
                                <div class="auth-form loginBoxBackground">
									<div style="border-bottom: 2px solid;">
									<h1 style="font-weight: bold;">마이페이지</h1>
                                    </div>
                                    
                                    <div class="row">
                                    	<div class="col-sm-6">
                                    	<div style="text-align : center; margin: 10px;">
                                    	<a><img src="<%=request.getContextPath()%>/resources/images/profile/33.jpg" alt="" width= "50%" height=" 50%" ></a>
                                    	</div>  
                                    	</div>
                                    	<div class="col-sm-6">    
	                                        <div class="form-group">
	                                            <label class="text-white"><strong>사번</strong></label>
	                                            <input type="text" class="form-control form-control-input" value=""placeholder="이름을 입력하세요">
	                                        </div>
	                                        
	                                        <div class="form-group">
	                                            <label class="text-white"><strong>이메일</strong></label>
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
            
        </div>
    </div>


</body>
</html>