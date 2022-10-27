<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>

<body class="h-100">
    <div class="authincation h-100 loginFormBackground">
        <div class="container h-100">
            <div class="row justify-content-center h-100 align-items-center ">
                <div class="row loginBoxBackground justify-content-center align-items-center text-center" style="padding: 50px;">
                	<div class="col-xl-12">
               			<a href="<%=request.getContextPath()%>/common/loginForm"><img src="<%=request.getContextPath()%>/resources/images/logo-full.png" alt=""></a>
                	</div>
                   <form role="form" class="form-horizontal" action="regist" method="post">
	                    <div class="authincation-content loginBoxBackground">
	                        <div class="row no-gutters">
	                            <div class="col-xl-6">
	                             	
	                                <div class="auth-form loginBoxBackground text-left">
	                                        <div class="input-group mb-3">
	                                        	<label class="text-white"><strong>사번</strong></label>
	                                        	 <div class="input-group mb-3">
	                                            <input type="id" class="form-control form-control-input" name="empId" value=""  placeholder="사번을 입력하세요">
	                                            <div class="input-group-append">
	                                                <button class="loginBtn btn btn-block" type="button">확인</button>
	                                            </div>
	                                             </div>
	                                        </div>
	                                        
	                                         <div class="form-group ">
	                                            <label class="text-white"><strong>이름</strong></label>
	                                            <input type="text" class="form-control form-control-input"  name="memName" value="" placeholder="이름을 입력하세요">
	                                        </div>
	                                        
	                                        <div class="form-group ">
	                                            <label class="text-white"><strong>비밀번호</strong></label>
	                                            <input type="password" class="form-control form-control-input" value="" name="memPwd" id="pwd" placeholder="8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.">
	                                        </div>
	                                        
	                                        
	                                         <div class="form-group">
	                                            <input type="password" class="form-control form-control-input" onkeyup="check_pw()" id="pwd_re" value="" placeholder="비밀번호 확인">
											     <span id="pw_check_re"></span> 
	                                        </div>
	                                        
	                                        <div class="form-group ">
	                                            <label class="text-white"><strong>이메일</strong></label>
	                                            <input type="text" class="form-control form-control-input" value="" name="memMail" placeholder="이메일을 입력하세요">
	                                        </div>
	                                        
	                  
	                                </div>
	                            </div>
	
	                            <div class="col-xl-6">
	                                <div class="auth-form loginBoxBackground text-left" style="border-left: solid 1px;">
	                                	<div class="form-group ">
	                                           <label class="text-white"><strong>생년월일</strong></label>
	                                            <input type="date" class="form-control form-control-input" value="" placeholder="">
	                                        	
	                                  	</div>
	                                	<div class="input-group mb-3">
	                                        <label class="text-white"><strong>전화번호</strong></label>
	                                         <div class="input-group mb-3">
	                                            <input type="text" class="form-control form-control-input" name="memPhone" placeholder="-없이 숫자만 입력">
	                                            <div class="input-group-append">
	                                                <button class="loginBtn btn btn-block" type="button">인증번호 받기</button>
	                                            </div>
	                                        </div>
	                                	</div>	
	                                       
	                                        <div class="input-group mb-3">
	                                            <input type="text" class="form-control form-control-input"  placeholder="인증번호를 입력하세요">
	                                            <div class="input-group-append">
	                                                <button class="loginBtn btn btn-block" type="button">확인</button>
	                                            </div>
	                                        </div>
	                                        
	                                        <div class="input-group mb-3">
	                                        	<label class="text-white"><strong>주소</strong></label>
	                                        	<div class="input-group">
	                                            <input type="text" class="form-control form-control-input" id="postcode"  placeholder="우편변호">
	                                     
	                                            <div class="input-group-append">
	                                                <button class="loginBtn btn btn-block" onclick="execDaumPostcode();"  type="button">주소찾기</button>
	                                            </div>
	                                              </div>
	                                        </div>
	                                       
	                                         <div class="input-group mb-3">
	                                            
	                                            <input type="text" class="form-control form-control-input" value=""  id="addr1" placeholder="도로명주소">
	                                        </div>
	                                          <div class="input-group mb-3">
	                                            <input type="text" class="form-control form-control-input" value=""  id="addr2" placeholder="상세주소">
	                                        </div>
	                                        
	                                        <span type="hidden"  id="guide" style="color:#999;display:none"></span> 
											<input type="hidden" id="sample4_jibunAddress" placeholder="지번주소">
											<input type="hidden" id="sample4_extraAddress" placeholder="참고항목">
	                                	  
	                                </div>
	                            </div>
	                        </div>
	                        <div class="row no-gutters justify-content-right" style="float: right;">
			                        <div class="text-center">
			                            <button type="button" id="registBtn" onclick="regist_go();" class="loginBtn btn btn-block">회원가입</button>
			                        </div>
			                        <div></div>
		                         	<div class="text-center">
			                             <button type="button" class="loginBtn btn bg-white text-primary btn-block">&nbsp;취&nbsp;&nbsp;&nbsp;&nbsp;소&nbsp;</button>
			                        </div>
	                        </div>
	                    </div>
	                 </form>  
                </div>
            </div>
        </div>
    </div>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function execDaumPostcode() {
    	
    	new daum.Postcode({
           
    		
        	oncomplete: function(data) {
             
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
           
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                document.getElementById('postcode').value = data.zonecode;
                document.getElementById("addr1").value = roadAddr;
               
                
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
               
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
 
            },
    	theme: {
    		searchBgColor: "#484769", //검색창 배경색
    		queryTextColor: "#FFFFFF" //검색창 글자색
	    }
        }).open();
    }
</script>
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
    	ch_pwd = 1
    } 
 } 
 
function regist_go(){
	//alert("regist btn click");
	if(!$('input[name="empId"]').val()){
		swal ( "실패" ,  "사번입력은 필수입니다." ,  "error" );  	
	  return;
	}
    
	//if($('input[name="id"]').val()!=checkedID){
    //  alert("사번 생성 여부 확인이 필요합니다.");
    //  return;
    //}
	
    if(!$('input[name="memPwd"]').val()){
    	swal ( "실패" ,  "패스워드는 필수입니다." ,  "error" );
	  return;
    }
    if(!$('input[name="memName"]').val()){
    	swal ( "실패" ,  "이름은 필수입니다." ,  "error" );
	  return;
	}
    
    var form = $('form[role="form"]');
	form.attr({"method":"post",
	     	   "action":"regist"
	   		  });	
	swal ( "성공" ,  "사원등록이 완료되었습니다." ,  "success" );
	form.submit();
	   
	
}
</script>

</body>
</html>