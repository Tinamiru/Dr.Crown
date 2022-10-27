<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호변경</title>
</head>

<body class="h-100">
    <div class="authincation h-100 loginFormBackground">
        <div class="container h-100">
            <div class="row justify-content-center h-100 align-items-center">
			
			
			
                <div class="col-md-8">
					<div style="text-align : center; margin: 10px;">
					
					     <a><img src="<%=request.getContextPath()%>/resources/images/logo-full.png" alt="" width= "50%" height=" 50%" ></a>
						
					</div>

                    <div class="authincation-content">
                        <div class="row no-gutters">
                            <div class="col-xl-12">
                            
                                <div class="auth-form loginBoxBackground">
									<div style="border-bottom: 2px solid;">
									<h1 style="font-weight: bold;">비밀번호변경</h1>
                                    </div>
                                    
             							<div style="margin-top:15px">
	                                        <div class="form-group">
	                                            <label class="text-white"><strong>현재 비밀번호</strong></label>
	                                            <input type="password" class="form-control form-control-input" value=""placeholder="비밀번호를 입력하세요">
	                                        </div>
	                                        
	                                          <div class="form-group ">
	                                            <label class="text-white"><strong>새비밀번호</strong></label>
	                                            <input type="password" class="form-control form-control-input" value="" name="memPwd" id="pwd" placeholder="8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.">
	                                        </div>
	                                        
	                                        
	                                         <div class="form-group">
	                                         <label class="text-white"><strong>새비밀번호 확인</strong></label>
	                                            <input type="password" class="form-control form-control-input" onkeyup="check_pw()" id="pwd_re" value="" placeholder="비밀번호 확인">
											     <span id="pw_check_re"></span> 
	                                        </div>
	                                        
	                                        
	                                        
	                                         <div class="text-center">
			                            <button type="button" id="registBtn" onclick="regist_go();" class="loginBtn btn btn-block">비밀번호 변경</button>
			                        </div>
			                        <div></div>
		                         	<div class="text-center">
			                             <button type="button" class="loginBtn btn bg-white text-primary btn-block">&nbsp;취&nbsp;&nbsp;&nbsp;&nbsp;소&nbsp;</button>
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


<script>
function check_pw(){  //비밀번호 확인 
    var p = document.getElementById('pwd').value; 
    var p_cf = document.getElementById('pwd_re').value;
    
    if (p!=p_cf) { 
      document.getElementById('pw_check_re').innerHTML = "비밀번호가 다릅니다."; 
      document.getElementById('pw_check_re').style.color='#DC3545';
      ch_pwd = -1
      return;
    } else { 
    	document.getElementById('pw_check_re').innerHTML = "비밀번호가 일치합니다"; 
    	document.getElementById('pw_check_re').style.color='#333289';
    	ch_pwd = 1
    } 
 } 
</script>
</body>
</html>