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
				<h3>근무관리&nbsp;>&nbsp;근무시간내역</h3>
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
	<div class="row justify-content-around pb-0 pl-1 pr-3">
		<div class="col-2 pb-0 pt-2" >
			<select class="form-control " name="perPageNum" id="perPageNum" onchange="list_go(1);">					  		  		
		 		<option value="5" ${cri.perPageNum eq 5 ? 'selected' : '' } >5개씩</option>
		 		<option value="10" ${cri.perPageNum eq 10 ? 'selected' : '' }>10개씩</option>
		 		<option value="20" ${cri.perPageNum eq 20 ? 'selected' : '' }>20개씩</option>
		 		<option value="30" ${cri.perPageNum eq 30 ? 'selected' : '' }>30개씩</option>
		 	</select>
		</div>
		<div class="align-self-center col-5 pb-0 pt-4">
			<div class="row d-flex" >
				<div class="row col-1">	
		        </div>
		        <div class="row col-10 justify-content-center">
					<ul class="pagination pagination-sm pagination-circle">
						<li class="page-item page-indicator">
						    <a id="leftDate" class="page-link" href="javascript:void()">
						        <i class="la la-angle-left"></i>
					        </a>
						</li>
			        </ul>
					<h4 class="pt-1">
						<span id='resultDate' style="vertical-align:middle;"></span>
						&nbsp;&nbsp;<span></span>
					</h4>
					<h4 class="pt-1">
						<span id='resultDate2' style="vertical-align:middle;"></span>
						&nbsp;&nbsp;<span></span>
					</h4>
					<h4 class="pt-1">
						<span style="vertical-align:middle;"></span>
						&nbsp;&nbsp;<span>근무시간내역</span>&nbsp;&nbsp;
					</h4>
					<ul class="pagination pagination-sm pagination-circle">
						<li class="page-item page-indicator">
						    <a class="page-link" href="javascript:void()">
						        <i id="rightDate" class="la la-angle-right"></i>
				        	</a>
						</li>
			        </ul>
		        </div>
				<div class="row col-1 justify-content-center">
		        </div>
			</div>
		</div>
		<div class="col-5 p-0 pt-2">
			<div class="row d-flex justify-content-end">
				<div class = "col-6 p-0 d-flex justify-content-end">
				    <div class="pt-3"><label>기간선택&nbsp;</label></div>
					<div class="col-6 p-0">
						<input  id="selectDate" class="form-control form-control-lg" type="date" placeholder="년-월-일" onchange='printName()'/>
					</div>
				    <div class="pt-3"><label>&nbsp;부터&nbsp;</label></div>
				</div>
				<div class = "col-4 p-0 d-flex justify-content-end">
					<div class="col-9 p-0">
						<input  id="selectDate2" class="form-control form-control-lg" type="date" placeholder="년-월-일" onchange='printName()'/>
					</div>
					<div class="pt-3"><label class="pr-2">&nbsp;까지&nbsp;</label></div>
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
	
	<div class="row col-8 justify-content-start p-0">
        <div class="pl-5 pr-2">
            <div class="">
                <button id="btn1" type="button" class="btn btn-primary btn-rounded btn-xs" data-toggle="dropdown" aria-expanded="false">
                    	월 단위
                </button>
           </div>
       </div>
        <div class="pl-0 pr-2">
            <div class="">
                <button id="btn1" type="button" class="btn btn-primary btn-rounded btn-xs" data-toggle="dropdown" aria-expanded="false">
                    	일 단위
                </button>
           </div>
       </div>
        <div class="pl-5 pr-2">
            <div class="">
                <button id="btn1" type="button" class="btn btn-success btn-rounded btn-xs" data-toggle="dropdown" aria-expanded="false">
                    	근무현황 비교
                </button>
           </div>
       </div>
    </div>	
	
	
	<div  class="row pt-3 d-flex justify-content-center">
		<div class="bg-white" >
			<canvas id="myChart" style="height:30vh; width:95vw;" ></canvas> 
		</div>
	</div>
	
	
	<div class="card-body" style="height: 48vh;overflow-y:scroll;">
		<div class="table-responsive">
			<table class="table table-bordered"
				style="margin: auto; text-align: center; vertical-align:middle;">
				<thead class="thead">
					<tr bgcolor="#333258" style="color: white">
						<th scope="col" style="width:10%; vertical-align:middle;">날짜</th>
						<th scope="col" style="width:10%; vertical-align:middle;">사원번호</th>
						<th scope="col" style="width:10%; vertical-align:middle;">이름</th>
						<th scope="col" style="width:10%; vertical-align:middle;">직급</th>
						<th scope="col" style="width:5%; vertical-align:middle;">소정근무일 수</th>
						<th scope="col" style="width:5%; vertical-align:middle;">실제근무일 수</th>
						<th scope="col" style="width:10%; vertical-align:middle;">소정 근무시간</th>
						<th scope="col" style="width:10%; vertical-align:middle;">실제 근무시간</th>
						<th scope="col" style="width:10%; vertical-align:middle;">총 연장근무시간</th>
						<th scope="col" style="width:10%; vertical-align:middle;">총 근무시간</th>
						<th scope="col" style="width:10%; vertical-align:middle;">평균근무시간</th>
					</tr>
					<tr>
							<td style="vertical-align:middle">2022-10-18</td>
							<td style="vertical-align:middle">A01</td>
							<td style="vertical-align:middle">이순신</td>
							<td style="vertical-align:middle">부장</td>
							<td style="vertical-align:middle">5일</td>
							<td style="vertical-align:middle">5일</td>
							<td style="vertical-align:middle">40:00</td>
							<td style="vertical-align:middle">39:20</td>
							<td style="vertical-align:middle">2:00</td>
							<td style="vertical-align:middle">41:20</td>
							<td style="vertical-align:middle">08:10</td>
					</tr>
					<tr>
							<td style="vertical-align:middle">2022-10-18</td>
							<td style="vertical-align:middle">A02</td>
							<td style="vertical-align:middle">정약용</td>
							<td style="vertical-align:middle">과장</td>
							<td style="vertical-align:middle">5일</td>
							<td style="vertical-align:middle">5일</td>
							<td style="vertical-align:middle">40:00</td>
							<td style="vertical-align:middle">39:20</td>
							<td style="vertical-align:middle">5:30</td>
							<td style="vertical-align:middle">44:50</td>
							<td style="vertical-align:middle">08:25</td>
					</tr>
					<tr>
							<td style="vertical-align:middle">2022-10-18</td>
							<td style="vertical-align:middle">A03</td>
							<td style="vertical-align:middle">강감찬</td>
							<td style="vertical-align:middle">대리</td>
							<td style="vertical-align:middle">5일</td>
							<td style="vertical-align:middle">5일</td>
							<td style="vertical-align:middle">40:00</td>
							<td style="vertical-align:middle">34:34</td>
							<td style="vertical-align:middle">0:00</td>
							<td style="vertical-align:middle">34:34</td>
							<td style="vertical-align:middle">07:22</td>
					</tr>
					<tr>
							<td style="vertical-align:middle">2022-10-18</td>
							<td style="vertical-align:middle">A03</td>
							<td style="vertical-align:middle">강감찬</td>
							<td style="vertical-align:middle">대리</td>
							<td style="vertical-align:middle">5일</td>
							<td style="vertical-align:middle">5일</td>
							<td style="vertical-align:middle">40:00</td>
							<td style="vertical-align:middle">34:34</td>
							<td style="vertical-align:middle">0:00</td>
							<td style="vertical-align:middle">34:34</td>
							<td style="vertical-align:middle">07:22</td>
					</tr>
					<tr>
							<td style="vertical-align:middle">2022-10-18</td>
							<td style="vertical-align:middle">A03</td>
							<td style="vertical-align:middle">강감찬</td>
							<td style="vertical-align:middle">대리</td>
							<td style="vertical-align:middle">5일</td>
							<td style="vertical-align:middle">5일</td>
							<td style="vertical-align:middle">40:00</td>
							<td style="vertical-align:middle">34:34</td>
							<td style="vertical-align:middle">0:00</td>
							<td style="vertical-align:middle">34:34</td>
							<td style="vertical-align:middle">07:22</td>
					</tr>
					<tr>
							<td style="vertical-align:middle">2022-10-18</td>
							<td style="vertical-align:middle">A03</td>
							<td style="vertical-align:middle">강감찬</td>
							<td style="vertical-align:middle">대리</td>
							<td style="vertical-align:middle">5일</td>
							<td style="vertical-align:middle">5일</td>
							<td style="vertical-align:middle">40:00</td>
							<td style="vertical-align:middle">34:34</td>
							<td style="vertical-align:middle">0:00</td>
							<td style="vertical-align:middle">34:34</td>
							<td style="vertical-align:middle">07:22</td>
					</tr>
					<tr bgcolor="#22741C" style="color: white">
						<th scope="col" ></th>
						<th scope="col" ></th>
						<th scope="col" >총 조회12명</th>
						<th scope="col" ></th>
						<th scope="col" ></th>
						<th scope="col" ></th>
						<th scope="col" ></th>
						<th scope="col" >총 272:34</th>
						<th scope="col" >총 12:15</th>
						<th scope="col" >총 294:49</th>
						<th scope="col" >평균 07:30</th>
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

	function printName()	{
		const printDate = document.getElementById('selectDate').value;
		document.getElementById("resultDate").innerText = printDate;
		
		const printDate2 = document.getElementById('selectDate2').value;
		document.getElementById("resultDate2").innerText = "~" + "\u00A0\u00A0\u00A0\u00A0" + printDate2;
	
		if (printDate == printDate2){
			console.log(printDate);
			return document.getElementById('resultDate2').innerText = "";
		}

	}
	
</script>

	
<script>

	// increase 1 Day
/* 	if (document.getElementById("rightDate").onclick == true) {
		
		var tomorrow = new Date();
		tomorrow.setDate(tomorrow.getDate()+1);
		
		console.log(tomorrow);
	} */
	
	const event = document.getElementById("rightDate").onclick
	
	function eventing() {
		if (event == true) {
			alert("실행됩니다");
		}
	}
	
/* 	// decrease 1 Day
	function moveLeftDate()	{
		const clickLeftDate = document.getElementById('rightDate').onclick;
		if (clickLeftDate == true) {
			const today = new Date();
			const yesterday = new Date()
			yesterday.setDate(today.getDate() - 1)
			return document.getElementById("resultDate").innerText = clickLeftDate;	
		}
	} */

</script>


<script>

	document.getElementById('resultDate').innerText = new Date().toISOString().substring(0, 10);
	//document.getElementById('resultDate2').innerText = new Date().toISOString().substring(0, 10);

	</script>

 <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  
  
 <script>
 var ctx = document.getElementById('myChart');
	var myChart = new Chart(ctx, {
		type: 'line',
		data: {
			labels: ['14일', '15일', '16일', '17일', '18일', '19일'],
			datasets: [{
				label: '# of Votes',
				data: [12, 19, 3, 5, 2, 3],
				backgroundColor: [
					'rgba(255, 99, 132, 0.2)',
					'rgba(54, 162, 235, 0.2)',
					'rgba(255, 206, 86, 0.2)',
					'rgba(75, 192, 192, 0.2)',
					'rgba(153, 102, 255, 0.2)',
					'rgba(255, 159, 64, 0.2)'
				],
				borderColor: [
					'rgba(255, 99, 132, 1)',
					'rgba(54, 162, 235, 1)',
					'rgba(255, 206, 86, 1)',
					'rgba(75, 192, 192, 1)',
					'rgba(153, 102, 255, 1)',
					'rgba(255, 159, 64, 1)'
				],
				borderWidth: 2
			}]
		},
		options: {
			responsive: false,
			scales: {
				yAxes: [{
					ticks: {
						beginAtZero: true
					}
				}]
			},
		}
	});
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
