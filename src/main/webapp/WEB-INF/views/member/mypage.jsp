<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<style>

/** hidden style*/

.classHidden{
	display:"none";
}
.myPageBtn{
    color: gray;
    width: 100px;
    font-size: 14px;
    font-weight: 600;
    border-color: darkgray;
    border-radius: 5px;
    padding: 3px;
    margin: 5px;
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


/**모달 1*/
	#modal1.modal-overlay{
         width: 100%;
         height: 100%;
         position: absolute;
         left: 0;
         top: 0;
         display: none;
         flex-direction: column;
         align-items: center;
         justify-content: center;

         background: rgba(255, 255, 255, 0.70);
         box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
         backdrop-filter: blur(1.5px);
         -webkit-backdrop-filter: blur(50.5px);
         border-radius: 5px;
         border: 1px solid rgba(255, 255, 255, 0.18);
         
         z-index:8;
     }

     #modal1 .modal-window {

         background: rgba( 246, 246, 246);
         box-shadow: 0 8px 32px 0 rgba( 31, 38, 135, 0.37 );
         backdrop-filter: blur( 13.5px );
         -webkit-backdrop-filter: blur( 50.5px );
         border-radius: 5px;
         border: 1px solid rgba( 255, 255, 255, 0.18 );

         width: 1200px;
         height: 260px;
         position: fixed;
	     top: 40%;
	     left: 50%;
	     transform: translate(-50%, -50%);
         padding: 10px;
         
         z-index:8;
     }

     #modal1 .title {
         padding-left: 10px;
         display: inline;
         text-shadow: 1px 1px 2px gray;
         color: darkgray;
         z-index:8;
         
     }

     #modal1 .title h2 {
         display: inline;
     	  z-index:8;
     }

     #modal1 .close-area {
         display: inline;
         float: right;
         padding-right: 10px;
         cursor: pointer;
         text-shadow: 1px 1px 2px gray;
         color: darkgray;
         z-index:8;
     }
     
     #modal1 .content {
         margin-top: 20px;
         padding: 0px 10px;
         z-index:8;
     }	
     
/**모달 2*/
	#modal2.modal-overlay{
         width: 100%;
         height: 100%;
         position: absolute;
         left: 0;
         top: 0;
         display: none;
         flex-direction: column;
         align-items: center;
         justify-content: center;

         background: rgba(255, 255, 255, 0.70);
         box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
         backdrop-filter: blur(1.5px);
         -webkit-backdrop-filter: blur(50.5px);
         border-radius: 5px;
         border: 1px solid rgba(255, 255, 255, 0.18);
         
         z-index:8;
     }

     #modal2 .modal-window {

         background: rgba( 246, 246, 246);
         box-shadow: 0 8px 32px 0 rgba( 31, 38, 135, 0.37 );
         backdrop-filter: blur( 13.5px );
         -webkit-backdrop-filter: blur( 50.5px );
         border-radius: 5px;
         border: 1px solid rgba( 255, 255, 255, 0.18 );

         width: 1200px;
         height: 260px;
         position: fixed;
	     top: 40%;
	     left: 50%;
	     transform: translate(-50%, -50%);
         padding: 10px;
         
         z-index:8;
     }

     #modal2 .title {
         padding-left: 10px;
         display: inline;
         text-shadow: 1px 1px 2px gray;
         color: darkgray;
         z-index:8;
         
     }

     #modal2 .title h2 {
         display: inline;
     	  z-index:8;
     }

     #modal2 .close-area {
         display: inline;
         float: right;
         padding-right: 10px;
         cursor: pointer;
         text-shadow: 1px 1px 2px gray;
         color: darkgray;
         z-index:8;
     }
     
     #modal2 .content {
         margin-top: 20px;
         padding: 0px 10px;
         z-index:8;
     }	
	


</style>

  
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<div class="container-fluid">
	<div class="row justify-content-between ">
		<div class="row col-5 pl-4 ">
			<div class="p-0 ">
				<h3 style="font-weight:600;">마이페이지</h3>
			</div>
		</div>
		<div class="row col-6 justify-content-end p-0">
             <div class="pl-2 pr-2">
                 <div class="">
                 </div>
             </div>
             <div class="basic-dropdown pl-2 pr-4">
                 <div class="dropdown">
                     <button onclick="vacationApplication()" id="btn3" type="button" class="btn btn-primary btn-rounded" data-toggle="dropdown" aria-expanded="false">
                         	휴가신청
                     </button>
                 </div>
             </div>
        </div>
	</div>
	<!-- row -->
	<div class="row justify-content-between">
		<div class="profile row px-3 pt-3 pb-3" style="width:37%;">
			<div class="profile-head" >
				<div class="profile-info">
					<div class="profile-photo" style="margin: 0px; width: 100px; height: 100px;">
						<img src="<%=request.getContextPath() %>/member/getPicture.do"
							class="img-fluid rounded-circle" alt="">
					</div>
					<div class="profile-details">
						<div class="profile-name px-3 pt-2">
							<h4 class="text-primary mb-0">${loginUser.memName}</h4>
							<p>직책: ${loginUser.memOfcps}</p>
							<p>직급: ${loginUser.memRspofc}</p>
						</div>
						<div class="profile-email px-2 pt-2">
							<h4 class="text-muted mb-0">${loginUser.memMail}</h4>
							<p>Email</p>
						</div>
						<div class="dropdown ml-auto" style="width:100px;  padding-left:20px; padding-top:8px;">
							<a onclick="OpenWindow('detail','회원 상세정보',1000,600);"
								data-toggle="dropdown" aria-expanded="true" style="width:150px; ">
								<button class="myPageBtn">수정</button>
							</a>
							<button class="myPageBtn" onclick="OpenWindow('changePwd','비밀번호 수정',600,600);">비밀번호 수정</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row justify-content-center p-0 pb-3 pt-3" style="width:66%;">
	        <div class="d-flex pl-0 pr-2" style="width:20%;">
				<div class="btn btn-primary btn-md col-xl" style="height:15vh; width:10vh;">
					<div class="">
						<h2 style="color:white; margin-bottom:15px;">기간 설정
						</h2>
					</div> 
					<div class="">
				   		<div class = "d-flex justify-content-center align-self-center" >
							<h3>
								<select onclick="selectStarYear()" style="height:32px; width:90px; border:0; border-radius: 10px; color:#6761f9; font-weight:600; text-align:center;">
							    	<option class="selectYearOption" value="2022">2022</option>
							    	<option class="selectYearOption" value="2021">2021</option>
							    	<option class="selectYearOption" value="2020">2020</option>
								</select>
							</h3>
							<p style="color:white; margin-top:5px; margin-left:10px; font-size:14px;">(년도)
							</p>
						</div>
					</div> 
				</div>
	        </div>
	        <div class="d-flex pl-0 pr-2" style="width:19%;">
				<button type="button" class="btn btn-primary btn-lg col-xl" style="height:15vh;">
					<div class="">
						<h2 style="color:white">외출
							<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-pc-display-horizontal" viewBox="0 0 16 16">
							  <path d="M1.5 0A1.5 1.5 0 0 0 0 1.5v7A1.5 1.5 0 0 0 1.5 10H6v1H1a1 1 0 0 0-1 1v3a1 1 0 0 0 1 1h14a1 1 0 0 0 1-1v-3a1 1 0 0 0-1-1h-5v-1h4.5A1.5 1.5 0 0 0 16 8.5v-7A1.5 1.5 0 0 0 14.5 0h-13Zm0 1h13a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-.5.5h-13a.5.5 0 0 1-.5-.5v-7a.5.5 0 0 1 .5-.5ZM12 12.5a.5.5 0 1 1 1 0 .5.5 0 0 1-1 0Zm2 0a.5.5 0 1 1 1 0 .5.5 0 0 1-1 0ZM1.5 12h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1 0-1ZM1 14.25a.25.25 0 0 1 .25-.25h5.5a.25.25 0 1 1 0 .5h-5.5a.25.25 0 0 1-.25-.25Z"></path>
							</svg>
						</h2>
					</div> 
					<div class="row justify-content-center">
						<h2 style="color:yellow">17</h2>
						<p style="color:white; margin-top:5px; margin-left:10px; font-size:14px;">(사용/회)
						</p>
					</div> 
				</button>
	        </div>
	    	<div class="d-flex pl-0 pr-2" style="width:19%;">
				<button type="button" class="btn btn-primary btn-lg col-xl" style="height:15vh;">
					<div class="">
						<h2 style="color:white">연장근무
							<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-clock" viewBox="0 0 16 16">
							  <path d="M8 3.5a.5.5 0 0 0-1 0V9a.5.5 0 0 0 .252.434l3.5 2a.5.5 0 0 0 .496-.868L8 8.71V3.5z"></path>
							  <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm7-8A7 7 0 1 1 1 8a7 7 0 0 1 14 0z"></path>
							</svg>
						</h2>
					</div> 
					<div class="row justify-content-center">
						<h2 style="color:yellow">21.3</h2>
						<p style="color:white; margin-top:5px; margin-left:10px; font-size:14px;">(총/시간)
						</p>
					</div> 
				</button>
	        </div>
	    	<div class="d-flex pl-0 pr-2" style="width:19%;">
				<button type="button" class="btn btn-primary btn-lg col-xl" style="height:15vh;">
					<div class="">
						<h2 style="color:white">휴가
							<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-geo-alt" viewBox="0 0 16 16">
							  <path d="M12.166 8.94c-.524 1.062-1.234 2.12-1.96 3.07A31.493 31.493 0 0 1 8 14.58a31.481 31.481 0 0 1-2.206-2.57c-.726-.95-1.436-2.008-1.96-3.07C3.304 7.867 3 6.862 3 6a5 5 0 0 1 10 0c0 .862-.305 1.867-.834 2.94zM8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10z"></path>
							  <path d="M8 8a2 2 0 1 1 0-4 2 2 0 0 1 0 4zm0 1a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"></path>
							</svg>
						</h2>
					</div> 
					<div class="row justify-content-center">
						<h2 style="color:yellow">4.5</h2>
						<p style="color:white; margin-top:5px; margin-left:10px; font-size:14px;">(잔여/일)
						</p>
					</div> 
				</button>
	        </div>
	    	<div class="d-flex pl-0 pr-2" style="width:19%;">
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
					<div class="row justify-content-center">
						<h2 style="color:#65FF5E">5</h2>
						<p style="color:white; margin-top:5px; margin-left:10px; font-size:14px;">(년도/일)
						</p>
					</div> 
				</button>
	        </div>
	    </div>
	</div>
		
	    <div class="row" style="border:1px lightgray solid; border-bottom:1px white solid; width:100%; margin:0; padding:0; background-color:white;">
		   	<div class="card col-3" style="height:40vh; width:60vh; margin-left:1; z-index:1; padding:0; margin:0; ">
				<div class="row pt-3 justify-content-between" style="width:93%; margin:0;" >
					<h4><span class="pl-4" style="font-weight:600; display: table-cell;">■ 휴가현황 </span></h4>
				</div>
				<div class="pr-3">
					<button type="button" id="btn-modal1" class=""  data-toggle="modal1" data-target="#modalGrid" style="float: right; border-radius: 5px; background-color: #333258;
						border-color:darkgray; color:white; width:12vh; height:25px; font-size:13px; margin-right:13px;">상세보기
					</button> 
				</div>
		        <div id="vacation1" class="row align-self-center text-center" 
		        	style="width:53vh; height:62px; border:1px solid ; 
		        	border-color:rgba(51,50,88,.5);border-width:3px; margin-top:3px;">
		            <div class="col-3 align-self-center">
		        		<div><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" style="width:30px;"><!--! Font Awesome Pro 6.2.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2022 Fonticons, Inc. --><path d="M152 64H296V24C296 10.75 306.7 0 320 0C333.3 0 344 10.75 344 24V64H384C419.3 64 448 92.65 448 128V448C448 483.3 419.3 512 384 512H64C28.65 512 0 483.3 0 448V128C0 92.65 28.65 64 64 64H104V24C104 10.75 114.7 0 128 0C141.3 0 152 10.75 152 24V64zM48 448C48 456.8 55.16 464 64 464H384C392.8 464 400 456.8 400 448V192H48V448z"/></svg></div>
		        	</div>
		            <div class="col-5 align-self-center">
		            	<div style="font-size:18px; font-weight:bolder;">총 휴가일 수</div>
		        	</div>
		            <div class="col-3 align-self-center">
		            	<div style="font-size:20px; font-weight:bolder;">16</div>
		        	</div>
		        </div>
		        <div id="vacation2" class="row align-self-center text-center"
		   	        style="width:53vh; height:62px; border:1px solid; 
			        border-color:rgba(51,50,88,.5);border-width:3px; margin-top:5px;">
		            <div class="col-3 align-self-center">
		        		<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" style="width:30px;"><!--! Font Awesome Pro 6.2.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2022 Fonticons, Inc. --><path d="M96 32V64H48C21.5 64 0 85.5 0 112v48H448V112c0-26.5-21.5-48-48-48H352V32c0-17.7-14.3-32-32-32s-32 14.3-32 32V64H160V32c0-17.7-14.3-32-32-32S96 14.3 96 32zM448 192H0V464c0 26.5 21.5 48 48 48H400c26.5 0 48-21.5 48-48V192z"/></svg>
		        	</div>
		            <div class="col-5 align-self-center" >
		            	<div style="font-size:18px; font-weight:bolder;">휴가 사용일 수</div>
		        	</div>
		            <div class="col-3 align-self-center">
		            	<div style="font-size:20px; font-weight:bolder;">11.5</div>
		        	</div>
		        </div>
		        <div id="vacation3" class="row align-self-center text-center"
		   	        style="width:53vh; height:62px; border:1px solid; 
			        border-color:rgba(51,50,88,.5);border-width:3px;margin-top:5px;">
		            <div class="col-3 align-self-center">
		        		<div><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" style="width:30px;"><!--! Font Awesome Pro 6.2.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2022 Fonticons, Inc. --><path d="M128 0c17.7 0 32 14.3 32 32V64H288V32c0-17.7 14.3-32 32-32s32 14.3 32 32V64h48c26.5 0 48 21.5 48 48v48H0V112C0 85.5 21.5 64 48 64H96V32c0-17.7 14.3-32 32-32zM0 192H448V464c0 26.5-21.5 48-48 48H48c-26.5 0-48-21.5-48-48V192zm80 64c-8.8 0-16 7.2-16 16v64c0 8.8 7.2 16 16 16H368c8.8 0 16-7.2 16-16V272c0-8.8-7.2-16-16-16H80z"/></svg></div>
		        	</div>
		            <div class="col-5 align-self-center" >
		            	<div style="font-size:18px; font-weight:bolder;">휴가 잔여일</div>
		        	</div>
		            <div class="col-3 align-self-center">
		            	<div style="font-size:20px; font-weight:bolder;">4.5</div>
		        	</div>
		        </div>
			</div>
			<div class="card col-9 justify-content-around" style="height:40vh; width:50%; float:right; margin:0; z-index:1; padding:5px;">
				<div class="card " style="height:26vh; weight:20vh; overflow-y:scroll; border:1px lightgrey solid; border-radius:0px; margin:66px 3vh 0px 0px; padding:0;">
					<table style="text-align: center; font-size:15px;">
							<tr class="borderTr" bgcolor="#333258" style="color: white; position:sticky; top:-2px; height:40px;">
								<th class="borderTh" scope="col" style="width:12%; border-top-left-radius:0px;">신청날짜</th>
								<th class="borderTh" scope="col" style="width:8%;">분류</th>
								<th class="borderTh" scope="col" style="width:40%;">휴가기간</th>
								<th class="borderTh" scope="col" style="width:30%;">사유</th>
								<th class="borderTh"  scope="col" style="width:10%;">상태</th>
							</tr>
 							<tr class="vacationTr borderTr" style="">
								<td class="borderTd" class="p-1" style="vertical-align:middle" >2022-09-06</td>
								<td class="borderTd" class="p-1" style="vertical-align:middle"><span class="badge light badge-info rounded">반차</span></td>
								<td class="borderTd" class="p-1" style="vertical-align:middle">
									<span class="vacationPeriodStart pr-1">2022-09-08</span>
									<span class="vacationTimeStart pl-1 pr-3">09:00</span>
										~
									<span class="vacationPeriodEnd pl-3">2022-09-08</span>
									<span class="vacationTimeEnd pl-2 pr-3">12:00</span>
								</td>
								<td class="borderTd" class="p-1" style="vertical-align:middle">야간근무로 인한 오전 취침</td>
								<td class="borderTd" class="p-1" style="vertical-align:middle"><span class="badge light badge-dark">미처리</span></td>
							</tr>
							<tr class="vacationTr borderTr" style="">
								<td class="borderTd" class="p-1" style="vertical-align:middle">2022-07-09</td>
								<td class="borderTd" class="p-1" style="vertical-align:middle"><span class="badge light badge-info rounded">연차</span></td>
								<td class="borderTd" class="p-1" style="vertical-align:middle">
									<span class="vacationPeriodStart pr-1">2022-09-08</span>
									<span class="vacationTimeStart pl-1 pr-3">09:00</span>
										~
									<span class="vacationPeriodEnd pl-3">2022-09-08</span>
									<span class="vacationTimeEnd pl-2 pr-3">12:00</span>
								</td>
								<td class="borderTd" class="p-1" style="vertical-align:middle">휴식</td>
								<td class="borderTd" class="p-1" style="vertical-align:middle"><span class="badge light badge-success">처리완료</span></td>
							</tr>
							<tr class="vacationTr borderTr" style="">
								<td class="borderTd" class="p-1" style="vertical-align:middle">2022-04-21</td>
								<td class="borderTd" class="p-1" style="vertical-align:middle"><span class="badge light badge-info rounded">연차</span></td>
								<td class="borderTd" class="p-1" style="vertical-align:middle">
									<span class="vacationPeriodStart pr-1">2022-09-08</span>
									<span class="vacationTimeStart pl-1 pr-3">09:00</span>
										~
									<span class="vacationPeriodEnd pl-3">2022-09-08</span>
									<span class="vacationTimeEnd pl-2 pr-3">12:00</span>
								</td>
								<td class="borderTd" class="p-1" style="vertical-align:middle">휴식</td>
								<td class="borderTd"  class="p-1" style="vertical-align:middle"><span class="badge light badge-success">처리완료</span></td>
							</tr>
							<tr class="vacationTr borderTr" style="">
								<td class="borderTd" class="p-1" style="vertical-align:middle">2021-04-21</td>
								<td class="borderTd" class="p-1" style="vertical-align:middle"><span class="badge light badge-info rounded">연차</span></td>
								<td class="borderTd" class="p-1" style="vertical-align:middle">
									<span class="vacationPeriodStart pr-1">2021-09-08</span>
									<span class="vacationTimeStart pl-1 pr-3">09:00</span>
										~
									<span class="vacationPeriodEnd pl-3">2021-09-08</span>
									<span class="vacationTimeEnd pl-2 pr-3">12:00</span>
								</td>
								<td class="borderTd" class="p-1" style="vertical-align:middle">휴식</td>
								<td class="borderTd" class="p-1" style="vertical-align:middle"><span class="badge light badge-success">처리완료</span></td>
							</tr>
							<tr class="vacationTr borderTr" style="">
								<td class="borderTd" class="p-1" style="vertical-align:middle">2020-04-21</td>
								<td class="borderTd" class="p-1" style="vertical-align:middle"><span class="badge light badge-info rounded">연차</span></td>
								<td class="borderTd" class="p-1" style="vertical-align:middle">
									<span class="vacationPeriodStart pr-1">2020-09-08</span>
									<span class="vacationTimeStart pl-1 pr-3">09:00</span>
										~
									<span class="vacationPeriodEnd pl-3">2020-09-08</span>
									<span class="vacationTimeEnd pl-2 pr-3">12:00</span>
								</td>
								<td class="borderTd" class="p-1" style="vertical-align:middle">휴식</td>
								<td class="borderTd" class="p-1" style="vertical-align:middle"><span class="badge light badge-success">처리완료</span></td>
							</tr>
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
	    		</div>
		    </div>
		</div>
		<div class="row" style="border:1px lightgray solid; border-top:1px white solid; background-color:white; width:100%; margin:0; padding:0;">
			<div class="row pt-3" style="width:100%; margin:0;" >
				<h4 ><span class="pl-4" style="font-weight:600; display: table-cell; padding-bottom:2px;">■ 근태현황 </span></h4>
			</div>
			<div class="row col" style="display:inline-block; float:right; width:50px; ">
				<button type="button" id="btn-modal2" class=""  data-toggle="modal1" data-target="#modalGrid" style="float: right; border-radius: 5px; background-color: #333258;
					border-color:darkgray; color:white; width:12vh; height:25px; font-size:13px;">상세보기
				</button> 
			</div>
			<div class="card" style="height:21vh; width:100%; overflow-y:scroll; border:1px lightgrey solid; border-radius:0px; margin:25px; margin-top:1px; margin-bottom:10px;">
				<table style="text-align: center; font-size:15px;">
						<tr class="borderTr" bgcolor="#333258" style="color: white; position:sticky; top:-2px; height:35px; ">
							<th class="borderTh" scope="col" style="width:10%">일자</th>
							<th class="borderTh" scope="col" style="width:10%">사원번호</th>
							<th class="borderTh" scope="col" style="width:10%">이름</th>
							<th class="borderTh" scope="col" style="width:10%">직급</th>
							<th class="borderTh" scope="col" style="width:10%">근태항목</th>
							<th class="borderTh" scope="col" style="width:20%">사유</th>
							<th class="borderTh" scope="col" style="width:5%">시작시각</th>
							<th class="borderTh" scope="col" style="width:5%">종료시각</th>
							<th class="borderTh" scope="col" style="width:10%">소요시간</th>
							<th class="borderTh" scope="col" style="width:10%">상태</th>
						</tr>
						<tr class="workTr borderTr" >
								<td class="borderTd" style="vertical-align:middle"><span class="workDate">2022-10-21</span></td>
								<td class="borderTd" style="vertical-align:middle">A01</td>
								<td class="borderTd" style="vertical-align:middle">이순신</td>
								<td class="borderTd" style="vertical-align:middle">부장</td>
								<td class="borderTd"  style="vertical-align:middle"><span class="badge light badge-success">휴일대체</span></td>
								<td class="borderTd" style="vertical-align:middle">국가휴일로 인한 대체휴무</td>
								<td class="borderTd" style="vertical-align:middle">-</td>
								<td class="borderTd" style="vertical-align:middle">-</td>
								<td class="borderTd" style="vertical-align:middle">-</td>
								<td class="borderTd" style="vertical-align:middle"><span class="badge light badge-dark">미처리</span></td>
						</tr>
						<tr class="workTr borderTr" >
								<td class="borderTd" style="vertical-align:middle"><span class="workDate">2022-10-20</span></td>
								<td class="borderTd" style="vertical-align:middle">A01</td>
								<td class="borderTd" style="vertical-align:middle">이순신</td>
								<td class="borderTd" style="vertical-align:middle">과장</td>
								<td class="borderTd" style="vertical-align:middle"><span class="badge light badge-warning">외출</span></td>
								<td class="borderTd" style="vertical-align:middle">감기몸살로 인한 병원</td>
								<td class="borderTd" style="vertical-align:middle">10:00</td>
								<td class="borderTd" style="vertical-align:middle">14:00</td>
								<td class="borderTd" style="vertical-align:middle">04:00</td>
								<td class="borderTd" style="vertical-align:middle"><span class="badge light badge-dark">미처리</span></td>
						</tr>
						<tr class="workTr borderTr">
								<td class="borderTd" style="vertical-align:middle"><span class="workDate">2022-10-19</span></td>
								<td class="borderTd" style="vertical-align:middle">A01</td>
								<td class="borderTd" style="vertical-align:middle">이순신</td>
								<td class="borderTd" style="vertical-align:middle">사원</td>
								<td class="borderTd" style="vertical-align:middle"><span class="badge light badge-light">연장</span></td>
								<td class="borderTd" style="vertical-align:middle">프로젝트 마무리 야간근무</td>
								<td class="borderTd" style="vertical-align:middle">18:22</td>
								<td class="borderTd" style="vertical-align:middle">14:00</td>
								<td class="borderTd" style="vertical-align:middle">04:00</td>
								<td class="borderTd" style="vertical-align:middle"><span class="badge light badge-success">처리완료</span></td>
						</tr>
						<tr class="workTr borderTr" >
								<td class="borderTd" style="vertical-align:middle"><span class="workDate">2022-10-18</span></td>
								<td class="borderTd" style="vertical-align:middle">A01</td>
								<td class="borderTd" style="vertical-align:middle">이순신</td>
								<td class="borderTd" style="vertical-align:middle">사원</td>
								<td class="borderTd" style="vertical-align:middle"><span class="badge light badge-light">연장</span></td>
								<td class="borderTd" style="vertical-align:middle">프로젝트 마무리 야간근무</td>
								<td class="borderTd" style="vertical-align:middle">22:00</td>
								<td class="borderTd" style="vertical-align:middle">08:00</td>
								<td class="borderTd" style="vertical-align:middle">10:00</td>
								<td class="borderTd" style="vertical-align:middle"><span class="badge light badge-success">처리완료</span></td>
						</tr>
						<tr class="workTr borderTr" >
								<td class="borderTd" style="vertical-align:middle"><span class="workDate">2022-10-17</span></td>
								<td class="borderTd" style="vertical-align:middle">A01</td>
								<td class="borderTd" style="vertical-align:middle">이순신</td>
								<td class="borderTd" style="vertical-align:middle">대리</td>
								<td class="borderTd" style="vertical-align:middle"><span class="badge light badge-warning">외출</span></td>
								<td class="borderTd" style="vertical-align:middle">개인 은행업무</td>
								<td class="borderTd" style="vertical-align:middle">09:00</td>
								<td class="borderTd" style="vertical-align:middle">18:00</td>
								<td class="borderTd" style="vertical-align:middle">04:00</td>
								<td class="borderTd" style="vertical-align:middle"><span class="badge light badge-success">처리완료</span></td>
						</tr>
						<tr class="workTr borderTr" >
								<td class="borderTd" style="vertical-align:middle"><span class="workDate">2021-10-17</span></td>
								<td class="borderTd" style="vertical-align:middle">A01</td>
								<td class="borderTd" style="vertical-align:middle">이순신</td>
								<td class="borderTd" style="vertical-align:middle">대리</td>
								<td class="borderTd" style="vertical-align:middle"><span class="badge light badge-warning">외출</span></td>
								<td class="borderTd" style="vertical-align:middle">공공업무로 인한 주민센터 방문</td>
								<td class="borderTd" style="vertical-align:middle">09:00</td>
								<td class="borderTd" style="vertical-align:middle">18:00</td>
								<td class="borderTd" style="vertical-align:middle">04:00</td>
								<td class="borderTd" style="vertical-align:middle"><span class="badge light badge-dark">미처리</span></td>
						</tr>
						<tr class="workTr borderTr" >
								<td class="borderTd" style="vertical-align:middle"><span class="workDate">2020-10-17</span></td>
								<td class="borderTd" style="vertical-align:middle">A01</td>
								<td class="borderTd" style="vertical-align:middle">이순신</td>
								<td class="borderTd" style="vertical-align:middle">대리</td>
								<td class="borderTd" style="vertical-align:middle"><span class="badge light badge-warning">외출</span></td>
								<td class="borderTd" style="vertical-align:middle">공공업무로 인한 관공서 방문</td>
								<td class="borderTd" style="vertical-align:middle">09:00</td>
								<td class="borderTd" style="vertical-align:middle">18:00</td>
								<td class="borderTd" style="vertical-align:middle">04:00</td>
								<td class="borderTd" style="vertical-align:middle"><span class="badge light badge-dark">미처리</span></td>
						</tr>
				</table>
			</div>
		</div>
   
    <!-- 모달창 컨텐츠 #1 (휴가현황 상세보기) -->
	<div id="modal1" class="modal-overlay">
		<div class="modal-window">
		    <span class="close-area" style="font-size:30px;">X</span>
		    <div class="content">
				<div class="">
					<h3 class="pb-4"  style="width:100%; font-weight: bolder; padding-top: 10px">ㅣ 휴가현황 상세보기</h3>
				</div>
				<div class="row justify-content-around pb-1 bg-white" style="height:130px; width:100%; margin-left:0px;">
					<div class="col-2 border borderd">
						<div class="row justify-content-center pt-3" >
							<div style="font-size:16px; font-weight:bolder;">귀속년도</div>
						</div>
						<hr>
						<div class="row justify-content-center text-center pt-2" >
							<div class="col-12"><span class="yearEqualValue">2022</span></div>
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
								<div class="" style="font-size:14px;" ><span class="yearEqualValue">2022</span>-1-1</div>
							</div>
							<div class="row col-6 row justify-content-center pb-3 text-center" >
								<div class="col-12" style="font-size:14px; font-weight:bolder;">종료기간</div>
								<div class="col-12" style="font-size:14px;"><span class="yearEqualValue">2022</span>-12-31</div>
							</div>
						</div>
					</div>
					<div class="col-3 border borderd ">
						<div class="row justify-content-center pt-3" >
							<div style="font-size:16px; font-weight:bolder;">부여일 수</div>
						</div>
						<hr>
						<div class="row justify-content-around">
							<div class="row col-6 justify-content-center  text-center" >
								<div style="font-size:14px; font-weight:bolder;">기본일수</div>
								<div class="col-12" >15</div>
							</div>
							<div class="row col-6 row justify-content-center  text-center" >
								<div style="font-size:14px; font-weight:bolder;">보너스  상여</div>
								<div class="col-12">1</div>
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
								<div class="col-12">10.5</div>
							</div>
							<div class="row col-6 row justify-content-center text-center" >
								<div style="font-size:14px; font-weight:bolder;">반납</div>
								<div class="col-12">1</div>
							</div>
						</div>
					</div>
					<div class="col-2 border borderd ">
						<div class="row justify-content-center pt-3" >	
							<div style="font-size:16px; font-weight:bolder;">잔여일 수</div>
						</div>
						<hr>
						<div class="row justify-content-center pt-2 text-center" >
							<div class="col-12">4.5</div>
						</div>
					</div>
				</div>
			</div>
	    </div>
	</div>
	
    <!-- 모달창 컨텐츠 #2 (근태현황 상세보기) -->
	<div id="modal2" class="modal-overlay">
		<div class="modal-window">
		    <span class="close-area" style="font-size:30px;">X</span>
		    <div class="content">
				<div class="">
					<h3 class="pb-4"  style="width:100%; font-weight: bolder; padding-top: 10px">ㅣ 근태현황 상세보기</h3>
				</div>
				<div class="row justify-content-around pb-1 bg-white" style="height:130px; width:100%; margin-left:0px;">
					<div class="col-3 border borderd">
						<div class="row justify-content-center pt-3" >
							<div style="font-size:16px; font-weight:bolder;">귀속년도</div>
						</div>
						<hr>
						<div class="row justify-content-center text-center pt-2" >
							<div class="col-12"><span class="yearEqualValue">2022</span></div>
						</div>
					</div>
					<div class="col-3 border borderd ">
						<div class="row justify-content-center pt-3" >
							<div style="font-size:16px; font-weight:bolder;">근태 귀속년도 기간</div>
						</div>
						<hr>
						<div class="row justify-content-around">
							<div class="row col-6 justify-content-center pb-3 text-center" >
								<div class="col-12" style="font-size:14px; font-weight:bolder;">시작기간</div>
								<div class="" style="font-size:14px;" ><span class="yearEqualValue">2022</span>-1-1</div>
							</div>
							<div class="row col-6 row justify-content-center pb-3 text-center" >
								<div class="col-12" style="font-size:14px; font-weight:bolder;">종료기간</div>
								<div class="col-12" style="font-size:14px;"><span class="yearEqualValue">2022</span>-12-31</div>
							</div>
						</div>
					</div>
					<div class="col-3 border borderd ">
						<div class="row justify-content-center pt-3" >
							<div style="font-size:16px; font-weight:bolder;">연장근무(시간)</div>
						</div>
						<hr>
						<div class="row justify-content-around">
							<div class="row col-6 justify-content-center  text-center" >
								<div style="font-size:14px; font-weight:bolder;">평일 야간</div>
								<div class="col-12" >20</div>
							</div>
							<div class="row col-6 justify-content-center  text-center" >
								<div style="font-size:14px; font-weight:bolder;">주말</div>
								<div class="col-12" >1.3</div>
							</div>
						</div>
					</div>
					<div class="col-3 border borderd ">
						<div class="row justify-content-center pt-3" >	
							<div style="font-size:16px; font-weight:bolder;">근태(회)</div>
						</div>
						<hr>
						<div class="row justify-content-around">
							<div class="row col-6 justify-content-center text-center" >
								<div style="font-size:14px; font-weight:bolder;">지각</div>
								<div class="col-12">3</div>
							</div>
							<div class="row col-6 row justify-content-center text-center" >
								<div style="font-size:14px; font-weight:bolder;">결석</div>
								<div class="col-12">0</div>
							</div>
						</div>
					</div>
				</div>
			</div>
	    </div>
	</div>
    
</div>


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
		parent.document.querySelector('#myPagePwd').value = '';
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

<script> /** 모달 펑션*/

//모달창(귀속년도 휴가확인)
document.querySelector("#btn-modal1").onclick = function(){
	//특정 버튼을 누르면 모달창이 켜지게 하기
	const modal = document.getElementById("modal1");
    modal.style.display = "flex";
	
	//모달창의 클로즈(x) 버튼을 누르면 모달창이 꺼지게 하기
	const closeBtn = modal.querySelector(".close-area");
	closeBtn.addEventListener("click", e => {
	    modal.style.display = "none";
	})
	    
	    
	//모달창 바깥 영역을 클릭하면 모달창이 꺼지게 하기
	modal.addEventListener("click", e => {
	    const evTarget = e.target;
	    if(evTarget.classList.contains("modal-overlay")) {
	        modal.style.display = "none";
	    }
	})
};


//모달창(근태 상세확인)
document.querySelector("#btn-modal2").onclick = function(){
	//특정 버튼을 누르면 모달창이 켜지게 하기
	const modal = document.getElementById("modal2");
    modal.style.display = "flex";
	
	//모달창의 클로즈(x) 버튼을 누르면 모달창이 꺼지게 하기
	const closeBtn = modal.querySelector(".close-area");
	closeBtn.addEventListener("click", e => {
	    modal.style.display = "none";
	})
	    
	    
	//모달창 바깥 영역을 클릭하면 모달창이 꺼지게 하기
	modal.addEventListener("click", e => {
	    const evTarget = e.target;
	    if(evTarget.classList.contains("modal-overlay")) {
	        modal.style.display = "none";
	    }
	})
};



</script>

<script>/**날짜 필터 펑션*/

//휴가현황 테이블
var selectYearOption = document.querySelectorAll(".selectYearOption"); 

var vacationPeriodStart = document.querySelectorAll(".vacationPeriodStart"); 
var vacationTr = document.querySelectorAll(".vacationTr"); 

var hiddenArrVacation2022 = [];
var hiddenArrVacation2021 = [];
var hiddenArrVacation2020 = [];

for(j=0; j<vacationTr.length; j++){
	if ((vacationPeriodStart[j].innerText.split('-'))[0] == "2022"){
		hiddenArrVacation2022.push(vacationTr[j]);
	} else if ((vacationPeriodStart[j].innerText.split('-'))[0] == "2021") {
		hiddenArrVacation2021.push(vacationTr[j]);
	} else if ((vacationPeriodStart[j].innerText.split('-'))[0] == "2020"){
		hiddenArrVacation2020.push(vacationTr[j]);
	}
}

for(j=0; j<hiddenArrVacation2022.length; j++){
	hiddenArrVacation2022[j].style.display="";
}
for(j=0; j<hiddenArrVacation2021.length; j++){
	hiddenArrVacation2021[j].style.display="none";
}
for(j=0; j<hiddenArrVacation2020.length; j++){
	hiddenArrVacation2020[j].style.display="none";
}



//근태현황 테이블
var workDate = document.querySelectorAll(".workDate"); 
var workTr = document.querySelectorAll(".workTr"); 

var hiddenArrWork2022 = [];
var hiddenArrWork2021 = [];
var hiddenArrWork2020 = [];

for(j=0; j<workTr.length; j++){
	if ((workDate[j].innerText.split('-'))[0] == "2022"){
		hiddenArrWork2022.push(workTr[j]);
	} else if ((workDate[j].innerText.split('-'))[0] == "2021") {
		hiddenArrWork2021.push(workTr[j]);
	} else if ((workDate[j].innerText.split('-'))[0] == "2020"){
		hiddenArrWork2020.push(workTr[j]);
	}
}

for(j=0; j<hiddenArrWork2022.length; j++){
	hiddenArrWork2022[j].style.display="";
}
for(j=0; j<hiddenArrWork2021.length; j++){
	hiddenArrWork2021[j].style.display="none";
}
for(j=0; j<hiddenArrWork2020.length; j++){
	hiddenArrWork2020[j].style.display="none";
}

console.log("hiddenArrWork2022 : ", hiddenArrWork2022);
console.log("hiddenArrWork2021 : ", hiddenArrWork2021);
console.log("hiddenArrWork2020 : ", hiddenArrWork2020);

//휴가현황 상세보기 년도 디폴트
var yearEqualValue = document.querySelectorAll(".yearEqualValue"); 

//yearEqualValue.innerText = "2022";
console.log("yearEqualValue = " ,yearEqualValue);
console.log("yearEqualValue.innerText = " ,yearEqualValue.innerText);

//click 이벤트
function selectStarYear() {
	
	//휴가현황 테이블
	if (selectYearOption[0].selected == true){
		for(j=0; j<hiddenArrVacation2022.length; j++){
			hiddenArrVacation2022[j].style.display="";
		}
		for(j=0; j<hiddenArrVacation2021.length; j++){
			hiddenArrVacation2021[j].style.display="none";
		}
		for(j=0; j<hiddenArrVacation2020.length; j++){
			hiddenArrVacation2020[j].style.display="none";
		}
	} 
	if (selectYearOption[1].selected == true){
		for(j=0; j<hiddenArrVacation2022.length; j++){
			hiddenArrVacation2022[j].style.display="none";
		}
		for(j=0; j<hiddenArrVacation2021.length; j++){
			hiddenArrVacation2021[j].style.display="";
		}
		for(j=0; j<hiddenArrVacation2020.length; j++){
			hiddenArrVacation2020[j].style.display="none";
		}
	} 
	if (selectYearOption[2].selected == true){
		for(j=0; j<hiddenArrVacation2020.length; j++){
			hiddenArrVacation2022[j].style.display="none";
		}
		for(j=0; j<hiddenArrVacation2021.length; j++){
			hiddenArrVacation2021[j].style.display="none";
		}
		for(j=0; j<hiddenArrVacation2020.length; j++){
			hiddenArrVacation2020[j].style.display="";
		}
	}
	
	
	//근태현황 테이블
	if (selectYearOption[0].selected == true){
		for(j=0; j<hiddenArrWork2022.length; j++){
			hiddenArrWork2022[j].style.display="";
		}
		for(j=0; j<hiddenArrWork2021.length; j++){
			hiddenArrWork2021[j].style.display="none";
		}
		for(j=0; j<hiddenArrWork2020.length; j++){
			hiddenArrWork2020[j].style.display="none";
		}
	} 
	if (selectYearOption[1].selected == true){
		for(j=0; j<hiddenArrWork2022.length; j++){
			hiddenArrWork2022[j].style.display="none";
		}
		for(j=0; j<hiddenArrWork2021.length; j++){
			hiddenArrWork2021[j].style.display="";
		}
		for(j=0; j<hiddenArrWork2020.length; j++){
			hiddenArrWork2020[j].style.display="none";
		}
	} 
	if (selectYearOption[2].selected == true){
		for(j=0; j<hiddenArrWork2022.length; j++){
			hiddenArrWork2022[j].style.display="none";
		}
		for(j=0; j<hiddenArrWork2021.length; j++){
			hiddenArrWork2021[j].style.display="none";
		}
		for(j=0; j<hiddenArrWork2020.length; j++){
			hiddenArrWork2020[j].style.display="";
		}
	}
	
	
	//휴가현황 상세보기 년도 변경
	
	
	if (selectYearOption[0].selected == true) {
		for(j=0; j<yearEqualValue.length; j++){
			yearEqualValue[j].innerText = "2022";
		}
		console.log("yearEqualValue.innerText = 2022")
	} else if (selectYearOption[1].selected == true) {
		for(j=0; j<yearEqualValue.length; j++){
			yearEqualValue[j].innerText = "2021";
		}
		console.log("yearEqualValue.innerText = 2021")
	} else if (selectYearOption[2].selected == true) {
		for(j=0; j<yearEqualValue.length; j++){
			yearEqualValue[j].innerText = "2020";
		}
		console.log("yearEqualValue.innerText = 2020")
	}
	
}
</script>

<script>
// function formMaker(pwd, newPwd) { // url에 POST로 이름과 타입을 담은 form을 submit
// 	  var form = document.createElement('form');
// 	  var inputName = doucment.createElement('input');
// 	  var inputType = doucment.createElement('input');
	  
// 	  form.setAttribute('action', 'modifyPwd');
// 	  form.setAttribute('method', 'POST');
	  
// 	  inputName.setAttribute('type', 'password');
// 	  inputName.setAttribute('name', 'password');
// 	  inputName.setAttribute('value', pwd);
	  
// 	  inputType.setAttribute('type', 'password');
// 	  inputType.setAttribute('name', 'newPassword');
// 	  inputType.setAttribute('value', newPwd);
	  
// 	  form.appendChild(inputName);
// 	  form.appendChild(inputValue);
	  
// 	  document.body.appendChild(form);
	  
// 	  form.submit();
// 	}
</script>
<%@ include file="/WEB-INF/views/common/preloader_js.jsp"%>



