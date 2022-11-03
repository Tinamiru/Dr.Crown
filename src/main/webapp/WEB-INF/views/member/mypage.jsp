<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<style>

@import url('https://fonts.googleapis.com/css2?family=Jost:wght@100;300;400;700&display=swap');

body {
  text-align: center;
  font-family: 'Jost', sans-serif;
  background-color: #f0f5ff;
}

h1 {
  font-size: 48px;
  color: #232c3d;
}

.wrapper {
  width: 97%;
  height: 65vh;
  margin: auto;
  background-color: white;
  border-radius: 10px;
  box-shadow: 0px 5px 15px rgba(0, 0, 0, .1);
}

.buttonWrapper {
  display: grid;
  grid-template-columns: 1fr 1fr 1fr 1fr;
}

button {
  letter-spacing: 3px;
  border: none;
  padding: 10px;
  background-color: #bccbe9;
  color: #232c3d;
  font-size: 18px;
  cursor: pointer;
  transition: 0.5s;
}

button:hover {
  background-color: #d5e3ff;
}

button.active {
  background-color: white;
}

.active {
  background-color: white;
}

p {
  text-align: left;
  padding: 10px;
}

.content {
  display: none;
  padding: 10px 20px;
}

.content.active {
  display: block;
}



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
	<div class="row justify-content-between pr-4">
		<div class="row col-5 pl-4 ">
			<div class="p-0 pt-4 ">
				<h1>마이페이지</h1>
			</div>
		</div>
		<div class="row col-6 justify-content-end p-0 pt-4 pr-2">
             <div class="pl-2 pr-2">
                 <div class="">
                     <button id="btn1" onclick="getShowPageBody1()" type="button" class="btn btn-primary btn-rounded" aria-expanded="false">
                         	근태관리
                     </button>
                 </div>
             </div>
             <div class="basic-dropdown pl-2 pr-2">
                 <div class="dropdown">
                     <button id="btn2" onclick="getShowPageBody2()" type="button" class="btn btn-primary btn-rounded" aria-expanded="false">
                         	결재관리
                     </button>
                 </div>
             </div>
             <div class="basic-dropdown pl-2 pr-5">
                 <div class="dropdown">
                     <button id="btn3" type="button" class="btn btn-primary btn-rounded" data-toggle="dropdown" aria-expanded="false">
                         	휴가관리
                     </button>
                     <div class="dropdown-menu" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 56px, 0px);">
                         <a class="dropdown-item" onclick="getShowPageBody3()">휴가현황</a>
                         <a class="dropdown-item" onclick="vacationApplication()">휴가신청</a>
                     </div>
                 </div>
             </div>
        </div>
	</div>
	<!-- row -->
	<div class="row">
		<div class="col-lg-12">
			<div class="profile card card-body px-3 pt-3 pb-0">
				<div class="profile-head">
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
							<div class="dropdown ml-auto">
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
		</div>
	</div>
  
  
   	<div id="pageBody1" class="buttonWrapper row border borderd border-2"  style="display:none; background-color:white; height:65vh;">
				
		<div class="row justify-content-center p-0 pb-3 pt-3">
	        <div class="d-flex col-2 pl-0 pr-2">
				<button type="button" class="btn btn-primary btn-lg col-xl" style="height:15vh; width:10vh;">
					<div class="">
						<h2 style="color:white">기간설정 
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
	        <div class="d-flex col-2 pl-0 pr-2">
				<button type="button" class="btn btn-primary btn-lg col-xl" style="height:15vh;">
					<div class="">
						<h2 style="color:white">외근 
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
			<div class="d-flex col-2 pl-0 pr-2">
				<button type="button" class="btn btn-primary btn-lg col-xl" style="height:15vh;">
					<div class="">
						<h2 style="color:white">출장
							<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-calendar4-range" viewBox="0 0 16 16">
							  <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM2 2a1 1 0 0 0-1 1v1h14V3a1 1 0 0 0-1-1H2zm13 3H1v9a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V5z"></path>
							  <path d="M9 7.5a.5.5 0 0 1 .5-.5H15v2H9.5a.5.5 0 0 1-.5-.5v-1zm-2 3v1a.5.5 0 0 1-.5.5H1v-2h5.5a.5.5 0 0 1 .5.5z"></path>
							</svg>
						</h2>
					</div> 
					<div class="">
						<h2 style="color:yellow">3</h2>
					</div> 
				</button>
	        </div>
	    	<div class="d-flex col-2 pl-0 pr-2">
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
	    	<div class="d-flex col-2 pl-0 pr-2">
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
	    	<div class="d-flex col-2 pl-0 pr-2">
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
	    
		<div class="card rounded" style="height:37vh; overflow-y:scroll; border:1px lightgrey solid; border-radius:0px; margin:10px 0px 10px 0px;">
			<table style="text-align: center; font-size:15px;">
					<tr class="borderTr" bgcolor="#333258" style="color: white; position:sticky; top:0; height:50px;">
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
							<td class="borderTd" style="vertical-align:middle">휴일대체</td>
							<td class="borderTd" style="vertical-align:middle">-</td>
							<td class="borderTd" style="vertical-align:middle">-</td>
							<td class="borderTd" style="vertical-align:middle">-</td>
							<td class="borderTd" style="vertical-align:middle"><span class="badge light badge-dark">미처리</span></td>
					</tr>
					<tr class="borderTr" >
							<td class="borderTd" style="vertical-align:middle">2022-10-17</td>
							<td class="borderTd" style="vertical-align:middle">A02</td>
							<td class="borderTd" style="vertical-align:middle">이율곡</td>
							<td class="borderTd" style="vertical-align:middle">과장</td>
							<td class="borderTd" style="vertical-align:middle"><span class="badge light badge-warning">외근</span></td>
							<td class="borderTd" style="vertical-align:middle">근무중외근</td>
							<td class="borderTd" style="vertical-align:middle">10:00</td>
							<td class="borderTd" style="vertical-align:middle">14:00</td>
							<td class="borderTd" style="vertical-align:middle">04:00</td>
							<td class="borderTd" style="vertical-align:middle"><span class="badge light badge-dark">미처리</span></td>
					</tr>
					<tr>
							<td class="borderTd" style="vertical-align:middle">2022-10-17</td>
							<td class="borderTd" style="vertical-align:middle">A03</td>
							<td class="borderTd" style="vertical-align:middle">일개미</td>
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
							<td class="borderTd" style="vertical-align:middle">A04</td>
							<td class="borderTd" style="vertical-align:middle">일개미</td>
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
							<td class="borderTd" style="vertical-align:middle">A05</td>
							<td class="borderTd" style="vertical-align:middle">일개미</td>
							<td class="borderTd" style="vertical-align:middle">대리</td>
							<td class="borderTd" style="vertical-align:middle"><span class="badge light badge-warning">출장</span></td>
							<td class="borderTd" style="vertical-align:middle">국내 출장</td>
							<td class="borderTd" style="vertical-align:middle">09:00</td>
							<td class="borderTd" style="vertical-align:middle">18:00</td>
							<td class="borderTd" style="vertical-align:middle">04:00</td>
							<td class="borderTd" style="vertical-align:middle"><span class="badge light badge-success">처리완료</span></td>
					</tr>
					<tr class="borderTr" >
							<td class="borderTd" style="vertical-align:middle">2022-10-17</td>
							<td class="borderTd" style="vertical-align:middle">A05</td>
							<td class="borderTd" style="vertical-align:middle">일개미</td>
							<td class="borderTd" style="vertical-align:middle">대리</td>
							<td class="borderTd" style="vertical-align:middle"><span class="badge light badge-warning">간주근로</span></td>
							<td class="borderTd" style="vertical-align:middle">출장-세종시</td>
							<td class="borderTd" style="vertical-align:middle">09:00</td>
							<td class="borderTd" style="vertical-align:middle">18:00</td>
							<td class="borderTd" style="vertical-align:middle">04:00</td>
							<td class="borderTd" style="vertical-align:middle"><span class="badge light badge-dark">미처리</span></td>
					</tr>
					<tr class="borderTr" >
							<td class="borderTd" style="vertical-align:middle">2022-10-17</td>
							<td class="borderTd" style="vertical-align:middle">A05</td>
							<td class="borderTd" style="vertical-align:middle">일개미</td>
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
   
   
    <div id="pageBody2" class="buttonWrapper row border borderd border-2 justify-content-center">
    	<div class="card pt-2" style="weight:20vh; height:200px;  border:1px lightgrey solid; border-radius:0px; margin:0px; padding:0px;">
		
		
			
		
		
		
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
				<%@ include file="/WEB-INF/views/include/pagination.jsp"%>
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

