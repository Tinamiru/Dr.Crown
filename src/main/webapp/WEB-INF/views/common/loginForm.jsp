<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<body class="h-100">
    <div class="authincation h-100 loginFormBackground">
        <div class="container h-100">
            <div class="row justify-content-center h-100 align-items-center">
                <div class="col-md-6">
                	<a><img src="<%=request.getContextPath()%>/resources/images/customer/customer-logo.png" alt=""></a>
                </div>
                <div class="col-md-6">
                    <div class="authincation-content">
                        <div class="row no-gutters">
                            <div class="col-xl-12">
                                <div class="auth-form loginBoxBackground">
									<div class="text-center mb-3">
										<a><img src="<%=request.getContextPath()%>/resources/images/logo-full.png" alt=""></a>
									</div>
									<form action="login" method="post">
										<input name="retUrl" value="${retUrl }" type="hidden" />
                                        <div class="form-group">
                                            <label class="mb-1 text-white"><strong>사번</strong></label>
                                            <input type="text" class="form-control form-control-input" name="empId" value="${pastID }">
                                        </div>
                                        <div class="form-group">
                                            <label class="mb-1 text-white"><strong>비밀번호</strong></label>
                                            <input type="password" class="form-control form-control-input" name="memPwd" value="">
                                        </div>
                                        
                                        <div class="text-center">
                                            <button type="submit" class="loginBtn btn btn-block">로그인</button>
                                        </div>
                                        
                                        <div class="loginOR">
                                        <h4>――――― 또는 ―――――</h4>
                                        </div>
                                        <div class="text-center">
                                             <button type="button" class="loginBtn btn btn-block" onclick="OpenWindow('aiLoginForm','회원등록',600,700);">Ai인증 로그인</button>
                                        </div>
                                    </form>
                                    <div class="container-fluid">
	                                    <div class="d-flex justify-content-center input-padding-top">
		                                    <ul>
											    <li class="login-form-li"><a class="text-blue" href="<%=request.getContextPath()%>/common/findEmpnumForm">사번찾기</a></li>
											    <li class="login-form-li"><a class="text-blue" href="<%=request.getContextPath()%>/common/findPwdForm">비밀번호찾기</a></li>
											    <li class="login-form-li"><a class="text-blue" href="<%=request.getContextPath()%>/common/regist">회원가입</a></li>
											</ul>
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