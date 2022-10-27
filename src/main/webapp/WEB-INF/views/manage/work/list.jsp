<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" />
<c:set var="workList" value="${dataMap.workList }" />


<body>
<div class="container-fluid">
	<div class="row justify-content-between pr-4">
		<div class="row col-4 pl-4 ">
			<div class="p-0 pt-4 ">
				<h1>근태관리</h1>
			</div>
			<div class="p-0 pl-5 pt-5 align-self-center">
				<h3>근태신청관리&nbsp;>&nbsp;출퇴근내역</h3>
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
	
	<div class="row justify-content-start pl-4 pt-2">
			<div class="col-md-1">
				<div class="custom-control custom-checkbox mb-3">
					<input type="checkbox" class="custom-control-input" checked
						id="customCheckBox1" > <label
						class="custom-control-label" for="customCheckBox1">전체</label>
				</div>
			</div>
			<div class="col-md-1">
				<div class="custom-control custom-checkbox mb-3">
					<input type="checkbox" class="custom-control-input" 
						id="customCheckBox2" > <label
						class="custom-control-label" for="customCheckBox2">일반</label>
				</div>
			</div>
			<div class="col-md-1">
				<div class="custom-control custom-checkbox mb-3">
					<input type="checkbox" class="custom-control-input" id="customCheckBox3" >
					 <label	class="custom-control-label" for="customCheckBox3">의사</label>
				</div>
			</div>
			<div class="col-md-1">
				<div class="custom-control custom-checkbox mb-3">
					<input type="checkbox" class="custom-control-input" 
						id="customCheckBox4" > <label
						class="custom-control-label" for="customCheckBox4">직원</label>
				</div>
			</div>
	</div>

	<div class="row justify-content-between pl-5 pr-3">
		<div class="col-3">
			<select class="form-control " name="perPageNum" id="perPageNum" onchange="list_go(1);">					  		  		
		 		<option value="5" ${cri.perPageNum eq 5 ? 'selected' : '' } >5개씩</option>
		 		<option value="10" ${cri.perPageNum eq 10 ? 'selected' : '' }>10개씩</option>
		 		<option value="20" ${cri.perPageNum eq 20 ? 'selected' : '' }>20개씩</option>
		 		<option value="30" ${cri.perPageNum eq 30 ? 'selected' : '' }>30개씩</option>
		 	</select>
		</div>
		<div class="col-6">
			<div class="row justify-content-end">
				<div class="col-2 p-0">
					<select class="form-control" name="searchType" id="searchType">
						<option value="tcw"  ${cri.searchType eq 'tcw' ? 'selected':'' }>전 체</option>
						<option value="i" ${cri.searchType eq 'i' ? 'selected':'' }>사원번호</option>
						<option value="n" ${cri.searchType eq 'n' ? 'selected':'' }>이름</option>
						<option value="pos" ${cri.searchType eq 'pos' ? 'selected':'' }>직위</option>
						<option value="pos" ${cri.searchType eq 'pos' ? 'selected':'' }>직책</option>
					</select>
				</div>
				<div class="col-4 p-0">
					<input  class="form-control" type="text" name="keyword" placeholder="검색어를 입력하세요." value="${param.keyword }"/>
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
						<th scope="col" style="width:10%">날짜</th>
						<th scope="col" style="width:10%">시간</th>
						<th scope="col" style="width:10%">사원번호</th>
						<th scope="col" style="width:15%">이름</th>
						<th scope="col" style="width:5%">직위</th>
						<th scope="col" style="width:10%">직책</th>
						<th scope="col" style="width:10%">분류</th>
					</tr>
					<tr>
							<td style="vertical-align:middle">2022/08/13</td>
							<td style="vertical-align:middle">19:50</td>
							<td style="vertical-align:middle">AO3</td>
							<td style="vertical-align:middle">조부장</td>
							<td style="vertical-align:middle">부장</td>
							<td style="vertical-align:middle">관리자</td>
							<td style="vertical-align:middle">퇴근</td>
					</tr>
					<tr>
							<td style="vertical-align:middle">2022/08/13</td>
							<td style="vertical-align:middle">18:41</td>
							<td style="vertical-align:middle">AO2</td>
							<td style="vertical-align:middle">김대리</td>
							<td style="vertical-align:middle">대리</td>
							<td style="vertical-align:middle">직원</td>
							<td style="vertical-align:middle">퇴근</td>
					</tr>
					<tr>
							<td style="vertical-align:middle">2022/08/13</td>
							<td style="vertical-align:middle">18:13</td>
							<td style="vertical-align:middle">AO1</td>
							<td style="vertical-align:middle">곽과장</td>
							<td style="vertical-align:middle">과장</td>
							<td style="vertical-align:middle">전문의</td>
							<td style="vertical-align:middle">퇴근</td>
					</tr>
					<tr>
							<td style="vertical-align:middle">2022/08/13</td>
							<td style="vertical-align:middle">08:50</td>
							<td style="vertical-align:middle">AO3</td>
							<td style="vertical-align:middle">조부장</td>
							<td style="vertical-align:middle">부장</td>
							<td style="vertical-align:middle">관리자</td>
							<td style="vertical-align:middle">출근</td>
					</tr>
					<tr>
							<td style="vertical-align:middle">2022/08/13</td>
							<td style="vertical-align:middle">08:41</td>
							<td style="vertical-align:middle">AO2</td>
							<td style="vertical-align:middle">김대리</td>
							<td style="vertical-align:middle">대리</td>
							<td style="vertical-align:middle">직원</td>
							<td style="vertical-align:middle">출근</td>
					</tr>
					<tr>
							<td style="vertical-align:middle">2022/08/13</td>
							<td style="vertical-align:middle">08:13</td>
							<td style="vertical-align:middle">AO1</td>
							<td style="vertical-align:middle">곽과장</td>
							<td style="vertical-align:middle">과장</td>
							<td style="vertical-align:middle">전문의</td>
							<td style="vertical-align:middle">출근</td>
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



