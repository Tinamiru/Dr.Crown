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
		<div class="row col-5 pl-4 ">
			<div class="p-0 pt-4 ">
				<h1>근태관리</h1>
			</div>
			<div class="p-0 pl-5 pt-5 align-self-center">
				<h3>근태신청관리&nbsp;>&nbsp;근태신청내역</h3>
			</div>
		</div>
		<div class="row col-6 justify-content-end p-0 pt-4 pr-2">
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
				<h2><span id='resultDate'></span>&nbsp;&nbsp;<span>근태신청내역</span></h2>
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
	
	<div class="row justify-content-center p-0 pr-5 pb-3">
        <div class="d-flex col-2 pl-0 pr-2">
			<button type="button" class="btn btn-primary btn-lg col-xl" style="height:20vh;">
				<div class="">
					<h1 style="color:white">외근 
						<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-pc-display-horizontal" viewBox="0 0 16 16">
						  <path d="M1.5 0A1.5 1.5 0 0 0 0 1.5v7A1.5 1.5 0 0 0 1.5 10H6v1H1a1 1 0 0 0-1 1v3a1 1 0 0 0 1 1h14a1 1 0 0 0 1-1v-3a1 1 0 0 0-1-1h-5v-1h4.5A1.5 1.5 0 0 0 16 8.5v-7A1.5 1.5 0 0 0 14.5 0h-13Zm0 1h13a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-.5.5h-13a.5.5 0 0 1-.5-.5v-7a.5.5 0 0 1 .5-.5ZM12 12.5a.5.5 0 1 1 1 0 .5.5 0 0 1-1 0Zm2 0a.5.5 0 1 1 1 0 .5.5 0 0 1-1 0ZM1.5 12h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1 0-1ZM1 14.25a.25.25 0 0 1 .25-.25h5.5a.25.25 0 1 1 0 .5h-5.5a.25.25 0 0 1-.25-.25Z"/>
						</svg>
					</h1>
				</div> 
				<div class="">
					<h1 style="color:yellow">15</h1>
				</div> 
			</button>
        </div>
		<div class="d-flex col-2 pl-0 pr-2">
			<button type="button" class="btn btn-primary btn-lg col-xl" style="height:20vh;">
				<div class="">
					<h1 style="color:white">출장
						<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-calendar4-range" viewBox="0 0 16 16">
						  <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM2 2a1 1 0 0 0-1 1v1h14V3a1 1 0 0 0-1-1H2zm13 3H1v9a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V5z"/>
						  <path d="M9 7.5a.5.5 0 0 1 .5-.5H15v2H9.5a.5.5 0 0 1-.5-.5v-1zm-2 3v1a.5.5 0 0 1-.5.5H1v-2h5.5a.5.5 0 0 1 .5.5z"/>
						</svg>
					</h1>
				</div> 
				<div class="">
					<h1 style="color:yellow">3</h1>
				</div> 
			</button>
        </div>
    	<div class="d-flex col-2 pl-0 pr-2">
			<button type="button" class="btn btn-primary btn-lg col-xl" style="height:20vh;">
				<div class="">
					<h1 style="color:white">연장근무
						<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-clock" viewBox="0 0 16 16">
						  <path d="M8 3.5a.5.5 0 0 0-1 0V9a.5.5 0 0 0 .252.434l3.5 2a.5.5 0 0 0 .496-.868L8 8.71V3.5z"/>
						  <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm7-8A7 7 0 1 1 1 8a7 7 0 0 1 14 0z"/>
						</svg>
					</h1>
				</div> 
				<div class="">
					<h1 style="color:yellow">10</h1>
				</div> 
			</button>
        </div>
    	<div class="d-flex col-2 pl-0 pr-2">
			<button type="button" class="btn btn-primary btn-lg col-xl" style="height:20vh;">
				<div class="">
					<h1 style="color:white">간주근로
						<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-geo-alt" viewBox="0 0 16 16">
						  <path d="M12.166 8.94c-.524 1.062-1.234 2.12-1.96 3.07A31.493 31.493 0 0 1 8 14.58a31.481 31.481 0 0 1-2.206-2.57c-.726-.95-1.436-2.008-1.96-3.07C3.304 7.867 3 6.862 3 6a5 5 0 0 1 10 0c0 .862-.305 1.867-.834 2.94zM8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10z"/>
						  <path d="M8 8a2 2 0 1 1 0-4 2 2 0 0 1 0 4zm0 1a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
						</svg>
					</h1>
				</div> 
				<div class="">
					<h1 style="color:yellow">2</h1>
				</div> 
			</button>
        </div>
    	<div class="d-flex col-2 pl-0 pr-2">
			<button type="button" class="btn btn-primary btn-lg col-xl" style="height:20vh;">
				<div class="">
					<h1 style="color:white">휴일대체
						<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-calendar2-check" viewBox="0 0 16 16">
						  <path d="M10.854 8.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 0 1 .708-.708L7.5 10.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
						  <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM2 2a1 1 0 0 0-1 1v11a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V3a1 1 0 0 0-1-1H2z"/>
						  <path d="M2.5 4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5H3a.5.5 0 0 1-.5-.5V4z"/>
						</svg>
					</h1>
				</div> 
				<div class="">
					<h1 style="color:#65FF5E">5</h1>
				</div> 
			</button>
        </div>
       
    </div>	
	
	

	
	
	<div class="card-body" style="height: 48vh;overflow-y:scroll;">
		<div class="table-responsive">
			<table class="table table-bordered"
				style="margin: auto; text-align: center; vertical-align:middle;">
				<thead class="thead">
					<tr bgcolor="#333258" style="color: white">
						<th scope="col" style="width:10%">일자</th>
						<th scope="col" style="width:10%">사원번호</th>
						<th scope="col" style="width:10%">이름</th>
						<th scope="col" style="width:10%">직급</th>
						<th scope="col" style="width:10%">근태항목</th>
						<th scope="col" style="width:10%">신청구분</th>
						<th scope="col" style="width:10%">시작시각</th>
						<th scope="col" style="width:10%">종료시각</th>
						<th scope="col" style="width:10%">소요시간</th>
						<th scope="col" style="width:10%">상태</th>
					</tr>
					<tr>
							<td style="vertical-align:middle">2022-10-17</td>
							<td style="vertical-align:middle">A01</td>
							<td style="vertical-align:middle">이순신</td>
							<td style="vertical-align:middle">부장</td>
							<td style="vertical-align:middle"><span class="badge light badge-success">휴일대체</span></td>
							<td style="vertical-align:middle">휴일대체</td>
							<td style="vertical-align:middle">-</td>
							<td style="vertical-align:middle">-</td>
							<td style="vertical-align:middle">-</td>
							<td style="vertical-align:middle"><span class="badge light badge-dark">미처리</span></td>
					</tr>
					<tr>
							<td style="vertical-align:middle">2022-10-17</td>
							<td style="vertical-align:middle">A02</td>
							<td style="vertical-align:middle">이율곡</td>
							<td style="vertical-align:middle">과장</td>
							<td style="vertical-align:middle"><span class="badge light badge-warning">외근</span></td>
							<td style="vertical-align:middle">근무중외근</td>
							<td style="vertical-align:middle">10:00</td>
							<td style="vertical-align:middle">14:00</td>
							<td style="vertical-align:middle">04:00</td>
							<td style="vertical-align:middle"><span class="badge light badge-dark">미처리</span></td>
					</tr>
					<tr>
							<td style="vertical-align:middle">2022-10-17</td>
							<td style="vertical-align:middle">A03</td>
							<td style="vertical-align:middle">일개미</td>
							<td style="vertical-align:middle">사원</td>
							<td style="vertical-align:middle"><span class="badge light badge-light">연장</span></td>
							<td style="vertical-align:middle">연장근무</td>
							<td style="vertical-align:middle">18:22</td>
							<td style="vertical-align:middle">14:00</td>
							<td style="vertical-align:middle">04:00</td>
							<td style="vertical-align:middle"><span class="badge light badge-success">처리완료</span></td>
					</tr>
					<tr>
							<td style="vertical-align:middle">2022-10-17</td>
							<td style="vertical-align:middle">A04</td>
							<td style="vertical-align:middle">일개미</td>
							<td style="vertical-align:middle">사원</td>
							<td style="vertical-align:middle"><span class="badge light badge-light">연장</span></td>
							<td style="vertical-align:middle">야간근무</td>
							<td style="vertical-align:middle">22:00</td>
							<td style="vertical-align:middle">08:00</td>
							<td style="vertical-align:middle">10:00</td>
							<td style="vertical-align:middle"><span class="badge light badge-success">처리완료</span></td>
					</tr>
					<tr>
							<td style="vertical-align:middle">2022-10-17</td>
							<td style="vertical-align:middle">A05</td>
							<td style="vertical-align:middle">일개미</td>
							<td style="vertical-align:middle">대리</td>
							<td style="vertical-align:middle"><span class="badge light badge-warning">출장</span></td>
							<td style="vertical-align:middle">국내 출장</td>
							<td style="vertical-align:middle">09:00</td>
							<td style="vertical-align:middle">18:00</td>
							<td style="vertical-align:middle">04:00</td>
							<td style="vertical-align:middle"><span class="badge light badge-success">처리완료</span></td>
					</tr>
					<tr>
							<td style="vertical-align:middle">2022-10-17</td>
							<td style="vertical-align:middle">A05</td>
							<td style="vertical-align:middle">일개미</td>
							<td style="vertical-align:middle">대리</td>
							<td style="vertical-align:middle"><span class="badge light badge-warning">간주근로</span></td>
							<td style="vertical-align:middle">출장-세종시</td>
							<td style="vertical-align:middle">09:00</td>
							<td style="vertical-align:middle">18:00</td>
							<td style="vertical-align:middle">04:00</td>
							<td style="vertical-align:middle"><span class="badge light badge-dark">미처리</span></td>
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

