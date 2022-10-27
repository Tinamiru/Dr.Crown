<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>

<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" />
<c:set var="workMain" value="${dataMap.workMain }" />

<script src="https://kit.fontawesome.com/9e1d56064a.js" crossorigin="anonymous"></script>


<body>


<div class="container-fluid">
	<div class="row justify-content-between pr-4">
		<div class="row col-4 pl-4 ">
			<div class="p-0 pt-4 ">
				<h1>근태관리</h1>
			</div>
			<div class="p-0 pl-5 pt-5 align-self-center">
				<h3>근무관리&nbsp;>&nbsp;근무스케줄</h3>
			</div>
		</div>
		<div class="row col-8 justify-content-end p-0 pt-4 pr-2">
             <div class="pl-2 pr-2">
                 <div class="">
                     <button id="btn1" type="button" class="btn btn-primary dropdown-toggle btn-rounded" data-toggle="dropdown" aria-expanded="false">
                         	근무관리
                     </button>
                     <div class="dropdown-menu" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 56px, 0px);">
                         <a class="dropdown-item" href="http://localhost/manage/work/main" >근무스케줄</a>
                         <a class="dropdown-item" href="http://localhost/manage/work/workHoursList" >근무시간내역</a>
                     </div>
                 </div>
             </div>
             <div class="basic-dropdown pl-2 pr-2">
                 <div class="dropdown">
                     <button id="btn2" type="button" class="btn btn-primary dropdown-toggle btn-rounded" data-toggle="dropdown" aria-expanded="false">
                         	근태신청관리
                     </button>
                     <div class="dropdown-menu" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 56px, 0px);">
                         <a class="dropdown-item" href="http://localhost/manage/work/list">출퇴근내역</a>
                         <a class="dropdown-item" href="http://localhost/manage/work/attendanceApplicationList">근태신청내역</a>
                     </div>
                 </div>
             </div>
             <div class="basic-dropdown pl-2 pr-5">
                 <div class="dropdown">
                     <button id="btn3" type="button" class="btn btn-primary dropdown-toggle btn-rounded" data-toggle="dropdown" aria-expanded="false">
                         	휴가관리
                     </button>
                     <div class="dropdown-menu" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 56px, 0px);">
                         <a class="dropdown-item" href="http://localhost/manage/work/vacationMenu">휴가메뉴조회</a>
                         <a class="dropdown-item" onclick="vacationApplication()">휴가신청</a>
                         <a class="dropdown-item" href="http://localhost/manage/work/vacationList">휴가내역현황</a>
                     </div>
                 </div>
             </div>
        </div>
	</div>
	<hr>
	<div class="row justify-content-around pl-5 pr-3">
		<div class="col-2">
			<select class="form-control " name="perPageNum" id="perPageNum" onchange="list_go(1);">					  		  		
		 		<option value="5" ${cri.perPageNum eq 5 ? 'selected' : '' } >5개씩</option>
		 		<option value="10" ${cri.perPageNum eq 10 ? 'selected' : '' }>10개씩</option>
		 		<option value="20" ${cri.perPageNum eq 20 ? 'selected' : '' }>20개씩</option>
		 		<option value="30" ${cri.perPageNum eq 30 ? 'selected' : '' }>30개씩</option>
		 	</select>
		</div>
		<div class="align-self-center col-4">
			<div class="row d-flex justify-content-end" >
				<div class="align-self-center">
					<ul class="pagination pagination-sm pagination-circle">
						<li class="page-item page-indicator">
						    <a class="page-link" href="javascript:void()">
						        <i class="la la-angle-left"></i>
					        </a>
						</li>
			        </ul>
		        </div>
				<h2><span id='resultDate'></span>&nbsp;&nbsp;<span>근무스케줄</span></h2>
				<ul class="pagination pagination-sm pagination-circle">
					<li class="page-item page-indicator">
					    <a class="page-link" href="javascript:void()">
					        <i class="la la-angle-right"></i>
			        	</a>
					</li>
		        </ul>
			</div>
		</div>
		<div class="col-5">
			<div class="row d-flex justify-content-end">
				<div class = "col-6 p-0 d-flex justify-content-end">
				    <div class="align-self-center"><label>기간선택&nbsp;</label></div>
					<div class="col-7 p-0">
						<input  id=selectDate class="form-control form-control-lg" type="date" placeholder="년-월-일" onchange='printName()'/>
					</div>
				    <div class="align-self-center"><label>&nbsp;부터&nbsp;</label></div>
				</div>
				<div class = "col-4 p-0 d-flex justify-content-end">
					<div class="col-9 p-0">
						<input  id=selectDate class="form-control form-control-lg" type="date" placeholder="년-월-일" onchange='printName()'/>
					</div>
					<div class="align-self-center"><label class="pr-2">&nbsp;까지&nbsp;</label></div>
				</div>
				<div class="col-2 p-0">
					<span class="input-group-append">
						<button class="btn btn-primary" type="button">검색</button>
					</span>
				</div>
			</div>
		</div>
	</div>
			
	<hr>
	<!-- 테이블 -->
	<div class="card-body" style="height: 58vh;overflow-y:scroll;">
		<div class="table-responsive">
			<table class="table table-bordered"
				style="margin: auto; text-align: center; vertical-align:middle;">
				<thead class="thead">
					<tr bgcolor="#333258" style="color: white">
						<th scope="col" style="width:10%">사원번호</th>
						<th scope="col" style="width:10%">이름</th>
						<th scope="col" style="width:10%">직급</th>
						<th scope="col" style="width:20%">근로제유형</th>
						<th scope="col" style="width:10%">근무시작시간</th>
						<th scope="col" style="width:10%">근무종료시간</th>
						<th scope="col" style="width:10%">소정근무시간</th>
						<th scope="col" style="width:10%">처리유무</th>
						<th scope="col" style="width:10%">스케줄켈린더</th>
					</tr>
					<tr>
							<td style="vertical-align:middle">A01</td>
							<td style="vertical-align:middle">이순신</td>
							<td style="vertical-align:middle">부장</td>
							<td style="vertical-align:middle">정규직근로자</td>
							<td style="vertical-align:middle">08:00</td>
							<td style="vertical-align:middle">17:00</td>
							<td style="vertical-align:middle">08:00</td>
							<td style="vertical-align:middle"><span class="badge light badge-dark">미처리</span></td>
							<td style="vertical-align:middle">
								<a href="http://localhost/manage/work/main">
									<svg width="25" height="25" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">
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
								</a>
							</td>
					</tr>
					<tr>
							<td style="vertical-align:middle">A01</td>
							<td style="vertical-align:middle">이순신</td>
							<td style="vertical-align:middle">부장</td>
							<td style="vertical-align:middle">정규직근로자</td>
							<td style="vertical-align:middle">08:00</td>
							<td style="vertical-align:middle">17:00</td>
							<td style="vertical-align:middle">08:00</td>
							<td style="vertical-align:middle"><span class="badge light badge-dark">미처리</span></td>
							<td style="vertical-align:middle">
								<a href="http://localhost/manage/work/main">
									<svg width="25" height="25" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">
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
								</a>
							</td>
					</tr>
					<tr>
							<td style="vertical-align:middle">A01</td>
							<td style="vertical-align:middle">이순신</td>
							<td style="vertical-align:middle">부장</td>
							<td style="vertical-align:middle">정규직근로자</td>
							<td style="vertical-align:middle">08:00</td>
							<td style="vertical-align:middle">17:00</td>
							<td style="vertical-align:middle">08:00</td>
							<td style="vertical-align:middle"><span class="badge light badge-dark">미처리</span></td>
							<td style="vertical-align:middle">
								<a href="http://localhost/manage/work/main">
									<svg width="25" height="25" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">
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
								</a>
							</td>
					</tr>
					<tr>
							<td style="vertical-align:middle">A01</td>
							<td style="vertical-align:middle">이순신</td>
							<td style="vertical-align:middle">부장</td>
							<td style="vertical-align:middle">정규직근로자</td>
							<td style="vertical-align:middle">08:00</td>
							<td style="vertical-align:middle">17:00</td>
							<td style="vertical-align:middle">08:00</td>
							<td style="vertical-align:middle"><span class="badge light badge-dark">미처리</span></td>
							<td style="vertical-align:middle">
								<a href="http://localhost/manage/work/main">
									<svg width="25" height="25" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">
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
								</a>
							</td>
					</tr>
					<tr>
							<td style="vertical-align:middle">A01</td>
							<td style="vertical-align:middle">이순신</td>
							<td style="vertical-align:middle">부장</td>
							<td style="vertical-align:middle">정규직근로자</td>
							<td style="vertical-align:middle">08:00</td>
							<td style="vertical-align:middle">17:00</td>
							<td style="vertical-align:middle">08:00</td>
							<td style="vertical-align:middle"><span class="badge light badge-dark">미처리</span></td>
							<td style="vertical-align:middle">
								<a href="http://localhost/manage/work/main">
									<svg width="25" height="25" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">
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
								</a>
							</td>
					</tr>
					<tr>
							<td style="vertical-align:middle">A02</td>
							<td style="vertical-align:middle">곽재우</td>
							<td style="vertical-align:middle">과장</td>
							<td style="vertical-align:middle">정규직근로자</td>
							<td style="vertical-align:middle">08:00</td>
							<td style="vertical-align:middle">17:00</td>
							<td style="vertical-align:middle">08:00</td>
							<td style="vertical-align:middle"><span class="badge light badge-success">처리완료</span></td>
							<td style="vertical-align:middle"><p style="font-size: 12px;">개인근무스캐줄 상세보기<br>아이콘 링크</p></td>
					</tr>
					<tr>
							<td style="vertical-align:middle">A03</td>
							<td style="vertical-align:middle">곽재우</td>
							<td style="vertical-align:middle">과장</td>
							<td style="vertical-align:middle">정규직근로자</td>
							<td style="vertical-align:middle">08:00</td>
							<td style="vertical-align:middle">17:00</td>
							<td style="vertical-align:middle">08:00</td>
							<td style="vertical-align:middle"><span class="badge light badge-success">처리완료</span></td>
							<td style="vertical-align:middle">
								<a href="http://localhost/manage/work/main">
									<svg width="25" height="25" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">
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
								</a>
							</td>
					</tr>
					<tr>
							<td style="vertical-align:middle">A04</td>
							<td style="vertical-align:middle">곽재우</td>
							<td style="vertical-align:middle">과장</td>
							<td style="vertical-align:middle">정규직근로자</td>
							<td style="vertical-align:middle">08:00</td>
							<td style="vertical-align:middle">17:00</td>
							<td style="vertical-align:middle">08:00</td>
							<td style="vertical-align:middle"><span class="badge light badge-success">처리완료</span></td>
							<td style="vertical-align:middle">
								<a href="http://localhost/manage/work/main">
									<svg width="25" height="25" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">
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
								</a>
							</td>
					</tr>
					
				</thead>
				<c:if test="${empty memeberList }" >
					<tr>
						<td colspan="8">
							<strong>해당 내용이 없습니다.</strong>
						</td>
					</tr>
				</c:if>	
				<c:forEach items="${memberList}" var="memeber">
					<tbody>
						<tr>
							<td>${memeberList[status.count].key}</td>
							<td>${memeber.empId}</td>
							<td>${memeber.memName}</td>
							<td>${memeber.memPhone}</td>
							<td>${memeber.memMail }</td>
							<td>${memeber.memPos}</td>
							<td>${memeber.memAuthority}</td>
							<td><button type="button" class="btn btn-danger btn-xl" style="float: right; border-radius: 10px; margin-right: 5px;">삭제</button></td>
						</tr>
					</tbody>
				</c:forEach>
			</table>
		</div>
	</div>
	<hr>
	<div class = "row justify-content-end pr-5">
		<div>
			<!-- <button type="button" class="btn btn-square btn-primary" style="position: absolute; right: 4vw;">사원등록</button> -->
		</div>
	</div>
</div>

<div class="container-fluid">
	<div class="row d-flex justify-content-end " >
		<ul class="pagination pagination-sm pagination-circle">
			<li class="page-item page-indicator">
			    <a class="page-link" href="javascript:void()">
			        <i class="la la-angle-left"></i>
		        </a>
			</li>
        </ul>
		<h2><span id='resultDate'></span></h2>
		<ul class="pagination pagination-sm pagination-circle">
			<li class="page-item page-indicator">
			    <a class="page-link" href="javascript:void()">
			        <i class="la la-angle-right"></i>
	        	</a>
			</li>
        </ul>
	</div>
</div>
<%@ include file="/WEB-INF/views/include/pagination.jsp" %>




<script>

function printName()  {
	const printDate = document.getElementById('selectDate').value;
	document.getElementById("resultDate").innerText = printDate;
	}

</script>

<script>
	document.getElementById('selectDate').value = new Date().toISOString().substring(0, 10);
	document.getElementById('resultDate').innerText = new Date().toISOString().substring(0, 10);
</script>


<script type="text/javascript">
	function vacationApplication() {
		
		var popupWidth = 800;
		var popupHeight = 800;

		var popupX = (document.body.offsetWidth / 2) - (800 / 2);
		// 만들 팝업창 좌우 크기의 1/2 만큼 보정값으로 빼주었음

		var popupY= (window.screen.height / 2) - (800 / 2);
		// 만들 팝업창 상하 크기의 1/2 만큼 보정값으로 빼주었음
		
		
		window.open('vacationApplication','vacationApplication','height=800, width=1200, left='+ popupX + ', top='+ popupY);
	} 
</script>

