<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%> 
   
   
<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" />
<c:set var="noticeList" value="${dataMap.noticeList }" />




<div class="container-fluid mt-4">
	<div class="row">
		<div class="col-sm-8 justify-content-center">  
			<div class="row">
				<div class="col-sm-12">
					<div class="bootstrap-carousel mt-3 mb-5">
		    			<div id="carouselExampleIndicators2" class="carousel slide" data-ride="carousel">
		        			<ol class="carousel-indicators">
					            <li data-target="#carouselExampleIndicators2" data-slide-to="0" class="active"></li>
					            <li data-target="#carouselExampleIndicators2" data-slide-to="1"></li>
					            <li data-target="#carouselExampleIndicators2" data-slide-to="2"></li>
					            <li data-target="#carouselExampleIndicators2" data-slide-to="3"></li>
					            <li data-target="#carouselExampleIndicators2" data-slide-to="4"></li>
					            <li data-target="#carouselExampleIndicators2" data-slide-to="5"></li>
		       			 	</ol>
		  				 	<div class="carousel-inner">
					            <div class="carousel-item active">
					                <img class="d-block w-100" width="1000px" height="250px" src="https://pbs.twimg.com/media/D2Ay-biUcAE36H9.jpg" alt="First slide">
					            </div>
					            <div class="carousel-item">
					                <img class="d-block w-100" width="1000px" height="250px" src="http://drive.google.com/uc?export=view&id=1suj5_VqH-izp-sjVARk5fto-nn18S6-t" alt="Second slide">
					            </div>
					            <div class="carousel-item">
					                <img class="d-block w-100"  width="1000px" height="250px" src="http://www.dentistnews.kr/news/photo/202209/6583_10506_3434.jpg" alt="Third slide">
					            </div>
					             <div class="carousel-item">
					                <img class="d-block w-100" width="1000px" height="250px" src="https://dental.or.kr/data/file/board1/763670174_HNldhZyV_B1A4B0EDBDC3BEC8.jpg" alt="Fourth slide">
					            </div>
					             <div class="carousel-item">
					                <img class="d-block w-100" width="1000px" height="250px" src="https://dental.or.kr/data/file/board1/2156266019_O9ahyUcN_C4A1C4ABC0CFB1E228B9E8B3CA29_2.png" alt="Fifth slide">
					            </div>
					             <div class="carousel-item">
					                <img class="d-block w-100" width="1000px" height="250px" src="http://drive.google.com/uc?export=view&id=1hwA93BfhiMrlmzDshNV-mz5LcHxrHoea" alt="Sixth slide">
					            </div>
		        			</div>
		        			<a class="carousel-control-prev" href="#carouselExampleIndicators2" data-slide="prev">
		        				<span class="carousel-control-prev-icon"></span>
		        				<span class="sr-only">Previous</span>
		        			</a>
		        			<a class="carousel-control-next" href="#carouselExampleIndicators2" data-slide="next">
			        			<span class="carousel-control-next-icon"></span>
			            		<span class="sr-only">Next</span>
		            		</a>
					    </div>
					</div>
				</div>
			</div>
			<div class="row justify-content-between">
				<!--  공지사항  -->
				<div class="col-sm-6 justify-content-center" > 
					<div class="card-body" style="border: solid 1px; height: 50vh;">
					<h3>▶공지사항</h3> 	
						<div class="table-responsive">
							<table class="table table-bordered"
								style="margin: auto; text-align: center;">
								<thead class="thead">
									<tr bgcolor="#333258" style="color: white">
										<th scope="col" style="width:10%">#</th>
										<th scope="col" style="width:70%">제목</th>
										<th scope="col" style="width:20%">작성일</th>
									</tr>
								</thead>
								<c:if test="${empty noticeList }" >
									<tr>
										<td colspan="8">
											<strong>해당 내용이 없습니다.</strong>
										</td>
									</tr>
								</c:if>	
								<c:forEach items="${noticeList}" var="notice">
									<tbody>
										<tr>
											<td>${notice.noticeNo}</td>
											<td>${notice.noticeTitle}</td>
											<td><fmt:formatDate value="${notice.noticeRegdate }"
													pattern="MM-dd" /></td>
										</tr>
									</tbody>
								</c:forEach>
							</table>
					    </div>
					</div>
			  	</div>
			  	<!--  공지사항 end  -->
			  	<!--  금일 근무 현황  -->
			    <div class="col-sm-6 justify-content-center"> 
					<div class="card-body" style="border: solid 1px; height: 50vh;" >
					<h3>▶금일 근무 현황</h3> 	
						<div class="table-responsive">
							<table class="table table-bordered"
								style="margin: auto; text-align: center;">
								<thead class="thead">
									<tr bgcolor="#333258" style="color: white">
										<th scope="col" style="width:10%">#</th>
										<th scope="col" style="width:20%">이름</th>
										<th scope="col" style="width:20%">직무</th>
										<th scope="col" style="width:50%">출근시간</th>
									</tr>
								</thead>
								<c:if test="${empty noticeList }" >
									<tr>
										<td colspan="8">
											<strong>해당 내용이 없습니다.</strong>
										</td>
									</tr>
								</c:if>	
								<c:forEach items="${noticeList}" var="notice">
									<tbody>
										<tr>
											<td>${notice.noticeNo}</td>
											<td>${notice.noticeTitle}</td>
											<td><fmt:formatDate value="${notice.noticeRegdate }"
													pattern="MM-dd" /></td>
										</tr>
									</tbody>
								</c:forEach>
							</table>
					    </div>
					</div>
			  	</div>
			  	<!--  금일근무현황 end  -->
			
			<!-- sub row -->
			</div>
		<!-- col-sm-8 -->	
		</div>
		<div class="col-sm-4 justify-content-center" style="border-right: solid 1px;"> 
		
			<!--  치과협회 및 세미나 정보 -->
			<div class="card-body mb-4" style=" border: solid 1px; height: 45vh;">
			<h3>▶치과협회 및 세미나 정보</h3> 	
				<div class="table-responsive">
					<table class="table table-bordered"
						style="margin: auto; text-align: center;">
						<thead class="thead">
							<tr bgcolor="#333258" style="color: white">
								<th scope="col" style="width:10%">#</th>
								<th scope="col" style="width:70%">제목</th>
								<th scope="col" style="width:20%">작성일</th>
							</tr>
						</thead>
						<c:if test="${empty noticeList }" >
							<tr>
								<td colspan="8">
									<strong>해당 내용이 없습니다.</strong>
								</td>
							</tr>
						</c:if>	
						<c:forEach items="${noticeList}" var="notice">
							<tbody>
								<tr>
									<td>${notice.noticeNo}</td>
									<td>${notice.noticeTitle}</td>
									<td><fmt:formatDate value="${notice.noticeRegdate }"
											pattern="MM-dd" /></td>
								</tr>
							</tbody>
						</c:forEach>
					</table>
			    </div>
			</div>
		 
		  	<!--  치과협회 및 세미나 정보 end  -->
		  	
		  	<!--  금일 주요 예약 현황  -->
			<div class="card-body" style=" border: solid 1px; margin-top:10px; height: 40.4vh;">
			<h3>▶금일 주요 예약 현황</h3> 	
				<div class="table-responsive">
					<table class="table table-bordered"
						style="margin: auto; text-align: center;">
						<thead class="thead">
							<tr bgcolor="#333258" style="color: white">
								<th scope="col" style="width:10%">#</th>
								<th scope="col" style="width:20%">환자명</th>
								<th scope="col" style="width:20%">담당의</th>
								<th scope="col" style="width:50%">예약시간</th>
							</tr>
						</thead>
						<c:if test="${empty noticeList }" >
							<tr>
								<td colspan="8">
									<strong>해당 내용이 없습니다.</strong>
								</td>
							</tr>
						</c:if>	
						<c:forEach items="${noticeList}" var="notice">
							<tbody>
								<tr>
									<td>${notice.noticeNo}</td>
									<td>${notice.noticeTitle}</td>
									<td><fmt:formatDate value="${notice.noticeRegdate }"
											pattern="MM-dd" /></td>
								</tr>
							</tbody>
						</c:forEach>
					</table>
			    </div>
			</div>
		  	<!--  금일 주요 예약 현황 end  -->
		 
		<!-- col-sm-4 -->	
		</div>
	<!-- main row -->	
	</div>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>
	var data1 = {"id":"${loginUser.memId}"};
	
	$.ajax({
	   url: "http://192.168.141.24:5002/makeh5", 
	   type: 'POST',
	   data : JSON.stringify(data1),
	   dataType: 'JSON',
	   contentType: "application/json",
	   success:function(){
		   console.log("뇌생성 성공")
	   }
	});
</script>
