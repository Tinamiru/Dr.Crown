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
				<h1>휴가내역현황</h1>
			</div>
			<div class="p-0 pl-5 pt-5 align-self-center">
				<h3>휴가관리&nbsp;>&nbsp;휴가내역현황</h3>
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
				<h2><span id='resultDate'></span>&nbsp;&nbsp;<span>휴가신청조회</span></h2>
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
	<div class="card-body" style="height: 48vh;overflow-y:scroll;">
		<div class="table-responsive">
			<table class="table table-bordered"
				style="margin: auto; text-align: center; vertical-align:middle;">
				<thead class="thead">
					<tr bgcolor="#333258" style="color: white">
						<th scope="col" style="width:10%">작성일자</th>
						<th scope="col" style="width:10%">사원번호</th>
						<th scope="col" style="width:10%">이름</th>
						<th scope="col" style="width:10%">직급</th>
						<th scope="col" style="width:10%">휴가분류</th>
						<th scope="col" style="width:20%">휴가기간</th>
						<th scope="col" style="width:20%">사유</th>
						<th scope="col" style="width:10%">상태</th>
					</tr>
					<tr>
							<td style="vertical-align:middle">2022-10-17</td>
							<td style="vertical-align:middle">A01</td>
							<td style="vertical-align:middle">이순신</td>
							<td style="vertical-align:middle">부장</td>
							<td style="vertical-align:middle"><span class="badge light badge-light">대체휴가</span></td>
							<td style="vertical-align:middle"><span>2022-10-17</span>~<span>2022-10-19</span></td>
							<td style="vertical-align:middle">휴일대체</td>
							<td style="vertical-align:middle"><span class="badge light badge-dark">미처리</span></td>
					</tr>
					<tr>
							<td style="vertical-align:middle">2022-10-15</td>
							<td style="vertical-align:middle">A03</td>
							<td style="vertical-align:middle">일개미</td>
							<td style="vertical-align:middle">사원</td>
							<td style="vertical-align:middle"><span class="badge light badge-light">연차</span></td>
							<td style="vertical-align:middle"><span>2022-10-16</span>~<span>2022-10-17</span></td>
							<td style="vertical-align:middle">연차 사용</td>
							<td style="vertical-align:middle"><span class="badge light badge-success">처리완료</span></td>
					</tr>
					<tr>
							<td style="vertical-align:middle">2022-10-15</td>
							<td style="vertical-align:middle">A03</td>
							<td style="vertical-align:middle">일개미</td>
							<td style="vertical-align:middle">사원</td>
							<td style="vertical-align:middle"><span class="badge light badge-light">연차</span></td>
							<td style="vertical-align:middle"><span>2022-10-16</span>~<span>2022-10-17</span></td>
							<td style="vertical-align:middle">연차 사용</td>
							<td style="vertical-align:middle"><span class="badge light badge-success">처리완료</span></td>
					</tr>
					<tr>
							<td style="vertical-align:middle">2022-10-15</td>
							<td style="vertical-align:middle">A03</td>
							<td style="vertical-align:middle">일개미</td>
							<td style="vertical-align:middle">사원</td>
							<td style="vertical-align:middle"><span class="badge light badge-light">연차</span></td>
							<td style="vertical-align:middle"><span>2022-10-16</span>~<span>2022-10-17</span></td>
							<td style="vertical-align:middle">연차 사용</td>
							<td style="vertical-align:middle"><span class="badge light badge-success">처리완료</span></td>
					</tr>
					<tr>
							<td style="vertical-align:middle">2022-10-15</td>
							<td style="vertical-align:middle">A03</td>
							<td style="vertical-align:middle">일개미</td>
							<td style="vertical-align:middle">사원</td>
							<td style="vertical-align:middle"><span class="badge light badge-light">반차</span></td>
							<td style="vertical-align:middle"><span>2022-10-16 오전</span></td>
							<td style="vertical-align:middle">반차 사용</td>
							<td style="vertical-align:middle"><span class="badge light badge-success">처리완료</span></td>
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

