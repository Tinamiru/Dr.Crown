<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


    <div class="authincation h-100 loginFormBackground">
        <div class="container h-100">
            <div class="row justify-content-center h-100 align-items-center">
                <div class="col-md-6">
                    <div class="authincation-content">
                        <div class="row no-gutters">
                            <div class="col-xl-12">
                                <div class="auth-form loginBoxBackground">
									<div class="text-center mb-3">
									 <img src="<%=request.getContextPath()%>/resources/images/logo-full.png" alt="">
									</div>
                                    <form action="modifyPwd" method="post" role="pwd">
	                                    <div class="form-group">
	                                        <label class="text-white"><strong>현재 비밀번호</strong></label>
	                                        <input type="password" id="pwdNow" name="password" class="form-control form-control-input" value="">
	                                    </div>
	                                    <div class="form-group">
	                                        <label class="text-white"><strong>새 비밀번호</strong></label>
	                                        <input type="password" id="checkOne" onkeyup="pwdCheck()" name="newPassword" class="form-control form-control-input" value="">
	                                    </div>
	                                     <div class="form-group">
	                                        <label class="text-white"><strong>비밀번호 확인</strong></label>
	                                        <input type="password" id="checkTwo" onkeyup="pwdCheck()" class="form-control form-control-input" value="">
	                                        <p id="waring" style="height:25px;"></p>
	                                    </div>
	                                    <div class="text-center">
	                                        <button type="button" onclick="pwdModifyGo()" class="loginBtn btn btn-block">비밀번호 변경</button>
	                                    </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <script>
   		let checkNewPwd = 0;
   		let pwdNow = document.querySelector('#pwdNow');
   		let one = document.querySelector('#checkOne');
   		let two = document.querySelector('#checkTwo');
   		let waring = document.querySelector('#waring');
    	function pwdCheck(){
    		
    		if(!one.value && !two.value){
    			waring.style.cssText = "color:black; height:25px"
    			waring.textContent = "비밀번호를 입력하여 주십시오."
    			return;
    		}else if(one.value == two.value){
    			waring.style.cssText = "color:blue; height:25px"
    			waring.textContent = "비밀번호가 일치합니다."
    			checkNewPwd = 1;
    			return;
    		}else{
    			waring.style.cssText = "color:red; height:25px"
    			waring.textContent = "비밀번호가 일치하지 않습니다."
    			return;
    		}
    	}
    </script>
    <script>
    	function pwdModifyGo(){
    		var pwd = document.querySelector('form[role="pwd"]');
    		
    		if(!one.value || !two.value || !pwdNow.value){
    			swal( "비밀번호를 입력하여 주십시오." , "" ,  "error" );
    			return;
    		}
    		
    		if(checkNewPwd == 0){
    			swal( "비밀번호가 일치하지 않습니다." , "" ,  "error" );
    			return;
    		}
    		
    		swal({
  			  title: "비밀번호 변경 후 로그아웃됩니다.",
  			  text: "변경하시겠습니까?",
  			  icon: "info",
  			  buttons: true,
  			  dangerMode: true,
  			})
  			.then((willDelete) => {
  			  if (!willDelete) {
  			    swal("취소되었습니다.");
  			    return;
  			  } else {
  				pwd.submit()
  			  }
  			});
    		
    	}
    </script>
    
    <c:if test="${from eq 'pwdModify'}">
		<script>
		window.onload= function(){
			swal({
			  title: "비밀번호가 변경되었습니다.",
  			  text: "로그인 페이지로 이동합니다.",
  			  icon: "info",
			}).then((willDelete) => {
					window.opener.parent.location.href = '/';
  					window.close();
    			});
			};
		</script>
    </c:if>
    <c:if test="${from eq 'denied'}">
		<script>
			window.onload= function(){
			swal( "비밀번호가 일치하지 않습니다." , "" ,  "error" )
			};
		</script>
    </c:if>
    
    <c:if test="${from eq 'freshman'}">
		<script>
			window.onload= function(){
			swal( "최초 로그인하셨습니다." , "비밀번호를 변경하여 주십시오." ,  "info" )
			};
		</script>
    </c:if>
