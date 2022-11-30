<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>



<link href="<%=request.getContextPath()%>/resources/css/ChartStyle.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/css/customcss.css"
	rel="stylesheet">
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/resources/vendor/lightgallery/css/lightgallery.css" />
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/resources/vendor/lightgallery/css/lg-zoom.css" />
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/resources/vendor/lightgallery/css/lg-thumbnail.css" />

<style>

.img-sam{
	width: 100%;
}

.userListTable th {
    position: sticky;
    top: 0px;
    background-color: #333258 !important;
}

.swal-title {
  margin: 0px;
  font-size: 16px;
  margin-bottom: 28px;
}

input[type="number"]::-webkit-outer-spin-button,
input[type="number"]::-webkit-inner-spin-button {
    -webkit-appearance: none;
    margin: 0;
}

.table-treatmentDetail{
	color: black;
	width: 100%;
	table-layout:fixed
}

.table-treatmentDetail th, .table-treatmentDetail td{
	padding: 3px;
	border: 1px solid #c7c7c7;
}
.table-treatmentDetail th{
	text-align: center;
}
.table-treatmentDetail td{
	box-sizing: border-box;
	text-overflow:ellipsis;
	overflow:hidden;
    white-space:nowrap;
}

.table-dzDetail{
	color: black;
	width: 100%;
	table-layout:fixed
}

.table-dzDetail th, .table-dzDetail td{
	padding: 2px;
	border: 1px solid #c7c7c7;
}
.table-dzDetail th{
	text-align: center;
}
.table-dzDetail td{
	box-sizing: border-box;
	text-overflow:ellipsis;
	overflow:hidden;
    white-space:nowrap;
}

.drugSelectedId th, .drugSelectedId td{
	padding: 3px;
	border: 1px solid #c7c7c7;
}
.drugSelectedId th{
	text-align: center;
}
.drugSelectedId td{
	box-sizing: border-box;
	text-overflow:ellipsis;
	overflow:hidden;
    white-space:nowrap;
}

.btn {
	padding: 0.538rem 1.5rem;
	border-radius: 0;
	font-weight: 500;
	font-size: 1rem;
}

.teethFormInput {
	width: 80px;
	border: none;
}

.teethFormInput:hover {
	background: white;
	cursor: default;
}

.float-checkbox {
	float: center;
	margin: 0 0 0 10px;
	cursor: pointer;
}

.row-cbody {
	float: center;
	margin-bottom: 13px;
}

.font-12 *{
	font-size: 12px
}

.font-10{
	font-size: 10px
}

.teeth-Cure, .babyteeth-Cure, .teeth, .babyteeth {
	border: solid 1px;
	margin-left: 5px;
	margin-right: 5px;
	padding: 0;
	text-align: center;
	cursor: pointer;
}

.teethSelect, .teethSelect-Cure {
	background-color: #afc2fa99;
}

.teethDeselect, .teethDeselect-Cure {
	background-color: white;
}
/* .teeth-selected { */
/* 	border: solid 1px; */
/* 	margin-left: 5px; */
/* 	margin-right: 5px; */
/* 	padding: 0; */
/* 	text-align: center; */
/* 	background-color: ; */
/* 	cursor: pointer; */
/* } */
.teeth-upper {
	margin-top: 5px;
	margin-bottom: 5px;
}

.teeth-lower {
	margin-top: 5px;
	margin-bottom: 5px;
}

.teeth-upper>div {
	border-radius: 0% 0% 80% 80%;
}

.teeth-lower>div {
	border-radius: 80% 80% 0% 0%;
}

.teeth-orgnzChart-pl {
	border: solid 1px;
	background-color: #bbbbbb42;
}

.teeth-orgnzChart-cure {
	border: solid 1px;
	background-color: #a9cffe2b;
}

.pl-category-color-first {
	color: #ff2d97;
	float: left;
}

.pl-category-color-second {
	color: #88c1f9;
	float: left;
}

.pl-category-color-third {
	color: #1d0fea;
	float: left;
}

.pl-category-color-fourth {
	color: #c116ff;
	float: left;
}

.pl-category-color-fifth {
	color: #17ab19;
	float: left;
}

.pl-category-color-sixth {
	color: #414141;
	float: left;
}

.pl-category-color-seventh {
	color: #999999;
	float: left;
}

.pl-category-color-eighth {
	color: #7012ff;
	float: left;
}

.pl-category-color-tenth {
	color: #ff8527;
	float: left;
}

.pl-category-color-first>label {
	cursor: pointer;
}

.pl-category-color-second>label {
	cursor: pointer;
}

.pl-category-color-third>label {
	cursor: pointer;
}

.pl-category-color-fourth>label {
	cursor: pointer;
}

.pl-category-color-fifth>label {
	cursor: pointer;
}

.pl-category-color-sixth>label {
	cursor: pointer;
}

.pl-category-color-seventh>label {
	cursor: pointer;
}

.pl-category-color-eighth>label {
	cursor: pointer;
}

.pl-category-color-tenth>label {
	cursor: pointer;
}
</style>

<!-- <div id="preloader-custom"> -->
<!-- 	<div class="sk-three-bounce" style="margin: 0; width: 100%; height: 100%; text-align: center; background: rgb(255 255 255 / 17%); -->
<!-- 				box-shadow: 0 8px 32px 0 rgb(31 38 135 / 37%); backdrop-filter: blur(1.5px);"> -->
<!-- 		<div class="sk-child sk-bounce1"></div> -->
<!-- 		<div class="sk-child sk-bounce2"></div> -->
<!-- 		<div class="sk-child sk-bounce3"></div> -->
<!-- 	</div> -->
<!-- </div> -->

<div class="contaner-fluid ml-4 mr-4">
	<div class="row" style="">
		<div class="col-sm-2" style="font-size:12px;">
 			<div class="pb-2">
				<h4 style="font-weight:600;">▶환자검색</h4>
				<div class="">
					<div id="keyword" class="card-tools">
						<div class="input-group search-area d-lg-inline-flex d-none">
							<input class="dropdown-toggle" id="inputkeyword" onkeyup="selectList();getPatientByEnter();" data-toggle="dropdown" 
								style="float:left; border:1px lightgray solid; width:75%; height:30px;">
							<button onclick="getPatient()" style="border-radius: 5px; background-color:#EAEAEA;
								border-color:darkgray; color:gray; width:6vh; height:30px;">검색
							</button>
							<div class="input-group-append">
							</div>
			                <ul class="dropdown-menu">
			                	<li class="dropdown" id="aaa">
			                  		<div style="width:270px;height:300px;  overflow:auto" class="bg-light">
										<div id="selectView" class="bg-light">
											<div><p style="font-size:20px">&nbsp;&nbsp;검색어를 입력해주세요 </p></div>
											<table class="table table-hover bg-light">
												<tbody id="selectView">
												</tbody>
											</table>
			       
					                  </div>
				                  </div>
			                  </li>
							</ul> 
						</div> 
					</div>
				</div>
			</div>
			<div class="pt-2">
				<h4 style="font-weight:600; width: 100px;">▶환자정보</h4>
				<table class="table table-striped table-responsive-sm2" style="border:1px lightgray solid; width:90%;">
					<tr>
						<td class="text-right" style="border-top:1px lightgray solid;">차트번호 : </td>
						<td style="font-weight:600; border-top:1px lightgray solid;" id="p_no" title="${patient.PNo }">
							<c:if test="${not empty patient }">
								${patient.PNo }
							</c:if>										
						</td>					
					</tr>
					<tr>
						<td class="text-right" style="border-top:1px lightgray solid;">환자이름 : </td>
						<td style="font-weight:600; color:blue; border-top:1px lightgray solid;">
							<c:choose>
								<c:when test="${not empty patient}">
									${patient.PName}
									<c:if test="${not empty patient.PSfx}">
									ㅣ&nbsp;${patient.PSfx }
									</c:if>
								</c:when>
								<c:otherwise>
									환자를 검색해주세요
								</c:otherwise>
							</c:choose>
						</td>															
					</tr>
					<tr>
						<td class="text-right" >나이&nbsp;ㅣ&nbsp;성별 : </td>
						<td>
							<c:if test="${not empty patient }">
								<!-- 나이 로직 -->
								<c:set value="${patient.PRnum}" var="jumin"/>
									 <!-- 현재년도 가져오기 -->
								<c:set var="now" value="<%=new java.util.Date()%>" />
								<c:set var="sysYear"><fmt:formatDate value="${now}" pattern="yyyy" /></c:set>
								<c:set var="year" value="${fn:substring(sysYear,2,4)}"/>
								 
								<c:set var="splitJumin" value='${fn:split(jumin,"-")}'/>
								<c:set var="backJuminFirst" value="${fn:substring(splitJumin[1],0,1)}"/>
								<!-- 1900년도 사람일때 -->
								<c:if test="${backJuminFirst == '1' || backJuminFirst == '2'  }">
									<c:set value="${fn:substring(splitJumin[0],0,2)}" var="frontJumin"/>
									<c:set var = "age1" value="${100-frontJumin+1 }"/>
								   	<!-- 계산한나이-->
								   	<c:set var = "age" value="${age1+year}" />
							   		${age }
								</c:if>
								<!-- 2000년도 사람일때 -->
								<c:if test="${backJuminFirst == '3' || backJuminFirst == '4'  }">
									<c:set value="${fn:substring(splitJumin[0],0,2)}" var="frontJumin"/>>
								   	<!-- 계산한나이-->
								   	<c:set var = "age" value="${year-frontJumin+1}" />
								   	${age }
								</c:if>
								<!-- 성별 로직 -->
								<c:set value="${fn:substring(patient.PRnum,7,8)}" var="PSex"/>
								<c:choose>
									<c:when test="${PSex eq '1' or PSex eq '3' or PSex eq '5' or PSex eq '7'}">
									ㅣ&nbsp;남성
									</c:when>
									<c:otherwise>
									ㅣ&nbsp;여성
									</c:otherwise>
								</c:choose>
							</c:if>		
						</td>															
					</tr>
					<tr>
						<td class="text-right">환자 연락처 :</td>
						<td style="font-size:14px;">${patient.PTel}</td>															
					</tr>
					<tr>
						<td class="text-right">보험구분 :</td>
						<td>${patient.PInsurance}</td>															
					</tr>
					<tr>
						<td class="text-right">내원경로 :</td>
						<td>${patient.PVisitPath}</td>															
					</tr>
				</table>
			</div>
			<div class="pt-3">
				<h4 style="font-weight:600;"> ▶접수목록</h4>
				<div style="height:40.3vh; overflow-y:scroll; text-align:center; border:1px lightgray solid; width:90%;" >
					<table class="table table-striped table-responsive-sm2" style="margin-bottom: 0rem;">
						<tr>
							<th style="vertical-align:middle;">순번</th>
							<th style="vertical-align:middle;">상태</th>
							<th style="vertical-align:middle;">이름(나이)</th>															
						</tr>
						<c:choose>
							<c:when test="${empty bookingList}">
								<tr>
									<td colspan="3">목록이 없습니다.</td>
								</tr>
							</c:when>
							<c:otherwise>
								<c:forEach items="${bookingList}" var="booking" varStatus="status">
								 	<tr style="cursor:pointer;" onclick="chageToChart(${booking.PNo})">
										<td>${status.index+1 }</td>
										<c:choose>
											<c:when test="${booking.bsName eq '진료'}">
												<td style="color:red">${booking.bsName}</td>
											</c:when>
											<c:when test="${booking.bsName eq '대기'}">
												<td style="color:blue">${booking.bsName}</td>
											</c:when>
											<c:otherwise>
												<td style="color:gray">${booking.bsName}</td>
											</c:otherwise>
										</c:choose>
										<td>${booking.PName }(
											<c:set value="${booking.PRnum}" var="jumin"/>
											<!-- 현재년도 가져오기 -->
											<c:set var="now" value="<%=new java.util.Date()%>" />
											<c:set var="sysYear"><fmt:formatDate value="${now}" pattern="yyyy" /></c:set>
											<c:set var="year" value="${fn:substring(sysYear,2,4)}"/>
											<c:set var="splitJumin" value='${fn:split(jumin,"-")}'/>
											<c:set var="backJuminFirst" value="${fn:substring(splitJumin[1],0,1)}"/>
											<!-- 1900년도 사람일때 -->
											<c:if test="${backJuminFirst == '1' || backJuminFirst == '2'  }">
											<c:set value="${fn:substring(splitJumin[0],0,2)}" var="frontJumin"/>
											<c:set var = "age1" value="${100-frontJumin+1 }"/>
											<!-- 계산한나이-->
											<c:set var = "age" value="${age1+year}" />
											${age }
											</c:if>
											<!-- 2000년도 사람일때 -->
											<c:if test="${backJuminFirst == '3' || backJuminFirst == '4'  }">
											<c:set value="${fn:substring(splitJumin[0],0,2)}" var="frontJumin"/>>
											<!-- 계산한나이-->
											<c:set var = "age" value="${year-frontJumin+1}" />
											${age }
											</c:if>
											)
										</td>															
									</tr>	
								</c:forEach>
							</c:otherwise>
						</c:choose>
					 </table>	
				 </div>	   	
			 </div>
		</div>
		<div class="col-sm-5 justify-content-center" style="border-right: solid 1px; border-left: solid 1px;">
			<section class="content" style="hight: 25vh; wigth:80%;"> 
				<section class="content-header pl-1 pr-1" >
					<div class="container-fluid" >
						<div class="row">
						<h4 class="col-sm-7" style="font-weight:600;">▶ 진료내역</h4>
						<a onclick="OpenWindow('<%=request.getContextPath()%>/picture/filming','Ai 감정인식',660,640);" type="button" class="btnOpen" style="padding:0; margin:1px;">
							<button style="float: right; border-radius: 5px; margin-left:45px; padding-right:0; margin-top:0px; background-color:#333258;
								border-color:darkgray; color:white; width:100px; height:30px;">Ai 감정인식
							</button>
						 </a>
						<a onclick="OpenWindow('<%=request.getContextPath()%>/picture/whitening','Ai 감정인식',660,640);" type="button" class="btnOpen" style="padding:0; margin:1px;">
							<button style="float: right; border-radius: 5px; margin-right:0px; padding-right:0; margin-top:0px; background-color:#333258;
								border-color:darkgray; color:white; width:150px; height:30px;">Ai 치아미백도 검사
							</button>
					     </a>
					</div>
					</div>
					<div class="card" id="chartScroll" style="    overflow-y: scroll; width: 100%; height: 95vh; border: 1px lightgray solid; font-size: 12px; margin-bottom: 0px;" >
						<table class="table table-bordered" id="userListTable"  style="width:100%; margin:0;">
							<tr class="text-center" style="color: white; cursor: default; position: sticky; z-index:100; top: 0px; background-color:#333258">
								<th style="width: 13%;">진료일자</th>
								<th style="width: 23%;">치식</th>
								<th style="width: 52%;">진료내역</th>
								<th style="width: 10%;">담당</th>
								<!-- yyyy-MM-dd  -->
							</tr>


							<c:choose>
								<c:when test="${empty cdList}">
									<tr>
										<td colspan="7" class="text-center">진료내역이 없습니다.</td>
									</tr>
								</c:when>
								<c:otherwise>
									<c:forEach items="${cdList}" var="cd" varStatus="status">
										<tr id="${cd.cdCode}">
<!-- 											<td class="align-middle" style="vertical-align:top; text-align: center;"> -->
<%-- 												<fmt:formatDate value="${cd.cdRegdate }" pattern="yyyy-MM-dd"/> --%>
<!-- 											</td> -->
											<c:choose>
												<c:when test="${status.first}">
													<td class="align-middle" rowspan="${cd.datecount}" style="vertical-align:top; text-align: center;">
														<fmt:formatDate value="${cd.cdRegdate }" pattern="yyyy-MM-dd"/>
													</td>
												</c:when>
												<c:otherwise>
													<fmt:formatDate var="newDate" value="${cd.cdRegdate }" pattern="yyyy-MM-dd"/>
													<fmt:formatDate var="oldDate" value="${cdList[status.index-1].cdRegdate}" pattern="yyyy-MM-dd"/>
													<c:if test="${newDate ne oldDate}">
														<td class="align-middle" rowspan="${cd.datecount}" style="vertical-align:top; text-align: center;">
															<fmt:formatDate value="${cd.cdRegdate }" pattern="yyyy-MM-dd"/>
														</td>
													</c:if>
												</c:otherwise>
											</c:choose>
											<td class="align-middle" style="vertical-align:top">
												<div class="card" style="padding:0; margin:0;">
													<table class="chart-dental-formula">
														<tr>
															<td class="innerTableChisikLT pt-0 pb-0" style="border-right:1px solid; border-bottom:1px solid; border-left:0; border-top:0; width:65px; height: 16px; text-align: right;">
															${cd.cdUlJaw }
															</td>
															<td class="innerTableChisikRT pt-0 pb-0" style="border-right:0; border-bottom:1px solid; border-top:0; width:65px; height: 16px;">
															
															${cd.cdUrJaw }
															
															</td>
														</tr> 
														<tr> 
															<td class="innerTableChisikLB pt-0 pb-0" style="border-left:0; border-bottom:0; border-right:1px solid; width:65px; height: 16px; text-align: right;">
															
															${cd.cdBlJaw }
															
															</td>
															<td class="innerTableChisikRB pt-0 pb-0" style="border-right:0; border-bottom:0 ; width:65px; height: 16px;">
															
															${cd.cdBrJaw }
															
															</td>
														</tr>
													</table>
												</div>
											</td>
											<td style="vertical-align:top; text-align:left">
												<div class="card"  style="margin:0; auto;">
													<ul>
													<!-- 2022-11-12 진료 상세 목록 출력해야함 -->
														<li>
															<div class="row">
																<div class="col-3 mr-0 pr-0 border-bottom" style="max-width: 12.6667%; position: relative; width: 100%;">
																	<c:choose>
																		<c:when test="${cd.cccNumber eq '0' }">
																			<c:set value="orange" var="cccNameColor"/>
																		</c:when>
																		<c:when test="${cd.cccNumber eq '1' }">
																			<c:set value="blue" var="cccNameColor"/>
																		</c:when>
																		<c:when test="${cd.cccNumber eq '2' }">
																			<c:set value="red" var="cccNameColor"/>
																		</c:when>
																		<c:otherwise>
																			<c:set value="green" var="cccNameColor"/>
																		</c:otherwise>
																	</c:choose>
																	<span style="color:${cccNameColor}; font-weight:bold; font-size:14px;">${cd.cccName }</span>
																</div>
																<div class="col-9 p-0 m-0 pb-3 border-left border-bottom">
																<c:choose>
																	<c:when test="${cd.cccNumber eq '1'  }">
																		<span class="pl-2">${cd.cdPi}</span>
																	</c:when>
																	<c:otherwise>
																		<c:if test="${not empty cd.treatmentList }">
																			<div class="row pl-4" style="height: 28px;">
																				<p style="font-size: 14px; font-weight: 1000;">${cd.treatmentList[0].tlTitle }</p>
																			</div>
																			<c:forEach items="${cd.treatmentList}" var="tl" varStatus="tlStatus">
																				<div class="row pl-4">
																					<div class="p-0 text-truncate charListTableInnerWidth" title="${tl.tlName}">${tl.tlName}</div>
																				</div>
																			</c:forEach>
																		</c:if>
																		<c:if test="${not empty cd.dzList }">
																			<hr>
																			<div class="row pl-4" style="height: 28px;">
																				<p style="font-size: 14px; font-weight: 1000; color">상병목록</p>
																			</div>
																			<c:forEach items="${cd.dzList}" var="dl">
																				<div class="row pl-4 charListTableInnerWidth">
																					<div class="p-0 text-truncate ">${dl.dzCode}</div>
																					<p class="p-0 m-0"> - </p>
																					<div class="p-0 text-truncate">${dl.dzKoName }</div>
																				</div>
																			</c:forEach>
																		</c:if>
																		<c:if test="${not empty cd.drugNameList}">
																			<div class="row pl-4" style="height: 28px;">
																				<p style="font-size: 14px; font-weight: 1000; color">원외처방목록</p>
																			</div>
																			<c:forEach items="${cd.drugNameList}" var="dnl">
																				<div class="row pl-4 charListTableInnerWidth">
																					<div class="p-0 text-truncate ">${dnl.drugName}</div>
																				</div>
																			</c:forEach>
																		</c:if>
																	</c:otherwise>
																</c:choose>
																	
																</div>
															</div>
														</li>
														<li class="pl-2 mt-3">
															<strong>진료메모 : </strong><span>${cd.cdNote}</span>
														</li>
													</ul>
												</div>
											</td>
											<td class="text-center">${cd.memName}</td>
										</tr>
									</c:forEach>
								</c:otherwise>
							</c:choose>
						</table>
					</div>
				</section>
			</section>
		</div>
		<div class="col-sm-5 justify-content-center">
			<section class="content text-align-center" style="width: 100%; padding-left:20px;">
				<section class="content-header">
					<div id="tabs">
					    <div class="tab whiteborder">PI입력</div>
					    <div class="tab">진료상세</div>
					    <div class="tab">원외처방</div>
					    <div class="tab" onclick="getXrayGo();">의료사진</div>
					    <div class="tab" onclick="list();">문서발급</div>
						<!-- PI진료 -->
						<div class="tabContent">
					     	<div class="teeth-orgnzChart-pl font-12">
				     			<div class="row justify-content-center">
					     			<button type="button" class="btn btn-primary m-1" style="font-size: 12px" onclick="teethSelectUB(0)">상악</button>
					     			<button type="button" class="btn btn-primary m-1" onclick="teethSelectUB(1)">하악</button>
					     			<button type="button" class="btn btn-primary m-1" onclick="babyteethSelectAll(0)">유치상악</button>
					     			<button type="button" class="btn btn-primary m-1" onclick="babyteethSelectAll(1)">유치하악</button>
					     			<button type="button" class="btn btn-primary m-1" onclick="teethSelectAll()">전체선택</button>
					     			<button type="button" class="btn btn-primary m-1" onclick="resetTeethSelect(0)">선택해제</button>
					     		</div>
					     		<c:set var="teethStartCount" value="0"/>
					     		<c:forEach begin="1" end="4" var="i" step="1">
						     		<!-- 윗니 아랫니 여부 변수-->
						     		<c:set value="teeth-upper" var="upperOrLower"/>
						     		<!-- 유치 여부 변수-->
					     			<c:set value="7" var="babyTeeth" />
									<!-- 윗니 아랫니 여부 -->
									<c:if test="${i > 2}">
							     		<c:set value="teeth-lower" var="upperOrLower"/>
						     		</c:if>
						     		<!-- 유치 여부 -->
						     		<c:if test="${i > 1 and i < 4 }">
						     			<c:set value="4" var="babyTeeth" />
						     		</c:if>
						     		<div class="row justify-content-center">
						     			<c:forEach begin="1" end="2" var="j">
						     				<!-- 정순 역순 여부 변수-->
								     		<c:set value="justify-content-end" var="startOrEnd"/>
											<!-- 정순 역순 여부 -->
											<c:if test="${j==2}">
									     		<c:set value="justify-content-start" var="startOrEnd"/>
								     		</c:if>
								     		<div class="col-6">
									     		<div class="row ${startOrEnd} ${upperOrLower}">
							     					<c:set value="${teethStart[teethStartCount]}" var="tsc"/>
									     			<c:set var="teethEnd" value="${babyTeeth}"/>
									     			<c:set var="teethBegin" value="0"/>
									     			<c:if test="${j==2 }">
										     			<c:set var="teethEnd" value="${tsc+babyTeeth}"/>
										     			<c:set var="teethBegin" value="${tsc}"/>
									     			</c:if>
													<c:forEach begin="${teethBegin }" end="${teethEnd}" var="k" step="1">
									     				<fmt:parseNumber var="teethNumByStatus1" integerOnly="true" value="${(tsc - k)%10/10*10}"/>
									     				<fmt:parseNumber var="teethNumByStatus2" integerOnly="true" value="${(tsc + k)%10/10*10}"/>
										     			<c:choose>
											     			<c:when test="${i > 1 and i < 4 }">
												     			<c:choose>
													     			<c:when test="${j == 1}">
														     			<div class="col-1 babyteeth teethDeselect" title="${babyTeethPosition[teethNumByStatus1-1]}">${tsc - k }</div>
														     			<input type="hidden" class="babyteethHidden" id="teethNumberHiddenId${tsc - k }" name="teethNumber${tsc - k }" value="ﾠ">
													     			</c:when>
													     			<c:otherwise>
														     			<div class="col-1 babyteeth teethDeselect" title="${babyTeethPosition[teethNumByStatus2-2]}">${k }</div>
														     			<input type="hidden" class="babyteethHidden" id="teethNumberHiddenId${k }" name="teethNumber${k }" value="ﾠ">
													     			</c:otherwise>
												     			</c:choose>
											     			</c:when>
										     				<c:otherwise>
												     			<c:choose>
													     			<c:when test="${j == 1}">
														     			<div class="col-1 teeth teethDeselect" title="${teethNumByStatus1}">${tsc - k }</div>
														     			<input type="hidden" class="teethHidden" id="teethNumberHiddenId${tsc - k }" name="teethNumber${tsc - k }" value="ﾠ">
													     			</c:when>
													     			<c:otherwise>
														     			<div class="col-1 teeth teethDeselect" title="${teethNumByStatus2-1}">${k }</div>
														     			<input type="hidden" class="teethHidden" id="teethNumberHiddenId${k }" name="teethNumber${k }" value="ﾠ">
													     			</c:otherwise>
												     			</c:choose>
											     			</c:otherwise>
										     			</c:choose>
										     		</c:forEach>
												</div>
											</div>
	     									<c:set var="teethStartCount" value="${teethStartCount+1}"/>
						     			</c:forEach>
									</div>
					     		</c:forEach>
							</div>
					    	<div class="row m-0 mt-3">
								<h5 style="font-weight: bolder; padding-top:0; float:left;">■ 선택된 치아 PI 입력</h5>
							</div>
						    <div class="card mb-3" style="width:100%; height:53%; border: 1px lightgray solid; font-size: 16px">
								<div class="row-cbody">
									<div class="pl-category-color-first">
									 	<label id="pibtn1"><input type="checkbox" class="float-checkbox" onclick="pibtn(1)"> Blue</label>
	      								<label id="pibtn2"><input type="checkbox" class="float-checkbox" onclick="pibtn(2)"> Red</label>
	      								<label id="pibtn3"><input type="checkbox" class="float-checkbox" onclick="pibtn(3)"> Bite(+)</label>
	      								<label id="pibtn4"><input type="checkbox" class="float-checkbox" onclick="pibtn(4)"> Cold(+)</label>
	      								<label id="pibtn5"><input type="checkbox" class="float-checkbox" onclick="pibtn(5)"> Hot(+)</label>
	      								<label id="pibtn6"><input type="checkbox" class="float-checkbox" onclick="pibtn(6)"> EPT(-)</label>
	      								<label id="pibtn7"><input type="checkbox" class="float-checkbox" onclick="pibtn(7)"> 변색(+)</label>
      								</div>
      								<div class="pl-category-color-second">
	      								<label id="pibtn8"><input type="checkbox" class="float-checkbox" onclick="pibtn(8)"> Bite(-)</label>
	      								<label id="pibtn9"><input type="checkbox" class="float-checkbox" onclick="pibtn(9)"> Air(-)</label>
      								</div>
								</div>
								<div class="row-cbody">
									<div class="pl-category-color-third">
										<label id="pibtn10"><input type="checkbox" class="float-checkbox" onclick="pibtn(10)"> 교합면 우식</label>
										<label id="pibtn11"><input type="checkbox" class="float-checkbox" onclick="pibtn(11)"> 인접면 우식</label>
										<label id="pibtn12"><input type="checkbox" class="float-checkbox" onclick="pibtn(12)"> 협면 우식</label>
										<label id="pibtn13"><input type="checkbox" class="float-checkbox" onclick="pibtn(13)"> 설면 우식</label>
										<label id="pibtn14"><input type="checkbox" class="float-checkbox" onclick="pibtn(14)"> 치근 우식</label>
										<label id="pibtn15"><input type="checkbox" class="float-checkbox" onclick="pibtn(15)"> 이차 우식</label>
										<label id="pibtn16"><input type="checkbox" class="float-checkbox" onclick="pibtn(16)"> 충전물/보철물 불량</label>
										<label id="pibtn17"><input type="checkbox" class="float-checkbox" onclick="pibtn(17)"> 크라운</label>
										<label id="pibtn18"><input type="checkbox" class="float-checkbox" onclick="pibtn(18)"> 임플란트</label>
										<label id="pibtn19"><input type="checkbox" class="float-checkbox" onclick="pibtn(19)"> 인레이</label>
										<label id="pibtn20"><input type="checkbox" class="float-checkbox" onclick="pibtn(20)"> 충전상태</label>
									</div>
								</div>
								<div class="row-cbody">
									<div class="pl-category-color-fourth">
										<label id="pibtn21"><input type="checkbox" class="float-checkbox" onclick="pibtn(21)"> 치경부 마모/굴곡파절</label>
										<label id="pibtn22"><input type="checkbox" class="float-checkbox" onclick="pibtn(22)"> 치아상실/결손</label>
										<label id="pibtn23"><input type="checkbox" class="float-checkbox" onclick="pibtn(23)"> Tooth Crack</label>
										<label id="pibtn24"><input type="checkbox" class="float-checkbox" onclick="pibtn(24)"> 치아 파절</label>
										<label id="pibtn25"><input type="checkbox" class="float-checkbox" onclick="pibtn(25)"> 치근단 병소</label>
										<label id="pibtn26"><input type="checkbox" class="float-checkbox" onclick="pibtn(26)"> 잔존 치근</label>
		                            </div>
	                            </div>
								<div class="row-cbody">
									<div class="pl-category-color-fifth">
										<label id="pibtn27"><input type="checkbox" class="float-checkbox" onclick="pibtn(27)"> Pus 나옴</label>
										<label id="pibtn28"><input type="checkbox" class="float-checkbox" onclick="pibtn(28)"> 누공 존재</label>
										<label id="pibtn29"><input type="checkbox" class="float-checkbox" onclick="pibtn(29)"> Cellulitis</label>
		                            </div>
									<div class="pl-category-color-tenth">
										<label id="pibtn30"><input type="checkbox" class="float-checkbox" onclick="pibtn(30)"> 치은 연상/연하 치석</label>
										<label id="pibtn31"><input type="checkbox" class="float-checkbox" onclick="pibtn(31)"> 치은 부종/출혈</label>
										<label id="pibtn32"><input type="checkbox" class="float-checkbox" onclick="pibtn(32)"> 외상성 교합</label>
										<label id="pibtn33"><input type="checkbox" class="float-checkbox" onclick="pibtn(33)"> Mob(1)</label>
										<label id="pibtn34"><input type="checkbox" class="float-checkbox" onclick="pibtn(34)"> Mob(2)</label>
										<label id="pibtn35"><input type="checkbox" class="float-checkbox" onclick="pibtn(35)"> Mob(3)</label>
		                            </div>
	                            </div>
								<div class="row-cbody">
									<div class="pl-category-color-sixth">
										<label id="pibtn36"><input type="checkbox" class="float-checkbox" onclick="pibtn(36)"> 교모</label>
										<label id="pibtn37"><input type="checkbox" class="float-checkbox" onclick="pibtn(37)"> 정출</label>
										<label id="pibtn38"><input type="checkbox" class="float-checkbox" onclick="pibtn(38)"> 치내치</label>
										<label id="pibtn39"><input type="checkbox" class="float-checkbox" onclick="pibtn(39)"> 치외치</label>
										<label id="pibtn40"><input type="checkbox" class="float-checkbox" onclick="pibtn(40)"> 과잉치</label>
										<label id="pibtn41"><input type="checkbox" class="float-checkbox" onclick="pibtn(41)"> 매복치</label>
										<label id="pibtn42"><input type="checkbox" class="float-checkbox" onclick="pibtn(42)"> 외흡수</label>
										<label id="pibtn43"><input type="checkbox" class="float-checkbox" onclick="pibtn(43)"> 내흡수</label>
										<label id="pibtn44"><input type="checkbox" class="float-checkbox" onclick="pibtn(44)"> 미맹출</label>
		                            </div>
	                            </div>
								<div class="row-cbody">
									<div class="pl-category-color-seventh">
										<label id="pibtn45"><input type="checkbox" class="float-checkbox" onclick="pibtn(45)"> 손톱 깨물기</label>
										<label id="pibtn45"><input type="checkbox" class="float-checkbox" onclick="pibtn(46)"> 손가락 빨기</label>
										<label id="pibtn47"><input type="checkbox" class="float-checkbox" onclick="pibtn(47)"> 이악물기</label>
										<label id="pibtn48"><input type="checkbox" class="float-checkbox" onclick="pibtn(48)"> 편측 저작</label>
										<label id="pibtn49"><input type="checkbox" class="float-checkbox" onclick="pibtn(49)"> 이갈이</label>
									 </div>
									<div class="pl-category-color-eighth">
										<label id="pibtn50"><input type="checkbox" class="float-checkbox" onclick="pibtn(50)"> 정상소견</label>
									 </div>
								 </div>
						    </div>
					   		<div class="card" style="width:97.3%; height:10vh; border:1px lightgray solid; overflow-y:scroll; margin-left: 10px; margin-bottom: 10px">
								<span style="font-weight:600; font-size:15px;">[선택된 진료]</span>
								<div id="diagnosisInnerText" style="font-size:12px;"></div>
							</div>
							<div class="row justify-content-end mr-2">
								<div class="text-center p-0">
									<a onclick="tempSaveBtn()" type="button" class="btnOpen">
										<button class="btn btn-danger rounded">임시저장
										</button>
									</a>
								</div>
								<div class="text-center p-0">
									<a onclick="openRegistDiagnosis()" type="button" class="btnOpen">
										<button class="btn btn-primary rounded">
										 	PI등록
										</button>
									</a>
								</div>
							</div>
					    </div>
						<!-- 진료상세 -->
					    <div class="tabContent">
				    		<div class="teeth-orgnzChart-cure font-12">
								<div class="row justify-content-center font-12">
					     			<button type="button" class="btn btn-primary m-1" onclick="teethSelectUBCure(0)">상악</button>
					     			<button type="button" class="btn btn-primary m-1" onclick="teethSelectUBCure(1)">하악</button>
					     			<button type="button" class="btn btn-primary m-1" onclick="babyteethSelectAllCure(0)">유치상악</button>
					     			<button type="button" class="btn btn-primary m-1" onclick="babyteethSelectAllCure(1)">유치하악</button>
					     			<button type="button" class="btn btn-primary m-1" onclick="teethSelectAllCure()">전체선택</button>
					     			<button type="button" class="btn btn-primary m-1" onclick="resetTeethSelectCure(0)">선택해제</button>
					     		</div>
					     		<c:set var="teethStartCountCure" value="0"/>
					     		<c:forEach begin="1" end="4" var="i" step="1">
						     		<!-- 윗니 아랫니 여부 변수-->
						     		<c:set value="teeth-upper" var="upperOrLower"/>
						     		<!-- 유치 여부 변수-->
					     			<c:set value="7" var="babyTeethCure" />
									<!-- 윗니 아랫니 여부 -->
									<c:if test="${i > 2}">
							     		<c:set value="teeth-lower" var="upperOrLower"/>
						     		</c:if>
						     		<!-- 유치 여부 -->
						     		<c:if test="${i > 1 and i < 4 }">
						     			<c:set value="4" var="babyTeethCure" />
						     		</c:if>
						     		
						     		
						     		<div class="row justify-content-center">
						     			<c:forEach begin="1" end="2" var="j">
						     				<!-- 정순 역순 여부 변수-->
								     		<c:set value="justify-content-end" var="startOrEnd"/>
											<!-- 정순 역순 여부 -->
											<c:if test="${j==2}">
									     		<c:set value="justify-content-start" var="startOrEnd"/>
								     		</c:if>
								     		<div class="col-6">
									     		<div class="row ${startOrEnd} ${upperOrLower}">
							     					<c:set value="${teethStart[teethStartCountCure]}" var="tsc"/>
									     			<c:set var="teethEnd" value="${babyTeethCure}"/>
									     			<c:set var="teethBegin" value="0"/>
									     			<c:if test="${j==2 }">
										     			<c:set var="teethEnd" value="${tsc+babyTeethCure}"/>
										     			<c:set var="teethBegin" value="${tsc}"/>
									     			</c:if>
													<c:forEach begin="${teethBegin }" end="${teethEnd}" var="k" step="1">
									     				<fmt:parseNumber var="teethNumByStatusCure1" integerOnly="true" value="${(tsc - k)%10/10*10}"/>
									     				<fmt:parseNumber var="teethNumByStatusCure2" integerOnly="true" value="${(tsc + k)%10/10*10}"/>
										     			<c:choose>
											     			<c:when test="${i > 1 and i < 4 }">
												     			<c:choose>
													     			<c:when test="${j == 1}">
														     			<div class="col-1 babyteeth-Cure teethDeselect-Cure" title="${babyTeethPosition[teethNumByStatus1-1]}">${tsc - k }</div>
														     			<input type="hidden" class="babyteethHidden" id="cure-teethNumberHiddenId${tsc - k }" name="teethNumber${tsc - k }" value="ﾠ">
													     			</c:when>
													     			<c:otherwise>
														     			<div class="col-1 babyteeth-Cure teethDeselect-Cure" title="${babyTeethPosition[teethNumByStatus2-2]}">${k }</div>
														     			<input type="hidden" class="babyteethHidden" id="cure-teethNumberHiddenId${k }" name="teethNumber${k }" value="ﾠ">
													     			</c:otherwise>
												     			</c:choose>
											     			</c:when>
										     				<c:otherwise>
												     			<c:choose>
													     			<c:when test="${j == 1}">
														     			<div class="col-1 teeth-Cure teethDeselect-Cure" title="${teethNumByStatusCure1}">${tsc - k }</div>
														     			<input type="hidden" class="teethHidden-Cure" id="cure-teethNumberHiddenId${tsc - k }" name="teethNumber${tsc - k }" value="ﾠ">
													     			</c:when>
													     			<c:otherwise>
														     			<div class="col-1 teeth-Cure teethDeselect-Cure" title="${teethNumByStatusCure2-1}">${k }</div>
														     			<input type="hidden" class="teethHidden-Cure" id="cure-teethNumberHiddenId${k }" name="teethNumber${k }" value="ﾠ">
													     			</c:otherwise>
												     			</c:choose>
											     			</c:otherwise>
										     			</c:choose>
										     		</c:forEach>
												</div>
											</div>
	     									<c:set var="teethStartCountCure" value="${teethStartCountCure+1}"/>
						     			</c:forEach>
									</div>
					     		</c:forEach>
							</div>
					    	<div id="innertabs" class="font-12 mt-2">
						    	<c:forEach items="${tretmentList}" var="tretment">
						    		<div class="innertab innerwhiteborder">${tretment.tlcName }</div>
						    	</c:forEach>
					    		<img onclick="searchTreatment()" style="cursor: pointer;width: 1.5vw; float: right; margin: 3px;" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAABmJLR0QA/wD/AP+gvaeTAAAC+0lEQVRoge2Zz08TQRTHP/UH3tSLhQjEIN7k5kEhil7VgyYWww8T/wQTf0Rignqj/gOevZiQhoO0xsSb4K8Yr+qdkxG8KBEstNbDvHFWWaSzM7Ot0k+yeZu2833vdffNzL6FFi2CkHEc3wGcAU4CfcABYLd89wWYB94Dz4AnwCdHf94ZBErAGlCr81gDisCJBsS7jl7UP6uDqwCzwFXgKJAFdsqRBY4B14A5+a0e9xg4mHLsvxgDliSQb8AksM9ifBbIA8ui8RUY8RzjptzG/JtTQKeDVhdQiOhNOEdXJ3fF4Q85d50gNFeAKiklMyaOqkAugP4QJpnhAPqAKmxdEzdDOQHGMTXTE8KBnp2mQohHyGBqpuRbfFCEl4Fu3+IxdKJmwhpw3KdwSUQnfYpuQl58zvgS7ECtwhXs1glXsuJzVc6t2Bbz2VlgB/ACWHQKzY4F4DVqV3DadnBcIoNiiw5BJUXfVqdsB8Yl0if2ZeJwkvNK7GEfYp9RRZdmfWjaxfeCD7GyiLX5ELNkl/j+bjsw7tZqBlZtB8QlsiR2j1ssidgr1vrWiktkXmxv4nCSc0jsR9uBcYm8EzuQOJzk9Iv9YDswLpFZsecTh5Mc7fOpD7F2zBbFeqvggN6irGFqxZkiahrM+xKsg3vis+BTtF9EV0h/G3/Et7jeyhfw95weRwaYFl+PQjjoQT1+1lCPo6G4JT4Wgf2hnIxgmg9DAfQvYpoP5wLo/8YEJplx/NxmGdSV0ElUUR2b4OhkdM10OWh1Y2oielSAUbcw62MYUzPLqKnZZp3JoqbYFUz7J9oP1smk0kbtwcxm2vEccB21pWlHbf/b5HwAuAE8/yPoKVRhjzYyGVAtmxnsXiuUgYeoDn2UjZIJ1nmMIwtcBh4Ab1FTaBm1uM0Db4D7EtTfnjhHaIJkfDHE+itcAS41MqikbJRMKlOzb/6rZHJsgWRSWTR9k0N1VLZOMs3a14oyjaqNSuSz7ZiOyz/HBcyVudPgWJzJkeLr7BYtgJ/57P8kvPwRcAAAAABJRU5ErkJggg==">
							    <!-- 자주하는 진료 -->
							    <c:forEach items="${tretmentList}" var="tretment">
						    		<div class="innertabContent">
								    	<div class="card m-0 mb-2" style="width:100%; height:100%; overflow-y:scroll; border: 1px lightgray solid;">
											<table id="frequentDiagnosisTable" class="bg-white text-center" id="" style=" height:100%; width:100%;">
												<c:forEach items="${tretment.tscList}" var="tscList">
													<tr class="trFrequentDiagnosis">
														<td class="tdFrequentDiagnosis20">${tscList.tscName}</td>
														<td class="tdFrequentDiagnosis80">
															<c:forEach items="${tscList.tlList }" var="tlList">
																<button class="frequentDiagnosisButton" id="diagnosisbtn1" onclick="clickTreatment(${tretment.tlcCode},${tscList.tscCode},${tlList.tlNeedTeeth})">${tlList.tlTitle}</button>
															</c:forEach>
														</td>
													</tr>
												</c:forEach>
											</table>
										</div>
									</div>
						    	</c:forEach>
					    	</div>
					    	<div class="row m-0 mt-1 font-12">
					    		<div class="col-7 m-0 p-0">
									<h5 style="font-weight: bolder;">■ 처치목록</h5>
					    		</div>
					    		<div class="col-3 m-0 p-0">
									<h5 style="font-weight: bolder;">■ 상병목록</h5>
					    		</div>
					    		<div class="col-2 m-0 p-0" >
									<button id="btn-modal2" style="float: right; margin: 0px 6px 5px 0px;">상병추가</button>
					    		</div>
					    	</div>
							<div class="row" style="height:105px;">
								<div class="col-7 pb-4">
									<div class="card" style="border: 1px lightgray solid; height: 100px; overflow-y: auto;">
										<table class="table-treatmentDetail" style="font-size: 12px">
											<colgroup>
												<col width="12%">
												<col width="67%">
												<col width="8%">
												<col width="18%">
											</colgroup>
											<thead>
												<tr>
													<th class="text-center font-weight-bold">구분</th>
													<th class="text-center font-weight-bold">진료항목</th>
													<th class="text-center font-weight-bold">회</th>
													<th class="text-center font-weight-bold">회당금액</th>
												</tr>
											</thead>
											<tbody id="treatmentDetail">
												<tr>
													<th class="text-center" style="border: none;" colspan="4">진료를 선택해 주십시오.</th>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								<div class="col-5 pl-0">
						            <div class="card" style="border: 1px lightgray solid; height: 100px; overflow-y: auto;">
										<table class="table-dzDetail" style="font-size: 12px">
											<colgroup>
												<col width="20%">
												<col width="80%">
											</colgroup>
											<thead>
												<tr>
													<th class="text-center font-weight-bold">상병코드</th>
													<th class="text-center font-weight-bold">상병명</th>
												</tr>
											</thead>
											<tbody id="dzDetail">
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<div class="row  m-0 mt-1 font-12">
								<div class="col-12 m-0 p-0">
									<h5 style="font-weight: bolder;">■ 진료메모</h5>
					    		</div>
							</div>
							<div class="row mb-3">
								<div class="col-12 pl-3">
						            <form id="frm_textArea" name="frm_textArea">
						                <textarea rows="10" class="form-control" id="textArea_byteLimit" name="textArea_byteLimit" 
						                    onkeyup="fn_checkByte(this)" style="padding:0; margin:0; height:80px; border:1px lightgray solid; resize:none;"></textarea>
						            </form>
					            	<sup style="float:right;">(<span id="nowByte">0</span>/300bytes)</sup>
								</div>
							</div>
							<div class="row justify-content-end mr-2">
								<div class="text-center p-0">
									<a onclick="tempSaveBtn()" type="button" class="btnOpen">
										<button class="btn btn-danger rounded">임시저장
										</button>
									</a>
								</div>
								<div class="text-center p-0">
									<a onclick="registCureDetail()" type="button" class="btnOpen">
										<button class="btn btn-primary rounded">
										 	진료등록
										</button>
									</a>
								</div>
							</div>
			    		</div>
				    	
				    	
				    	<!-- 처방 -->
					    <div class="tabContent">
					    	<div class="">
								<h5 class="pb-2" style="font-weight: bolder; padding-top: 10px">■ 원외 처방전 발급 정보</h5>
							</div>
							<div class ="card" style="height:30%;" >
								<table class="normalTable">
									<tr class="normalTr" style="height:35px;">
										<th class="normalTh" style="background-color:#333258; text-align:center; color:white;">발급일</th>
										<th class="normalTh" style="background-color:#333258; text-align:center; color:white;">처방전 유효기간</th>
										<th class="normalTh" style="background-color:#333258; text-align:center; color:white;">환자명</th>
										<th class="normalTh" style="background-color:#333258; text-align:center; color:white;">발급의사</th>
										
									</tr>
									<tr class="normalTr" style="height:35px;">
										<td class="normalTd"><input name="selectDate" type="date" id="selectDate" style="text-align:center;" disabled></td>
										<td class="normalTd"><input name="selectDate" type="date" id="selectDate2" style="text-align:center;" disabled></td>
										<td class="normalTd"><input value="${patient.PName}" type="text" style="width:100px; height:30px; text-align:center;" disabled></input></td>
										<td class="normalTd">
											<input value="${loginUser.memName }" type="text" style="width:50px; height:30px; text-align:center;" disabled />
										</td>
									</tr>
									<tr class="normalTr">
										<th class="normalTh" colspan="4" style="background-color:#333258; text-align:center; color:white;">처치목록</th>
										
									</tr>
									<tbody>
										<tr class="normalTr">
										<td colspan="4">처치목록이 없습니다.</td>
										</tr>
									</tbody>
								</table>
					   		</div>
							<div class="">
								<h5 class="" style="font-weight: bolder; padding-top: 5px; float:left;">■ 원외처방</h5>
								<button type="button" id="btn-modal1" class="mr-3"  data-toggle="modal1" style="float: right; border-radius: 5px;background-color:green;
									border-color:darkgray; color:white; width:150px; height:25px; font-size:13px;">의약품 검색/추가
								</button> 
							</div>
							<div class="card font-12" style="width:100%; height:47%; overflow-y:scroll; overflow-x:scroll; border:1px lightgray solid;" >
								<table class="drugSelectedId">
									<colgroup>
										<col width="45%">
										<col width="10%">
										<col width="10%">
										<col width="10%">
										<col width="25%">
									</colgroup>
									<tr class="normalTr" bgcolor="#333258" style="color: white; height:30px; font-size:15px; position:sticky; top:0px; z-index:1; text-align:center;"> 
										<th class="normalTh">약품명</th>
										<th class="normalTh font-10">1회투약횟수</th>
										<th class="normalTh font-10">1일투약횟수</th>
										<th class="normalTh font-10">총투약횟수</th>
										<th class="normalTh">투약용법</th>
									</tr>
									<tbody id="drugDetail">
									</tbody>
								</table>
							</div>
							<div class="row justify-content-end mr-2">
								<div class="text-center p-0">
									<a onclick="registPrescribed()" type="button" class="btnOpen">
										<button class="btn btn-primary rounded">
										 	원외처방등록
										</button>
									</a>
								</div>
							</div>
						</div>
		    			<!-- 처치내역 -->
						<!-- X-ray -->
					    <div class="tabContent">
					    	<div class="row justify-content-center align-items-center ml-1 mr-1">
						    	<div class="col-8 w-100">
									<h5 class="pb-2" style="font-weight: bolder; padding-top: 10px">■ 의료사진 목록</h5>
						    	</div>
					    		<div class="col-2 text-center p-0 font-12">
					    			<button onclick="picUploadGo()" class="btn rounded btn-primary">사진업로드</button>
					    		</div>
					    		<div class="col-2 text-center p-0 font-12">
					    			<button class="btn rounded btn-primary">사진촬영</button>
					    		</div>
					    	</div>
					    	<hr class="m-0">
						    <div id="lightgallery" class="row text-center" style="height: 86vh; overflow-y: auto; margin: 10px;">
							</div>
					    </div>
					   	<!-- 문서발급-->
						<div class="tabContent">
						    	<div class="container-fluid" style="padding:0;">
									<img src="<%=request.getContextPath()%>/resources/images/stamp.png"  width="100" height="100" hidden="hidden ">
							<div class="">
								<h5>■새문서 발급</h5>
							</div>
							
							<div class="row pl-4 mb-3">
								<button type="button" class="btn btn-primary"  onclick="document1()" style="float: left; border-radius: 10px; margin-right: 5px;" >진단서</button>
								<button type="button" class="btn btn-primary" style="float: left; border-radius: 10px; margin-right: 5px;" onclick="document2()">소견서</button>
								<button type="button" class="btn btn-primary" style="float: left; border-radius: 10px; margin-right: 5px;" onclick="document3()">치료 계획서</button>
								<button type="button" class="btn btn-primary" style="float: left; border-radius: 10px; margin-right: 5px;" onclick="document4()">진료/수술 확인서</button>
							</div>
									
							
								<div class="">
									<c:choose>
										<c:when test="${not empty patient}">
											<h5>■ ${patient.PName} 님의 문서발급 내역</h5>
										</c:when>
										<c:otherwise>
											<h5>■ 환자 선택필요 </h5>
										</c:otherwise>
									</c:choose>
									</div>
			
					<div class="table-responsive" style=" border: solid 1px; height: 82vh;" >
						<div id="ajaxBookList">날짜를 선택해 주세요.<table class="table table-bordered"
							style="margin: auto;  text-align: center;">
							<thead class="thead">
								<tr bgcolor="#333258" style="color: white">
									<th scope="col" style="width:20%">문서번호</th>
									<th scope="col" style="width:30%">문서종류</th>
									<th scope="col" style="width:20%">문서작성일</th>
									<th scope="col" style="width:30%">문서발급용도</th>
								</tr>
							</thead>
					
								<tr>
									<td colspan="8">
										
									</td>
								</tr>
								
							<c:forEach items="${docList}" var="doc">
								<tbody>
									<tr>
										<td>${doc.docCode}</td>
										<td>${doc.docKind}</td>
										<td><fmt:formatDate value="${doc.docRegDate}"
												pattern="yyyy-MM-dd" /></td>
									<td>${doc.docUse}</td>
									</tr>
								</tbody>
							</c:forEach>
						</table>
						</div>
	   				</div>
	   				</div>
	   						</div>
					</div>
				</section>
			</section>
<!-- 			<div class="pt-4" style="padding-right:0; margin-right:0; float:right;"> -->
<!-- 				<a onclick="tempSaveBtn()" type="button" class="btnOpen" style="padding:0; margin:1px;"> -->
<!-- 					<button style="float: right; border-radius: 5px; margin-right:0px; margin-top:0px; background-color:#C90000; -->
<!-- 						border-color:darkgray; color:white; width:100px; height:30px;">임시저장 -->
<!-- 					</button> -->
<!-- 				</a> -->
<!-- 				<a onclick="openRegistDiagnosis()" type="button" class="btnOpen" style="padding:0; margin:1px;"> -->
<!-- 					<button style="float: right; border-radius: 5px; margin-right:0px; padding-right:0; margin-top:0px; -->
<!-- 					 		background-color:#333258; border-color:darkgray; color:white; width:100px; height:30px;"> -->
<!-- 					 	처방전 등록 -->
<!-- 					</button> -->
<!-- 				</a> -->
<!-- 			</div> -->
		</div>
	</div>
</div>
<!-- 모달창 컨텐츠 #1 (의약품 검색 / 추가) -->
<div id="modal1" class="modal-overlay" style="z-index: 200;">
    <div class="modal-window">
	    <div class="content">
    		<div class="row">
    			<div class="col-4">
    				<h3 class="pb-0"  style="width:100%; font-weight: bolder; padding-top: 10px">ㅣ 기존 처방 약품목록</h3>
    			</div>
    			<div class="col-8">
    				<h3 class="pb-0"  style="width:100%; font-weight: bolder; padding-top: 10px">ㅣ 처방약품 검색</h3>
    			</div>
    		</div>
    		
			<div class="row justify-content-end mr-3 mb-2 font-12">
				<div class="col-6 pr-0 text-right">
					<select id="drugSearchType">
						<option value="na">약품명</option>
						<option value="n">제약코드</option>
						<option value="m">제조사</option>
					</select>
					<input id="drugKeyword" type="text" name="keyword" style="width:18vh; height:28px;" onkeyup="serchDrug()"/>
					<button type="button" onclick="drugListByKeyword()">검색</button>
				</div>
			</div>
    		
    		<div class="row">
				<div class="col-4">
					<div class="card font-12" style="width:100%; height:33vh; overflow-y:scroll;">
						<table id="drugPrescribededId" class="table-treatmentDetail" style="padding:0; margin:0;">
							<colgroup>
								<col width="15%">
								<col width="18%">
								<col width="49%">
								<col width="6%">
								<col width="6%">
								<col width="6%">
							</colgroup>
							<tbody>
								<tr class="text-center" bgcolor="#333258" style="color: white; height:25px; font-size:15px; position:sticky; top:0px; z-index:1;"> 
									<td>처방일</td>
									<td>제약코드</td>
									<td>약품명</td>
									<td>1회</td>
									<td>1일</td>
									<td>총</td>
								</tr>
							</tbody>
							<tbody>
							<c:choose>
								<c:when test="${not empty ppsl}">
									<c:forEach items="${ppsl}" var="pps">
										<tr>
											<td>
												<fmt:formatDate value="${pps.ppRegdate }" pattern="yy-MM-dd" />
											</td>
											<td class="text-center" title="${pps.drugNo }">${pps.drugNo }</td>
											<td title="${pps.drugName }">${pps.drugName }</td>
											<td class="text-right">${pps.ppPertime }</td>
											<td class="text-right">${pps.ppPerdate }</td>
											<td class="text-right">${pps.ppTotalcount }</td>
										</tr>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<tr>
										<td class="text-center" style="border: none;" colspan="6">처방 기록이 없습니다</td>
									</tr>
								</c:otherwise>
							</c:choose>
							</tbody>
						</table>
					</div>
				</div>	    		
				<div class="col-8">
					<div class="card" style="width:100%; height:33vh; overflow-y:scroll;">
						<table id="drugSearchId" class="table-treatmentDetail" style="padding:0; margin:0;" >
							<colgroup>
								<col width="10%">
								<col width="45%">
								<col width="10%">
								<col width="10%">
								<col width="10%">
								<col width="5%">
							</colgroup>
							<tr class="text-center" bgcolor="#333258" style="color: white; height:25px; font-size:15px; position:sticky; top:0px; z-index:1;">
								<td>제약코드</td>
								<td>약품명</td>
								<td>제조사</td>
								<td>품목구분</td>
								<td>전문의약분류</td>
								<td>추가</td>
							</tr>
							<tbody id="drugSearchList">
								<tr>
									<td class="text-center" colspan="6" style="border:none;">약품을 검색해 주십시오.</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>	    		
    		</div>
	    	<div class="row">
		    	<div class="col-4">
		    		<h3 class="pb-0"  style="width:100%; font-weight: bolder; padding-top: 10px">ㅣ 진료 기록</h3>
		    	</div>
		    	<div class="col-8">
		    		<h3 class="pb-0" style="width:100%; font-weight: bolder; padding-top: 10px">ㅣ 선택된 처방약품</h3>
		    	</div>
	    	</div>
	    	
	    	<div class="row">
		    	<div class="col-4">
		    		<div class="card" id="chartScrollInnerModal" style="overflow-y: scroll; width: 100%; height: 33vh; border: 1px lightgray solid; font-size: 10px; margin-bottom: 0px;" >
						<table class="table table-bordered" id="userListTable"  style="width:100%; margin:0;">
							<tr class="text-center" style="color: white; cursor: default; position: sticky; z-index:100; top: 0px; background-color:#333258">
								<th class="p-1" style="width: 25%;">진료일자</th>
								<th class="p-1" style="width: 58%;">진료내역</th>
								<th class="p-1" style="width: 17%;">담당</th>
								<!-- yyyy-MM-dd  -->
							</tr>
							<c:choose>
								<c:when test="${empty cdList}">
									<tr>
										<td colspan="7" class="text-center">진료내역이 없습니다.</td>
									</tr>
								</c:when>
								<c:otherwise>
									<c:forEach items="${cdList}" var="cd" varStatus="status">
										<tr id="${cd.cdCode}">
<!-- 											<td class="align-middle" style="vertical-align:top; text-align: center;"> -->
<%-- 												<fmt:formatDate value="${cd.cdRegdate }" pattern="yyyy-MM-dd"/> --%>
<!-- 											</td> -->
											<c:choose>
												<c:when test="${status.first}">
													<td class="align-middle" rowspan="${cd.datecount}" style="vertical-align:top; text-align: center;">
														<fmt:formatDate value="${cd.cdRegdate }" pattern="yyyy-MM-dd"/>
													</td>
												</c:when>
												<c:otherwise>
													<fmt:formatDate var="newDate" value="${cd.cdRegdate }" pattern="yyyy-MM-dd"/>
													<fmt:formatDate var="oldDate" value="${cdList[status.index-1].cdRegdate}" pattern="yyyy-MM-dd"/>
													<c:if test="${newDate ne oldDate}">
														<td class="align-middle" rowspan="${cd.datecount}" style="vertical-align:top; text-align: center;">
															<fmt:formatDate value="${cd.cdRegdate }" pattern="yyyy-MM-dd"/>
														</td>
													</c:if>
												</c:otherwise>
											</c:choose>
											<td style="vertical-align:top; text-align:left">
												<div class="card"  style="margin:0; auto;">
													<ul>
													<!-- 2022-11-12 진료 상세 목록 출력해야함 -->
														<li>
															<div class="row">
																<div class="col-3 mr-0 pr-0 border-bottom" style="max-width: 12.6667%; position: relative; width: 100%;">
																	<c:choose>
																		<c:when test="${cd.cccNumber eq '0' }">
																			<c:set value="orange" var="cccNameColor"/>
																		</c:when>
																		<c:when test="${cd.cccNumber eq '1' }">
																			<c:set value="blue" var="cccNameColor"/>
																		</c:when>
																		<c:when test="${cd.cccNumber eq '2' }">
																			<c:set value="red" var="cccNameColor"/>
																		</c:when>
																		<c:otherwise>
																			<c:set value="green" var="cccNameColor"/>
																		</c:otherwise>
																	</c:choose>
																	<span style="color:${cccNameColor}; font-weight:bold; font-size:14px;">${cd.cccName }</span>
																</div>
																<div class="col-9 p-0 m-0 pb-3 border-left border-bottom">
																<c:choose>
																	<c:when test="${cd.cccNumber eq '1'  }">
																		<span class="pl-2">${cd.cdPi}</span>
																	</c:when>
																	<c:otherwise>
																			<c:if test="${not empty cd.treatmentList }">
																				<div class="row pl-4" style="height: 28px;">
																					<p style="font-size: 14px; font-weight: 1000;">${cd.treatmentList[0].tlTitle }</p>
																				</div>
																				<c:forEach items="${cd.treatmentList}" var="tl" varStatus="tlStatus">
																					<div class="row pl-4">
																						<div class="p-0 text-truncate charListTableInnerWidth" title="${tl.tlName}">${tl.tlName}</div>
																					</div>
																				</c:forEach>
																			</c:if>
																			<c:if test="${not empty cd.dzList }">
																				<hr>
																				<div class="row pl-4" style="height: 28px;">
																					<p style="font-size: 14px; font-weight: 1000; color">상병목록</p>
																				</div>
																				<c:forEach items="${cd.dzList}" var="dl">
																					<div class="row pl-4 charListTableInnerWidth">
																						<div class="p-0 text-truncate ">${dl.dzCode}</div>
																						<p class="p-0 m-0"> - </p>
																						<div class="p-0 text-truncate">${dl.dzKoName }</div>
																					</div>
																				</c:forEach>
																			</c:if>
																	</c:otherwise>
																</c:choose>
																	
																</div>
															</div>
														</li>
														<li class="pl-2 mt-3">
															<strong>진료메모 : </strong><span>${cd.cdNote}</span>
														</li>
													</ul>
												</div>
											</td>
											<td class="text-center">${cd.memName}</td>
										</tr>
									</c:forEach>
								</c:otherwise>
							</c:choose>
						</table>
					</div>
		    	</div>
		    	<div class="col-8">
		    		<div class="card" style="width:100%; height:33vh; overflow-y:scroll;">
						<table id="drugSelectedId" class="table-treatmentDetail" style="padding:0; margin:0;  border:1px black solid;" >
							<colgroup>
								<col width="10%">
								<col width="45%">
								<col width="10%">
								<col width="10%">
								<col width="10%">
								<col width="5%">
							</colgroup>
							<tr class="text-center" bgcolor="#333258" style="color: white; height:25px; font-size:15px; position:sticky; top:0px; z-index:1;"> 
								<td>제약코드</td>
								<td>약품명</td>
								<td>제조사</td>
								<td>품목구분</td>
								<td>전문의약분류</td>
								<td>삭제</td>
							</tr>
							<tbody id="drugSelectedList">
							</tbody>
						</table>
					</div>
		    	</div>
	    	</div>
			<div class="row justify-content-end pr-3">
				<button type="button" onclick="selectedDrugGo()" class="btn rounded btn-primary mr-3" style="background-color: #409804; padding: 15px;">
					선택하기
				</button>
				<button type="button" class="close-area rounded closeWindowModal btn btn-primary">
					닫기
				</button>
			</div>
		</div>
    </div>
</div>


<!-- 모달창 컨텐츠 #2 (질병코드 검색) -->
<div id="modal2" class="modal-overlay" style="z-index: 200;">
	<div class="modal-window" style="width: 1300px; height: 650px; top: 48%; left: 52%;">
<!-- 	    <span class="close-area" style="font-size:30px;">X</span> -->
	    <div class="content">
			<div class="row">
				<div class="col-6">
					<h3 class="pb-0"  style="width:100%; font-weight: bolder; padding-top: 10px">ㅣ 상병명 검색</h3>
				</div>
				<div class="col-6">
					<h3 class="pb-0" style="width:100%; font-weight: bolder; padding-top: 10px">ㅣ 선택된 상병명</h3>
				</div>
			</div>
			<div class="row align-items-end">
				<div class="col-6 pt-0">
					<div class="row mr-3 mb-2 font-12" style="float:right;">
						<select id="dzSearchType">
							<option value="dc">상병코드</option>
							<option value="dn">상병명</option>
						</select>
						<input id="dzSearchKeyword" type="text" name="keyword" style="width:18vh; height:28px;" onkeyup="dzSearchGoKeyup()"/>
						<button type="button" onclick="dzSearchGo()">검색</button>
					</div>
					<div class="card" style="width:100%; height:415px; overflow-y:scroll;">
						<table id="dzSearchId" class="table-treatmentDetail" style="padding:0; margin:0;  border:1px black solid;" >
							<colgroup>
								<col width="15%">
								<col width="15%">
								<col width="60%">
								<col width="10%">
							</colgroup>
							<tr class="text-center" bgcolor="#333258" style="color: white; height:45px; font-size:15px; position:sticky; top:0px; z-index:1;">
								<td>상병순번</td>
								<td>상병코드</td>
								<td>상병명</td>
								<td>추가</td>
							</tr>
							<tbody id="dzSearchList">
								<tr>
									<td class="text-center" colspan="4">상병명을 검색해 주십시오.</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="col-6 pt-0">
					<div class="card" style="width:100%; height:415px; overflow-y:scroll;">
						<table id="dzSelectedId" class="table-treatmentDetail" style="padding:0; margin:0;  border:1px black solid;" >
							<colgroup>
								<col width="15%">
								<col width="15%">
								<col width="60%">
								<col width="10%">
							</colgroup>
							<tr class="text-center" bgcolor="#333258" style="color: white; height:45px; font-size:15px; position:sticky; top:0px; z-index:1;"> 
								<td>상병순번</td>
								<td>상병코드</td>
								<td>상병명</td>
								<td>삭제</td>
							</tr>
							<tbody id="dzSelectedList">
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="row justify-content-end pr-3">
				<button type="button" onclick="selectedDzGo()" class="btn rounded btn-primary mr-3" style="background-color: #409804; padding: 15px;">
					선택하기
				</button>
				<button type="button" class="close-area rounded closeWindowModal btn btn-primary">
					닫기
				</button>
			</div>
		</div>
    </div>
</div>


<!-- 모달창 컨텐츠 #3 (진료목록 검색) -->
<div id="modal3" class="modal-overlay">
	<div class="modal-window">
	    <div class="content">
			<div class="">
				<h3 class="pb-0" style="width:100%; font-weight: bolder; padding-top: 10px">ㅣ 진료 검색</h3>
			</div>
				<div class="p-3"style="float: right;">
					<select id="treatmentSearchType">
						<option value="tn">진료명</option>
						<option value="ts">소분류명</option>
						<option value="tl">대분류명</option>
					</select>
					<input id="treatmentSearchKeyword" type="text" name="keyword" style="width:18vh; height:28px;" onkeyup="treatmentSearchGoKeyup()"/>
					<button type="button" onclick="treatmentSearchGo()">검색</button>
				</div>
			<div class="card" style="width:100%; height:220px; overflow-y:scroll; border:1px lightgray solid;" >
				<table class="" style="width:100%; font-size:13px;">
					<tr class="normalTr" bgcolor="#333258" style="color: white; height:30px; font-size:15px; position:sticky; top:0px; z-index:1; text-align:center;"> 
						<th class="normalTh">대분류명</th>
						<th class="normalTh">소분류명</th>
						<th class="normalTh">진료명</th>
					</tr>
					<tbody id="treatmentSearchList">
						<tr>
							<td class="text-center" colspan="3">진료을 검색해 주십시오.</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="row justify-content-end">
				<div class="row p-1">
					<div class="close-area">
						<button id="close-area" type="button" class="btn btn-primary" 
								style="float: right; border-radius: 10px; margin-right:22px;  margin-bottom:10px;">닫기
						</button>
					</div>
				</div>
			</div>
		</div>
    </div>
</div>

<div id="registWindow" class="popWarp" style="display:none; z-index:200">
	<div class="modal-window" style="width: 50%; height: 50%;">
		<div class="popInner p-3 mb-0 pb-0 justify-content-center">
			<form role="piForm">
				<div class="row justify-content-start">
					<div class="col-3 mr-auto">
						<h1 style="font-weight:bold"><span style="color:blue;">PI</span> 입력</h1>
					</div>
					<div class="col-2 align-self-center m-0 p-0 border-right border-dark">
						차트번호: <span style="color:blue;">${patient.PNo }</span>
						<input type="hidden" value="${patient.PNo }" name="PNo">
					</div>
					<div class="col-2 align-self-center ml-1 mr-3 m-0 p-0">
						환자이름: <span style="color:blue;">${patient.PName }</span>
					</div>
				</div>
				<hr>
				<div class="row">
					<div class="col-4">
						<span style="font-weight:bold">치식</span>
					</div>
					<div class="col-8 text-left" style="padding-left:35px">
						<span style="font-weight:600; font-size:15px;">[선택된 진료]</span>
					</div>
				</div>
				<div class="row">
					<div class="col-4 align-self-center">
						<div class="align-self-center p-2" style="border: 1px lightgray solid; background-color: white; height:10vh;">
							<table style="margin:auto; font-size: 16px;">
								<tr>
									<td class="innerTableChisikLT pt-0 pb-0 pr-1" style="border-right:1px solid; border-bottom:1px solid; border-left:0; border-top:0; width:60px; height: 16px; text-align: right;">
										<input type="text" id="ulInput" name="cdUlJaw" value="" class="teethFormInput" style="text-align: right" readonly onfocus="this.blur();"/>
									</td>
									<td class="innerTableChisikRT pt-0 pb-0 pl-1" style="border-right:0; border-bottom:1px solid; border-top:0; width:60px; height: 16px;">
										<input type="text" id="urInput" name="cdUrJaw" value="" class="teethFormInput"  readonly onfocus="this.blur();"/>
									</td>
								</tr> 
								<tr> 
									<td class="innerTableChisikLB pt-0 pb-0 pr-1" style="border-left:0; border-bottom:0; border-right:1px solid; width:60px; height: 16px; text-align: right;">
										<input type="text" id="blInput" name="cdBlJaw" value="" class="teethFormInput" style="text-align: right" readonly onfocus="this.blur();"/>
									</td>
									<td class="innerTableChisikRB pt-0 pb-0 pl-1" style="border-right:0; border-bottom:0 ; width:60px; height: 16px;">
										<input type="text" id="brInput" name="cdBrJaw" value="" class="teethFormInput" readonly onfocus="this.blur();"/>
									</td>
								</tr>
							</table>
						</div>
					</div>
					<div class="col-8">
						<div class="card" style="width:97.3%; height:10vh; border:1px lightgray solid; overflow-y:scroll; margin:15px 0px 10px 20px;">
							<div id="piInputText" style="font-size:14px; text-align: left;"></div>
							<input type="hidden" name="cdPi" id="piInputHiddenText" value=""/>
						</div>
					</div>
				</div>
			</form>
		</div>
		<hr>
		<div class="row justify-content-center p-3">
			<div class="col-4 text-center pl-5">PI를 등록 하시겠습니까?</div>
			<div class="col-4 align-self-center">
				<button type="button" onclick="btnYes()" id="btnYes" class="btnyes p-1" style="border-radius: 5px; border-color:darkgray; font-size:15px;" >등록합니다.</button>
				 &nbsp;&nbsp;&nbsp;
				<button type="button" onclick="btnClose()" id="btnClose" class="btnclose p-1" style="border-radius: 5px; border-color:darkgray; font-size:15px; ">아니오.</button>
			</div>
		</div>
	</div>
</div>

<!-- 모달창 컨텐츠 #5 (임시저장목록 불러오기) -->
<div id="saveLoadWindow" class="modal-overlay">
	<div class="modal-window">
	    <span class="close-area" style="font-size:30px;">X</span>
	    <div class="content">
			<div class="">
				<h3 class="pb-4"  style="width:100%; font-weight: bolder; padding-top: 10px">ㅣ 임시저장 목록</h3>
			</div>
				<%-- <div class="" style="float:right;">
					<select class="" name="searchType" id="searchType">
						<option value="ic"  ${cri.searchType eq 'tcw' ? 'selected':'' }>저장날짜</option>
						<option value="in" ${cri.searchType eq 'i' ? 'selected':'' }>상병명</option>
					</select>
					<input id="inputSearchBar1" type="text" name="keyword" placeholder="검색어를 입력하세요." value="${param.keyword }" style="width:18vh; height:28px;"/>
					<button type="button" style="border:1pxsolid; border-color:darkgray; border-radius:5px; width:5vh;">검색</button>
				</div> --%>
			<div class="card" style="width:100%; height:240px; overflow-y:scroll; border:1px lightgray solid;" >
				<table id="table22" style="width:100%; font-size:13px;">
					<tr class="normalTr" bgcolor="#333258" style="color: white; height:30px; font-size:15px; position:sticky; top:0px; z-index:1; text-align:center;"> 
						<th class="normalTh" style="width:10% ">저장시간</th>
						<th class="normalTh" style="width:10%">환자명</th>
						<th class="normalTh" style="width:20%">진료상세</th>
						<th class="normalTh" style="width:20%">처방</th>
						<th class="normalTh" style="width:20%">처치내역</th>
						<th class="normalTh" style="width:10%">X-ray</th>
						<th class="normalTh" style="width:10%">문서발급</th>
					</tr>
					<tr  class="normalTrSel">
						<td class="normalTd" style="text-align:center;"><div><span id="dateOfTempSave">2022-11-08</span><br><span>09:25:36</span></div></td>
						<td class="normalTd" style="text-align:center;"><div><span>나환자</span></div></td>
						<td class="normalTd" style="text-align:center;"><div><span>구강검진</span>,&nbsp;<span>구내염처치</span></div></td>
						<td class="normalTd" style="text-align:center;"><div><span>K01.0</span>&nbsp;<span>매몰치</span></div></td>
						<td class="normalTd" style="text-align:center;"><div><span>발치(사랑니)</span>,&nbsp;<span>구내염처치</span></div></td>
						<td class="normalTd" style="text-align:center;">#</td>
						<td class="normalTd" style="text-align:center;"><div><span>진단서</span>,&nbsp;<span>소견서</span></div></td>
					</tr>
					<tr  class="normalTrSel">
						<td class="normalTd" style="text-align:center;"><div><span id="dateOfTempSave">2022-11-08</span><br><span>09:25:36</span></div></td>
						<td class="normalTd" style="text-align:center;"><div><span>너도환자</span></div></td>
						<td class="normalTd" style="text-align:center;"><div><span>구강검진</span>,&nbsp;<span>구내염처치</span></div></td>
						<td class="normalTd" style="text-align:center;"><div><span>K01.0</span>&nbsp;<span>매몰치</span></div></td>
						<td class="normalTd" style="text-align:center;"><div><span>발치(사랑니)</span>,&nbsp;<span>구내염처치</span></div></td>
						<td class="normalTd" style="text-align:center;">#</td>
						<td class="normalTd" style="text-align:center;"><div><span>진단서</span>,&nbsp;<span>소견서</span></div></td>
					</tr>
					<tr  class="normalTrSel">
						<td class="normalTd" style="text-align:center;"><div><span id="dateOfTempSave">2022-11-08</span><br><span>09:25:36</span></div></td>
						<td class="normalTd" style="text-align:center;"><div><span>우린환자</span></div></td>
						<td class="normalTd" style="text-align:center;"><div><span>구강검진</span>,&nbsp;<span>구내염처치</span></div></td>
						<td class="normalTd" style="text-align:center;"><div><span>K01.0</span>&nbsp;<span>매몰치</span></div></td>
						<td class="normalTd" style="text-align:center;"><div><span>발치(사랑니)</span>,&nbsp;<span>구내염처치</span></div></td>
						<td class="normalTd" style="text-align:center;">#</td>
						<td class="normalTd" style="text-align:center;"><div><span>진단서</span>,&nbsp;<span>소견서</span></div></td>
					</tr>
				</table>
			</div>
			<div class="row justify-content-between">
				<div class="row pl-4">※ 불러올 처방전 목록을 선택하여주세요.</div>
				<div class="row p-1">
					<button type="button" class="closeWindowModal btn btn-primary " 
							style="float: right; border-radius: 10px; margin-right:22px;  margin-bottom:10px;">닫기
					</button>
				</div>
			</div>
		</div>
    </div>
</div>

<!-- 모달창 컨텐츠 #6 (선택된 진료 보기) -->
<div id="selectDiagnosisWindow" class="modal-overlay">
	<div class="modal-window">
	    <span class="close-area" style="font-size:30px;">X</span>
	    <div class="content">
			<div class="">
				<h3 class="pb-1"  style="width:100%; font-weight: bolder; padding-top: 10px">ㅣ 진료 검색</h3>
			</div>
			<div class="pb-2" style="float:right;">
				<input class="dropdown-toggle" id="dzKeyword" data-toggle="dropdown" 
				style="float:left; border:1px lightgray solid; width:70%; height:30px;">
				<a onclick="" type="button" class="">
					<button style="float:right; border-radius: 5px; background-color:#EAEAEA;
						border-color:darkgray; color:black; width:8vh; height:30px;" onclick="dzListByKeyword()">검색
					</button>
				</a>
			</div>
			<div class="" style="float:right;">
				<select class="" name="dzSearchType" id="dzSearchType" style="border:1px lightgray solid; height:30px;">
					<option value="ko">한글명</option>
					<option value="code">용어코드</option>
					<option value="ncode">개념코드</option>
					<option value="en">영문명</option>
					<option value="umls">UMLS</option>
					<option value="kcd">KCD</option>
				</select>
			</div>
			<div class="card" style="width:100%; height:300px; overflow-y:scroll; border:1px lightgray solid;" >
				<table id="table22" style="width:100%; font-size:13px;">
					<tr class="normalTr" bgcolor="#333258" style="color: white; height:30px; font-size:15px; position:sticky; top:0px; z-index:1; text-align:center;"> 
						<th class="normalTh" style="width:5% ">순번</th>
						<th class="normalTh" style="width:10%">용어코드</th>
						<th class="normalTh" style="width:10%">개념코드</th>
						<th class="normalTh" style="width:29%">한글명</th>
						<th class="normalTh" style="width:30%">영문명</th>
						<th class="normalTh" style="width:8%">UMLS</th>
						<th class="normalTh" style="width:8%">KCD</th>
					</tr>
					<tbody id="dzTbody">
						<tr>
							<td class="text-center" colspan="7">
								<strong>검색된 내용이 없습니다.</strong>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<div style="display: none;">
    <form role="cureDetailAction">
     	<input type="text" id="pnoForCD" name="pNo" value=""/>
     	<input type="text" id="ulInput-cure" name="cdUlJaw" value=""/>
     	<input type="text" id="urInput-cure" name="cdUrJaw" value=""/>
     	<input type="text" id="blInput-cure" name="cdBlJaw" value=""/>
     	<input type="text" id="brInput-cure" name="cdBrJaw" value=""/>
    	<textarea id="cdNoteInput" name="cdNote"></textarea>
     	
    	<div id="cureCodeList">
    	</div>
    	<div id="cureCountList">
    	</div>
    	<div id="curePriceList">
    	</div>
    	<div id="dzCodeList">
    	</div>
    </form>
    <form role="prescribedAction">
     	<input type="text" id="pnoForPp" name="pNo" value=""/>
    	<div id="drugNoInputList">
    	</div>
    	<div id="ppPertimeInputList">
    	</div>
    	<div id="ppPerDateInputList">
    	</div>
    	<div id="ppTotalcountInputList">
    	</div>
    	<div id="ppMedicationInputList">
    	</div>
    </form>
</div>

<%@ include file="/WEB-INF/views/common/preloader_js.jsp"%>

<!-- 임시저장 및 처방전 등록시 나오는 창 -->


<!-- <script>

/** 버튼 팝업 펑션*/
	var target = document.querySelectorAll('.btnOpen');
	var btnPopClose = document.querySelectorAll('.popWarp .btnClose'); 
	var targetID;
	
	var yesClick = document.querySelectorAll('.btnYes')
	
	// 팝업 열기
	for(var i = 0; i < target.length; i++){
	  target[i].addEventListener('click', function(){
	    targetID = this.getAttribute('href');
	    document.querySelector(targetID).style.display = 'block';
	  });
	}
	
	// 팝업 네!
	for(var j = 0; j < target.length; j++){
		yesClick[j].addEventListener('click', function(){
	    this.parentNode.parentNode.style.display = 'none';
	    alert('처방전등록이 정상적으로 완료되었습니다.')
	  });
	}
	
	
	// 팝업 닫기
	for(var j = 0; j < target.length; j++){
	  btnPopClose[j].addEventListener('click', function(){
	    this.parentNode.parentNode.style.display = 'none';
	  });
	}
	
	
</script> -->

<script>
function selectList(){
	  var keyword = document.getElementById('inputkeyword').value;
	  const name = choHangul(document.getElementById('inputkeyword').value); 
 	  var choKeyword = (name); 
			//초성검색 구분 
		 	if (keyword!="" && choKeyword==""){ 
			    choDiv = 'y'; 
			}else{ 
			    choDiv = 'n'; 
			} 

			
			function choHangul(str) { 
				  cho = ["ㄱ","ㄲ","ㄴ","ㄷ","ㄸ","ㄹ","ㅁ","ㅂ","ㅃ","ㅅ","ㅆ","ㅇ","ㅈ","ㅉ","ㅊ","ㅋ","ㅌ","ㅍ","ㅎ"]; 
				  result = ""; 
				  for(i=0;i<str.length;i++) { 
				    code = str.charCodeAt(i)-44032; 
				    if(code>-1 && code<11172){
				        result += cho[Math.floor(code/588)]; 
				    } 
				    return result; 
				}
			}; 

	  $.ajax({
		  url : "<%=request.getContextPath()%>/desk/getSearchPatient",
		  type : "get",
		  dataType : "json",
		  data : {keyword: keyword,
			  	  searchType  : choDiv
			   },
		  success : function(data){
			  var s = '';
			  if(data.patList.patientsearchList < 1 || keyword==""){
				  s += '<div style="text-align:center"><h3>검색결과가 없습니다</h3></div>' ;
				
			  }else{
				  s += '<table style="width: 100%; text-align: center;">';
				  s += '<tr>';
				  s += '<th style="width:30%;">차트번호';
				  s += '</th>';
				  s += '<th style="width:40%;">환자명';
				  s += '</th>';
				  s += '<th style="width:30%;">비고';
				  s += '</th>';
				  s += '</tr>';
				$.each(data.patList.patientsearchList, function(index,value){
						s += '<tr style="cursor:pointer; width:100%; font-size:15px;" onClick=chageToChart('+value.pno+')>';
						s +=	'<td style="width:30%; vertical-align : middle;">'+value.pno+'</td>';
		                s += 	'<td style="width:30%; vertical-align : middle;";>'+value.pname+'</td>';
		                s +=	'<td style="width:40%; vertical-align : middle;">';
              			s +=  		'<p class="m-0">테스트3</p>';
              			s +=	'</td>';
		                s += '</tr>';
				})
				s += '</table>';
			  }
				$("#selectView").html(s);
		  }
			   
			   
			   
			   
})};

</script>

<script>
	// 치아선택 이벤트
	let teethCount = 0;
	let babyteethCount = 0
	const teeth_selects = document.querySelectorAll('.teeth');
	const babyteeth_selects = document.querySelectorAll('.babyteeth');
	teeth_selects.forEach((target) => target.addEventListener("click", teethSelect));
	babyteeth_selects.forEach((target) => target.addEventListener("click", babyteethSelect));
	
	function teethSelect(event){
		var etc = event.target.className;
		var teeth_numer =  event.target.title;
		var text_value =  event.target.textContent;
		var teeth_hidden = document.querySelector('#teethNumberHiddenId'+text_value);
		var p_name = document.querySelector('#p_no').title
		
		if(!p_name){
			swal ( "실패" ,  "환자를 입력하세요." ,  "error" );
	  		return;
		}
		
		if(babyteethCount > 0){
			swal ( "실패" ,  "유치와 동시에 입력할 수 없습니다." ,  "error" );
	  		return;
		}
		
		if(etc == 'col-1 teeth teethDeselect'){
			event.target.className = 'col-1 teeth teethSelect'
			teeth_hidden.value = teeth_numer;
			teethCount += 1;
		}else{
			event.target.className = 'col-1 teeth teethDeselect';
			teeth_hidden.value = "ﾠ";
			teethCount -= 1;
		}
	}
	function babyteethSelect(event){
		var etc = event.target.className;
		var teeth_numer =  event.target.title;
		var text_value =  event.target.textContent;
		var teeth_hidden = document.querySelector('#teethNumberHiddenId'+text_value);
		var p_name = document.querySelector('#p_no').title
		
		if(teethCount > 0){
			swal ( "실패" ,  "성치와 동시에 입력할 수 없습니다." ,  "error" );
	  		return;
		}
		
		if(!p_name){
			swal ( "실패" ,  "환자를 입력하세요." ,  "error" );
	  		return;
		}
		
		if(etc == 'col-1 babyteeth teethDeselect'){
			event.target.className = 'col-1 babyteeth teethSelect'
			teeth_hidden.value = teeth_numer;
			babyteethCount += 1;
		}else{
			event.target.className = 'col-1 babyteeth teethDeselect';
			teeth_hidden.value = "ﾠ";
			babyteethCount -= 1;
		}
	}
</script>


<script>
// 치아선택 초기화
function resetTeethSelect(num){
	teethCount = 0;
	babyteethCount = 0;

	var x = document.querySelectorAll(".teeth"); 
	var y = document.querySelectorAll(".teethHidden");
	var z = document.querySelectorAll(".piStrong");
	var o = document.querySelectorAll(".float-checkbox");
	var p = document.querySelectorAll(".babyteeth"); 
	var q = document.querySelectorAll(".babyteethHidden");
	
	for (var i = 0; i < x.length; i++) { 
		x[i].className = 'col-1 teeth teethDeselect';
	}
	
	for (var i = 0; i < y.length; i++) { 
		y[i].value = "ﾠ";
	}
	
	for (var i = 0; i < p.length; i++) { 
		p[i].className = 'col-1 babyteeth teethDeselect';
	}
	
	for (var i = 0; i < q.length; i++) { 
		q[i].value = "ﾠ";
	}
	
	
	if(num == 1){
		for (var i = 0; i < z.length; i++) { 
			z[i].className = '';
		}
		for (var i = 0; i < o.length; i++) { 
			o[i].checked = false;
		}
		document.querySelector("#diagnosisInnerText").innerHTML = '';
	}
	
};
</script>

<script>
// 치아 전체선택
function teethSelectAll(){
	if(babyteethCount > 0){
		swal ( "실패" ,  "유치와 동시에 입력할 수 없습니다." ,  "error" );
  		return;
	}
	
	teethCount = 32;
	
	var x = document.querySelectorAll(".teeth"); 
	var y = document.querySelectorAll(".teethHidden");
	
	for (var i = 0; i < x.length; i++) { 
		x[i].className = 'col-1 teeth teethSelect';
		y[i].value = x[i].title;
	}
	
};
</script>

<script>
// 치아 상,하악선택
function teethSelectUB(num){
	if(babyteethCount > 0){
		swal ( "실패" ,  "유치와 동시에 입력할 수 없습니다." ,  "error" );
  		return;
	}
	teethCount += 16;
	
	var teeth = 0
	var teethLength = 16
	
	if(num != 0){
		teeth = 16
		teethLength = 32
	}
	// 0 ~ 7
	// 8 ~ 15
	var x = document.querySelectorAll(".teeth"); 
	var y = document.querySelectorAll(".teethHidden");
	
	for (var i = teeth; i < teethLength; i++) { 
		x[i].className = 'col-1 teeth teethSelect';
		y[i].value = x[i].title;
	}
	
};
</script>

<script>
// 유치치아 상,하악선택
function babyteethSelectAll(num){
	if(teethCount > 0){
		swal ( "실패" ,  "성치와 동시에 입력할 수 없습니다." ,  "error" );
  		return;
	}
	babyteethCount += 10;
	
	var babyteeth = 0
	var babyteethLength = 10
	
	if(num != 0){
		babyteeth = 10
		babyteethLength = 20
	}
	// 0 ~ 7
	// 8 ~ 15
	var x = document.querySelectorAll(".babyteeth"); 
	var y = document.querySelectorAll(".babyteethHidden");
	
	for (var i = babyteeth; i < babyteethLength; i++) { 
		x[i].className = 'col-1 babyteeth teethSelect';
		y[i].value = x[i].title;
	}
	
};
</script>

<script>
	// 진료치아선택 이벤트
	let teethCountCure = 0;
	let babyteethCountCure = 0
	const teeth_selects_cure = document.querySelectorAll('.teeth-Cure');
	const babyteeth_selects_cure = document.querySelectorAll('.babyteeth-Cure');
	teeth_selects_cure.forEach((target) => target.addEventListener("click", teethSelectCure));
	babyteeth_selects_cure.forEach((target) => target.addEventListener("click", babyteethSelectCure));
	
	function teethSelectCure(event){
		var etc = event.target.className;
		var teeth_numer =  event.target.title;
		var text_value =  event.target.textContent;
		var teeth_hidden = document.querySelector('#cure-teethNumberHiddenId'+text_value);
		var p_name = document.querySelector('#p_no').title
		
		if(!p_name){
			swal ( "실패" ,  "환자를 입력하세요." ,  "error" );
	  		return;
		}
		
		if(babyteethCountCure > 0){
			swal ( "실패" ,  "유치와 동시에 입력할 수 없습니다." ,  "error" );
	  		return;
		}
		
		if(etc == 'col-1 teeth-Cure teethDeselect-Cure'){
			event.target.className = 'col-1 teeth-Cure teethSelect-Cure'
			teeth_hidden.value = teeth_numer;
			teethCountCure += 1;
		}else{
			event.target.className = 'col-1 teeth-Cure teethDeselect-Cure';
			teeth_hidden.value = "ﾠ";
			teethCountCure -= 1;
		}
	}
	function babyteethSelectCure(event){
		var etc = event.target.className;
		var teeth_numer =  event.target.title;
		var text_value =  event.target.textContent;
		var teeth_hidden = document.querySelector('#cure-teethNumberHiddenId'+text_value);
		var p_name = document.querySelector('#p_no').title
		
		if(teethCountCure > 0){
			swal ( "실패" ,  "성치와 동시에 입력할 수 없습니다." ,  "error" );
	  		return;
		}
		
		if(!p_name){
			swal ( "실패" ,  "환자를 입력하세요." ,  "error" );
	  		return;
		}
		
		if(etc == 'col-1 babyteeth-Cure teethDeselect-Cure'){
			event.target.className = 'col-1 babyteeth-Cure teethSelect-Cure'
			teeth_hidden.value = teeth_numer;
			babyteethCountCure += 1;
		}else{
			event.target.className = 'col-1 babyteeth-Cure teethDeselect-Cure';
			teeth_hidden.value = "ﾠ";
			babyteethCountCure -= 1;
		}
	}
</script>


<script>
// 진료 치아선택 초기화
function resetTeethSelectCure(num){
	teethCountCure = 0;
	babyteethCountCure = 0;

	var x = document.querySelectorAll(".teeth-Cure"); 
	var y = document.querySelectorAll(".teethHidden-Cure");
	var p = document.querySelectorAll(".babyteeth-Cure"); 
	var q = document.querySelectorAll(".babyteethHidden-Cure");
	var cureTextArea = document.querySelector("#textArea_byteLimit");
	
	for (var i = 0; i < x.length; i++) { 
		x[i].className = 'col-1 teeth-Cure teethDeselect-Cure';
	}
	
	for (var i = 0; i < y.length; i++) { 
		y[i].value = "ﾠ";
	}
	
	for (var i = 0; i < p.length; i++) { 
		p[i].className = 'col-1 babyteeth-Cure teethDeselect-Cure';
	}
	
	for (var i = 0; i < q.length; i++) { 
		q[i].value = "ﾠ";
	}
	
	
	if(num == 1){
		cureTextArea.value = '';
	}
	
};
</script>

<script>
// 진료치아 전체선택
function teethSelectAllCure(){
	
	if(babyteethCountCure > 0){
		swal ( "실패" ,  "유치와 동시에 입력할 수 없습니다." ,  "error" );
  		return;
	}
	
	teethCountCure = 32;
	
	var x = document.querySelectorAll(".teeth-Cure"); 
	var y = document.querySelectorAll(".teethHidden-Cure");
	
	for (var i = 0; i < x.length; i++) { 
		x[i].className = 'col-1 teeth-Cure teethSelect-Cure';
		y[i].value = x[i].title;
	}
	
};
</script>

<script>
// 치아 상,하악선택
function teethSelectUBCure(num){
	if(babyteethCountCure > 0){
		swal ( "실패" ,  "유치와 동시에 입력할 수 없습니다." ,  "error" );
  		return;
	}
	teethCountCure += 16;
	
	var teeth = 0
	var teethLength = 16
	
	if(num != 0){
		teeth = 16
		teethLength = 32
	}

	var x = document.querySelectorAll(".teeth-Cure"); 
	var y = document.querySelectorAll(".teethHidden-Cure");
	
	for (var i = teeth; i < teethLength; i++) { 
		x[i].className = 'col-1 teeth-Cure teethSelect-Cure';
		y[i].value = x[i].title;
	}
	
};
</script>

<script>
// 진료 유치치아 상,하악선택
function babyteethSelectAllCure(num){
	if(teethCountCure > 0){
		swal ( "실패" ,  "성치와 동시에 입력할 수 없습니다." ,  "error" );
  		return;
	}
	babyteethCountCure += 10;
	
	var babyteeth = 0
	var babyteethLength = 10
	
	if(num != 0){
		babyteeth = 10
		babyteethLength = 20
	}

	
	var x = document.querySelectorAll(".babyteeth-Cure"); 
	var y = document.querySelectorAll(".babyteethHidden-Cure");
	
	for (var i = babyteeth; i < babyteethLength; i++) { 
		x[i].className = 'col-1 babyteeth-Cure teethSelect-Cure';
		y[i].value = x[i].title;
	}
	
};
</script>









<script> //자주하는 진료  추가 및 삭제 펑션(클릭 이벤트) 

	var textList = [];
	var innerTextContent = document.querySelector('#diagnosisInnerText');
	
	function diagnosisbtn(num) {
		var strongColor = document.querySelector('#diagnosisbtn'+num);
		var strongText = strongColor.innerText;
		
		if ((strongColor.classList.contains("strong")) == false) {
			textList.push(strongText);
			innerTextContent.innerHTML = textList.join(" ");
			strongColor.classList.add("strong");
		} else {
			strongColor.classList.remove("strong");
			removeArrayElement(textList, strongText);
			innerTextContent.innerHTML = textList.join(" ");
		} 
	};

</script>

<script> //Pi 추가 및 삭제 펑션(클릭 이벤트) 
	var piTextList = [];
	var piInnerTextContent = document.querySelector('#diagnosisInnerText');
	
	function pibtn(num) {
		var piStrongColor = document.querySelector('#pibtn'+num);
		var piStrongText = piStrongColor.innerText;
		
		if ((piStrongColor.classList.contains("piStrong")) == false) {
			piTextList.push(piStrongText);
			piInnerTextContent.innerHTML = piTextList.join(" ");
			piStrongColor.classList.add("piStrong");
		} else {
			piStrongColor.classList.remove("piStrong");
			removeArrayElement(piTextList, piStrongText);
			piInnerTextContent.innerHTML = piTextList.join(" ");
		} 
	};

</script>

<script> //자주하는 진료 삭제 펑션(배열 특정값 삭제)

	function removeArrayElement(array, n) {
	
		var index = array.indexOf(n);
		if (index > -1) {
			array.splice(index, 1);
		}
  		return array;
	}

</script>

<script type="text/javascript">
	function diagnosisRegist() {
		
		var popupWidth = 800;
		var popupHeight = 800;

		var popupX = (document.body.offsetWidth / 2) - (800 / 2);
		// 만들 팝업창 좌우 크기의 1/2 만큼 보정값으로 빼주었음

		var popupY= (window.screen.height / 2) - (800 / 2);
		// 만들 팝업창 상하 크기의 1/2 만큼 보정값으로 빼주었음
		
		
		window.open('diagnosisRegist','diagnosisRegist','height=800, width=1200, left='+ popupX + ', top='+ popupY);
	} 
</script>


<script> /** tab */

let tab; 
let tabContent;


tabContent=document.getElementsByClassName('tabContent');
tab=document.getElementsByClassName('tab');
hideTabsContent(1);

document.getElementById('tabs').onclick= function (event) {
    var target=event.target;
    if (target.className=='tab') {
       for (var i=0; i<tab.length; i++) {
           if (target == tab[i]) {
               showTabsContent(i);
               break;
           }
       }
    }
}

function hideTabsContent(a) {
    for (var i=a; i<tabContent.length; i++) {
        tabContent[i].classList.remove('show');
        tabContent[i].classList.add("hide");
        tab[i].classList.remove('whiteborder');
    }
}

function showTabsContent(b){
	var cureTextArea = document.querySelector("#textArea_byteLimit");
	var diagnosisInnerText = document.querySelector("#diagnosisInnerText");
	
	if(teethCount > 0 || babyteethCount > 0 ||
			teethCountCure > 0 || babyteethCountCure > 0 ||
			cureTextArea.value || diagnosisInnerText.innerHTML){
		swal({
			  title: "탭 이동시 기록이 초기화됩니다.",
			  text: "이동하시겠습니까?",
			  icon: "warning",
			  buttons: true,
			  dangerMode: true,
			})
			.then((willDelete) => {
			  if (!willDelete) {
			    swal("취소되었습니다.");
			    return;
			  } else {
				resetTreatment();
				resetTeethSelectCure(1);
				resetTeethSelect(1);
				moveToTab(b);
			  }
			});
	}else{
		moveToTab(b);
	}
};
function moveToTab(b){
    if (tabContent[b].classList.contains('hide')) {
        hideTabsContent(0);
        tab[b].classList.add('whiteborder');
        tabContent[b].classList.remove('hide');
        tabContent[b].classList.add('show');
    }
};

function resetTreatment(){
	
	str = '';
	str += '<tr>';
	str +='<th class="text-center" style="border: none;" colspan="4">진료를 선택해 주십시오.</th>';
	str +='</tr>'
	
	$("#treatmentDetail").html(str);
	treatmentDetailCount = 0;
}
</script>

<script> /** innertab */

let innertab; 
let innertabContent;


innertabContent=document.getElementsByClassName('innertabContent');
innertab=document.getElementsByClassName('innertab');
hideInnerTabsContent(1);

document.getElementById('innertabs').onclick= function (event) {
    var target=event.target;
    if (target.className=='innertab') {
       for (var i=0; i<innertab.length; i++) {
           if (target == innertab[i]) {
        	   showInnerTabsContent(i);
               break;
           }
       }
    }
}

function hideInnerTabsContent(a) {
    for (var i=a; i<innertabContent.length; i++) {
    	innertabContent[i].classList.remove('show');
    	innertabContent[i].classList.add("hide");
    	innertab[i].classList.remove('innerwhiteborder');
    }
}

function showInnerTabsContent(b){
	var cureTextArea = document.querySelector("#textArea_byteLimit");
	var diagnosisInnerText = document.querySelector("#diagnosisInnerText");
	
	moveToInnerTab(b);
};

function moveToInnerTab(b){
    if (innertabContent[b].classList.contains('hide')) {
    	hideInnerTabsContent(0);
    	innertab[b].classList.add('innerwhiteborder');
    	innertabContent[b].classList.remove('hide');
    	innertabContent[b].classList.add('show');
    }
};
</script>


<script> /** textarea 및 글자수 제한*/

function fn_checkByte(obj){
    const maxByte = 300; //최대 300바이트
    const text_val = obj.value; //입력한 문자
    const text_len = text_val.length; //입력한 문자수
    
    let totalByte=0;
    for(let i=0; i<text_len; i++){
    	const each_char = text_val.charAt(i);
        const uni_char = escape(each_char); //유니코드 형식으로 변환
        if(uni_char.length>4){
        	// 한글 : 2Byte
            totalByte += 2;
        }else{
        	// 영문,숫자,특수문자 : 1Byte
            totalByte += 1;
        }
    }
    
    if(totalByte>maxByte){
    	alert('최대 300Byte까지만 입력가능합니다.');
        	document.getElementById("nowByte").innerText = totalByte;
            document.getElementById("nowByte").style.color = "red";
        }else{
        	document.getElementById("nowByte").innerText = totalByte;
            document.getElementById("nowByte").style.color = "green";
        }
}

</script>

<script>
	
/** 처방전 작성일 */
	document.getElementById('selectDate').value = new Date().toISOString().substring(0, 10);

	
/** 처방전 유효기간 */
	
	var today = new Date();
	const expDrug = new Date(today);
	expDrug.setDate(today.getDate() + 45);  //예시는 45일 후
	document.getElementById('selectDate2').value = expDrug.toISOString().substring(0, 10);
			
</script>

<script>/** 처방전 등록 창*/
	// 팝업 열기
	function openRegistDiagnosis(){
		if(teethCount == 0 && babyteethCount == 0){
			swal ( "실패" ,  "치아를 선택하십시오." ,  "error" );
	  		return;
		}
		
		
		if(piInnerTextContent.innerHTML == ''){
			swal ( "실패" ,  "PI를 입력하십시오." ,  "error" );
	  		return;
		}
		
		chartPiInsert();
		
		
	    document.querySelector('#registWindow').style.display = 'block';
		return;
	}
	// pi전송
	function btnYes(){
		
	    var form = $('form[role="piForm"]');
		form.attr({"method":"post",
		     	   "action":"piRegist"
		   		  });
		form.submit();
	}
	function btnClose(){
		document.querySelector('#registWindow').style.display  = 'none';
	}
	//임시저장
	function tempSaveBtn(){
		alert("본 처방전이 임시저장 되었습니다. ")
	}

	
</script>
	
<script>/** 임시저장 불러오기 모달창*/
/* 	
	document.querySelector("#openTempSaveLoad").onclick = function(){
		const modal = document.getElementById("saveLoadWindow");
	    modal.style.display = "flex";   
		
		const closeBtn = modal.querySelector(".close-area");
		closeBtn.addEventListener("click", e => {
		    modal.style.display = "none";
		})
		    
		const closeBtn2 = modal.querySelector(".closeWindowModal");
		closeBtn2.addEventListener("click", e => {
		    modal.style.display = "none";
		})
		    
		modal.addEventListener("click", e => {
		    const evTarget = e.target;
		    if(evTarget.classList.contains("modal-overlay")) {
		        modal.style.display = "none";
		    }
		})
	};
	 */
</script>


<script>/** 모달창 */

//모달창(의약품 검색/추가)
document.querySelector("#btn-modal1").onclick = function(){
	
	isPatient();
	
	//특정 버튼을 누르면 모달창이 켜지게 하기
	const modal = document.getElementById("modal1");
    modal.style.display = "flex";
    
	var chartScrollInnerModal = document.querySelector('#chartScrollInnerModal');
	chartScrollInnerModal.scrollTop = chartScrollInnerModal.scrollHeight;
	
	//모달창의 클로즈(x) 버튼을 누르면 모달창이 꺼지게 하기
	const closeBtn = modal.querySelector(".close-area");
	closeBtn.addEventListener("click", e => {
	    modal.style.display = "none";
	    drugSearchReset();
	})
	    
	//모달창 바깥 영역을 클릭하면 모달창이 꺼지게 하기
	modal.addEventListener("click", e => {
	    const evTarget = e.target;
	    if(evTarget.classList.contains("modal-overlay")) {
	        modal.style.display = "none";
	        drugSearchReset();
	    }
	})
};


//모달창(질병코드 검색)
document.querySelector("#btn-modal2").onclick = function(){
	isPatient();
	
	isTeethCountCure();
	
	var dzDetail = document.querySelector('#dzDetail')
	
	if(dzDetail.firstElementChild){
		swal({
			  title: "상병목록이 존재합니다.",
			  text: "변경하시겠습니까?",
			  icon: "warning",
			  buttons: true,
			  dangerMode: true,
			})
			.then((willDelete) => {
			  if (!willDelete) {
			    return;
			  }else{
				  addDzList();
			  }
			});
	}else{
		addDzList();
	}
}
function addDzList(){
	
	const modal = document.getElementById("modal2");
    modal.style.display = "flex";   
	
	const closeBtn = modal.querySelector(".close-area");
	closeBtn.addEventListener("click", e => {
	    modal.style.display = "none";
	    dzSearchReset();
	})
	    
	modal.addEventListener("click", e => {
	    const evTarget = e.target;
	    if(evTarget.classList.contains("modal-overlay")) {
	        modal.style.display = "none";
	        dzSearchReset();
	    }
	})
};

//모달창(처방목록 크게보기)
// document.querySelector("#btn-modal3").onclick = function(){
// 	const modal = document.getElementById("modal3");
//     modal.style.display = "flex";   
	
// 	const closeBtn = modal.querySelector(".close-area");
// 	closeBtn.addEventListener("click", e => {
// 	    modal.style.display = "none";
// 	})
	    
// 	modal.addEventListener("click", e => {
// 	    const evTarget = e.target;
// 	    if(evTarget.classList.contains("modal-overlay")) {
// 	        modal.style.display = "none";
// 	    }
// 	})
// };


//모달창(선택된 진료 보기)
// document.querySelector("#selectDiagnosisView").onclick = function(){
// 	const modal = document.getElementById("selectDiagnosisWindow");
//     modal.style.display = "flex";   
	
// 	const closeBtn = modal.querySelector(".close-area");
// 	closeBtn.addEventListener("click", e => {
// 	    modal.style.display = "none";
// 	})
	    
// 	modal.addEventListener("click", e => {
// 	    const evTarget = e.target;
// 	    if(evTarget.classList.contains("modal-overlay")) {
// 	        modal.style.display = "none";
// 	    }
// 	})
// };


</script> 

<script> /** 검색된 진료 추가 및 삭제 펑션(클릭 이벤트)*/
function indexOfRow(x) {
	trRowIndex = x.rowIndex-1;
	  
	 	var nts1 = document.querySelectorAll(".normalTrSel1");
	 	var sdt1 = document.querySelectorAll(".searchDiagnosisInnerText1");
	
		var searchInnerText = sdt1[trRowIndex].innerText; 
		if (nts1[trRowIndex].classList.contains("normalTrSelChange1") == false){
			nts1[trRowIndex].classList.add("normalTrSelChange1");
				
			textList.push(searchInnerText);
			innerTextContent.innerHTML = textList.join(",\u00a0\u00a0");
				
		} else if(nts1[trRowIndex].classList.contains("normalTrSelChange1") == true){
			nts1[trRowIndex].classList.remove("normalTrSelChange1");
			
			removeArrayElement(textList, searchInnerText);
			innerTextContent.innerHTML = textList.join(",\u00a0\u00a0"); 
		}
  
}

</script>

<script>
// 환자 미입력 alert
function isPatient(){
	if(!p_name){
		swal ( "실패" ,  "환자를 입력하세요." ,  "error" );
			throw "stop";
	}
}

// 진료치아 미입력 alert
function isTeethCountCure(){
	if(teethCountCure == 0 && babyteethCountCure == 0){
		swal ( "실패" ,  "치아를 선택하세요." ,  "error" );
			throw "stop";
	}
}

// PI치아 미입력 alert
function isTeethCount(){
	if(teethCount == 0 && babyteethCount == 0){
		swal ( "실패" ,  "치아를 선택하십시오." ,  "error" );
  		return;
	}
}
</script>


<script>
// 	// 비동기 진료검색
// 	function dzListByKeyword(){
// 		  var keyword = document.getElementById('dzKeyword').value;
// 		  var searchType = document.getElementById('dzSearchType').value;
		  
// 		  	var d =""
// 				d += '<tr style="height:30vh"><td class="text-center" colspan="7">';
// 				d += '<div class="sk-three-bounce">';
// 				d += '<div class="sk-child sk-bounce1"></div>';
// 				d += '<div class="sk-child sk-bounce2"></div>';
// 				d += '<div class="sk-child sk-bounce3"></div>';
// 				d += '</div>';
// 				d += '</td></tr>';
// 				$("#symTbody").html(d);
	
// 		  $.ajax({
// 			  url : "getDiseasesListByKeyword",
// 			  type : "post",
// 			  data : {"keyword": keyword,"searchType":searchType},
// 			  success : function(data){
// 				  var s = '';
// 				  $("#dzTbody").html(s);
// 				  if(data < 1){
// 					  s = `<tr><td class="text-center" colspan="7"><strong>검색된 내용이 없습니다.</strong></td></tr>`;
// 					  $("#dzTbody").html(s);
// 					  return;
// 				  }else{
// 					$.each(data, function(index,item){
// // 							s += '<tr class="normalTrSel1" onclick="indexOfRow(this)">';
// // 								s += '<td class="normalTd" style="text-align:center;">'+(index+1)+'</td>';
// // 								s += '<td class="normalTd" style="text-align:center;">'+item.dzCode+'</td>';
// // 								s += '<td class="normalTd" style="text-align:center;">'+item.dzNcode+'</td>';
// // 								s += '<td class="searchDiagnosisInnerText1 normalTd">'+item.dzKo+'</td>';
// // 								s += '<td class="normalTd">'+item.symEn+'</td>';
// // 								s += '<td class="normalTd"style="text-align:center;">'+item.dzUmls+'</td>';
// // 								s += '<td class="normalTd"style="text-align:center;">'+item.dzKcd+'</td>';
// // 							s += '</tr>';
// 					})
// 					$("#dzTbody").html(s);
// 				  }
// 			  },
// 			  error : function (jqXHR, textStatus, errorThrown){
// 				alert("에러코드 : "+textStatus);  
// 			  }
// 		  })
// 	};
</script>

<script>
	// 비동기 의약품검색
	function drugListByKeyword(){
	 	var keyword = document.getElementById('drugKeyword').value;
	  	var searchType = document.getElementById('drugSearchType').value;
	  	
	  	if(keyword == ''){
	  		swal ( "실패" ,  "검색어를 입력하세요." ,  "error" );
	  		return;
	  	}
	  	
	  	var d =""
		d += '<tr style="height:30vh"><td class="text-center" colspan="6">';
		d += '<div class="sk-three-bounce">';
		d += '<div class="sk-child sk-bounce1"></div>';
		d += '<div class="sk-child sk-bounce2"></div>';
		d += '<div class="sk-child sk-bounce3"></div>';
		d += '</div>';
		d += '</td></tr>';
		$("#drugSearchList").html(d);
		  $.ajax({
			  url : "getDrugListByKeyword",
			  type : "post",
			  data : {"keyword": keyword,"searchType":searchType},
			  success : function(data){
				  var s = '';
				  $("#drugSearchList").html(s);
				  if(data < 1){
					  s = `<tr><td class="text-center" colspan="6"><strong>검색된 내용이 없습니다.</strong></td></tr>`;
					  $("#drugSearchList").html(s);
					  return;
				  }else{
					$.each(data, function(index,item){
						s += '<tr>';
						s += '<td class="text-center drugNoSearched text-left" title="'+item.drugNo+'">'+item.drugNo+'</td>'
						s += '<td class="pl-3 drugNameSearched" title="'+item.drugName+'">'+item.drugName+'</td>'
						s += '<td class="pl-3 drugMakerSearched" title="'+item.drugMaker+'">'+item.drugMaker+'</td>'
						s += '<td class="normalTd drugClassifySearched text-center" title="'+item.drugClassify+'">'+item.drugClassify+'</td>'
						s += '<td class="normalTd drugEtcSearched text-center" title="'+item.drugEtc+'">'+item.drugEtc+'</td>'
						s += '<td class="drugAddBtn text-center"><button class="btn btn-primary p-2 drugAddClick">추가</button></td>'
						s += '</tr>';
					})
					$("#drugSearchList").html(s);
					
					var drugAddClick= document.querySelectorAll('.drugAddClick')
					drugAddClick.forEach((target) => target.addEventListener("click", drugAdd));
				  }
			  },
			  error : function (jqXHR, textStatus, errorThrown){
				alert("에러코드 : "+textStatus);  
			  }
		  })
	};
</script>

<script>
	function drugAdd(){
		var drugNode = event.target.parentNode.parentNode;
		
		var drugNoSearched = drugNode.querySelector('.drugNoSearched').textContent;
		var drugNameSearched = drugNode.querySelector('.drugNameSearched').textContent;
		var drugMakerSearched = drugNode.querySelector('.drugMakerSearched').textContent;
		var drugClassifySearched = drugNode.querySelector('.drugClassifySearched').textContent;
		var drugEtcSearched = drugNode.querySelector('.drugEtcSearched').textContent;
		
		var str = ''
			str += '<tr>';
			str += '<td class="text-center drugNoSelected" >'+drugNoSearched+'</td>'
			str += '<td class="pl-3 drugNameSelected">'+drugNameSearched+'</td>'
			str += '<td class="normalTd drugMakerSelected">'+drugMakerSearched+'</td>'
			str += '<td class="normalTd drugClassifySelected text-center">'+drugClassifySearched+'</td>'
			str += '<td class="normalTd drugEtcSelected text-center">'+drugEtcSearched+'</td>'
			str += '<td class="drugRemoveBtn"><button class="btn btn-primary p-2" onclick="drugRemove()">삭제</button></td>';
			str += '</tr>';
		document.querySelector('#drugSelectedList').innerHTML += str;
		
// 		newDzNode.querySelector('.dzKoName').appendChild(str);
	}
	
	function drugRemove(){
		event.target.parentNode.parentNode.remove();
	}
	
	
</script>

<script>
	function serchDrug(){
		if(window.event.keyCode == 13){
			drugListByKeyword();
		}
	}
</script>
<script>
// 	function getPatient(){
// 		var pKeyword = document.querySelector('#patientKeyword').value
// 		var iframValue = "/chart/list";
// 		var url = iframValue+'?pNo='+pKeyword;
// 		if(pKeyword == ''){
// 			alert("환자정보를 입력하세요");
// 			return;
// 		}
		
// 		parent.document.querySelector('iframe[name="ifr"]').setAttribute("src", url);
// // 		alert("검색접근");
// 	}
</script>
<script>
	function chageToChart(pno){
		preloaderCustomRun()
		
		var iframValue = "/chart/list";
		var url = iframValue+'?pNo='+pno;
		parent.document.querySelector('iframe[name="ifr"]').setAttribute("src", url);
	}
</script>
<script>
	function getPatientByEnter(){
		if(window.event.keyCode == 13){
			getPatient();
		}
	}
</script>
<script>
	var chartScroll = document.querySelector('#chartScroll');
	chartScroll.scrollTop = chartScroll.scrollHeight;
</script>

<script>
	function chartPiInsert(){
		var ur = ""
		var ul = ""
		var br = ""
		var bl = ""
		
		if(babyteethCountCure > 0 || babyteethCount > 0){
			<c:forEach begin="5" end="8" step="1" var="i">
					<c:set var="reverse" value="6"/>
					<c:choose>
						<c:when test="${i eq 5 }">
							<c:forEach begin="1" end="5" var="j">
								<c:set value="${i}${reverse - j}" var="numStr"/>
								ul += document.querySelector('#teethNumberHiddenId${numStr}').value
							</c:forEach>
						</c:when>
						<c:when test="${i eq 6 }">
							<c:forEach begin="1" end="5" var="j">
								<c:set value="${i}${j}" var="numStr"/>
								ur += document.querySelector('#teethNumberHiddenId${numStr}').value
							</c:forEach>
						</c:when>
						<c:when test="${i eq 7 }">
							<c:forEach begin="1" end="5" var="j">
								<c:set value="${i}${j}" var="numStr"/>
								br += document.querySelector('#teethNumberHiddenId${numStr}').value
							</c:forEach>
						</c:when>
						<c:otherwise>
							<c:forEach begin="1" end="5" var="j">
								<c:set value="${i}${reverse - j}" var="numStr"/>
								bl += document.querySelector('#teethNumberHiddenId${numStr}').value
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</c:forEach>
		}else{
			<c:forEach begin="1" end="4" step="1" var="i">
					<c:set var="reverse" value="9"/>
					<c:choose>
						<c:when test="${i eq 1 }">
							<c:forEach begin="1" end="8" var="j">
								<c:set value="${i}${reverse - j}" var="numStr"/>
								ul += document.querySelector('#teethNumberHiddenId${numStr}').value
							</c:forEach>
						</c:when>
						<c:when test="${i eq 2 }">
							<c:forEach begin="1" end="8" var="j">
								<c:set value="${i}${j}" var="numStr"/>
								ur += document.querySelector('#teethNumberHiddenId${numStr}').value
							</c:forEach>
						</c:when>
						<c:when test="${i eq 3 }">
							<c:forEach begin="1" end="8" var="j">
								<c:set value="${i}${j}" var="numStr"/>
								br += document.querySelector('#teethNumberHiddenId${numStr}').value
							</c:forEach>
						</c:when>
						<c:otherwise>
							<c:forEach begin="1" end="8" var="j">
								<c:set value="${i}${reverse - j}" var="numStr"/>
								bl += document.querySelector('#teethNumberHiddenId${numStr}').value
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</c:forEach>
		}
			
			document.querySelector('#ulInput').value = ul;
			document.querySelector('#urInput').value = ur;
			document.querySelector('#blInput').value = bl;
			document.querySelector('#brInput').value = br;
			
			var diagnosisInnerText = document.querySelector('#diagnosisInnerText').textContent;
			
			document.querySelector('#piInputText').textContent = diagnosisInnerText;
			document.querySelector('#piInputHiddenText').value = diagnosisInnerText;
	}
	
	function chartCureInsert(){
		//수정중
		var ur = ""
		var ul = ""
		var br = ""
		var bl = ""
		
		if(babyteethCountCure > 0 || babyteethCount > 0){
			<c:forEach begin="5" end="8" step="1" var="i">
					<c:set var="reverse" value="6"/>
					<c:choose>
						<c:when test="${i eq 5 }">
							<c:forEach begin="1" end="5" var="j">
								<c:set value="${i}${reverse - j}" var="numStr"/>
								ul += document.querySelector('#cure-teethNumberHiddenId${numStr}').value
							</c:forEach>
						</c:when>
						<c:when test="${i eq 6 }">
							<c:forEach begin="1" end="5" var="j">
								<c:set value="${i}${j}" var="numStr"/>
								ur += document.querySelector('#cure-teethNumberHiddenId${numStr}').value
							</c:forEach>
						</c:when>
						<c:when test="${i eq 7 }">
							<c:forEach begin="1" end="5" var="j">
								<c:set value="${i}${j}" var="numStr"/>
								br += document.querySelector('#cure-teethNumberHiddenId${numStr}').value
							</c:forEach>
						</c:when>
						<c:otherwise>
							<c:forEach begin="1" end="5" var="j">
								<c:set value="${i}${reverse - j}" var="numStr"/>
								bl += document.querySelector('#cure-teethNumberHiddenId${numStr}').value
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</c:forEach>
		}else{
			<c:forEach begin="1" end="4" step="1" var="i">
					<c:set var="reverse" value="9"/>
					<c:choose>
						<c:when test="${i eq 1 }">
							<c:forEach begin="1" end="8" var="j">
								<c:set value="${i}${reverse - j}" var="numStr"/>
								ul += document.querySelector('#cure-teethNumberHiddenId${numStr}').value
							</c:forEach>
						</c:when>
						<c:when test="${i eq 2 }">
							<c:forEach begin="1" end="8" var="j">
								<c:set value="${i}${j}" var="numStr"/>
								ur += document.querySelector('#cure-teethNumberHiddenId${numStr}').value
							</c:forEach>
						</c:when>
						<c:when test="${i eq 3 }">
							<c:forEach begin="1" end="8" var="j">
								<c:set value="${i}${j}" var="numStr"/>
								br += document.querySelector('#cure-teethNumberHiddenId${numStr}').value
							</c:forEach>
						</c:when>
						<c:otherwise>
							<c:forEach begin="1" end="8" var="j">
								<c:set value="${i}${reverse - j}" var="numStr"/>
								bl += document.querySelector('#cure-teethNumberHiddenId${numStr}').value
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</c:forEach>
		}
			
			document.querySelector('#ulInput-cure').value = ul;
			document.querySelector('#urInput-cure').value = ur;
			document.querySelector('#blInput-cure').value = bl;
			document.querySelector('#brInput-cure').value = br;
	}
</script>


<c:if test="${from eq 'regist'}" >
	<script>
	window.onload = function(){
		swal({
			  title: "성공",
			  text: "PI가 입력되었습니다.",
			  icon: "success",
			  button: "확인",
		})
		.then((willDelete) => {
		  if (willDelete) {
			  window.close();
			  window.opener.parent.location.reload(true);
		 
		  }
		});
		
	}
	</script>
</c:if>
<c:if test="${from eq 'cureRegist'}" >
	<script>
	window.onload = function(){
		swal({
			  title: "성공",
			  text: "진료가 입력되었습니다.",
			  icon: "success",
			  button: "확인",
		})
		.then((willDelete) => {
		  if (willDelete) {
			  window.close();
			  window.opener.parent.location.reload(true);
		 
		  }
		});
		
	}
	</script>
</c:if>
<c:if test="${from eq 'prescribedRegist'}" >
	<script>
	window.onload = function(){
		swal({
			  title: "성공",
			  text: "원외 처방전이 입력되었습니다.",
			  icon: "success",
			  button: "확인",
		})
		.then((willDelete) => {
		  if (willDelete) {
			  window.close();
			  window.opener.parent.location.reload(true);
		  }
		});
		
	}
	</script>
</c:if>


<!-- pdf 저장 -->

<script>
var today = new Date();  
var year = today.getFullYear(); // 년도
var month = today.getMonth() + 1;  // 월
var date = today.getDate();  // 날짜

 function print(printArea)
{
	 var tablePno= document.getElementById("tablePno").innerText;
	 var tablePName = document.getElementById("tablePName").innerText;
	 var tableRegNo = document.getElementById("tableRegNo").innerText;
	 var tableDoc= document.getElementById("tableDoc").innerText;
	 var tableCode = document.getElementById("tableCode").innerText;
	 var tableUse = document.getElementById("tableUse");
	 var tableContent = document.getElementById("tableContent").innerText;
	 $( "#tableRDate" ).datepicker({ 
	        onSelect: function() { 
	            var tableRDate = $.datepicker.formatDate("yymmdd",$("#tableRDate").datepicker("getDate")); 
	        }
	    });                   


win = window.open(); 

self.focus(); 


win.document.open();

win.document.write('<html><head><title>dfdfdfdf</title><style>');

win.document.write('body, td {font-falmily: Verdana; font-size: 10pt;}');

win.document.write('</style></head><body>');




win.document.write('<table border="1" width="100%"><tr><th colspan="9" height="50" style="text-align:center;"><font size="5">진  단  서</font></th></tr><tr><th bgcolor="D5D5D5" style="text-align:center;">차트번호</th><th colspan="2" bgcolor="D5D5D5" style="text-align:center;">이 름</th><th bgcolor="D5D5D5" style="text-align:center;">주민번호</th><th bgcolor="D5D5D5" style="text-align:center;">발행일자</th><th bgcolor="D5D5D5" style="text-align:center;">발급의사</th><th bgcolor="D5D5D5" style="text-align:center;">문서번호</th></tr><tr><td align="center">'+tablePno+'</td><td align="center" colspan="2">'+tablePName+'</td><td align="center" >'+tableRegNo+'</td><td align="center" >'+tableRDate+'</td><td align="center">'+tableDoc+'</td>	<td align="center" id="tableCode" >'+tableCode+'</td></tr><tr height="10"></tr><tr><th width="10%" bgcolor="D5D5D5" style="text-align:center;">용도</th><td colspan="6">'+tableUse.options[tableUse.selectedIndex].value+'</td><tr height="10"></tr><tr height="10"></tr></table><table border="1" width="100%"><tr><th rowspan="6" width = "16%"  height="150"  bgcolor="D5D5D5" style="text-align:center;">상명명<br><br>상명부위</th></tr><tr><th colspan="2" width = "42%" height="30"  bgcolor="D5D5D5" style="text-align:center;">상명명</th><th colspan="2" width = "42%" height="30"  bgcolor="D5D5D5" style="text-align:center;">부위</th></tr><tr><td colspan="2" align="center"></td><td colspan="2" align="center"></td></tr><tr><td colspan="2" align="center"></td><td colspan="2" align="center"></td></tr><tr><td colspan="2" align="center"></td><td colspan="2" align="center"></td></tr><tr><td colspan="2" align="center"></td><td colspan="2" align="center"></td></tr><tr height="10"></tr><tr><th width="10%" bgcolor="D5D5D5" style="text-align:center;">치료내용<br>및<br>향후치료에<br>대한 소견</th><td colspan="4"><textarea id="story" name="story" rows="5" cols="33" style="resize: none; width: 100%;">'+tableContent+'</textarea></td></tr></table>');
win.document.write('<table border="1" width="100%"><tr><td colspan="6"><br><p style = "text-align:center" >위 기재 사항은 사실과 틀림이 없습니다. </p><br/><br/><p style = "text-align:center" >'+year+'년&nbsp;'+month+'월&nbsp;'+date+'일 </p><p style = "text-align:center" >의료기관 명칭 : 대덕치과의원 </p><p style = "text-align:center" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;주소 : 대전광역시 중구 계룡로 846   </p><p style = "text-align:center" >전화번호 : 042)283-1111 </p><p style = "text-align:center" >담당의: 박의사</p><br/><br/><p style = "text-align:right" >(인)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><br></td></tr></table> ');

win.document.write('<div style="margin-left:630; margin-top:-70;"><img src="<%=request.getContextPath()%>/resources/images/stamp.png"  width="50" height="50" alt="모나리자" ></div>');

win.document.write('</body></html>');

win.document.close();

win.print();

win.close();

}

 
</script>

<script>
	let treatmentDetailCount = 0; 
	let p_name = document.querySelector('#p_no').title
	// 진료상세 
	// tlcCode : 진료대분류코드
	// tscCode : 진료소분류코드
	function clickTreatment(tlcCode,tscCode,tlNeedTeeth){
		
		document.getElementById("modal3").style.display = "none";
		
		searchTreatmentReset();
		
		var tlTitle = event.target.textContent;

		isPatient()
		
		if(tlNeedTeeth != 0){
			isTeethCountCure()
		}
		
		
		if(treatmentDetailCount > 0){
			swal({
				  title: "진료 변경시 처치목록이 초기화됩니다.",
				  text: "변경하시겠습니까?",
				  icon: "warning",
				  buttons: true,
				  dangerMode: true,
				})
				.then((willDelete) => {
				  if (!willDelete) {
				    return;
				  }else{
					  getTreatmentDetail(tlcCode,tscCode,tlTitle);
				  }
				});
		}else{
			getTreatmentDetail(tlcCode,tscCode,tlTitle);
		}
	}
	
	// 진료상세 비동기처리
	function getTreatmentDetail(tlcCode,tscCode,tlTitle){
		
		//클릭 버튼의 텍스트
		var data = {"tlTitle": tlTitle,
				    "tlcCode": tlcCode,
				    "tscCode": tscCode,}
		//비동기 처리
		$.ajax({
			url : "getTretment",
			type : "post",
			dataType : "json",
			data : data,
			success : function(data){
				var str = '';
				$.each(data, function(index,item){
					
					str += '<tr>';
					if(item.tcName == '비급여'){
						str += '<td class="text-center" style="color:red;">'+item.tcName+'</td>'
					}else{
						str += '<td class="text-center">'+item.tcName+'</td>'
					}
					str += '<td class="text-left" title="'+item.tlName+'">'+item.tlName+'</td>'
					str += '<input type="hidden" class="tlHiddenInput" value="'+item.tlNumber+'">'
					str += `<td><input class="tlCountForPrice text-right" type="number" value="`+item.tlCount+`" style="border: none; -webkit-appearance: none; margin: 0; font-size: 12px; width: 100%;"></td>`
					if(item.tcName == '비급여'){
						str += `<td><input class="tlPrice text-right" type="number" value="`+item.tlPrice+`" style="border: none; -webkit-appearance: none; margin: 0; font-size: 12px; width: 100%;"></td>`
					}else{
						str += `<td><input class="tlPrice text-right" readonly type="number" value="`+item.tlPrice+`" style="border: none; -webkit-appearance: none; margin: 0; font-size: 12px; width: 100%;"></td>`
					}
					str += '</tr>';
				})
				
		 		$("#treatmentDetail").html(str);
				treatmentDetailCount += 1;
			},
			error : function(){
		 		alert("실패")
			}
			})
	}
</script>

<%-- 새 문서 발급 --%>
<script>
function document1() {
	isPatient()
	window.open('/document/registForm?pNo='+p_name+'&&kind=0','문서발급','height=700, width=670');
}	
function document2() {
	isPatient()
	window.open('/document/registForm?pNo='+p_name+'&&kind=1','문서발급','height=700, width=670');
}	
function document3() {
	isPatient()
	window.open('/document/registForm?pNo='+p_name+'&&kind=2','문서발급','height=700, width=670');
}	
function document4() {
	isPatient()
	window.open('/document/registForm?pNo='+p_name+'&&kind=3','문서발급','height=700, width=670');
}	
	
</script>

<%--문서발급 비동기 처리 --%>
<script>
window.list =  function (){  
var b = document.querySelector('#p_no').title


	 $.ajax({
		url:"<%=request.getContextPath()%>/document/getDocumentPnoList",
		type:"get",
		data: {docPno: b},
		dataType:"json",
		success: ajaxHtml,

		error:function(){alert("error");
		}
	});
 }



function ajaxHtml(data){
		var html='	<table class="table table-bordered" style="margin: auto;  text-align: center;">';
		html+='<thead class="thead">';
		html+='<tr class="userListTable"  style="color: white">';
		html+='<th scope="col" style="width:20%">문서번호</th>';
		html+='<th scope="col" style="width:30%">문서종류</th>';
		html+='<th scope="col" style="width:20%">문서작성일</th>';
		html+='<th scope="col" style="width:30%">문서발급용도</th>';
		html+="</tr>";
		html+="</thead>";

		$.each(data.bookingDateList, (index, doc)=>{
			var docUseName = ["미입력","보험회사 제출용","직장(회사) 제출용","학교 제출용","군부대 제출용","경찰서 제출용","법원 제출용","진료 의뢰용"];
			var useName = docUseName[doc.docUse];      
			var docKindName = ["진단서", "소견서", "치료 계획서", "진료/수술확인서"];
			var kindName = docKindName[doc.docKind];   
			
		 	html+="<tr onclick='detailDocument("+doc.docCode+");' id='abc'>";
	  		html+="<td>"+doc.docCode+"</td>";
	  		html+="<td>"+useName+"</td>";
	  		html+="<td>"+moment(doc.docRegDate).format("YYYY-MM-DD")+"</td>"; 
	  		html+="<td>"+kindName+"</td>";
	  		html+="</tr>";   	
		})

		html+="</table>";	
		$("#ajaxBookList").html(html);
	}

</script>
<%-- 문서발급 상세보기 --%>
<script>
function detailDocument(data){
	window.open('/document/detailForm?docCode='+data,'문서상세','height=700, width=670');
}
</script>

<script>
function dzSearchGoKeyup(){
	if(window.event.keyCode == 13){
		dzSearchGo();
	}
}
function dzSearchGo(){
	var searchType = document.querySelector('#dzSearchType').value
	var searchKeyword = document.querySelector('#dzSearchKeyword').value
	var data = {
		"searchType":searchType,
		"keyword":searchKeyword
		}
	
  	var d =""
		d += '<tr style="height:49vh"><td class="text-center" colspan="4">';
		d += '<div class="sk-three-bounce">';
		d += '<div class="sk-child sk-bounce1"></div>';
		d += '<div class="sk-child sk-bounce2"></div>';
		d += '<div class="sk-child sk-bounce3"></div>';
		d += '</div>';
		d += '</td></tr>';
		$("#dzSearchList").html(d);
	
	 $.ajax({
			url : "getDiseasesListByKeyword",
			type : "post",
			dataType : "json",
			data : data,
			success : function(data){
				var str = "";
				if(data < 1){
					str += '<tr style="border:none;">';
					str += '<th class="text-center" colspan="4">검색된 상명이 없습니다.</th>';
					str += '</tr>';
					$("#dzSearchList").html(str);
					return;
 				}else{
				$.each(data, function(index,item){
					str += '<tr>';
						str += '<td class="text-center dzAddNode">'+item.dzNum+'</td>';
						str += '<td class="text-center dzCodeInSearch">'+item.dzCode+'</td>';
						str += '<td class="dzKoName pl-3">'+item.dzKoName+'</td>';
						str += '<td class="daAddBtn"><button class="btn btn-primary p-2 dzAddClick">추가</button></td>';
					str += '</tr>';
					})
					$("#dzSearchList").html(str);
					var dzAddClick= document.querySelectorAll('.dzAddClick')
					
					dzAddClick.forEach((target) => target.addEventListener("click", dzAdd));
 				}
			},
			error:function(){alert("error");
			}
		});
}
</script>

<script>
	
	function dzAdd(){
		var dzNode = event.target.parentNode.parentNode;
		
		var dzNum = dzNode.querySelector('.dzAddNode').textContent;
		var dzCode = dzNode.querySelector('.dzCodeInSearch').textContent;
		var dzKoName = dzNode.querySelector('.dzKoName').textContent;
		
		var str = ''
		str += '<tr>';
		str += '<td class="text-center dzSelectedNode">'+dzNum+'</td>';
		str += '<td class="text-center dzCodeInSearch">'+dzCode+'</td>';
		str += '<td class="dzKoName pl-3">'+dzKoName+'</td>';
		str += '<td class="dzRemoveBtn"><button class="btn btn-primary p-2" onclick="dzRemove()">삭제</button></td>';
		str += '</tr>';
		document.querySelector('#dzSelectedList').innerHTML += str;
		
// 		newDzNode.querySelector('.dzKoName').appendChild(str);
	}
	
	function dzRemove(){
		event.target.parentNode.parentNode.remove();
	}
	
	
</script>

<script>
function treatmentSearchGoKeyup(){
	if(window.event.keyCode == 13){
		treatmentSearchGo();
	}
}
function treatmentSearchGo(){
	var searchType = document.querySelector('#treatmentSearchType').value
	var searchKeyword = document.querySelector('#treatmentSearchKeyword').value
	var data = {
		"searchType":searchType,
		"keyword":searchKeyword
		}
	
  	var d =""
		d += '<tr style="height:35vh"><td class="text-center" colspan="3">';
		d += '<div class="sk-three-bounce">';
		d += '<div class="sk-child sk-bounce1"></div>';
		d += '<div class="sk-child sk-bounce2"></div>';
		d += '<div class="sk-child sk-bounce3"></div>';
		d += '</div>';
		d += '</td></tr>';
		$("#treatmentSearchList").html(d);
	
	 $.ajax({
			url : "getTreatmentListByKeyword",
			type : "post",
			dataType : "json",
			data : data,
			success : function(data){
				var str = "";
				if(data < 1){
					str += '<tr style="border:none;">';
					str += '<th class="text-center" colspan="3">검색된 진료명이 없습니다.</th>';
					str += '</tr>';
					$("#dzSearchList").html(str);
					return;
 				}else{
				$.each(data, function(index,item){
					str += '<tr>';
						str += '<td class="text-center dzAddNode">'+item.tlcName+'</td>';
						str += '<td class="text-center dzCodeInSearch">'+item.tscName+'</td>';
						str += '<td class="daAddBtn"><button class="frequentDiagnosisButton" id="diagnosisbtn1" onclick="clickTreatment('+item.tlcCode+','+item.tscCode+','+item.tlNeedTeeth+')">'+item.tlTitle+'</button></td>';
					str += '</tr>';
					})
					$("#treatmentSearchList").html(str);
				}
			},
			error:function(){alert("error");
			}
		});
}
</script>



<script>
	function selectedDrugGo(){
		var rows = document.getElementById('drugSelectedList').getElementsByTagName('tr');
		var selectedTarget = document.querySelector('#drugDetail')
		
		var str = '';
		 for( var r=0; r<rows.length; r++ ){
		      var cells = rows[r].getElementsByTagName("td");

		      var cell_0 = cells[0].firstChild.data;
		      var cell_1 = cells[1].firstChild.data;
		      
		      str += '<tr><input class="drugNoInputList" type="hidden" value="'+cell_0+'"><td class="text-left" style="padding-left: 10px;" title="'+cell_1+'">'+cell_1+'</td>';
		      str += '<td><input class="ppPertimeInputList text-right" type="number" value="0" style="border: none; -webkit-appearance: none; margin: 0; font-size: 12px; width: 100%;"></td>'
		      str += '<td><input class="ppPerDateInputList text-right" type="number" value="0" style="border: none; -webkit-appearance: none; margin: 0; font-size: 12px; width: 100%;"></td>'
		      str += '<td><input class="ppTotalcountInputList text-right" type="number" value="0" style="border: none; -webkit-appearance: none; margin: 0; font-size: 12px; width: 100%;"></td>'
		      str += '<td><input class="ppMedicationInputList text-left" type="text" value="식후 30분" style="border: none; -webkit-appearance: none; margin: 0; font-size: 12px; width: 100%;"></td>';
		      str += '</tr>';
		    }
		
		selectedTarget.innerHTML = str;
		
		var modal = document.getElementById("modal1");
	    modal.style.display = "none";

	    drugSearchReset();
	}
</script>
<script>
	function selectedDzGo(){
		var rows = document.getElementById('dzSelectedList').getElementsByTagName('tr');
		var selectedTarget = document.querySelector('#dzDetail')
		
		var str = '';
		 for( var r=0; r<rows.length; r++ ){
		      var cells = rows[r].getElementsByTagName("td");

		      var cell_0 = cells[0].firstChild.data;
		      var cell_1 = cells[1].firstChild.data;
		      var cell_2 = cells[2].firstChild.data;
		      
		      str += '<tr name=""><input type="hidden" value="'+cell_0+'" class="dzSelectedInput"><td class="text-left">'+cell_1+'</td>';
		      str += '<td class="text-left" title="'+cell_2+'">'+cell_2+'</td></tr>';
		    }
		
		selectedTarget.innerHTML = str;
		
		var modal = document.getElementById("modal2");
	    modal.style.display = "none";

	    dzSearchReset();
	}
</script>

<script>
function dzSearchReset(){
	var dzSearchList = document.querySelector('#dzSearchList');
	var dzSelectedList = document.querySelector('#dzSelectedList');
	
	var resetStr = '<tr><td class="text-center" colspan="3">상병명을 검색해 주십시오.</td></tr>';
	
	dzSearchList.innerHTML = resetStr;
	dzSelectedList.innerHTML = '';
}

</script>

<script>
function drugSearchReset(){
	var drugSearchList = document.querySelector('#drugSearchList');
	var drugSelectedList = document.querySelector('#drugSelectedList');
	
	var resetStr = '<tr><td class="text-center" colspan="6">약품을 검색해 주십시오.</td></tr>';
	
	drugSearchList.innerHTML = resetStr;
	drugSelectedList.innerHTML = '';
}
</script>


<script>
function registPrescribed(){
	isPatient();
	
	var drugTable = document.querySelector('#drugDetail');
	var drugNoInputList = document.querySelector('#drugNoInputList');
	var ppPertimeInputList = document.querySelector('#ppPertimeInputList');
	var ppPerDateInputList = document.querySelector('#ppPerDateInputList');
	var ppTotalcountInputList = document.querySelector('#ppTotalcountInputList');
	var ppMedicationInputList = document.querySelector('#ppMedicationInputList');
	
	$('.drugNoInputList').each(function(index,item){
		var str = ''
		str += '<input type="text" name="drugNoList" value="'+item.value+'">'
		drugNoInputList.innerHTML += str
	});
	$('.ppPertimeInputList').each(function(index,item){
		var str = ''
		str += '<input type="number" name="ppPertimeList" value="'+item.value+'">'
		ppPertimeInputList.innerHTML += str
	});
	$('.ppPerDateInputList').each(function(index,item){
		var str = ''
		str += '<input type="number" name="ppPerDateList" value="'+item.value+'">'
		ppPerDateInputList.innerHTML += str
	});
	$('.ppTotalcountInputList').each(function(index,item){
		var str = ''
		str += '<input type="number" name="ppTotalcountList" value="'+item.value+'">'
		ppTotalcountInputList.innerHTML += str
	});
	$('.ppMedicationInputList').each(function(index,item){
		var str = ''
		str += '<input type="text" name="ppMedicationList" value="'+item.value+'">'
		ppMedicationInputList.innerHTML += str
	});
	
	document.querySelector('#pnoForPp').value = document.querySelector('#p_no').title
	
	swal({
		  title: "원외 처방전을 입력합니다.",
		  text: "입력하시겠습니까?",
		  icon: "info",
		  buttons: true,
		  dangerMode: true,
		})
		.then((willDelete) => {
		  if (!willDelete) {
		    swal("취소되었습니다.");
		    return;
		  } else {
			ppSubmit();
		  }
		});
	
}	
</script>
<script>
function registCureDetail(){
	isPatient();
	
	var tlTable = document.querySelector('#treatmentDetail');
	var dzTable = document.querySelector('#dzDetail');

	var cureCodeList = document.querySelector('#cureCodeList');
	var cureCountList = document.querySelector('#cureCountList');
	var curePriceList = document.querySelector('#curePriceList');
	var dzCodeList = document.querySelector('#dzCodeList');
	
	$('.tlHiddenInput').each(function(index,item){
		var str = ''
		str += '<input type="number" name="cureCodeList" value="'+item.value+'">'
		cureCodeList.innerHTML += str
	});
	$('.tlCountForPrice').each(function(index,item){
		var str = ''
		str += '<input type="number" name="cureCountList" value="'+item.value+'">'
		cureCountList.innerHTML += str
	});
	$('.tlPrice').each(function(index,item){
		var str = ''
		str += '<input type="number" name="curePriceList" value="'+item.value+'">'
		curePriceList.innerHTML += str
	});
	
	
	$('.dzSelectedInput').each(function(index,item){
		var str = ''
		str += '<input type="number" name="dzCodeList" value="'+item.value+'">'
		dzCodeList.innerHTML += str
	});
	

	
	//진료메모
	var textAreaVal = document.querySelector('#textArea_byteLimit').value;
	
	cdNoteInput.value = textAreaVal;
	
	if(teethCountCure > 0 || babyteethCountCure > 0){
		chartCureInsert();
	}
	
	document.querySelector('#pnoForCD').value = document.querySelector('#p_no').title
	
	swal({
		  title: "진료 기록을 입력합니다.",
		  text: "입력하시겠습니까?",
		  icon: "info",
		  buttons: true,
		  dangerMode: true,
		})
		.then((willDelete) => {
		  if (!willDelete) {
		    swal("취소되었습니다.");
		    return;
		  } else {
			cureSubmit();
		  }
		});
	
	
	//환자번호
	// 진료메모
	// 멤버아이디
	
	
}
</script>

<script>
	function cureSubmit(){
		var formObj = $('form[role="cureDetailAction"]');
		formObj.attr({
			'action':'cureRegist',
			'method':'post'
		});
		formObj.submit();
	}
	function ppSubmit(){
		var formObj = $('form[role="prescribedAction"]');
		formObj.attr({
			'action':'prescribedRegist',
			'method':'post'
		});
		formObj.submit();
	}
</script>

<script>
 function searchTreatment(){
		const modal = document.getElementById("modal3");
	    modal.style.display = "flex";   
	    
		const closeBtn = modal.querySelector(".close-area");
		closeBtn.addEventListener("click", e => {
		    modal.style.display = "none";
		    searchTreatmentReset();
		})
		    
		modal.addEventListener("click", e => {
		    const evTarget = e.target;
		    if(evTarget.classList.contains("modal-overlay")) {
		        modal.style.display = "none";
		        searchTreatmentReset();
		    }
		})
		
 }
function searchTreatmentReset(){
	var treatmentSearchList = document.querySelector('#treatmentSearchList');
	
	var resetStr = '<tr><td class="text-center" colspan="3">진료을 검색해 주십시오.</td></tr>';
	
	treatmentSearchList.innerHTML = resetStr;
}
</script>
<script>
function getXrayGo(){
	$.ajax({
		url : "getPicture?pNo="+'${patient.PNo }',
		type : "get",
		dataType : "json",
		success : function(data){
			console.log(data)
			var str = "";
			if(data < 1){
				str += '<h3 class="text-center">사진이 없습니다.</h3>';
				$("#lightgallery").html(str);
				return;
			}else{
				$.each(data, function(index,item){
					var parseDate = moment(item.fileRegdate).format("YY-MM-DD hh:mm");
					
					str += '<a href="data:image/'+item.fileClass+';base64,'+item.file+'" class="col-4 mb-2" >';
						str += '<p>'+parseDate+'</p>';
						str += '<img class="img-sam" src="data:image/'+item.fileClass+';base64,'+item.file+'">';
					str += '</a>';
					})
					$("#lightgallery").html(str);
				lightGallery(document.getElementById('lightgallery'), {
			        plugins: [lgZoom, lgThumbnail,],
			        licenseKey: '0000-0000-000-0000',
			        zoom:false,
			        speed: 500,
			        // ... other settings
			    });
				}
			},
			error:function(){alert("error");
			
		}
	});
}
</script>

<script>
function picUploadGo(){
	isPatient();
	OpenWindow('<%=request.getContextPath()%>/picture/upload?pNo=${patient.PNo}','Ai 감정인식',460,540);
}
</script>


<script src="<%=request.getContextPath()%>/resources/vendor/jqueryui/js/jquery-ui.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/vendor/lightgallery/lightgallery.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/vendor/lightgallery/plugins/thumbnail/lg-thumbnail.umd.js"></script>
<script src="<%=request.getContextPath()%>/resources/vendor/lightgallery/plugins/zoom/lg-zoom.umd.js"></script>
<script type="text/javascript">
</script>
<script>
lightGallery(document.getElementById('lightgallery'), {
        plugins: [lgZoom, lgThumbnail,],
        licenseKey: '0000-0000-000-0000',
        zoom:false,
        speed: 500,
        // ... other settings
    });
</script>

