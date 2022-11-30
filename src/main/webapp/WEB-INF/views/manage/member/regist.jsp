<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<body class="h-100">
    <div class="authincation h-100 loginFormBackground">
        <div class="container h-100">
            <div class="row justify-content-center h-100 align-items-center ">
                <div class="row loginBoxBackground justify-content-center align-items-center text-center" style="padding: 50px;">
					<div class="col-12">
						<img src="<%=request.getContextPath()%>/resources/images/logo-full.png" alt="">
					</div>
  					<form role="form" class="form-horizontal" action="regist" method="post">
   						 <div class="authincation-content loginBoxBackground">
       						<div class="row no-gutters">
           						<div class="col-6">
                					<div class="auth-form loginBoxBackground text-left">
                					
                  						<div class="form-group ">
											<label class="text-white"><strong>이름</strong></label>
											<input type="text" class="form-control form-control-input"  name="memName" value="" placeholder="이름을 입력하세요">
										</div>
										<div class="form-group ">
											<label class="text-white"><strong>등록일자</strong></label>
											<input type="date" class="form-control form-control-input" id="regDateOrigin" placeholder="">
											<input type="hidden" name="memRegdate" value="" id="regDateParse"/>
										</div>
										<div class="input-group mb-2">
											<label class="text-white"><strong>전화번호</strong></label>
											<div class="input-group mb-2">
												<input type="text" class="form-control form-control-input" name="memPhone" placeholder="-없이 숫자만 입력">
											</div>
										</div>	
										
									</div>
            					</div>
								<div class="col-6">
                					<div class="auth-form loginBoxBackground text-left" style="border-left: solid 1px;">
                					
										<div class="input-group mb-2">
											<label class="text-white"><strong>권한</strong></label>
											<div class="input-group mb-2">
												<select class="form-control" name="typeAuthority" id="typeAuthority">
													<option value="c" selected>선택</option>
													<option value="n">일반</option>
													<option value="d">전문의</option>
													<option value="a">관리자</option>						
												</select>
											</div>
										</div>	
										<div class="input-group mb-2">
											<label class="text-white"><strong>직위</strong></label>
											<div class="input-group mb-2">
												<select class="form-control" name="memOfcps" id="typeOfcps">
													<!-- 데이터베이스에서 공통코드 불러오는것 필수 -->
													<option value="c" selected>선택</option>
													<option value="일반">일반</option>
													<option value="전문의">전문의</option>
													<option value="관리자">관리자</option>						
												</select>
											</div>
										</div>	
										<div class="input-group mb-2">
											<label class="text-white"><strong>직책</strong></label>
											<div class="input-group mb-2">
												<select class="form-control" name="memRspofc" id="typeRspofc">
													<!-- 데이터베이스에서 공통코드 불러오는것 필수 -->
													<option value="c" selected>선택</option>
													<option value="일반">일반</option>
													<option value="전문의">전문의</option>
													<option value="관리자">관리자</option>						
												</select>
											</div>
										</div>	
										<div class="row no-gutters justify-content-right" style="float: right;">
											<div class="text-center">
												<button type="button" id="registBtn" onclick="regist_go();" class="loginBtn btn">사원등록</button>
											</div>
											<div class="text-center">
												<button type="button" onclick="window.close();" class="loginBtn btn bg-white text-primary">&nbsp;취&nbsp;&nbsp;&nbsp;&nbsp;소&nbsp;</button>
											</div>
										</div>
										
									</div>
								</div>
							</div>
						</div>
					</form>  
                </div>
            </div>
        </div>
    </div>

<script>
function regist_go(){
    if(!$('input[name="memName"]').val()){
      swal ( "실패" ,  "이름은 필수입니다." ,  "error" );	
	  return;
	}
	if(!$('input[name="memPhone"]').val()){
		swal ( "실패" ,  "전화번호 입력은 필수입니다." ,  "error" );	
	  return;
	}
    if(!$('#regDateOrigin').val()){
    	swal ( "실패" ,  "등록일자를 기입하여 주십시오." ,  "error" );	
	  return;
	}
    if($("#typeAuthority option:selected").val() == 'c'){
    	swal ( "실패" ,  "권한을 선택하여 주십시오." ,  "error" );	
	  return;
	}
    if($("#typeOfcps option:selected").val() == 'c'){
    	swal ( "실패" ,  "직위를 선택하여 주십시오." ,  "error" );	
	  return;
	}
    if($("#typeRspofc option:selected").val() == 'c'){
    	swal ( "실패" ,  "직책을 선택하여 주십시오." ,  "error" );	
	  return;
	}
	var birOrigin = document.querySelector('#regDateOrigin');
	var birParse = document.querySelector('#regDateParse');
	
//     alert("등록날짜"+birOrigin.value)
//     alert("등록날짜의 타입"+typeof(birOrigin.value))
//     // 받은 날짜 date 타입으로 변환하여 히든에 입력해야함
    
    birParse.value = new Date(birOrigin.value)
//     return;
	
    
	
    var form = $('form[role="form"]');
	form.attr({"method":"post",
	     	   "action":"regist"
	   		  });
	form.submit();
	   
	
}
</script>

<c:if test="${from eq 'regist'}" >
	<script>
	window.onload = function(){
		swal({
			  title: "성공",
			  text: "사원아이디가 생성되었습니다.",
			  icon: "success",
			  button: "확인",
		})
		.then((willDelete) => {
		  if (willDelete) {
			  window.close();
			  window.opener.parent.location.reload(true);
		 
		  }
		});
		
	}

	</script>
</c:if>