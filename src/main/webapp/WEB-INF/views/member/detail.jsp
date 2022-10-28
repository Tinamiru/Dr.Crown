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
				<div class="col-md-10">
					<div style="text-align : center; margin: 10px;">
						<img src="<%=request.getContextPath()%>/resources/images/logo-full.png" alt="" width="30%" height="30%" >
					</div>
					<div class="authincation-content">
						<div class="row no-gutters">
							<div class="col-xl-12">
								<div class="memberDetailBoxBackground">
									<div style="border-bottom: 2px solid;">
										<h2 style="font-weight: bold;">마이페이지</h2>
									</div>
									<div class="row align-items-center">
										<div class="col-sm-6">
											<div class="row d-flex pt-3 pb-0">
												<div class="col-5 text-center mt-3">
													<img class="img-fluid rounded" src="<%=request.getContextPath()%>/resources/images/profile/33.jpg">
													<div class="col-12 justify-content-center mt-2">
														<button type="button" class="btn btn-rounded btn-dark">사진 수정</button>
													</div>
												</div>
												<div class="col-7 align-self-end">
													<div class="form-group">
														<label class="text-white"><strong>사번</strong></label>
														<input type="text" class="form-control form-control-input" value="값이 들어올 예정" readonly>
													</div>
													<div class="form-group pb-0 mb-0">
														<label class="text-white"><strong>이름</strong></label>
														<input type="text" class="form-control form-control-input" value=""placeholder="이름을 입력하세요">
													</div>
												</div>
											</div>
											<div class="row d-flex">
												<div class="col-12 mt-2">
													<div class="form-group">
														<label class="text-white"><strong>생년월일</strong></label>
														<input type="text" class="form-control form-control-input" value=""placeholder="이름을 입력하세요">
													</div>
													<div class="form-group">
														<label class="text-white"><strong>전화번호</strong></label>
														<input type="text" class="form-control form-control-input" value=""placeholder="이름을 입력하세요">
													</div>
													
												</div>
											</div>
										</div>
										<div class="col-sm-6 align-self-end mb-3">
											<div class="form-group">
												<label class="text-white"><strong>이메일</strong></label>
												<input type="text" class="form-control form-control-input" value=""placeholder="이름을 입력하세요">
											</div>
											<div class="input-group mb-3">
												<label class="text-white"><strong>주소</strong></label>
												<div class="input-group">
													<input type="text" class="form-control form-control-input" id="postcode"placeholder="우편변호">
													<div class="input-group-append">
														<button class="loginBtn btn btn-block" onclick="execDaumPostcode();"type="button">주소찾기</button>
													</div>
												</div>
											</div>
											<div class="input-group mb-3">
												<input type="text" class="form-control form-control-input" value=""id="addr1" placeholder="도로명주소">
											</div>
											<div class="input-group mb-3">
												<input type="text" class="form-control form-control-input" value=""id="addr2" placeholder="상세주소">
											</div>
											<span type="hidden"id="guide" style="color:#999;display:none"></span> 
											<input type="hidden" id="sample4_jibunAddress" placeholder="지번주소">
											<input type="hidden" id="sample4_extraAddress" placeholder="참고항목">
											
											
											<div class="text-center pt-2">
												<button type="submit" class="loginBtn btn btn-block">수정</button>
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