<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<style>


/** 테이블 */
.borderTr, .borderTh, .borderTd{
	border:1px #E7E7E7 solid;  
	padding: 5px;
} 
.borderTr{
	border:1px #E7E7E7 solid;  
	padding: 5px;
/* 	display: flex;
	justify-content: space-between; */
} 

</style>

  


<div class="container-fluid">
	<div class="row justify-content-between ">
		<div class="row col-5 pl-4 ">
			<div class="p-0 pt-4 ">
				<h1>마이페이지</h1>
			</div>
		</div>
		<div class="row col-6 justify-content-end p-0 pt-4">
             <div class="pl-2 pr-2">
                 <div class="">
<!--                      <button id="btn1" onclick="getShowPageBody1()" type="button" class="btn btn-primary btn-rounded" aria-expanded="false">
                         	근태관리
                     </button> -->
                 </div>
             </div>
<!--              <div class="basic-dropdown pl-2 pr-2">
                 <div class="dropdown">
                     <button id="btn2" onclick="getShowPageBody2()" type="button" class="btn btn-primary btn-rounded" aria-expanded="false">
                         	결재관리
                     </button>
                 </div>
             </div> -->
             <div class="basic-dropdown pl-2 pr-4">
                 <div class="dropdown">
                    <!--  <a class="dropdown-item" onclick="vacationApplication()"> -->
                     <button onclick="vacationApplication()" id="btn3" type="button" class="btn btn-primary btn-rounded" data-toggle="dropdown" aria-expanded="false">
                         	휴가신청
                     </button>
                    <!--  </a> -->
<!--                      <button id="btn3" type="button" class="btn btn-primary btn-rounded" data-toggle="dropdown" aria-expanded="false">
                         	휴가관리
                     </button> -->
<!--                      <div class="dropdown-menu" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 56px, 0px);">
                         <a class="dropdown-item" onclick="getShowPageBody3()">휴가현황</a>
                         <a class="dropdown-item" onclick="vacationApplication()">휴가신청</a>
                     </div> -->
                 </div>
             </div>
        </div>
	</div>
	<!-- row -->
	<div class="row justify-content-between">
		<div class="profile row px-3 pt-3 pb-3" style="width:30%;">
			<div class="profile-head" >
				<div class="profile-info">
					<div class="profile-photo">
						<img src="<%=request.getContextPath() %>/member/getPicture.do"
							class="img-fluid rounded-circle" alt="">
					</div>
					<div class="profile-details">
						<div class="profile-name px-3 pt-2">
							<h4 class="text-primary mb-0">${loginUser.memName}</h4>
							<p>UX / UI Designer</p>
						</div>
						<div class="profile-email px-2 pt-2">
							<h4 class="text-muted mb-0">${loginUser.memMail}</h4>
							<p>Email</p>
						</div>
						<div class="dropdown ml-auto" style="width:10px;">
							<a onclick="OpenWindow('detail','회원 상세정보',1000,600);" class="btn btn-primary light sharp"
								data-toggle="dropdown" aria-expanded="true"><svg
									xmlns="http://www.w3.org/2000/svg"
									xmlns:xlink="http://www.w3.org/1999/xlink" width="18px"
									height="18px" viewBox="0 0 24 24" version="1.1">
									<g stroke="none" stroke-width="1" fill="none"
										fill-rule="evenodd">
									<rect x="0" y="0" width="24" height="24"></rect>
									<circle fill="#000000" cx="5" cy="12" r="2"></circle>
									<circle fill="#000000" cx="12" cy="12" r="2"></circle>
									<circle fill="#000000" cx="19" cy="12" r="2"></circle></g></svg>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row justify-content-center p-0 pb-3 pt-3" style="width:70%;">
	        <div class="d-flex pl-0 pr-2" style="width:20%;">
				<div class="btn btn-primary btn-md col-xl" style="height:15vh; width:10vh;">
					<div class="">
						<h2 style="color:white; margin-bottom:15px;">기간 설정
						</h2>
					</div> 
					<div class="">
				   		<div class = "d-flex justify-content-center align-self-center" >
							<c:set var="nowYear" value="2022"></c:set>
							<h3>
							<select id="selectYear1" style="height:32px; width:110px; border:0; border-radius: 10px; color:#6761f9; font-weight:600; text-align:center;">
								<c:forEach var="i" begin="2020" end="${nowYear}" step="1">
							    	<option value="${nowYear - i + 2020}">${nowYear - i + 2020}년</option>
								</c:forEach>
							</select>
							</h3>
						</div>
					</div> 
				</div>
	        </div>
	        <div class="d-flex pl-0 pr-2" style="width:20%;">
				<button type="button" class="btn btn-primary btn-lg col-xl" style="height:15vh;">
					<div class="">
						<h2 style="color:white">외출
							<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-pc-display-horizontal" viewBox="0 0 16 16">
							  <path d="M1.5 0A1.5 1.5 0 0 0 0 1.5v7A1.5 1.5 0 0 0 1.5 10H6v1H1a1 1 0 0 0-1 1v3a1 1 0 0 0 1 1h14a1 1 0 0 0 1-1v-3a1 1 0 0 0-1-1h-5v-1h4.5A1.5 1.5 0 0 0 16 8.5v-7A1.5 1.5 0 0 0 14.5 0h-13Zm0 1h13a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-.5.5h-13a.5.5 0 0 1-.5-.5v-7a.5.5 0 0 1 .5-.5ZM12 12.5a.5.5 0 1 1 1 0 .5.5 0 0 1-1 0Zm2 0a.5.5 0 1 1 1 0 .5.5 0 0 1-1 0ZM1.5 12h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1 0-1ZM1 14.25a.25.25 0 0 1 .25-.25h5.5a.25.25 0 1 1 0 .5h-5.5a.25.25 0 0 1-.25-.25Z"></path>
							</svg>
						</h2>
					</div> 
					<div class="">
						<h2 style="color:yellow">15</h2>
					</div> 
				</button>
	        </div>
	    	<div class="d-flex pl-0 pr-2" style="width:20%;">
				<button type="button" class="btn btn-primary btn-lg col-xl" style="height:15vh;">
					<div class="">
						<h2 style="color:white">연장근무
							<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-clock" viewBox="0 0 16 16">
							  <path d="M8 3.5a.5.5 0 0 0-1 0V9a.5.5 0 0 0 .252.434l3.5 2a.5.5 0 0 0 .496-.868L8 8.71V3.5z"></path>
							  <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm7-8A7 7 0 1 1 1 8a7 7 0 0 1 14 0z"></path>
							</svg>
						</h2>
					</div> 
					<div class="">
						<h2 style="color:yellow">10</h2>
					</div> 
				</button>
	        </div>
	    	<div class="d-flex pl-0 pr-2" style="width:20%;">
				<button type="button" class="btn btn-primary btn-lg col-xl" style="height:15vh;">
					<div class="">
						<h2 style="color:white">간주근로
							<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-geo-alt" viewBox="0 0 16 16">
							  <path d="M12.166 8.94c-.524 1.062-1.234 2.12-1.96 3.07A31.493 31.493 0 0 1 8 14.58a31.481 31.481 0 0 1-2.206-2.57c-.726-.95-1.436-2.008-1.96-3.07C3.304 7.867 3 6.862 3 6a5 5 0 0 1 10 0c0 .862-.305 1.867-.834 2.94zM8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10z"></path>
							  <path d="M8 8a2 2 0 1 1 0-4 2 2 0 0 1 0 4zm0 1a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"></path>
							</svg>
						</h2>
					</div> 
					<div class="">
						<h2 style="color:yellow">2</h2>
					</div> 
				</button>
	        </div>
	    	<div class="d-flex pl-0 pr-2" style="width:20%;">
				<button type="button" class="btn btn-primary btn-lg col-xl" style="height:15vh;">
					<div class="">
						<h2 style="color:white">휴일대체
							<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-calendar2-check" viewBox="0 0 16 16">
							  <path d="M10.854 8.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 0 1 .708-.708L7.5 10.793l2.646-2.647a.5.5 0 0 1 .708 0z"></path>
							  <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM2 2a1 1 0 0 0-1 1v11a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V3a1 1 0 0 0-1-1H2z"></path>
							  <path d="M2.5 4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5H3a.5.5 0 0 1-.5-.5V4z"></path>
							</svg>
						</h2>
					</div> 
					<div class="">
						<h2 style="color:#65FF5E">5</h2>
					</div> 
				</button>
	        </div>
	    </div>
	</div>
  
  
   	<div id="pageBody1" class="buttonWrapper row border borderd border-2"  style="display:none; background-color:white; height:70vh; padding:0; overflow:none;">
				
		
	    <div class="row">
		   	<div class="card col-3 justify-content-around" style="height:40vh; width:60vh; float:left; margin-left:0; z-index:1; padding-bottom:0; margin-bottom:0;">
				<div class="row pb-2 pt-2" style="height:50px;" >
					<div class="align-self-center pl-3"><h3><span class="col-5 pl-2 align-self-center">본인 휴가조회</span></h3></div>&nbsp;&nbsp;&nbsp;&nbsp;<div class="align-self-center"><span class="pl-2"></span>
					</div>
				</div>
		        <div id="vacation1" class="row align-self-center text-center p-2" 
		        	style="width:400px; height:60px; border:1px solid; 
		        	border-color:rgba(51,50,88,.5);border-width:3px; margin:10px;">
		            <div class="col-3 align-self-center">
		        		<div>아이콘</div>
		        	</div>
		            <div class="col-5 align-self-center" >
		            	<div style="font-size:18px; font-weight:bolder;">총 휴가일 수</div>
		        	</div>
		            <div class="col-3 align-self-center">
		            	<div style="font-size:20px; font-weight:bolder;">15</div>
		        	</div>
		        </div>
		        <div id="vacation2" class="row align-self-center text-center p-2"
		   	        style="width:400px; height:60px; border:1px solid; 
			        border-color:rgba(51,50,88,.5);border-width:3px; margin:10px;">
		            <div class="col-3 align-self-center">
		        		<div>아이콘</div>
		        	</div>
		            <div class="col-5 align-self-center" >
		            	<div style="font-size:18px; font-weight:bolder;">휴가 사용일 수</div>
		        	</div>
		            <div class="col-3 align-self-center">
		            	<div style="font-size:20px; font-weight:bolder;">11.5</div>
		        	</div>
		        </div>
		        <div id="vacation3" class="row align-self-center text-center p-2"
		   	        style="width:400px; height:60px; border:1px solid; 
			        border-color:rgba(51,50,88,.5);border-width:3px; margin:10px;">
		            <div class="col-3 align-self-center">
		        		<div>아이콘</div>
		        	</div>
		            <div class="col-5 align-self-center" >
		            	<div style="font-size:18px; font-weight:bolder;">휴가 잔여일</div>
		        	</div>
		            <div class="col-3 align-self-center">
		            	<div style="font-size:20px; font-weight:bolder;">3.5</div>
		        	</div>
		        </div>
			</div>
			<div class="card col-9 justify-content-around" style="height:100%; width:74%; float:left; margin-left:0; z-index:1; padding-bottom:0; margin-bottom:0;">
		    	<div class="row justify-content-around pb-1 bg-white" style="height:130px; width:100%; margin-left:0px;">
					<div class="col-2 border borderd">
						<div class="row justify-content-center pt-3" >
							<div style="font-size:16px; font-weight:bolder;">귀속년도</div>
						</div>
						<hr>
						<div class="row justify-content-center text-center pt-2" >
							<div class="col">2022</div>
						</div>
					</div>
					<div class="col-3 border borderd ">
						<div class="row justify-content-center pt-3" >
							<div style="font-size:16px; font-weight:bolder;">휴가 귀속년도 기간</div>
						</div>
						<hr>
						<div class="row justify-content-around">
							<div class="row col-6 justify-content-center pb-3 text-center" >
								<div class="col-12" style="font-size:14px; font-weight:bolder;">시작기간</div>
								<div class="" style="font-size:14px;" >2022-11-15</div>
							</div>
							<div class="row col-6 row justify-content-center pb-3 text-center" >
								<div class="col-12" style="font-size:14px; font-weight:bolder;">종료기간</div>
								<div class="col" style="font-size:14px;" >2022-11-19</div>
							</div>
						</div>
					</div>
					<div class="col-3 border borderd ">
						<div class="row justify-content-center pt-3" >
							<div style="font-size:16px; font-weight:bolder;">부여일 수</div>
						</div>
						<hr>
						<div class="row justify-content-around">
							<div class="row col-4 justify-content-center  text-center" >
								<div style="font-size:14px; font-weight:bolder;">기본일수</div>
								<div class="col" >15</div>
							</div>
							<div class="row col-4 row justify-content-center  text-center" >
								<div style="font-size:14px; font-weight:bolder;">기본조정</div>
								<div class="col">1</div>
							</div>
							<div class="row col-4 row justify-content-center  text-center" >
								<div style="font-size:14px; font-weight:bolder;">월별조정</div>
								<div class="col">0</div>
							</div>
						</div>
					</div>
					<div class="col-2 border borderd ">
						<div class="row justify-content-center pt-3" >	
							<div style="font-size:16px; font-weight:bolder;">소진일 수</div>
						</div>
						<hr>
					<div class="row justify-content-around">
							<div class="row col-6 justify-content-center text-center" >
								<div style="font-size:14px; font-weight:bolder;">사용일수</div>
								<div class="col">2.5</div>
							</div>
							<div class="row col-6 row justify-content-center text-center" >
								<div style="font-size:14px; font-weight:bolder;">사용조정</div>
								<div class="col">1</div>
							</div>
						</div>
					</div>
					<div class="col-2 border borderd ">
						<div class="row justify-content-center pt-3" >	
							<div style="font-size:16px; font-weight:bolder;">잔여일 수</div>
						</div>
						<hr>
						<div class="row justify-content-center pt-2 text-center" >
							<div class="col">3.5</div>
						</div>
					</div>
				</div>		    
				<div class="card " style="height:150px; weight:20vh; overflow-y:scroll; border:1px lightgrey solid; border-radius:0px; margin:20px 0px 0px 0px; padding:0;">
					<table style="text-align: center; font-size:15px;">
							<tr class="borderTr" bgcolor="#333258" style="color: white; position:sticky; top:-2px; height:40px;">
								<th class="borderTh" scope="col" style="width:12%; border-top-left-radius:0px;">신청날짜</th>
								<th class="borderTh" scope="col" style="width:8%;">분류</th>
								<th class="borderTh" scope="col" style="width:40%;">휴가기간</th>
								<th class="borderTh" scope="col" style="width:30%;">사유</th>
								<th class="borderTh"  scope="col" style="width:10%;">상태</th>
							</tr>
							<tr class="borderTr">
								<td class="borderTd" class="p-1" style="vertical-align:middle" >2022-09-06</td>
								<td class="borderTd" class="p-1" style="vertical-align:middle"><span class="badge light badge-info rounded">반차</span></td>
								<td class="borderTd" class="p-1" style="vertical-align:middle">
									<span class="pr-1">2022-09-08</span>
									<span class="pl-1 pr-3">09:00</span>
										~
									<span class="pl-3">2022-09-08</span>
									<span class="pl-2 pr-3">12:00</span>
								</td>
								<td class="borderTd" class="p-1" style="vertical-align:middle">은행업무로 인한 오전 개인일정</td>
								<td class="borderTd" class="p-1" style="vertical-align:middle"><span class="badge light badge-dark">미처리</span></td>
							</tr>
							<tr class="borderTr">
								<td class="borderTd" class="p-1" style="vertical-align:middle">2022-07-09</td>
								<td class="borderTd" class="p-1" style="vertical-align:middle"><span class="badge light badge-info rounded">연차</span></td>
								<td class="borderTd" class="p-1" style="vertical-align:middle"><span class="pr-3">2022-07-15</span> ~ <span class="pl-3">2022-07-17</span></td>
								<td class="borderTd" class="p-1" style="vertical-align:middle">휴식</td>
								<td class="borderTd" class="p-1" style="vertical-align:middle"><span class="badge light badge-success">처리완료</span></td>
							</tr>
							<tr class="borderTr">
								<td class="borderTd" class="p-1" style="vertical-align:middle">2022-04-21</td>
								<td class="borderTd" class="p-1" style="vertical-align:middle"><span class="badge light badge-info rounded">연차</span></td>
								<td class="borderTd" class="p-1" style="vertical-align:middle"><span class="pr-3">2022-04-27</span> ~ <span class="pl-3">2022-04-29</span></td>
								<td class="borderTd" class="p-1" style="vertical-align:middle">휴식</td>
								<td class="borderTd"  class="p-1" style="vertical-align:middle"><span class="badge light badge-success">처리완료</span></td>
							</tr>
							<tr class="borderTr">
								<td class="borderTd" class="p-1" style="vertical-align:middle">2021-04-21</td>
								<td class="borderTd" class="p-1" style="vertical-align:middle"><span class="badge light badge-info rounded">연차</span></td>
								<td class="borderTd" class="p-1" style="vertical-align:middle"><span class="pr-3">2022-04-27</span> ~ <span class="pl-3">2022-04-29</span></td>
								<td class="borderTd" class="p-1" style="vertical-align:middle">휴식</td>
								<td class="borderTd" class="p-1" style="vertical-align:middle"><span class="badge light badge-success">처리완료</span></td>
							</tr>
							<tr class="borderTr">
								<td class="borderTd" class="p-1" style="vertical-align:middle">2020-04-21</td>
								<td class="borderTd" class="p-1" style="vertical-align:middle"><span class="badge light badge-info rounded">연차</span></td>
								<td class="borderTd" class="p-1" style="vertical-align:middle"><span class="pr-3">2022-04-27</span> ~ <span class="pl-3">2022-04-29</span></td>
								<td class="borderTd" class="p-1" style="vertical-align:middle">휴식</td>
								<td class="borderTd" class="p-1" style="vertical-align:middle"><span class="badge light badge-success">처리완료</span></td>
							</tr>
	<%-- 							<c:if test="${empty memeberList }" >
									<tr>
										<td colspan="8">
											<strong>해당 내용이 없습니다.</strong>
										</td>
									</tr>
								</c:if>	 --%>
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
				<div>
					<%-- <%@ include file="/WEB-INF/views/include/pagination.jsp"%> --%>
	    		</div>
		    </div>
		</div>
		<div class="card" style="height:28vh; overflow-y:scroll; border:1px lightgrey solid; border-radius:0px; margin:10px 0px 10px 0px;">
			<table style="text-align: center; font-size:15px;">
					<tr class="borderTr" bgcolor="#333258" style="color: white; position:sticky; top:-2px; height:50px; ">
						<th class="borderTh" scope="col" style="width:10%">일자</th>
						<th class="borderTh" scope="col" style="width:10%">사원번호</th>
						<th class="borderTh" scope="col" style="width:10%">이름</th>
						<th class="borderTh" scope="col" style="width:10%">직급</th>
						<th class="borderTh" scope="col" style="width:10%">근태항목</th>
						<th class="borderTh" scope="col" style="width:20%">신청구분</th>
						<th class="borderTh" scope="col" style="width:5%">시작시각</th>
						<th class="borderTh" scope="col" style="width:5%">종료시각</th>
						<th class="borderTh" scope="col" style="width:10%">소요시간</th>
						<th class="borderTh" scope="col" style="width:10%">상태</th>
					</tr>
					<tr class="borderTr" >
							<td class="borderTd" style="vertical-align:middle">2022-10-17</td>
							<td class="borderTd" style="vertical-align:middle">A01</td>
							<td class="borderTd" style="vertical-align:middle">이순신</td>
							<td class="borderTd" style="vertical-align:middle">부장</td>
							<td class="borderTd"  style="vertical-align:middle"><span class="badge light badge-success">휴일대체</span></td>
							<td class="borderTd" style="vertical-align:middle">[*예정*]정상근무, 외출, 조퇴, </td>
							<td class="borderTd" style="vertical-align:middle">-</td>
							<td class="borderTd" style="vertical-align:middle">-</td>
							<td class="borderTd" style="vertical-align:middle">-</td>
							<td class="borderTd" style="vertical-align:middle"><span class="badge light badge-dark">미처리</span></td>
					</tr>
					<tr class="borderTr" >
							<td class="borderTd" style="vertical-align:middle">2022-10-17</td>
							<td class="borderTd" style="vertical-align:middle">A01</td>
							<td class="borderTd" style="vertical-align:middle">이순신</td>
							<td class="borderTd" style="vertical-align:middle">과장</td>
							<td class="borderTd" style="vertical-align:middle"><span class="badge light badge-warning">외근</span></td>
							<td class="borderTd" style="vertical-align:middle">결근, 휴가, 반차, 연장근무*근무중외근</td>
							<td class="borderTd" style="vertical-align:middle">10:00</td>
							<td class="borderTd" style="vertical-align:middle">14:00</td>
							<td class="borderTd" style="vertical-align:middle">04:00</td>
							<td class="borderTd" style="vertical-align:middle"><span class="badge light badge-dark">미처리</span></td>
					</tr>
					<tr>
							<td class="borderTd" style="vertical-align:middle">2022-10-17</td>
							<td class="borderTd" style="vertical-align:middle">A01</td>
							<td class="borderTd" style="vertical-align:middle">이순신</td>
							<td class="borderTd" style="vertical-align:middle">사원</td>
							<td class="borderTd" style="vertical-align:middle"><span class="badge light badge-light">연장</span></td>
							<td class="borderTd" style="vertical-align:middle">연장근무</td>
							<td class="borderTd" style="vertical-align:middle">18:22</td>
							<td class="borderTd" style="vertical-align:middle">14:00</td>
							<td class="borderTd" style="vertical-align:middle">04:00</td>
							<td class="borderTd" style="vertical-align:middle"><span class="badge light badge-success">처리완료</span></td>
					</tr>
					<tr class="borderTr" >
							<td class="borderTd" style="vertical-align:middle">2022-10-17</td>
							<td class="borderTd" style="vertical-align:middle">A01</td>
							<td class="borderTd" style="vertical-align:middle">이순신</td>
							<td class="borderTd" style="vertical-align:middle">사원</td>
							<td class="borderTd" style="vertical-align:middle"><span class="badge light badge-light">연장</span></td>
							<td class="borderTd" style="vertical-align:middle">야간근무</td>
							<td class="borderTd" style="vertical-align:middle">22:00</td>
							<td class="borderTd" style="vertical-align:middle">08:00</td>
							<td class="borderTd" style="vertical-align:middle">10:00</td>
							<td class="borderTd" style="vertical-align:middle"><span class="badge light badge-success">처리완료</span></td>
					</tr>
					<tr class="borderTr" >
							<td class="borderTd" style="vertical-align:middle">2022-10-17</td>
							<td class="borderTd" style="vertical-align:middle">A01</td>
							<td class="borderTd" style="vertical-align:middle">이순신</td>
							<td class="borderTd" style="vertical-align:middle">대리</td>
							<td class="borderTd" style="vertical-align:middle"><span class="badge light badge-warning">출장</span></td>
							<td class="borderTd" style="vertical-align:middle">국내 출장</td>
							<td class="borderTd" style="vertical-align:middle">09:00</td>
							<td class="borderTd" style="vertical-align:middle">18:00</td>
							<td class="borderTd" style="vertical-align:middle">04:00</td>
							<td class="borderTd" style="vertical-align:middle"><span class="badge light badge-success">처리완료</span></td>
					</tr>
					<tr class="borderTr" >
							<td class="borderTd" style="vertical-align:middle">2021-10-17</td>
							<td class="borderTd" style="vertical-align:middle">A01</td>
							<td class="borderTd" style="vertical-align:middle">이순신</td>
							<td class="borderTd" style="vertical-align:middle">대리</td>
							<td class="borderTd" style="vertical-align:middle"><span class="badge light badge-warning">간주근로</span></td>
							<td class="borderTd" style="vertical-align:middle">출장-세종시</td>
							<td class="borderTd" style="vertical-align:middle">09:00</td>
							<td class="borderTd" style="vertical-align:middle">18:00</td>
							<td class="borderTd" style="vertical-align:middle">04:00</td>
							<td class="borderTd" style="vertical-align:middle"><span class="badge light badge-dark">미처리</span></td>
					</tr>
					<tr class="borderTr" >
							<td class="borderTd" style="vertical-align:middle">2020-10-17</td>
							<td class="borderTd" style="vertical-align:middle">A01</td>
							<td class="borderTd" style="vertical-align:middle">이순신</td>
							<td class="borderTd" style="vertical-align:middle">대리</td>
							<td class="borderTd" style="vertical-align:middle"><span class="badge light badge-warning">간주근로</span></td>
							<td class="borderTd" style="vertical-align:middle">출장-세종시</td>
							<td class="borderTd" style="vertical-align:middle">09:00</td>
							<td class="borderTd" style="vertical-align:middle">18:00</td>
							<td class="borderTd" style="vertical-align:middle">04:00</td>
							<td class="borderTd" style="vertical-align:middle"><span class="badge light badge-dark">미처리</span></td>
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
		
		
		
   	</div>
   
   
   
    <div id="pageBody2" class="buttonWrapper row border borderd border-2">
    	<div class="card pt-2" style="width:50%; height:65vh;  border:1px lightgrey solid; border-radius:0px; margin:0px; padding:0px; float:left;">
			<section class="content-header"> 
				<div class="container-fluid">
					<h2 style="text-align: center;">결제 요청 목록</h2>
				</div>
			</section>
			<div id="" class="row justify-content-end" style="height: 60px; font-size: 13px;">
				<div>
				<select class="" name="" id="" onchange="list_go(1);" style="width:22%; height:70%;">
					<option value="10">정렬개수</option>
					<option value="5">5개씩</option>
					<option value="10">10개씩</option>
					<option value="20">20개씩</option>
				</select>
				<select class="" name="" id=""  style="width:22%; height:70%;">
					<option value="">검색구분</option>
					<option value="i">제목</option>
					<option value="n">구분</option>
					<option value="p">작성자</option>
				</select>
				<input class="" type="text" name="" placeholder="검색어를 입력하세요." value="" style="width:35%; height:70%;">
				<button type="button" onclick="" style="width:50px; height:70%; border-color:darkgray;">검색</button>
				</div>
			</div>
			<div class="card"  style="text-align: center; font-size: 13px; height: 64vh; overflow-y: scroll;">
				<table class="table table-bordered">
					<tr bgcolor="#333258" style="color: white">
						<th>순번</th>
						<th>결제상태</th>
						<th>제목</th>
						<th>구분</th>
						<th>수량</th>
						<th>작성자</th>
						<th>요청일자</th>
						<th>상세</th>
					</tr>
					<tr>
						<td>1</td>
						<td>대기중</td>
						<td>2022.10.1 발주요청서</td>
						<td>비품</td>
						<td>10</td>
						<td>박재린</td>
						<td>2023.9.23</td>
						<td>
							<button type="button" class="btn btn-primary btn-xs" style="border-radius: 10px; background: gray; ">상세</button>
						</td>
					</tr>
					<tr>
						<td>2</td>
						<td>대기중</td>
						<td>2022.10.2 발주요청서</td>
						<td>의약품</td>
						<td>5</td>
						<td>김금규</td>
						<td>2023.9.13</td>
						<td>
							<button type="button" class="btn btn-primary btn-xs" style="border-radius: 10px; background: gray; ">상세</button>
						</td>
					</tr>
					<tr>
						<td>3</td>
						<td>승인</td>
						<td>2022.9.30 발주요청서</td>
						<td>의약품</td>
						<td>10</td>
						<td>곽민수</td>
						<td>2023.10.2</td>
						<td>
							<button type="button" class="btn btn-primary btn-xs" style="border-radius: 10px; background: gray; ">상세</button>
						</td>
					</tr>
					<tr>
						<td>4</td>
						<td>대기중</td>
						<td>2022.10.2 발주요청서</td>
						<td>비품</td>
						<td>10</td>
						<td>조동석</td>
						<td>2023.9.23</td>
						<td>
							<button type="button" class="btn btn-primary btn-xs" style="border-radius: 10px; background: gray; ">상세</button>
						</td>
					</tr>
					<tr>
						<td>5</td>
						<td>대기중</td>
						<td>2022.10.2 발주요청서</td>
						<td>비품</td>
						<td>10</td>
						<td>조동석</td>
						<td>2023.9.23</td>
						<td>
							<button type="button" class="btn btn-primary btn-xs" style="border-radius: 10px; background: gray; ">상세</button>
						</td>
					</tr>
					<tr>
						<td>6</td>
						<td>대기중</td>
						<td>2022.10.2 발주요청서</td>
						<td>비품</td>
						<td>10</td>
						<td>조동석</td>
						<td>2023.9.23</td>
						<td>
							<button type="button" class="btn btn-primary btn-xs" style="border-radius: 10px; background: gray; ">상세</button>
						</td>
					</tr>
					<!-- <tr>
						<td colspan="7" class="text-center">해당내용이 없습니다.</td>
					</tr> -->
				</table>
			</div>
		</div>
	    <div class="card pt-2" style="width:50%; height:65vh;  border:1px lightgrey solid; border-radius:0px; margin:0px; padding:0px;">
			<div class="justify-content-center" style="padding-bottom: 8vh; height:200px;">
				<!-- <h1 style="text-align: center; ">결재 요청 상세 목록</h1> -->
				<div class="container-fluid" style="">
					<h2 style="text-align: center; ">결재 상태</h2>
				</div>
				<div class="card" style="overflow-y: scroll; height:200px;">
					<table class="table table-bordered">
						<tr bgcolor="#333258" style="color: white">
							<th>작성자</th>
							<th>결제등록일</th>
							<th>결제승인여부</th>
							<th>승인자</th>
							<th>결제 승인일</th>
							<th>반려사유</th>
						</tr>
						<tr>
							<td>심금규</td>
							<td>2022.10.2 발주요청서</td>
							<td>대기중</td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
					</table>
				</div>
			</div>
			<div class="justify-content-center" style="padding-top: 5vh; height:150px;">
				<div class="container-fluid">
					<h2 style="text-align: center;">비품 발주목록</h2>
				</div>
				<div class="card" style="overflow-y: scroll; height:150px;">
					<table class="table table-bordered">
						<tr bgcolor="#333258" style="color: white">
							<th style="width:8%;">순번</th>
							<th style="width:12%;">제약코드</th>
							<th style="width:10%;">구분</th>
							<th style="width:28%;">품목명</th>
							<th style="width:10%;">단위</th>
							<th style="width:8%;">수량</th>
							<th style="width:14%;">업체명</th>
							<th style="width:10%;">금액</th>
						</tr>
						<tr>
							<td>1</td>
							<td>MA01</td>
							<td>일반</td>
							<td>타이레놀(아세트아미노펜)</td>
							<td>정</td>
							<td>20</td>
							<td>(주)한국얀센</td>
							<td>1500</td>
						</tr>
						<tr>
							<td>2</td>
							<td>MA32</td>
							<td>일반</td>
							<td>탁센(나프록센)</td>
							<td>정</td>
							<td>10</td>
							<td>GC녹십자</td>
							<td>1400</td>
						</tr>
						<tr>
							<td>3</td>
							<td>MA11</td>
							<td>일반</td>
							<td>타이레놀(아세트아미노펜)</td>
							<td>정</td>
							<td>20</td>
							<td>(주)한국얀센</td>
							<td>1500</td>
						</tr>
					</table>
				</div>
				<!-- <button type="button" class="btn btn-primary btn-xs" style="float: right; background:gray; border-radius: 10px; ">취소</button> -->
				<!-- <button type="button" class="btn btn-primary btn-xs" style="float: right; background:red; border-radius: 10px; margin-right: 5px;">결제반려</button>
				<button type="button" class="btn btn-primary btn-xs" style="float: right; border-radius: 10px; margin-right: 5px;">결제요청</button> -->
			</div>
		</div>
	</div>
    
    
    
    
    
    <div id="pageBody3" class="buttonWrapper row border borderd border-2 justify-content-center" style="display:none; background-color:white; height:65vh;">
		<div class="card col-3 justify-content-around p-3" style="height:62vh; width:60vh; float:left; margin-left:10px; z-index:1;">
			<div class="row pb-3 pt-2" style="height:50px;" >
				<div class="align-self-center pl-3"><h3><span class="col-5 pl-2 align-self-center">본인 휴가조회</span></h3></div>&nbsp;&nbsp;&nbsp;&nbsp;<div class="align-self-center"><span class="pl-2"></span>
				</div>
			</div>
	        <div id="vacation1" class="row align-self-center text-center p-2" 
	        	style="width:400px; height:130px; border:1px solid; 
	        	border-radius:10px; border-color:rgba(51,50,88,.5);border-width:3px; margin:10px;">
	            <div class="col-3 align-self-center">
	        		<div>아이콘</div>
	        	</div>
	            <div class="col-5 align-self-center" >
	            	<div style="font-size:18px; font-weight:bolder;">총 휴가일 수</div>
	        	</div>
	            <div class="col-3 align-self-center">
	            	<div style="font-size:20px; font-weight:bolder;">15</div>
	        	</div>
	        </div>
	        <div id="vacation2" class="row align-self-center text-center p-2"
	   	        style="width:400px; height:130px; border:1px solid; 
		        border-radius:10px; border-color:rgba(51,50,88,.5);border-width:3px; margin:10px;">
	            <div class="col-3 align-self-center">
	        		<div>아이콘</div>
	        	</div>
	            <div class="col-5 align-self-center" >
	            	<div style="font-size:18px; font-weight:bolder;">휴가 사용일 수</div>
	        	</div>
	            <div class="col-3 align-self-center">
	            	<div style="font-size:20px; font-weight:bolder;">11.5</div>
	        	</div>
	        </div>
	        <div id="vacation3" class="row align-self-center text-center p-2"
	   	        style="width:400px; height:130px; border:1px solid; 
		        border-radius:10px; border-color:rgba(51,50,88,.5);border-width:3px; margin:10px;">
	            <div class="col-3 align-self-center">
	        		<div>아이콘</div>
	        	</div>
	            <div class="col-5 align-self-center" >
	            	<div style="font-size:18px; font-weight:bolder;">휴가 잔여일</div>
	        	</div>
	            <div class="col-3 align-self-center">
	            	<div style="font-size:20px; font-weight:bolder;">3.5</div>
	        	</div>
	        </div>
		</div>
	    <div class="card pb-3" style="height:62vh; width:145vh; padding-top:60px; padding-right:20px; float:right;">
	    	<div class="row justify-content-around pb-3 bg-white" style="height:200px; width:142vh; margin-left:0px;">
				<div class="col-2 border borderd rounded">
					<div class="row justify-content-center pt-3" >
						<div style="font-size:18px; font-weight:bolder;">귀속년도</div>
					</div>
					<hr>
					<div class="row justify-content-center pt-2" >
						<div class="col">2020</div>
					</div>
				</div>
				<div class="col-3 border borderd rounded">
					<div class="row justify-content-center pt-3" >
						<div style="font-size:18px; font-weight:bolder;">휴가 귀속년도 기간</div>
					</div>
					<hr>
					<div class="row justify-content-around">
						<div class="row col-6 justify-content-center pb-3" >
							<div style="font-size:14px; font-weight:bolder;">시작기간</div>
							<div class="col" style="font-size:14px;" >2020-11-15</div>
						</div>
						<div class="row col-6 row justify-content-center pb-3" >
							<div style="font-size:14px; font-weight:bolder;">종료기간</div>
							<div class="col" style="font-size:14px;" >2020-11-19</div>
						</div>
					</div>
				</div>
				<div class="col-3 border borderd rounded">
					<div class="row justify-content-center pt-3" >
						<div style="font-size:18px; font-weight:bolder;">부여일 수</div>
					</div>
					<hr>
					<div class="row justify-content-around">
						<div class="row col-4 justify-content-center" >
							<div style="font-size:14px; font-weight:bolder;">기본일수</div>
							<div class="col" >15</div>
						</div>
						<div class="row col-4 row justify-content-center" >
							<div style="font-size:14px; font-weight:bolder;">기본조정</div>
							<div class="col">1</div>
						</div>
						<div class="row col-4 row justify-content-center" >
							<div style="font-size:14px; font-weight:bolder;">월별조정</div>
							<div class="col">0</div>
						</div>
					</div>
				</div>
				<div class="col-2 border borderd rounded">
					<div class="row justify-content-center pt-3" >	
						<div style="font-size:18px; font-weight:bolder;">소진일 수</div>
					</div>
					<hr>
				<div class="row justify-content-around">
						<div class="row col-6 justify-content-center" >
							<div style="font-size:14px; font-weight:bolder;">사용일수</div>
							<div class="col">2.5</div>
						</div>
						<div class="row col-6 row justify-content-center" >
							<div style="font-size:14px; font-weight:bolder;">사용조정</div>
							<div class="col">1</div>
						</div>
					</div>
				</div>
				<div class="col-2 border borderd rounded">
					<div class="row justify-content-center pt-3" >	
						<div style="font-size:18px; font-weight:bolder;">잔여일 수</div>
					</div>
					<hr>
					<div class="row justify-content-center pt-2" >
						<div class="col">3.5</div>
					</div>
				</div>
			</div>		    
			<div class="card rounded" style="weight:20vh; overflow-y:scroll; border:1px lightgrey solid; border-radius:0px; margin:10px 0px 10px 0px;">
				<table style="text-align: center; font-size:15px;">
						<tr class="borderTr" bgcolor="#333258" style="color: white; position:sticky; top:0; height:50px;">
							<th class="borderTh" scope="col" style="width:12%; border-top-left-radius:0px;">신청날짜</th>
							<th class="borderTh" scope="col" style="width:8%">분류</th>
							<th class="borderTh" scope="col" style="width:40%">휴가기간</th>
							<th class="borderTh" scope="col" style="width:30%">사유</th>
							<th class="borderTh"  scope="col" style="width:10%;">상태</th>
						</tr>
						<tr class="borderTr">
							<td class="borderTd" class="p-1" style="vertical-align:middle" >2022-09-06</td>
							<td class="borderTd" class="p-1" style="vertical-align:middle"><span class="badge light badge-info rounded">반차</span></td>
							<td class="borderTd" class="p-1" style="vertical-align:middle">
								<span class="pr-1">2022-09-08</span>
								<span class="pl-1 pr-3">09:00</span>
									~
								<span class="pl-3">2022-09-08</span>
								<span class="pl-2 pr-3">12:00</span>
							</td>
							<td class="borderTd" class="p-1" style="vertical-align:middle">은행업무로 인한 오전 개인일정</td>
							<td class="borderTd" class="p-1" style="vertical-align:middle"><span class="badge light badge-dark">미처리</span></td>
						</tr>
						<tr class="borderTr">
							<td class="borderTd" class="p-1" style="vertical-align:middle">2022-07-09</td>
							<td class="borderTd" class="p-1" style="vertical-align:middle"><span class="badge light badge-info rounded">연차</span></td>
							<td class="borderTd" class="p-1" style="vertical-align:middle"><span class="pr-3">2022-07-15</span> ~ <span class="pl-3">2022-07-17</span></td>
							<td class="borderTd" class="p-1" style="vertical-align:middle">휴식</td>
							<td class="borderTd" class="p-1" style="vertical-align:middle"><span class="badge light badge-success">처리완료</span></td>
						</tr>
						<tr class="borderTr">
							<td class="borderTd" class="p-1" style="vertical-align:middle">2022-04-21</td>
							<td class="borderTd" class="p-1" style="vertical-align:middle"><span class="badge light badge-info rounded">연차</span></td>
							<td class="borderTd" class="p-1" style="vertical-align:middle"><span class="pr-3">2022-04-27</span> ~ <span class="pl-3">2022-04-29</span></td>
							<td class="borderTd" class="p-1" style="vertical-align:middle">휴식</td>
							<td class="borderTd"  class="p-1" style="vertical-align:middle"><span class="badge light badge-success">처리완료</span></td>
						</tr>
						<tr class="borderTr">
							<td class="borderTd" class="p-1" style="vertical-align:middle">2022-04-21</td>
							<td class="borderTd" class="p-1" style="vertical-align:middle"><span class="badge light badge-info rounded">연차</span></td>
							<td class="borderTd" class="p-1" style="vertical-align:middle"><span class="pr-3">2022-04-27</span> ~ <span class="pl-3">2022-04-29</span></td>
							<td class="borderTd" class="p-1" style="vertical-align:middle">휴식</td>
							<td class="borderTd" class="p-1" style="vertical-align:middle"><span class="badge light badge-success">처리완료</span></td>
						</tr>
						<tr class="borderTr">
							<td class="borderTd" class="p-1" style="vertical-align:middle">2022-04-21</td>
							<td class="borderTd" class="p-1" style="vertical-align:middle"><span class="badge light badge-info rounded">연차</span></td>
							<td class="borderTd" class="p-1" style="vertical-align:middle"><span class="pr-3">2022-04-27</span> ~ <span class="pl-3">2022-04-29</span></td>
							<td class="borderTd" class="p-1" style="vertical-align:middle">휴식</td>
							<td class="borderTd" class="p-1" style="vertical-align:middle"><span class="badge light badge-success">처리완료</span></td>
						</tr>
<%-- 							<c:if test="${empty memeberList }" >
								<tr>
									<td colspan="8">
										<strong>해당 내용이 없습니다.</strong>
									</td>
								</tr>
							</c:if>	 --%>
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
			<div>
				<%-- <%@ include file="/WEB-INF/views/include/pagination.jsp"%> --%>
    		</div>
	    </div>
    </div>
    
    
</div>




<!-- <script> /** 탭 조절 펑션*/


const tabs = document.querySelector(".wrapper");
const tabButton = document.querySelectorAll(".tab-button");
const contents = document.querySelectorAll(".content");

tabs.onclick = e => {
  const id = e.target.dataset.id; 
  if (id) {
    tabButton.forEach(btn => {
      btn.classList.remove("active");
    }); 
    e.target.classList.add("active");

    contents.forEach(content => {
      content.classList.remove("active");
    });
    const element = document.getElementById(id);
    element.classList.add("active");
  }
}

</script> -->



<script>

/** 페이지 탭 */

	 function getShowPageBody1() {
		document.querySelector('#pageBody1').style.display = "block";
		
		document.querySelector('#pageBody2').style.display = "none";
		document.querySelector('#pageBody3').style.display = "none";
		//console.log("wow!");
	} 
	
	function getShowPageBody2() {
		document.querySelector('#pageBody2').style.display = "block";
		
		document.querySelector('#pageBody1').style.display = "none";
		document.querySelector('#pageBody3').style.display = "none";
		//console.log("wow!");
	} 
	
	function getShowPageBody3() {
		document.querySelector('#pageBody3').style.display = "block";
		
		document.querySelector('#pageBody1').style.display = "none";
		document.querySelector('#pageBody2').style.display = "none";
		//console.log("wow!");
	} 
		
	
</script>


<script> /** 디폴트 페이지*/

	window.onload = getShowPageBody1()

</script>




<script type="text/javascript"> /** 휴가 신청 페이지*/
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



<!-- 
<script>  /** 페이지 특정 값 가져오는 펑션*/


function manageTab(){

	var manageTabId = document.getElementById("manageTab");

	if (manageTabId.classList.contains("active")) {
		
		location=""
		console.log(manageTabId);
	}
}

</script>
-->


<!-- 
<script>   /** 페이지 특정 값 가져오는 펑션*/

function getPage("localhost/index/manage/statis/link", "#patientGraph", "#getStatistics") { 
	
	var cached = sessionStorage["localhost/index/manage/statis/link"];
	if (!"#patientGraph"){	from = "body";	}
	if ("#getStatistics" && "#getStatistics".split) {	to = document.querySelector("#patientGraph");	}
	if (cached) {	return "#getStatistics".innerHTML=cached;	}
	
	var XHRt = new XMLHttpRequest;
	XHRt.responseType = "document";
	XHRt.onload = function() {	sessionStorage["localhost/index/manage/statis/link"] = "#getStatistics".innerHTML = XHRt.response.querySelector("#patientGraph").innerHTML;};
	XHRt.
	XHRt.
	
	
}

</script>
-->

