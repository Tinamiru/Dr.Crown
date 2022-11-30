<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<body class="h-100">
	<div class="authincation h-100 loginFormBackground">
		<div class="container h-100">
			<div class="row justify-content-center h-100 align-items-center">
				<div class="col-md-10">
					<div style="text-align : center; margin: 10px;">
						<img src="<%=request.getContextPath()%>/resources/images/logo-full.png" alt="" width="30%" height="30%" >
					</div>
					<div class="authincation-content">
						<div class="row no-gutters">
							<div class="col-xl-12">
								<form class="form-horizontal" role="memberPicture" action="modifyMemPic" method="post" enctype="multipart/form-data">
									<input type="file" accept="image/*" id="inputFile" onchange="changePicture_go();" name="picture" style="display:none" />
									<input id="picture" class="form-control" type="hidden" name="fileName" />
									<input id="pictureType" class="form-control" type="hidden" name="fileClass" />
									<input id="pictureSize" class="form-control" type="hidden" name="fileSize" />
									<input id="inputFileName" class="form-control" type="hidden" name="tempPicture" disabled
									value=""/>
								</form>
								<form role="form" class="form-horizontal" action="modify" method="post">
									<div class="memberDetailBoxBackground">
										<div class="mb-3" style="border-bottom: 2px solid;">
											<h2 style="font-weight: bold;">마이페이지</h2>
										</div>
										<div class="row">
											<div class="col-6">
												<div class="row pb-0">
													<div class="col-5 text-center mt-3">
															<img class="img-fluid rounded" src="<%=request.getContextPath() %>/member/getPicture.do">
														<div class="col-12 justify-content-center mt-2">
															<label for="inputFile" class="btn btn-rounded btn-dark">사진 수정</label>
														</div>
													</div>
													<div class="col-7">
														<div class="form-group">
															<label class="text-white"><strong>사번</strong></label>
															<input type="text" class="form-control form-control-input" name="memId" value="${member.memId }" readonly>
														</div>
														<div class="form-group pb-0 mb-0">
															<label class="text-white"><strong>이름</strong></label>
															<input type="text" class="form-control form-control-input" name="memName" value="${member.memName }">
														</div>
													</div>
												</div>
												<div class="row d-flex">
													<div class="col-12 mt-2">
														<div class="form-group">
															<label class="text-white"><strong>생년월일</strong></label>
															<fmt:formatDate var="memBir" value="${member.memBir }" pattern="yyyyMMdd"/>
															<input type="text" class="form-control form-control-input" placeholder="생년월일 8자리를 입력하십시오." id="birOrigin" value="${memBir}">
															<input type="hidden" id="birParse" name="memBir" value="">
														</div>
														<div class="form-group">
															<label class="text-white"><strong>전화번호</strong></label>
															<input type="text" class="form-control form-control-input" name="memPhone" value="${member.memPhone }">
														</div>
														
													</div>
												</div>
											</div>
											<div class="col-6 align-self-end mb-3 border-dark border-left">
												<div class="form-group">
													<label class="text-white"><strong>이메일</strong></label>
													<input type="text" class="form-control form-control-input" name="memMail" value="${member.memMail }">
												</div>
												<div class="input-group mb-3">
													<label class="text-white"><strong>주소</strong></label>
													<div class="input-group">
														<input type="text" class="form-control form-control-input" id="postcode" name="memPcode" value="${member.memPcode }" readonly>
														<div class="input-group-append">
															<button class="loginBtn btn btn-block" onclick="execDaumPostcode();"type="button">주소찾기</button>
														</div>
													</div>
												</div>
												<div class="input-group mb-3">
													<input type="text" class="form-control form-control-input" id="addr1" name="memAddr" value="${member.memAddr }" readonly>
												</div>
												<div class="input-group mb-3">
													<input type="text" class="form-control form-control-input" id="addr2" name="memAddr2" value="${member.memAddr2 }">
												</div>
												<span type="hidden"id="guide" style="color:#999;display:none"></span> 
												<input type="hidden" id="sample4_jibunAddress" placeholder="지번주소">
												<input type="hidden" id="sample4_extraAddress" placeholder="참고항목">
												
												<div class="row justify-content-center">
													<div class="col-5">
														<button class="loginBtn btn btn-block" type="button">지문인식 등록</button>
													</div>
													<div class="col-5">
														<button class="loginBtn btn btn-block" type="button">안면인식 등록</button>
													</div>
												</div>
												<div class="row justify-content-center mt-3">
													<div class="col-5">
														<button class="editBtn btn btn-block" onclick="update_go()" type="button">정보 수정</button>
													</div>
													<div class="col-5">
														<button class="closeBtn btn btn-block" onclick="window.close();" type="button">닫기</button>
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
function update_go(){
    if(!$('input[name="memName"]').val()){
    	swal ( "실패" ,  "이름은 필수입니다." ,  "error" );
	  return;
	}
    
	if(!$('input[name="memPhone"]').val()){
		swal ( "실패" ,  "전화번호 입력은 필수입니다." ,  "error" );  	
	  return;
	}
	
    if(!$('#birOrigin').val()){
    	swal ( "실패" ,  "생년월일 입력은 필수입니다." ,  "error" );
	  return;
    }
    
    if($('#birOrigin').val().length != 8){
    	swal ( "실패" ,  "생년월일은 양식이 맞지 않습니다." ,  "error" );
	  return;
    }
	
	var birOrigin = document.querySelector('#birOrigin');
	var birParse = document.querySelector('#birParse');
	
	var prepareParseDate = birOrigin.value
	var parseDate = prepareParseDate.slice(0,4) + '-' + prepareParseDate.slice(4, 6) + '-' + prepareParseDate.slice(6,8);
	
	birParse.value = new Date(parseDate);
    
    var form = $('form[role="form"]');
	form.attr({"method":"post",
	     	   "action":"modify"
	   		  });	
	form.submit();
}
</script>

<c:if test="${from eq 'modify'}" >
	<script>
		window.onload = function(){
				swal({
				  title: "성공",
	  			  text: "회원정보가 수정되었습니다.",
	  			  icon: "success",
				}).then((willDelete) => {
						opener.parent.location.reload();
	  					window.close();
    			});
			};
	</script>
</c:if>
<c:if test="${from eq 'modifyPic'}" >
	<script>
		window.onload = function(){
			swal({
				  title: "성공",
	  			  text: "회원의 프로필 사진이 수정되었습니다.",
	  			  icon: "success",
				}).then((willDelete) => {
						opener.parent.location.reload();
	  					window.close();
  			});
		}
	</script>
</c:if>

<script>
function changePicture_go(){
	var picture = $('input#inputFile')[0];
	var fileFormat = picture.value.substr(picture.value.lastIndexOf(".")+1).toUpperCase();
	  
	
	//이미지 확장자 jpg 확인
	if(!(fileFormat=="JPG" || fileFormat=="JPEG" || fileFormat=="PNG")){
		alert("이미지는 jpg, png 형식만 가능합니다.");
		return;
	}
	
	document.getElementById('inputFileName').value = picture.files[0].name;
	document.getElementById('pictureType').value = fileFormat;
	document.getElementById('pictureSize').value = picture.files[0].size;
	
	$('input[name="fileName"]').val(picture.files[0].name);
    var form = $('form[role="memberPicture"]');
    
	form.submit();
}

</script>
</body>
