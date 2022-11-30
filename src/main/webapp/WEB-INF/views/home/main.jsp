<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%> 
   
   
<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" />
<c:set var="noticeList" value="${dataMap.noticeList }" />
<link rel="stylesheet" href="https://uicdn.toast.com/calendar/latest/toastui-calendar.min.css" />
<link rel="stylesheet" href="https://uicdn.toast.com/tui.date-picker/latest/tui-date-picker.css" />


<div class="row pr-5">
<div class="col-sm-10">
<div class="row pl-4 mt-3" style="">
					
					   <div class="col-xl-3  col-sm-6">
						<div class="card">
							<div class="card-body">
								<div class="media align-items-center">
									<div class="media-body mr-6">
										<h2 class="fs-34 text-black font-w600">76명</h2>
										<span>전일 접수인원</span>
									</div>
									<svg width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">
										<g clip-path="url(#clip0)">
										<path d="M32.04 4.08H31.24V2.04C31.24 0.8 30.4 0 29.2 0C28 0 27.16 0.8 27.16 2.04V4.08H13.88V2.04C13.88 0.8 13.08 0 11.84 0C10.6 0 9.80002 0.8 9.80002 2.04V4.08H7.96002C4.08002 4.08 0.800018 7.36 0.800018 11.24V32.88C0.800018 36.76 4.08002 40.04 7.96002 40.04H32.04C35.92 40.04 39.2 36.76 39.2 32.88V11.24C39.2 7.36 35.92 4.08 32.04 4.08ZM7.96002 8.16H32.04C33.68 8.16 35.12 9.6 35.12 11.24V14.08H4.88002V11.24C4.88002 9.6 6.32002 8.16 7.96002 8.16ZM32.04 35.92H7.96002C6.32002 35.92 4.88002 34.48 4.88002 32.84V18.16H35.08V32.84C35.12 34.48 33.68 35.92 32.04 35.92Z" fill="#007A64"></path>
										<path d="M16.12 20.6H14.48C13.44 20.6 12.84 21.4 12.84 22.24V24.08C12.84 25.12 13.64 25.72 14.48 25.72H16.12C17.16 25.72 17.76 24.92 17.76 24.08V22.44C17.96 21.44 17.16 20.6 16.12 20.6Z" fill="#007A64"></path>
										<path d="M25.52 20.6H23.88C22.84 20.6 22.24 21.4 22.24 22.24V24.08C22.24 25.12 23.04 25.72 23.88 25.72H25.52C26.56 25.72 27.16 24.92 27.16 24.08V22.44C27.16 21.44 26.32 20.6 25.52 20.6Z" fill="#007A64"></path>
										<path d="M16.12 28.56H14.48C13.44 28.56 12.84 29.36 12.84 30.2V31.84C12.84 32.88 13.64 33.48 14.48 33.48H16.12C17.16 33.48 17.76 32.68 17.76 31.84V30.2C17.96 29.4 17.16 28.56 16.12 28.56Z" fill="#007A64"></path>
										</g>
										<defs>
										<clipPath id="clip0">
										<rect width="40" height="40" fill="white"></rect>
										</clipPath>
										</defs>
									</svg>
								</div>
							</div>
							<div class="progress  rounded-0" style="height:4px;">
								<div class="progress-bar rounded-0 bg-secondary progress-animated" style="width: 100%; height:4px;" role="progressbar">
									<span class="sr-only">50% Complete</span>
								</div>
							</div>
						</div>
					</div>
						<div class="col-xl-3 col-sm-6">
						<div class="card">
							<div class="card-body">
								<div class="media align-items-center">
									<div class="media-body mr-1">
										<h2 class="fs-34 text-black font-w600">76명</h2>
										<span>금일 접수인원</span>
									</div>
									<svg width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">
										<g clip-path="url(#clip0)">
										<path d="M32.04 4.08H31.24V2.04C31.24 0.8 30.4 0 29.2 0C28 0 27.16 0.8 27.16 2.04V4.08H13.88V2.04C13.88 0.8 13.08 0 11.84 0C10.6 0 9.80002 0.8 9.80002 2.04V4.08H7.96002C4.08002 4.08 0.800018 7.36 0.800018 11.24V32.88C0.800018 36.76 4.08002 40.04 7.96002 40.04H32.04C35.92 40.04 39.2 36.76 39.2 32.88V11.24C39.2 7.36 35.92 4.08 32.04 4.08ZM7.96002 8.16H32.04C33.68 8.16 35.12 9.6 35.12 11.24V14.08H4.88002V11.24C4.88002 9.6 6.32002 8.16 7.96002 8.16ZM32.04 35.92H7.96002C6.32002 35.92 4.88002 34.48 4.88002 32.84V18.16H35.08V32.84C35.12 34.48 33.68 35.92 32.04 35.92Z" fill="#007A64"></path>
										<path d="M16.12 20.6H14.48C13.44 20.6 12.84 21.4 12.84 22.24V24.08C12.84 25.12 13.64 25.72 14.48 25.72H16.12C17.16 25.72 17.76 24.92 17.76 24.08V22.44C17.96 21.44 17.16 20.6 16.12 20.6Z" fill="#007A64"></path>
										<path d="M25.52 20.6H23.88C22.84 20.6 22.24 21.4 22.24 22.24V24.08C22.24 25.12 23.04 25.72 23.88 25.72H25.52C26.56 25.72 27.16 24.92 27.16 24.08V22.44C27.16 21.44 26.32 20.6 25.52 20.6Z" fill="#007A64"></path>
										<path d="M16.12 28.56H14.48C13.44 28.56 12.84 29.36 12.84 30.2V31.84C12.84 32.88 13.64 33.48 14.48 33.48H16.12C17.16 33.48 17.76 32.68 17.76 31.84V30.2C17.96 29.4 17.16 28.56 16.12 28.56Z" fill="#007A64"></path>
										</g>
										<defs>
										<clipPath id="clip0">
										<rect width="40" height="40" fill="white"></rect>
										</clipPath>
										</defs>
									</svg>
								</div>
							</div>
							<div class="progress  rounded-0" style="height:4px;">
								<div class="progress-bar rounded-0 bg-secondary progress-animated" style="width: 100%; height:4px;" role="progressbar">
									<span class="sr-only">50% Complete</span>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-sm-6">
						<div class="card">
							<div class="card-body">
								<div class="media align-items-center">
									<div class="media-body mr-1">
										<h2 class="fs-34 text-black font-w600">124,551</h2>
										<span>금일 예약인원</span>
									</div>
									<svg width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">
										<path d="M28.0053 2.00495C25.0652 1.92104 22.2028 2.90688 20.0059 4.76001C17.8089 2.90688 14.9465 1.92104 12.0064 2.00495C10.2879 1.99938 8.58941 2.3549 7.03328 3.04589C5.47716 3.73689 4.10208 4.74618 3.00704 6.00112C1.10117 8.19152 -0.89469 12.1574 0.427219 18.6225C2.53907 28.9417 18.358 37.4115 19.0259 37.7601C19.3237 37.9174 19.659 38 19.9999 38C20.3408 38 20.676 37.9174 20.9738 37.7601C21.6478 37.4058 37.4667 28.936 39.5725 18.6225C40.8944 12.1574 38.9006 8.201 36.9947 6.00112C35.9009 4.74722 34.5275 3.73852 32.9732 3.04756C31.4188 2.35659 29.7222 2.00052 28.0053 2.00495ZM35.6608 17.9006C34.1709 25.1899 23.3456 31.9715 20.0099 33.908C16.6741 31.9715 5.84885 25.1918 4.35895 17.9006C3.33302 12.8869 4.73692 9.97454 6.09683 8.41322C6.81663 7.59033 7.71988 6.92874 8.74167 6.47597C9.76346 6.0232 10.8784 5.79049 12.0064 5.79458C13.2101 5.70905 14.4167 5.9205 15.5084 6.40832C16.6002 6.89614 17.5399 7.64369 18.236 8.57806C18.4065 8.87653 18.6585 9.12614 18.9656 9.3008C19.2727 9.47546 19.6237 9.56876 19.9819 9.57095H20.0059C20.3619 9.56861 20.7109 9.47734 21.0178 9.30634C21.3247 9.13534 21.5786 8.89067 21.7537 8.59701C22.4489 7.65541 23.391 6.90174 24.4873 6.4103C25.5836 5.91887 26.7961 5.70665 28.0053 5.79458C29.1347 5.78937 30.2512 6.02153 31.2744 6.47434C32.2977 6.92716 33.2022 7.58934 33.9229 8.41322C35.2788 9.97454 36.6827 12.8869 35.6568 17.9006H35.6608Z" fill="#007A64"></path>
									</svg>
								</div>
							</div>
							<div class="progress  rounded-0" style="height:4px;">
								<div class="progress-bar rounded-0 bg-secondary progress-animated" style="width: 90%; height:4px;" role="progressbar">
									<span class="sr-only">90% Complete</span>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-sm-6">
						<div class="card">
							<div class="card-body">
								<div class="media align-items-center">
									<div class="media-body mr-1">
										<h2 class="fs-34 text-black font-w600">442</h2>
										<span>Total Doctor</span>
									</div>
									<svg width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">
										<path d="M38.3334 16.6667C38.3384 15.7489 38.0907 14.8474 37.6174 14.061C37.1441 13.2746 36.4635 12.6337 35.6501 12.2084C34.8368 11.7832 33.9221 11.59 33.0062 11.6501C32.0904 11.7101 31.2087 12.0211 30.4579 12.5489C29.707 13.0768 29.116 13.8011 28.7494 14.6426C28.3829 15.484 28.2551 16.4101 28.3799 17.3194C28.5047 18.2287 28.8774 19.0861 29.4572 19.7976C30.0369 20.5092 30.8014 21.0474 31.6667 21.3534V26.6667C31.6667 28.8768 30.7887 30.9964 29.2259 32.5592C27.6631 34.122 25.5435 35 23.3334 35C21.1232 35 19.0036 34.122 17.4408 32.5592C15.878 30.9964 15 28.8768 15 26.6667V24.8667C17.7735 24.4643 20.3097 23.0778 22.1456 20.9604C23.9815 18.8429 24.9947 16.1359 25 13.3334V3.33335C25 2.89133 24.8244 2.4674 24.5119 2.15484C24.1993 1.84228 23.7754 1.66669 23.3334 1.66669H18.3334C17.8913 1.66669 17.4674 1.84228 17.1548 2.15484C16.8423 2.4674 16.6667 2.89133 16.6667 3.33335C16.6667 3.77538 16.8423 4.1993 17.1548 4.51186C17.4674 4.82443 17.8913 5.00002 18.3334 5.00002H21.6667V13.3334C21.6667 15.5435 20.7887 17.6631 19.2259 19.2259C17.6631 20.7887 15.5435 21.6667 13.3334 21.6667C11.1232 21.6667 9.0036 20.7887 7.4408 19.2259C5.87799 17.6631 5.00002 15.5435 5.00002 13.3334V5.00002H8.33335C8.77538 5.00002 9.1993 4.82443 9.51186 4.51186C9.82442 4.1993 10 3.77538 10 3.33335C10 2.89133 9.82442 2.4674 9.51186 2.15484C9.1993 1.84228 8.77538 1.66669 8.33335 1.66669H3.33335C2.89133 1.66669 2.4674 1.84228 2.15484 2.15484C1.84228 2.4674 1.66669 2.89133 1.66669 3.33335V13.3334C1.67205 16.1359 2.68517 18.8429 4.52109 20.9604C6.357 23.0778 8.89322 24.4643 11.6667 24.8667V26.6667C11.6667 29.7609 12.8959 32.7283 15.0838 34.9163C17.2717 37.1042 20.2392 38.3334 23.3334 38.3334C26.4275 38.3334 29.395 37.1042 31.5829 34.9163C33.7709 32.7283 35 29.7609 35 26.6667V21.3534C35.9723 21.0132 36.8152 20.3797 37.4122 19.5403C38.0093 18.7008 38.3311 17.6968 38.3334 16.6667Z" fill="#007A64"></path>
									</svg>
								</div>
							</div>
							<div class="progress  rounded-0" style="height:4px;">
								<div class="progress-bar rounded-0 bg-secondary progress-animated" style="width: 30%; height:4px;" role="progressbar">
									<span class="sr-only">30% Complete</span>
								</div>
							</div>
						</div>
					</div>
					
					</div>
							
					
				
				
				


	<div class="row pl-4">
		<div class="col-sm-7 justify-content-center">  
			<div class="row">
				<div class="col-sm-12">
					<div class="bootstrap-carousel  mb-3">
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
					                <img class="d-block w-100" width="600px" height="225px" src="https://pbs.twimg.com/media/D2Ay-biUcAE36H9.jpg" alt="First slide">
					            </div>
					            <div class="carousel-item">
					                <img class="d-block w-100" width="600px" height="225px" src="http://drive.google.com/uc?export=view&id=1suj5_VqH-izp-sjVARk5fto-nn18S6-t" alt="Second slide">
					            </div>
					            <div class="carousel-item">
					                <img class="d-block w-100"  width="600px" height="225px" src="http://www.dentistnews.kr/news/photo/202209/6583_10506_3434.jpg" alt="Third slide">
					            </div>
					             <div class="carousel-item">
					                <img class="d-block w-100" width="600px" height="225px" src="https://dental.or.kr/data/file/board1/763670174_HNldhZyV_B1A4B0EDBDC3BEC8.jpg" alt="Fourth slide">
					            </div>
					             <div class="carousel-item">
					                <img class="d-block w-100" width="600px" height="225px" src="https://dental.or.kr/data/file/board1/2156266019_O9ahyUcN_C4A1C4ABC0CFB1E228B9E8B3CA29_2.png" alt="Fifth slide">
					            </div>
					             <div class="carousel-item">
					                <img class="d-block w-100" width="600px" height="225px" src="http://drive.google.com/uc?export=view&id=1hwA93BfhiMrlmzDshNV-mz5LcHxrHoea" alt="Sixth slide">
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
				<div class="col-sm-6 justify-content-center "  > 
					<div class="card card-body" style=" height: 40vh;">
					<h4>공지사항</h4> 	
						<div class="table-responsive">
							<table class="table table-bordered"
								style="margin: auto; text-align: center;">
								<thead class="thead">
									<tr bgcolor="#333258" style="color: white">
										<th scope="col" style="width:10%">#</th>
										<th scope="col" style="width:65%">제목</th>
										<th scope="col" style="width:25%">작성일</th>
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
						<div class="card card-body" style=" height: 40vh;">
					<h4>금일 근무 현황</h4> 	
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
		<div class="col-sm-5 justify-content-center" > 
	
		
			<!--  치과협회 및 세미나 정보 -->
			<div class=" col-sm-12 mb-3"" style=" height: 29vh; background-color:#FFFFFF;">
			
               <iframe width="100%" height="100%" src="https://forecast.io/embed/#lat=36.325029&lon=127.408951&name=대전 중구 오류동 &color=#333048&font=arial&units=si" frameborder="0"></iframe>
        
			
			
		 </div>
		 
		  	<!--  치과협회 및 세미나 정보 end  -->
		  	
		  	<!--  금일 주요 예약 현황  -->
			<div class="card card-body" style="  height: 40vh;">
			<h4>금일 주요 예약 현황</h4> 	
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
		 </div>
		<!-- col-sm-4 -->	
		</div>
</div>
	
		<div class=" card  col-sm-2 mt-3 " style="height: 720px; ">
			<h6 align="center " id="getToDate">2022-11</h6>
			<div id="calendar" style="height: 330px; "></div>
            
            
            <div class=" card " id="appointment-schedule">
												<div class="d-flex pb-3 border-bottom border-top mb-3 align-items-end">
													<div class="mr-auto">
														<p class="text-black font-w600 mb-2">곽 금슈 </p>
														<ul>
															<li><i class="las la-clock"></i>09:00 - 10:30 AM</li>
															<li><i class="las la-user"></i>Dr. Samantha</li>
														</ul>
													</div>
													
												</div>
												<div class="d-flex pb-3 border-bottom mb-3 align-items-end">
													<div class="mr-auto">
														<p class="text-black font-w600 mb-2">Tuesday,  June 16th</p>
														<ul>
															<li><i class="las la-clock"></i>09:00 - 10:30 AM</li>
															<li><i class="las la-user"></i>Dr. Samantha</li>
														</ul>
													</div>
													<a href="javascript:void(0)" class="text-success mr-3 mb-2">
														<i class="las la-check-circle scale5"></i>
													</a>
													<a href="javascript:void(0)" class="text-danger mb-2">
														<i class="las la-times-circle scale5"></i>
													</a>
												</div>
												<div class="d-flex pb-3 border-bottom mb-3 align-items-end">
													<div class="mr-auto">
														<p class="text-black font-w600 mb-2">Saturday, June 27th</p>
														<ul>
															<li><i class="las la-clock"></i>09:00 - 10:30 AM</li>
															<li><i class="las la-user"></i>Dr. Samantha</li>
														</ul>
													</div>
													<a href="javascript:void(0)" class="text-success mr-3 mb-2">
														<i class="las la-check-circle scale5"></i>
													</a>
													<a href="javascript:void(0)" class="text-danger mb-2">
														<i class="las la-times-circle scale5"></i>
													</a>
												</div>
												<div class="d-flex pb-3 border-bottom mb-3 align-items-end">
													<div class="mr-auto">
														<p class="text-black font-w600 mb-2">Wednesday, June 3th</p>
														<ul>
															<li><i class="las la-clock"></i>09:00 - 10:30 AM</li>
															<li><i class="las la-user"></i>Dr. Samantha</li>
														</ul>
													</div>
													<a href="javascript:void(0)" class="text-success mr-3 mb-2">
														<i class="las la-check-circle scale5"></i>
													</a>
													<a href="javascript:void(0)" class="text-danger mb-2">
														<i class="las la-times-circle scale5"></i>
													</a>
												</div>
											<div class="ps__rail-x" style="left: 0px; bottom: -64px;"><div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;"></div></div><div class="ps__rail-y" style="top: 64px; height: 415px; right: 0px;"><div class="ps__thumb-y" tabindex="0" style="top: 56px; height: 359px;"></div></div></div>
		</div>
	<!-- main row -->	
	

</div>
          
 <script src="https://uicdn.toast.com/calendar/latest/toastui-calendar.ie11.min.js"></script>  
<script src="https://uicdn.toast.com/calendar/latest/toastui-calendar.min.js"></script>
<script src="https://uicdn.toast.com/tui.date-picker/latest/tui-date-picker.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>
const Calendar = tui.Calendar;
const container = document.getElementById('calendar');
const DatePicker = tui.DatePicker;
const today = new Date();
const options = {
  defaultView: 'month',
  timezone: {
    zones: [
      {
        timezoneName: 'Asia/Seoul',
        displayLabel: 'Seoul',
      },
    ],
  },
 
};

const calendar = new Calendar(container, options);

calendar.setOptions({
	 month: {
		    dayNames: ['일','월', '화', '수', '목', '금', '토'],
	  },
	  useFormPopup: false,
	  useDetailPopup: false,
	  
	});
	
calendar.setTheme({
	  common: {
	    saturday: {
	      color: 'rgba(64, 64, 255, 0.5)',
	    },
	    gridSelection: false,
	  },
	});	
	

</script>

<%@ include file="/WEB-INF/views/common/preloader_js.jsp"%>
