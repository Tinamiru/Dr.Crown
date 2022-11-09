<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>

<style>


/** 테이블 */
.borderTd, .borderTdMemNo, .borderTdRealTime, .borderTdExtendTime, .borderTdTotalTime, .borderTdAvrageTime{
	border:1px #E7E7E7 solid;  
	padding: 5px;
} 

.borderThTop{
	border:1px #E7E7E7 solid;  
	padding: 5px;
	background-color:#333258;
	position:sticky;
	top:0;
	color: white;
	/* top:0; */
} 

.borderTr{
	border:1px #E7E7E7 solid;  
	padding: 5px;
/* 	display: flex;
	justify-content: space-between; */
} 


.borderTdTotalTime{

	background-color:#E0FFDB;

}


#borderTh3, #borderTh8, #borderTh9, #borderTh10, #borderTh11{
	border-left:1px #E7E7E7 solid;  
	border-right:1px #E7E7E7 solid;  

	padding: 5px;
	background-color:#22741C;
	color: white;
	position:sticky;
	bottom:0;
} 

#borderTh1, #borderTh2, #borderTh4, #borderTh5, #borderTh6, #borderTh7{
	padding: 5px;
	background-color:#22741C;
	position:sticky;	
	bottom:0;
} 

</style>



<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" />
<c:set var="workMain" value="${dataMap.workMain }" />

<script src="https://kit.fontawesome.com/9e1d56064a.js" crossorigin="anonymous"></script>



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
	<div class="row justify-content-around ">
		<div class="col-2 pb-0 align-self-center" >
			<select class="form-control " name="perPageNum" id="perPageNum" onchange="list_go(1);" style="border:1px lightgray solid">					  		  		
		 		<option value="5" ${cri.perPageNum eq 5 ? 'selected' : '' } >5개씩</option>
		 		<option value="10" ${cri.perPageNum eq 10 ? 'selected' : '' }>10개씩</option>
		 		<option value="20" ${cri.perPageNum eq 20 ? 'selected' : '' }>20개씩</option>
		 		<option value="30" ${cri.perPageNum eq 30 ? 'selected' : '' }>30개씩</option>
		 	</select>
		</div>
		<div class="align-self-center col-5 pb-0">
			<div class="row d-flex justify-content-end" >
		        <div class="row col-10 justify-content-center"  >
					<ul class="align-self-center">
						<li class="page-indicator pr-3">
						    <a id="leftDate" class="page-link" href="javascript:void()">
						        <i class="la la-angle-left"></i>
					        </a>
						</li>
			        </ul>
					<h4 class="align-self-center" style="margin:0;">
						<span id='resultDate1' class="align-self-center" style="margin:0;"></span>
						&nbsp;&nbsp;<span></span>
					</h4>
					<h4 class="align-self-center" style="margin:0;">
						<span id='resultDate2' class="align-self-center" style="margin:0;"></span>
						&nbsp;&nbsp;<span></span>
					</h4>
					<h4 class="align-self-center" style="margin:0;">
						<span class="align-self-center" style="margin:0;"></span>
						&nbsp;&nbsp;<span>근무시간내역</span>
					</h4>
					<ul class="align-self-center">
						<li class="page-indicator pl-3">
						    <a id="rightDate" class="page-link" href="javascript:void()">
						        <i class="la la-angle-right"></i>
				        	</a>
						</li>
			        </ul>
		        </div>
				<div class="row col-1 justify-content-center">
		        </div>
			</div>
		</div>
		<div class="align-self-center col-5 p-0">
			<div class="row d-flex justify-content-end">
				<div class = "col-6 p-0 d-flex justify-content-end align-self-center">
				    <div class="align-self-center"><label class="align-self-center" style="margin:0;">기간선택&nbsp;</label></div>
					<div class="col-6 p-0">
						<input  id="selectDate1" class="form-control form-control-lg" oninput="dateChangeValue(1)" type="date" placeholder="년-월-일" onchange='printName()' style="border:1px lightgray solid"/>
					</div>
				    <div class="align-self-center"><label class="align-self-center" style="margin:0;">&nbsp;부터&nbsp;</label></div>
				</div>
				<div class = "col-4 p-0 d-flex justify-content-end">
					<div class="col-9 p-0">
						<input  id="selectDate2" class="form-control form-control-lg" oninput="dateChangeValue(2)" type="date" placeholder="년-월-일" onchange='printName()' style="border:1px lightgray solid"/>
					</div>
					<div class="align-self-center"><label class="pr-2 align-self-center" style="margin:0;">&nbsp;까지&nbsp;</label></div>
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
	
	
	<div  class="row pt-3 pb-4 d-flex justify-content-center">
		<div class="bg-white" >
			<canvas id="myChart" style="height:30vh; width:94vw;" ></canvas> 
		</div>
	</div>
	
	
	<div class="row justify-content-center" style="height: 30vh;  width:95vw; overflow-y:scroll; margin-left:3vh;">
		<table class="tableCalc" style="text-align: center; vertical-align:middle; width:100%">
			<tr id="firstTr">
				<th class="borderThTop" style="width:10%; vertical-align:middle;">날짜</th>
				<th class="borderThTop" style="width:10%; vertical-align:middle;">사원번호</th>
				<th class="borderThTop" style="width:10%; vertical-align:middle;">이름</th>
				<th class="borderThTop" style="width:10%; vertical-align:middle;">직급</th>
				<th class="borderThTop" style="width:5%; vertical-align:middle;">소정근무일 수</th>
				<th class="borderThTop" style="width:5%; vertical-align:middle;">실제근무일 수</th>
				<th class="borderThTop" style="width:10%; vertical-align:middle;">소정 근무시간</th>
				<th class="borderThTop" style="width:10%; vertical-align:middle;">실제 근무시간</th>
				<th class="borderThTop" style="width:10%; vertical-align:middle;">총 연장근무시간</th>
				<th class="borderThTop" style="width:10%; vertical-align:middle;">총 근무시간</th>
				<th class="borderThTop" style="width:10%; vertical-align:middle;">평균근무시간</th>
			</tr>
			<tr class="borderTr" id="tr1">
					<td class="borderTdDate" style="vertical-align:middle">2022-11-03</td>
					<td class="borderTdMemNo" style="vertical-align:middle">A01</td>
					<td class="borderTd" style="vertical-align:middle">이순신</td>
					<td class="borderTd" style="vertical-align:middle">부장</td>
					<td class="borderTd" style="vertical-align:middle">5일</td>
					<td class="borderTd" style="vertical-align:middle">5일</td>
					<td class="borderTd" style="vertical-align:middle">40시간</td>
					<td class="borderTdRealTime" style="vertical-align:middle"><span class="realTimeHour">38</span>시간&nbsp;<span class="realTimeMinute">20</span>분</td>
					<td class="borderTdExtendTime" style="vertical-align:middle"><span class="extendTimeHour">4</span>시간&nbsp;<span class="extendTimeMinute">15</span>분</td>
					<td class="borderTdTotalTime" style="vertical-align:middle"><span class="totalTimeHour">#</span>시간&nbsp;<span class="totalTimeMinute">#</span>분</td>
					<td class="borderTdAvrageTime" style="vertical-align:middle"><span class="avrageTimeHour">#</span>시간&nbsp;<span class="avrageTimeMinute">#</span>분</td>
			</tr>
			<tr class="borderTr" id="tr2">
					<td class="borderTdDate" style="vertical-align:middle">2022-11-03</td>
					<td class="borderTdMemNo" style="vertical-align:middle">A02</td>
					<td class="borderTd" style="vertical-align:middle">정약용</td>
					<td class="borderTd" style="vertical-align:middle">과장</td>
					<td class="borderTd" style="vertical-align:middle">5일</td>
					<td class="borderTd" style="vertical-align:middle">5일</td>
					<td class="borderTd" style="vertical-align:middle">40시간</td>
					<td class="borderTdRealTime" style="vertical-align:middle"><span class="realTimeHour">39</span>시간&nbsp;<span class="realTimeMinute">50</span>분</td>
					<td class="borderTdExtendTime" style="vertical-align:middle"><span class="extendTimeHour">6</span>시간&nbsp;<span class="extendTimeMinute">44</span>분</td>
					<td class="borderTdTotalTime" style="vertical-align:middle"><span class="totalTimeHour">#</span>시간&nbsp;<span class="totalTimeMinute">#</span>분</td>
					<td class="borderTdAvrageTime" style="vertical-align:middle"><span class="avrageTimeHour">#</span>시간&nbsp;<span class="avrageTimeMinute">#</span>분</td>
			</tr>
			<tr class="borderTr">
					<td class="borderTdDate" style="vertical-align:middle">2022-11-02</td>
					<td class="borderTdMemNo" style="vertical-align:middle">A03</td>
					<td class="borderTd" style="vertical-align:middle">강감찬</td>
					<td class="borderTd" style="vertical-align:middle">대리</td>
					<td class="borderTd" style="vertical-align:middle">5일</td>
					<td class="borderTd"  style="vertical-align:middle">5일</td>
					<td class="borderTd" style="vertical-align:middle">40시간</td>
					<td class="borderTdRealTime" style="vertical-align:middle"><span class="realTimeHour">38</span>시간&nbsp;<span class="realTimeMinute">37</span>분</td>
					<td class="borderTdExtendTime" style="vertical-align:middle"><span class="extendTimeHour">2</span>시간&nbsp;<span class="extendTimeMinute">10</span>분</td>
					<td class="borderTdTotalTime" style="vertical-align:middle"><span class="totalTimeHour">#</span>시간&nbsp;<span class="totalTimeMinute">#</span>분</td>
					<td class="borderTdAvrageTime" style="vertical-align:middle"><span class="avrageTimeHour">#</span>시간&nbsp;<span class="avrageTimeMinute">#</span>분</td>
			</tr>
			<tr class="borderTr">
					<td class="borderTdDate" style="vertical-align:middle">2022-11-02</td>
					<td class="borderTdMemNo" style="vertical-align:middle">A04</td>
					<td class="borderTd" style="vertical-align:middle">강감찬</td>
					<td class="borderTd" style="vertical-align:middle">대리</td>
					<td class="borderTd" style="vertical-align:middle">5일</td>
					<td class="borderTd" style="vertical-align:middle">5일</td>
					<td class="borderTd" style="vertical-align:middle">40시간</td>
					<td class="borderTdRealTime" style="vertical-align:middle"><span class="realTimeHour">39</span>시간&nbsp;<span class="realTimeMinute">42</span>분</td>
					<td class="borderTdExtendTime" style="vertical-align:middle"><span class="extendTimeHour">0</span>시간&nbsp;<span class="extendTimeMinute">37</span>분</td>
					<td class="borderTdTotalTime" style="vertical-align:middle"><span class="totalTimeHour">#</span>시간&nbsp;<span class="totalTimeMinute">#</span>분</td>
					<td class="borderTdAvrageTime" style="vertical-align:middle"><span class="avrageTimeHour">#</span>시간&nbsp;<span class="avrageTimeMinute">#</span>분</td>
			</tr>
			<tr class="borderTr">
					<td class="borderTdDate" style="vertical-align:middle">2022-11-02</td>
					<td class="borderTdMemNo" style="vertical-align:middle">A05</td>
					<td class="borderTd" style="vertical-align:middle">강감찬</td>
					<td class="borderTd" style="vertical-align:middle">대리</td>
					<td class="borderTd" style="vertical-align:middle">5일</td>
					<td class="borderTd" style="vertical-align:middle">5일</td>
					<td class="borderTd" style="vertical-align:middle">40시간</td>
					<td class="borderTdRealTime" style="vertical-align:middle"><span class="realTimeHour">37</span>시간&nbsp;<span class="realTimeMinute">1</span>분</td>
					<td class="borderTdExtendTime" style="vertical-align:middle"><span class="extendTimeHour">3</span>시간&nbsp;<span class="extendTimeMinute">30</span>분</td>
					<td class="borderTdTotalTime" style="vertical-align:middle"><span class="totalTimeHour">#</span>시간&nbsp;<span class="totalTimeMinute">#</span>분</td>
					<td class="borderTdAvrageTime" style="vertical-align:middle"><span class="avrageTimeHour">#</span>시간&nbsp;<span class="avrageTimeMinute">#</span>분</td>
			</tr>
			<tr class="borderTr">
					<td class="borderTdDate" style="vertical-align:middle">2022-11-01</td>
					<td class="borderTdMemNo" style="vertical-align:middle">A06</td>
					<td class="borderTd" style="vertical-align:middle">강감찬</td>
					<td class="borderTd" style="vertical-align:middle">대리</td>
					<td class="borderTd" style="vertical-align:middle">5일</td>
					<td class="borderTd" style="vertical-align:middle">5일</td>
					<td class="borderTd" style="vertical-align:middle">40시간</td>
					<td class="borderTdRealTime" style="vertical-align:middle"><span class="realTimeHour">40</span>시간&nbsp;<span class="realTimeMinute">0</span>분</td>
					<td class="borderTdExtendTime" style="vertical-align:middle"><span class="extendTimeHour">1</span>시간&nbsp;<span class="extendTimeMinute">23</span>분</td>
					<td class="borderTdTotalTime" style="vertical-align:middle"><span class="totalTimeHour">#</span>시간&nbsp;<span class="totalTimeMinute">#</span>분</td>
					<td class="borderTdAvrageTime" style="vertical-align:middle"><span class="avrageTimeHour">#</span>시간&nbsp;<span class="avrageTimeMinute">#</span>분</td>
			</tr>
			<tr class="borderTr">
					<td class="borderTdDate" style="vertical-align:middle">2022-11-01</td>
					<td class="borderTdMemNo" style="vertical-align:middle">A06</td>
					<td class="borderTd" style="vertical-align:middle">강감찬</td>
					<td class="borderTd" style="vertical-align:middle">대리</td>
					<td class="borderTd" style="vertical-align:middle">5일</td>
					<td class="borderTd" style="vertical-align:middle">5일</td>
					<td class="borderTd" style="vertical-align:middle">40시간</td>
					<td class="borderTdRealTime" style="vertical-align:middle"><span class="realTimeHour">38</span>시간&nbsp;<span class="realTimeMinute">28</span>분</td>
					<td class="borderTdExtendTime" style="vertical-align:middle"><span class="extendTimeHour">7</span>시간&nbsp;<span class="extendTimeMinute">45</span>분</td>
					<td class="borderTdTotalTime" style="vertical-align:middle"><span class="totalTimeHour">#</span>시간&nbsp;<span class="totalTimeMinute">#</span>분</td>
					<td class="borderTdAvrageTime" style="vertical-align:middle"><span class="avrageTimeHour">#</span>시간&nbsp;<span class="avrageTimeMinute">#</span>분</td>
			</tr>
			<tr class="borderTr">
					<td class="borderTdDate" style="vertical-align:middle">2022-10-31</td>
					<td class="borderTdMemNo" style="vertical-align:middle">A06</td>
					<td class="borderTd" style="vertical-align:middle">강감찬</td>
					<td class="borderTd" style="vertical-align:middle">대리</td>
					<td class="borderTd" style="vertical-align:middle">5일</td>
					<td class="borderTd" style="vertical-align:middle">5일</td>
					<td class="borderTd" style="vertical-align:middle">40시간</td>
					<td class="borderTdRealTime" style="vertical-align:middle"><span class="realTimeHour">37</span>시간&nbsp;<span class="realTimeMinute">9</span>분</td>
					<td class="borderTdExtendTime" style="vertical-align:middle"><span class="extendTimeHour">11</span>시간&nbsp;<span class="extendTimeMinute">18</span>분</td>
					<td class="borderTdTotalTime" style="vertical-align:middle"><span class="totalTimeHour">#</span>시간&nbsp;<span class="totalTimeMinute">#</span>분</td>
					<td class="borderTdAvrageTime" style="vertical-align:middle"><span class="avrageTimeHour">#</span>시간&nbsp;<span class="avrageTimeMinute">#</span>분</td>
			</tr>
			<tr class="borderTr">
					<td class="borderTdDate" style="vertical-align:middle">2022-10-31</td>
					<td class="borderTdMemNo" style="vertical-align:middle">A07</td>
					<td class="borderTd" style="vertical-align:middle">강감찬</td>
					<td class="borderTd" style="vertical-align:middle">대리</td>
					<td class="borderTd" style="vertical-align:middle">5일</td>
					<td class="borderTd" style="vertical-align:middle">5일</td>
					<td class="borderTd" style="vertical-align:middle">40시간</td>
					<td class="borderTdRealTime" style="vertical-align:middle"><span class="realTimeHour">37</span>시간&nbsp;<span class="realTimeMinute">9</span>분</td>
					<td class="borderTdExtendTime" style="vertical-align:middle"><span class="extendTimeHour">11</span>시간&nbsp;<span class="extendTimeMinute">18</span>분</td>
					<td class="borderTdTotalTime" style="vertical-align:middle"><span class="totalTimeHour">#</span>시간&nbsp;<span class="totalTimeMinute">#</span>분</td>
					<td class="borderTdAvrageTime" style="vertical-align:middle"><span class="avrageTimeHour">#</span>시간&nbsp;<span class="avrageTimeMinute">#</span>분</td>
			</tr>
			<tr class="borderTr">
					<td class="borderTdDate" style="vertical-align:middle">2022-10-28</td>
					<td class="borderTdMemNo" style="vertical-align:middle">A07</td>
					<td class="borderTd" style="vertical-align:middle">강감찬</td>
					<td class="borderTd" style="vertical-align:middle">대리</td>
					<td class="borderTd" style="vertical-align:middle">5일</td>
					<td class="borderTd" style="vertical-align:middle">5일</td>
					<td class="borderTd" style="vertical-align:middle">40시간</td>
					<td class="borderTdRealTime" style="vertical-align:middle"><span class="realTimeHour">37</span>시간&nbsp;<span class="realTimeMinute">9</span>분</td>
					<td class="borderTdExtendTime" style="vertical-align:middle"><span class="extendTimeHour">11</span>시간&nbsp;<span class="extendTimeMinute">18</span>분</td>
					<td class="borderTdTotalTime" style="vertical-align:middle"><span class="totalTimeHour">#</span>시간&nbsp;<span class="totalTimeMinute">#</span>분</td>
					<td class="borderTdAvrageTime" style="vertical-align:middle"><span class="avrageTimeHour">#</span>시간&nbsp;<span class="avrageTimeMinute">#</span>분</td>
			</tr>
			<tr class="borderTr">
					<td class="borderTdDate" style="vertical-align:middle">2022-10-28</td>
					<td class="borderTdMemNo" style="vertical-align:middle">A08</td>
					<td class="borderTd" style="vertical-align:middle">강감찬</td>
					<td class="borderTd" style="vertical-align:middle">대리</td>
					<td class="borderTd" style="vertical-align:middle">5일</td>
					<td class="borderTd" style="vertical-align:middle">5일</td>
					<td class="borderTd" style="vertical-align:middle">40시간</td>
					<td class="borderTdRealTime" style="vertical-align:middle"><span class="realTimeHour">37</span>시간&nbsp;<span class="realTimeMinute">9</span>분</td>
					<td class="borderTdExtendTime" style="vertical-align:middle"><span class="extendTimeHour">11</span>시간&nbsp;<span class="extendTimeMinute">18</span>분</td>
					<td class="borderTdTotalTime" style="vertical-align:middle"><span class="totalTimeHour">#</span>시간&nbsp;<span class="totalTimeMinute">#</span>분</td>
					<td class="borderTdAvrageTime" style="vertical-align:middle"><span class="avrageTimeHour">#</span>시간&nbsp;<span class="avrageTimeMinute">#</span>분</td>
			</tr>
<!-- 			<tr class="borderEmptyHiddenTr1" style="display:none;">
					<td style="vertical-align:middle"></td>
					<td style="vertical-align:middle"></td>
					<td style="vertical-align:middle"></td>
					<td style="vertical-align:middle"></td>
					<td style="vertical-align:middle"></td>
					<td style="vertical-align:middle"></td>
					<td style="vertical-align:middle"></td>
					<td style="vertical-align:middle"></td>
					<td style="vertical-align:middle"></td>
					<td style="vertical-align:middle"></td>
					<td style="vertical-align:middle"></td>
			</tr> -->
			<tr id="lastTr" class="borderTrBottom" >
				<th id="borderTh1" scope="col" ></th>
				<th id="borderTh2" scope="col" ></th>
				<th id="borderTh3" scope="col" >총 조회&nbsp;&nbsp;<span id="cntMemNo">#</span>명</th>
				<th id="borderTh4" scope="col" ></th>
				<th id="borderTh5" scope="col" ></th>
				<th id="borderTh6" scope="col" ></th>
				<th id="borderTh7" scope="col" ></th>
				<th id="borderTh8" scope="col" >총&nbsp;&nbsp;<span id="totalRealTimeHour">#</span>시간&nbsp;<span id="totalRealTimeMinute">#</span>분</th>
				<th id="borderTh9" scope="col" >총&nbsp;&nbsp;<span id="totalExtendTimeHour">#</span>시간&nbsp;<span id="totalExtendTimeMinute">#</span>분</th>
				<th id="borderTh10" scope="col" >총&nbsp;&nbsp;<span id="totalWorkTimeHour">#</span>시간&nbsp;<span id="totalWorkTimeMinute">#</span>분</th>
				<th id="borderTh11" scope="col" >평균&nbsp;&nbsp;<span id="totalAvrageTimeHour">#</span>시간&nbsp;<span id="totalAvrageTimeMinute">#</span>분</th>
			</tr>
				
				
			<%-- <c:if test="${empty memeberList }" >
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
			</c:forEach> --%>
		</table>
	</div>
	<div id="clac"></div>
	<hr>
	<div class = "row justify-content-end pr-5">
		<div>
			<!-- <button type="button" class="btn btn-square btn-primary" style="position: absolute; right: 4vw;">사원등록</button> -->
		</div>
	</div>
</div>


<%-- <%@ include file="/WEB-INF/views/include/pagination.jsp" %> --%>




<script>

	function printName()	{
		const printDate1 = document.getElementById('selectDate1').value;
		document.getElementById("resultDate1").innerText = printDate1;
		
		const printDate2 = document.getElementById('selectDate2').value;
		document.getElementById("resultDate2").innerText = "~" + "\u00A0\u00A0\u00A0\u00A0" + printDate2;
	
		if (printDate1 == printDate2){
			//console.log(printDate2);
			return document.getElementById('resultDate2').innerText = "";
		}

	}
	
</script>

<script>
	document.getElementById('selectDate1').value = new Date().toISOString().substring(0, 10);
	document.getElementById('resultDate1').innerText = new Date().toISOString().substring(0, 10);

	document.getElementById('selectDate2').value = new Date().toISOString().substring(0, 10);
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

	//document.getElementById('resultDate1').innerText = new Date().toISOString().substring(0, 10);
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



<script> /**표 계산 펑션 (인원 조회)*/

	window.onload = function(){
		peopleCnt();
	}

	function peopleCnt(){
		var memNo = document.getElementsByClassName("borderTdMemNo");
		
		memList=[];
		
		for (var i=0; i < memNo.length; i++ ) {
			var innertext = memNo[i].innerHTML;
			if(memList.includes(innertext) == false ){
				memList.push(innertext);
			} else {
				console.log("this element has already!");
			}
		}
		//console.log(memList);
	
		var cntMemNo = memList.length;
		//console.log(cntMemNo);
		
		document.getElementById("cntMemNo").innerHTML = cntMemNo;
		
		return memList;
	}
	
</script>



<script> /**표 계산 펑션 (총 실제 근무시간)*/

	window.addEventListener('load', function(){
		var realTimeHour = (document.getElementsByClassName("realTimeHour"));
		var realTimeMinute = (document.getElementsByClassName("realTimeMinute"));
		
		timeHourList=[];
		timeMinuteList=[];
		
		for (var i=0; i < realTimeHour.length; i++ ) {
			var innertextH = parseInt(realTimeHour[i].innerHTML);
			//console.log(innertextH);
			timeHourList.push(innertextH);
		}

		for (var i=0; i < realTimeMinute.length; i++ ) {
			var innertextM = parseInt(realTimeMinute[i].innerHTML);
			//console.log(innertextM);
			timeMinuteList.push(innertextM);
		}
		
		//console.log(timeHourList);
		//console.log(timeMinuteList);
		
		var totalRealTimeHour = timeHourList.reduce(function(a,b) {return a+b});
		//console.log(totalRealTimeHour);

		var totalRealTimeMinute = timeMinuteList.reduce(function(a,b) {return a+b});
		//console.log(totalRealTimeMinute);
		
		var calTotalRealTimeMinuteH = parseInt(totalRealTimeMinute / 60);
		var calTotalRealTimeMinuteM = parseInt(totalRealTimeMinute % 60);
		//console.log(calTotalRealTimeMinuteH); 
		//console.log(calTotalRealTimeMinuteM); 

		var resultTotalHour = totalRealTimeHour + calTotalRealTimeMinuteH;
		var resultTotalMinute = calTotalRealTimeMinuteM;
		//console.log(resultTotalHour); 
		//console.log(resultTotalMinute); 
		
		document.getElementById("totalRealTimeHour").innerHTML = resultTotalHour;
		document.getElementById("totalRealTimeMinute").innerHTML = resultTotalMinute;
	});
	
</script>


<script> /**표 계산 펑션 (총 연장 근무시간)*/

	window.addEventListener('load', function(){
		var extendTimeHour = (document.getElementsByClassName("extendTimeHour"));
		var extendTimeMinute = (document.getElementsByClassName("extendTimeMinute"));
		
		timeHourList=[];
		timeMinuteList=[];
		
		for (var i=0; i < extendTimeHour.length; i++ ) {
			var innertextH = parseInt(extendTimeHour[i].innerHTML);
			//console.log(innertextH);
			timeHourList.push(innertextH);
		}

		for (var i=0; i < extendTimeMinute.length; i++ ) {
			var innertextM = parseInt(extendTimeMinute[i].innerHTML);
			//console.log(innertextM);
			timeMinuteList.push(innertextM);
		}
		
		//console.log(timeHourList);
		//console.log(timeMinuteList);
		
		var totalExtendTimeHour = timeHourList.reduce(function(a,b) {return a+b});
		//console.log(totalRealTimeHour);

		var totalExtendTimeMinute = timeMinuteList.reduce(function(a,b) {return a+b});
		//console.log(totalRealTimeMinute);
		
		var calTotalExtendTimeMinuteH = parseInt(totalExtendTimeHour / 60);
		var calTotalExtendTimeMinuteM = parseInt(totalExtendTimeMinute % 60);
		//console.log(calTotalRealTimeMinuteH); 
		//console.log(calTotalRealTimeMinuteM); 

		var resultTotalHour = totalExtendTimeHour + calTotalExtendTimeMinuteH;
		var resultTotalMinute = calTotalExtendTimeMinuteM;
		//console.log(resultTotalHour); 
		//console.log(resultTotalMinute); 
		
		document.getElementById("totalExtendTimeHour").innerHTML = resultTotalHour;
		document.getElementById("totalExtendTimeMinute").innerHTML = resultTotalMinute;
	});
	
</script>






<script> /**표 계산 펑션 (각 row별 총 근무시간)*/
	
	window.addEventListener('load', function(){
		
		
		var cntBorderTr = document.getElementsByClassName('borderTr').length;
		//console.log("tr개수 :", cntBorderTr);		

		var trsTime1 = document.querySelectorAll('.borderTdRealTime');
		var trsTime2 = document.querySelectorAll('.borderTdExtendTime');
		var twt = document.querySelectorAll(".borderTdTotalTime");

		//console.log(trsTime1);
		for(var i=0; i<cntBorderTr; i++){

			var trsHour1Value = parseInt(trsTime1[i].firstChild.innerHTML);
			var trsHour2Value = parseInt(trsTime2[i].firstChild.innerHTML);
			//console.log(trsHour1Value);
			//console.log(trsHour2Value);
			
			var trsMinute1Value = parseInt(trsTime1[i].lastElementChild.innerHTML);
			var trsMinute2Value = parseInt(trsTime2[i].lastElementChild.innerHTML);
			//console.log(trsMinute1Value);
			//console.log(trsMinute2Value);
			
			var sumTrsHour = trsHour1Value + trsHour2Value; 
			var sumTrsMinute = trsMinute1Value + trsMinute2Value; 
			//console.log(sumTrsHour);
			//console.log(sumTrsMinute);
			
			var calTrsTimeMinuteH = parseInt(sumTrsMinute / 60);
			var calTrsTimeMinuteM = parseInt(sumTrsMinute % 60);
			//console.log(calTrsTimeMinuteH);
			//console.log(calTrsTimeMinuteM);
			
			var resultHour = sumTrsHour + calTrsTimeMinuteH;
			var resultMinute = calTrsTimeMinuteM;
			//console.log(resultHour);
			//console.log(resultMinute);
			 
			twt[i].firstChild.innerHTML = resultHour;
			twt[i].lastElementChild.innerHTML = resultMinute;
		} 
	});

</script>



<script> /**표 계산 펑션 (각 row별 총 근무시간의 총 합계)*/
	
	window.addEventListener('load', function(){
		var totalTimeHour = (document.getElementsByClassName("totalTimeHour"));
		var totalTimeMinute = (document.getElementsByClassName("totalTimeMinute"));
		//var twt = document.querySelectorAll(".borderTdTotalTime");
		
		timeHourList=[];
		timeMinuteList=[];
		
		//var hh = totalTimeHour.length;
		//var mm = totalTimeMinute.length;
		//console.log(hh);
		//console.log(mm);
		
		for (var i=0; i < totalTimeHour.length; i++ ) {
			var innertextH = parseInt(totalTimeHour[i].innerHTML);
			//console.log(innertextH);
			timeHourList.push(innertextH);
		}
	
		for (var i=0; i < totalTimeMinute.length; i++ ) {
			var innertextM = parseInt(totalTimeMinute[i].innerHTML);
			//console.log(innertextM);
			timeMinuteList.push(innertextM);
		}
		
		//console.log(timeHourList);
		//console.log(timeMinuteList);
		
		var totalTotalTimeHour = timeHourList.reduce(function(a,b) {return a+b});
		//console.log(totalTotalTimeHour);
	
		var totalTotalTimeMinute = timeMinuteList.reduce(function(a,b) {return a+b});
		//console.log(totalTotalTimeMinute);
		
		var calTotalTotalTimeMinuteH = parseInt(totalTotalTimeHour / 60);
		var calTotalTotalTimeMinuteM = parseInt(totalTotalTimeMinute % 60);
		//console.log(calTotalTotalTimeMinuteH); 
		//console.log(calTotalTotalTimeMinuteM); 
	
		var resultTotalHour = totalTotalTimeHour + calTotalTotalTimeMinuteH;
		var resultTotalMinute = calTotalTotalTimeMinuteM;
		//console.log(resultTotalHour); 
		//console.log(resultTotalMinute); 
		
		document.getElementById("totalWorkTimeHour").innerHTML = resultTotalHour;
		document.getElementById("totalWorkTimeMinute").innerHTML = resultTotalMinute;
	});
</script>


<script> /** 표 계산 펑션 (평균 근무시간 계산)*/
	
window.addEventListener('load', function(){
	
	
	var cntBorderTr = document.getElementsByClassName('borderTr').length;
	
	//console.log("tr개수 :", cntBorderTr);		

	var twTime = document.querySelectorAll('.borderTdTotalTime');
	var awt = document.querySelectorAll(".borderTdAvrageTime");

	for(var i=0; i<cntBorderTr; i++){

		var twtHourValue = (parseInt(twTime[i].firstChild.innerHTML))*60;
		//console.log(twtHourValue);
		
		var twtMinuteValue = parseInt(twTime[i].lastElementChild.innerHTML);
		//console.log(twtMinuteValue);
		
		var sumTwtWeek = (twtHourValue + twtMinuteValue)/5;
		
		var calTwtWeekH = parseInt(sumTwtWeek / 60);
		var calTwtWeekM = parseInt(sumTwtWeek % 60);
		//console.log(calTwtWeekH);
		//console.log(calTwtWeekM);
		
		awt[i].firstChild.innerHTML = calTwtWeekH;
		awt[i].lastElementChild.innerHTML = calTwtWeekM;
	} 
});

		
</script>


<script> /** 표 계산 펑션 (평균 근무시간 계산)*/
	
window.addEventListener('load', function(){
	
	
	var cntBorderTr = document.getElementsByClassName('borderTr').length;
	
	//console.log("tr개수 :", cntBorderTr);		

	var twTime = document.querySelectorAll('.borderTdTotalTime');
	var awt = document.querySelectorAll(".borderTdAvrageTime");

	for(var i=0; i<cntBorderTr; i++){

		var twtHourValue = (parseInt(twTime[i].firstChild.innerHTML))*60;
		//console.log(twtHourValue);
		
		var twtMinuteValue = parseInt(twTime[i].lastElementChild.innerHTML);
		//console.log(twtMinuteValue);
		
		var sumTwtWeek = (twtHourValue + twtMinuteValue)/5;
		
		var calTwtWeekH = parseInt(sumTwtWeek / 60);
		var calTwtWeekM = parseInt(sumTwtWeek % 60);
		//console.log(calTwtWeekH);
		//console.log(calTwtWeekM);
		
		awt[i].firstChild.innerHTML = calTwtWeekH;
		awt[i].lastElementChild.innerHTML = calTwtWeekM;
	} 
});

		
</script>


<script> /** 평균합계의 총 평균 계산 펑션*/
	
window.addEventListener('load', function(){
	var avrageTimeHour = (document.getElementsByClassName("avrageTimeHour"));
	var avrageTimeMinute = (document.getElementsByClassName("avrageTimeMinute"));
	//var twt = document.querySelectorAll(".borderTdTotalTime");
	
	var cntBorderTr = document.getElementsByClassName('borderTr').length;
	
	timeHourList=[];
	timeMinuteList=[];
	
	//var hh = totalTimeHour.length;
	//var mm = totalTimeMinute.length;
	//console.log(hh);
	//console.log(mm);
	
	for (var i=0; i < avrageTimeHour.length; i++ ) {
		var innertextH = parseInt(avrageTimeHour[i].innerHTML);
		//console.log(innertextH);
		timeHourList.push(innertextH);
	}

	for (var i=0; i < avrageTimeMinute.length; i++ ) {
		var innertextM = parseInt(avrageTimeMinute[i].innerHTML);
		//console.log(innertextM);
		timeMinuteList.push(innertextM);
	}
	
	//console.log(timeHourList);
	//console.log(timeMinuteList);
	
	var totalAvrageTimeHour = (timeHourList.reduce(function(a,b) {return a+b}))*60;
	//console.log(totalTotalTimeHour);

	var totalAvrageTimeMinute = timeMinuteList.reduce(function(a,b) {return a+b});
	//console.log(totalTotalTimeMinute);
	
	var sumAvrageTime = (totalAvrageTimeHour + totalAvrageTimeMinute)/cntBorderTr;
	
	var calsumAvrageTimeMinuteH = parseInt(sumAvrageTime / 60);
	var calsumAvrageTimeMinuteM = parseInt(sumAvrageTime % 60);
	//console.log(calTotalTotalTimeMinuteH); 
	//console.log(calTotalTotalTimeMinuteM); 

	document.getElementById("totalAvrageTimeHour").innerHTML = calsumAvrageTimeMinuteH;
	document.getElementById("totalAvrageTimeMinute").innerHTML = calsumAvrageTimeMinuteM;
});

</script>





<script> /** 날짜별 표 필터 펑션*/

window.addEventListener ('load', function(){
	const selectDate = document.getElementById('selectDate1').value;
	//console.log(selectDate);

});


/** 날짜 기간 저장 전역배열로 저장 */
var today= new Date();
//console.log(today);
var dateArrList = [today, today];
console.log(dateArrList);
var initDateArr = ["empty"];

//getDatesStartToLast(dateArrList[0], dateArrList[1]);



 
function dateChangeValue(num) {
	
	const selectDateFunction = document.querySelector('#selectDate'+num);
	const selectDateValue = document.querySelector('#selectDate'+num).value;
	
	var selectDateValueDate = new Date(selectDateValue);
	//console.log(selectDateValue);
	
	if (selectDateFunction == document.querySelector('#selectDate1')) {
		dateArrList.splice(0, 1, selectDateValueDate);
		//1번째인덱스의 배열값을 삭제하고, 0번째 인덱스에 위 값을 넣는다.
	
	} else if (selectDateFunction == document.querySelector('#selectDate2')) {
		dateArrList.splice(1, 1, selectDateValueDate);
		//2번째인덱스의 배열값을 삭제하고, 1번째 인덱스에 위 값을 넣는다.
	}	
	
	//console.log(dateArrList);
	//console.log(dateArrList[0], dateArrList[1]);

	var starDate = dateArrList[0];
	var lastDate = dateArrList[1];
	
	getDatesStartToLast(starDate, lastDate);
}


/**첫날짜와 마지막날짜 사이 기간배열 펑션*/ 
function getDatesStartToLast(startDate, lastDate) {
    if(!(startDate instanceof Date && lastDate instanceof Date)) return "Not Date Object";
    
    var age1 =document.getElementById("selectDate1");
	var age2 = document.getElementById("selectDate2");
	
	var strAge1 = age1.value;
	var strAge2 = age2.value;
	
	const strArr = strAge2.split('-');
	const dateResult = new Date(strArr[0], strArr[1]-1, strArr[2]);
	
	
    var result = [];
    var curDate = startDate;
    var saveStrDate = new Date(startDate.toISOString().substring(0, 10));

    if (curDate <= lastDate) {
        while (curDate <= lastDate){
	    	result.push(curDate.toISOString().substring(0, 10));
	        curDate.setDate(curDate.getDate() + 1);
	        initDateArr.splice(0,1,saveStrDate);
        }
    	
    } else if(curDate > lastDate) {
   		dateArrList[0] = saveStrDate;
   		age1.value = age2.value;
   		alert("날짜 검색시, 이전날짜는 이후날짜와 같거나 더 이전날짜만 선택가능합니다.")
   	}
    dateArrList[0]  = initDateArr[0];
    
    matchGraphDate(result);
}



/**날짜 표간 기간이 필터 나타냄 유무  펑션*/ 
function matchGraphDate(result){
	var tableCalc = document.querySelectorAll(".tableCalc");
	var borderTdDate = document.querySelectorAll(".borderTdDate");
	
	var cntBorderTr = document.getElementsByClassName('borderTr').length;

	var borderEmptyHiddenTr1 = document.getElementsByClassName("borderEmptyHiddenTr1");
	var borderEmptyHiddenTr2 = document.getElementsByClassName("borderEmptyHiddenTr2");
	var borderEmptyHiddenTr3 = document.getElementsByClassName("borderEmptyHiddenTr3");
	var borderEmptyHiddenTr4 = document.getElementsByClassName("borderEmptyHiddenTr4");
	
	//console.log(borderEmptyHiddenTr);
	
	
	//console.log(result);
	var hiddenTr = [];
	var trDisplayShowCnt = 0;
	
	for (var i=0; i<cntBorderTr; i++){
		var viewDate = (borderTdDate[i].innerHTML);
		if (result.includes(viewDate) == true){
			tableCalc[0].children[0].children[i+1].style.display  = "";
			trDisplayShowCnt += 1;
			
		} else {
			tableCalc[0].children[0].children[i+1].style.display  = "none";
			var trItem = tableCalc[0].children[0].children[i+1];
			//console.log(trItem);
			hiddenTr.push(trItem);
			//console.log(hiddenTr);
			//console.log("date not include");
		}
	}
	
	//console.log("trDisplayShowCnt : ", trDisplayShowCnt)
	
	/* switch (trDisplayShowCnt) {
		
		case (4) : 
			borderEmptyHiddenTr1.style.display  = "";
		
		case (3) : 
			borderEmptyHiddenTr1.style.display  = "";
			borderEmptyHiddenTr2.style.display  = "";
		
		case (2) : 
			borderEmptyHiddenTr1.style.display  = "";
			borderEmptyHiddenTr2.style.display  = "";
			borderEmptyHiddenTr3.style.display  = "";
		
		case (1) : 
			borderEmptyHiddenTr1.style.display  = "";
			borderEmptyHiddenTr2.style.display  = "";
			borderEmptyHiddenTr3.style.display  = "";
			borderEmptyHiddenTr4.style.display  = "";
	} */
	
	//console.log(hiddenTr);
	peopleCntCheck(hiddenTr);
	filterRealTimeCheck(hiddenTr);
}
</script>


<script> /** 필터링후 총 조회 인원수 계산*/

function peopleCntCheck(hiddenTr) {
	var classMemNo = document.getElementsByClassName("borderTdMemNo");
	var cntBorderTr = document.getElementsByClassName('borderTr').length;
	
	//console.log("enter peopleCntCheck()");
	//console.log(classMemNo);
	
	
	
	var noDupleMemArr = [];
	
	var allNoDupleMemCnt = peopleCnt().length; //중복되지 않는 전체 맴버수
	//console.log("중복되지 않는 전체 맴버수 : " + allNoDupleMemCnt);
	
	
	//console.log("중복되지 않은 전체 사번 출력 : " + peopleCnt());
	
	
	
	var allDupleMemArr=[]; //중복허용 전체 맴버수
	for (var i=0; i<cntBorderTr; i++){
		var arrValue = classMemNo[i].innerHTML;
		allDupleMemArr.push(arrValue);
	}
	//console.log("중복허용 전체 맴버수 : " + classMemNo.length);
	//console.log("중복허용 전체 맴버List : " + allDupleMemArr);
	

	
	
	var hiddenDupleMemArr=[]; //중복허용 히든 멤버수
	for(var i=0; i<hiddenTr.length; i++) {
		var arrValue = hiddenTr[i].querySelectorAll(".borderTdMemNo")[0].innerHTML;
		//console.log(arrValue);
		hiddenDupleMemArr.push(arrValue);
	}
	//console.log("중복허용 히든 멤버수 : " + hiddenTr.length);
	//console.log("중복허용 히든 멤버List : " + hiddenDupleMemArr);
	
	
	
	//console.log(allDupleMemArr.indexOf("A06"));
	
	
 	for (var i=0; i<cntBorderTr; i++) {
		for(var j=0; j<hiddenTr.length; j++) {
				//console.log("i = ",i)
				//console.log("j = ",j)
			if (allDupleMemArr[i] == hiddenDupleMemArr[j]){
				//console.log("allDupleMemArr[i] = ", allDupleMemArr[i]);
				//console.log("hiddenDupleMemArr[j] = ", hiddenDupleMemArr[j]);
				var tempi = i;
				var tempj = j;
				//console.log("allDupleMemArr's index = ", tempi);
				//console.log("hiddenDupleMemArr's index = ", tempj);
				allDupleMemArr.splice(tempi, 1, "delMno");
				hiddenDupleMemArr.splice(tempj, 1, "delHin");
				//console.log("allDupleMemArr = ", allDupleMemArr);
				//console.log("hiddenDupleMemArr =", hiddenDupleMemArr);
			}
			//console.log("------")
		}
	} 
	//console.log("befor (전체배열 -delMno- 포함) : ", allDupleMemArr);
	
 	for (var i=0; i<cntBorderTr; i++) {
		if (allDupleMemArr[i] == "delMno"){
			allDupleMemArr.splice(i, 1);
			i--;
		}
	} 
 	//console.log("after (전체배열 -delMno- 제거) : ", allDupleMemArr);
	
 	
 	
 	var remainMemList=[];
	
	for (var i=0; i < allDupleMemArr.length; i++ ) {
		var innertext = allDupleMemArr[i];
		if(remainMemList.includes(innertext) == false ){
			remainMemList.push(innertext);
		} else {
			console.log("this element has already!");
		}
	}
 	//console.log("remainMemList : ", remainMemList);
 	
 	var remainMemCnt = remainMemList.length;
 	//console.log("remainMemCnt : ", remainMemCnt);
 	
 	document.getElementById("cntMemNo").innerHTML = remainMemCnt;
 	
	
	//console.log(hiddenTr);
 	hiddenTr = [];
	for(var i=0; i<hiddenTr.length; i++) {
		var arrValue = hiddenTr[i].querySelectorAll(".borderTdMemNo")[0].innerHTML;
		//console.log(arrValue);
	}
	//console.log(hiddenTr);
	//console.log(arrValue);
} 

</script>

<script> /** 필터링후 총 실제 근무시간 계산*/


function filterRealTimeCheck(hiddenTr) {
	var classRealTime = document.getElementsByClassName("borderTdRealTime");
	var cntBorderTr = document.getElementsByClassName('borderTr').length;
	
	var arrValue = hiddenTr;
	var arrValueLength = hiddenTr.length;
	
	console.log(arrValue);
	console.log(arrValueLength);

	//console.log("arrValue1 : [포커스]",  arrValue1);
	//console.log("arrValue2 : [포커스]",  arrValue2);
	//console.log(classRealTime);
	

	
	var hiddenRealTimeHour = [];
	var hiddenRealTimeMinute = [];
	
	//var arrValue1 = hiddenTr[0].querySelectorAll(".realTimeMinute")[0].innerHTML; //realTimeHour.innerHTML;
	//console.log("arrValue1 : ", arrValue1);
	//console.log("arrValue1's typeof : ", typeof arrValue1);
			
	for (var i=0; i<arrValueLength; i++){
		//var arrValue1 = hiddenTr[i].querySelectorAll(".realTimeHour")[0].innerHTML;
		hiddenTr[i].querySelectorAll(".realTimeHour")[0].innerHTML = 0;
		//var arrValue2 = hiddenTr[i].querySelectorAll(".realTimeMinute")[0].innerHTML;
		hiddenTr[i].querySelectorAll(".realTimeMinute")[0].innerHTML = "0";
		
		//console.log("arrValue1 : ", arrValue1);
		//console.log("typeof arrValue1 : ", typeof arrValue1);
		//console.log("arrValue2 : ", arrValue2);
		//console.log("typeof arrValue2 : ", typeof arrValue2);
		
		//arrValue1 = "0";
		//arrValue2 = "0";
		
		//hiddenRealTimeHour.push(arrValue1);
		//hiddenRealTimeMinute.push(arrValue2);
		hiddenRealTimeHour.push(hiddenTr[i].querySelectorAll(".realTimeHour")[0].innerHTML);
		hiddenRealTimeMinute.push(hiddenTr[i].querySelectorAll(".realTimeMinute")[0].innerHTML);
		
		//console.log(typeof arrValue3);
		
		
		//console.log("0처리 : ", arrValue1);
		//console.log("0처리 : ", arrValue2);
		
	} 
	console.log("0처리 List : ", hiddenRealTimeHour);
	console.log("0처리 List : ", hiddenRealTimeMinute);
	
	
	
	var realTimeHour = (document.getElementsByClassName("realTimeHour"));
	var realTimeMinute = (document.getElementsByClassName("realTimeMinute"));
	
	timeHourList=[];
	timeMinuteList=[];
	
	for (var i=0; i < realTimeHour.length; i++ ) {
		var innertextH = parseInt(realTimeHour[i].innerHTML);
		//console.log(innertextH);
		timeHourList.push(innertextH);
	}

	for (var i=0; i < realTimeMinute.length; i++ ) {
		var innertextM = parseInt(realTimeMinute[i].innerHTML);
		//console.log(innertextM);
		timeMinuteList.push(innertextM);
	}
	
	console.log(timeHourList);
	console.log(timeMinuteList);
	
	var totalRealTimeHour = timeHourList.reduce(function(a,b) {return a+b});
	//console.log(totalRealTimeHour);

	var totalRealTimeMinute = timeMinuteList.reduce(function(a,b) {return a+b});
	//console.log(totalRealTimeMinute);
	
	var calTotalRealTimeMinuteH = parseInt(totalRealTimeMinute / 60);
	var calTotalRealTimeMinuteM = parseInt(totalRealTimeMinute % 60);
	//console.log(calTotalRealTimeMinuteH); 
	//console.log(calTotalRealTimeMinuteM); 

	var resultTotalHour = totalRealTimeHour + calTotalRealTimeMinuteH;
	var resultTotalMinute = calTotalRealTimeMinuteM;
	//console.log(resultTotalHour); 
	//console.log(resultTotalMinute); 
	
	document.getElementById("totalRealTimeHour").innerHTML = resultTotalHour;
	document.getElementById("totalRealTimeMinute").innerHTML = resultTotalMinute; 
	 
} 
 
</script>


