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

<style>
.teethFormInput{
	width: 80px;
	border: none;
}
.teethFormInput:hover{
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

.teeth {
	border: solid 1px;
	margin-left: 5px;
	margin-right: 5px;
	padding: 0;
	text-align: center;
	cursor: pointer;
}

.teethSelect{
	background-color: #afc2fa99;
}
.teethDeselect{
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

<div class="contaner-fluid ml-4 mr-4">
	<div class="row" style="">
		<div class="col-sm-2" style="font-size:12px;">
			<div class="pb-2">
				<h4 style="font-weight:600;">???????????????</h4>
				<div class="">
					<input class="dropdown-toggle" id="patientKeyword" onkeyup="getPatientByEnter()" data-toggle="dropdown" 
					style="float:left; border:1px lightgray solid; width:75%; height:30px;">
					<button onclick="getPatient()" style="border-radius: 5px; background-color:#EAEAEA;
						border-color:darkgray; color:gray; width:6vh; height:30px;">??????
					</button>
				</div>
				<!-- <i class="fa fa-fw" style="width:5vh; height:5vh;"></i> -->
               	<ul class="dropdown-menu">
               		<li class="dropdown" id="aaa">
              				<div style="width:550px;height:400px;  overflow:auto" class="bg-light">
			            	<div id="selectView" class="bg-light">
				                <div> 
				                	<p style="font-size:20px">&nbsp;&nbsp;???????????? ?????????????????? </p> 
								</div>
								<table class="table table-hover bg-light">
					                <tbody id="selectView"></tbody>
               					</table>
          						</div>
      						</div>
              			</li>
          			</ul>
			</div>
			<div class="pt-2">
				<h4 style="font-weight:600; width: 100px;">???????????????</h4>
				<table class="table table-striped table-responsive-sm2" style="border:1px lightgray solid; width:90%;">
					<tr >
						<td class="text-right" style="border-top:1px lightgray solid;">???????????? : </td>
						<td style="font-weight:600; border-top:1px lightgray solid;" id="p_no" title="${patient.PNo }">
							<c:if test="${not empty patient }">
								${patient.PNo }
							</c:if>										
						</td>					
					</tr>
					<tr >
						<td class="text-right" style="border-top:1px lightgray solid;">???????????? : </td>
						<td style="font-weight:600; color:blue; border-top:1px lightgray solid;">
							<c:choose>
								<c:when test="${not empty patient}">
									${patient.PName}
									<c:if test="${not empty patient.PSfx}">
									???&nbsp;${patient.PSfx }
									</c:if>
								</c:when>
								<c:otherwise>
									????????? ??????????????????
								</c:otherwise>
							</c:choose>
						</td>															
					</tr>
					<tr>
						<td class="text-right" >??????&nbsp;???&nbsp;?????? : </td>
						<td>
							<c:if test="${not empty patient }">
								<!-- ?????? ?????? -->
								<c:set value="${patient.PRnum}" var="jumin"/>
									 <!-- ???????????? ???????????? -->
									<c:set var="now" value="<%=new java.util.Date()%>" />
									<c:set var="sysYear"><fmt:formatDate value="${now}" pattern="yyyy" /></c:set>
									<c:set var="year" value="${fn:substring(sysYear,2,4)}"/>
									 
									<c:set var="splitJumin" value='${fn:split(jumin,"-")}'/>
									<c:set var="backJuminFirst" value="${fn:substring(splitJumin[1],0,1)}"/>
									<!-- 1900?????? ???????????? -->
									<c:if test="${backJuminFirst == '1' || backJuminFirst == '2'  }">
									 <c:set value="${fn:substring(splitJumin[0],0,2)}" var="frontJumin"/>
									 <c:set var = "age1" value="${100-frontJumin+1 }"/>
									   <!-- ???????????????-->
									   <c:set var = "age" value="${age1+year}" />
									   ${age }
									</c:if>
									<!-- 2000?????? ???????????? -->
									<c:if test="${backJuminFirst == '3' || backJuminFirst == '4'  }">
									 <c:set value="${fn:substring(splitJumin[0],0,2)}" var="frontJumin"/>>
									   <!-- ???????????????-->
									   <c:set var = "age" value="${year-frontJumin+1}" />
									   ${age }
									</c:if>
								<!-- ?????? ?????? -->
								<c:set value="${fn:substring(patient.PRnum,7,8)}" var="PSex"/>
								<c:choose>
									<c:when test="${PSex eq '1' or PSex eq '3' or PSex eq '5' or PSex eq '7'}">
									???&nbsp;??????
									</c:when>
									<c:otherwise>
									???&nbsp;??????
									</c:otherwise>
								</c:choose>
								
							</c:if>		
						</td>															
					</tr>
					<tr>
						<td class="text-right">?????? ????????? :</td>
						<td style="font-size:14px;">${patient.PTel}</td>															
					</tr>
					<tr>
						<td class="text-right">???????????? :</td>
						<td>${patient.PInsurance}</td>															
					</tr>
					<tr>
						<td class="text-right">???????????? :</td>
						<td>${patient.PVisitPath}</td>															
					</tr>
				</table>
			</div>
			<div class="pt-3">
				<h4 style="font-weight:600;"> ???????????????</h4>
				<div style="height:40.3vh; overflow-y:scroll; text-align:center; border:1px lightgray solid; width:90%;" >
					<table class="table table-striped table-responsive-sm2" style="margin-bottom: 0rem;">
						<tr>
							<th style="vertical-align:middle;">??????</th>
							<th style="vertical-align:middle;">??????</th>
							<th style="vertical-align:middle;">??????(??????)</th>															
						</tr>
						<c:choose>
							<c:when test="${empty bookingList}">
								<tr>
									<td colspan="3">????????? ????????????.</td>
								</tr>
							</c:when>
							<c:otherwise>
								<c:forEach items="${bookingList}" var="booking" varStatus="status">
								 	<tr onclick="chageToChart(${booking.PNo})">
										<td>${status.index+1 }</td>
										<c:choose>
											<c:when test="${booking.bsName eq '??????'}">
												<td style="color:red">${booking.bsName}</td>
											</c:when>
											<c:when test="${booking.bsName eq '??????'}">
												<td style="color:blue">${booking.bsName}</td>
											</c:when>
											<c:otherwise>
												<td style="color:gray">${booking.bsName}</td>
											</c:otherwise>
										</c:choose>
										<td>${booking.PName }(
											<c:set value="${booking.PRnum}" var="jumin"/>
											<!-- ???????????? ???????????? -->
											<c:set var="now" value="<%=new java.util.Date()%>" />
											<c:set var="sysYear"><fmt:formatDate value="${now}" pattern="yyyy" /></c:set>
											<c:set var="year" value="${fn:substring(sysYear,2,4)}"/>
											<c:set var="splitJumin" value='${fn:split(jumin,"-")}'/>
											<c:set var="backJuminFirst" value="${fn:substring(splitJumin[1],0,1)}"/>
											<!-- 1900?????? ???????????? -->
											<c:if test="${backJuminFirst == '1' || backJuminFirst == '2'  }">
											<c:set value="${fn:substring(splitJumin[0],0,2)}" var="frontJumin"/>
											<c:set var = "age1" value="${100-frontJumin+1 }"/>
											<!-- ???????????????-->
											<c:set var = "age" value="${age1+year}" />
											${age }
											</c:if>
											<!-- 2000?????? ???????????? -->
											<c:if test="${backJuminFirst == '3' || backJuminFirst == '4'  }">
											<c:set value="${fn:substring(splitJumin[0],0,2)}" var="frontJumin"/>>
											<!-- ???????????????-->
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
						<h4 style="font-weight:600;">??? ????????????</h4>
					</div>
					<div class="card" id="chartScroll" style="overflow-y: scroll; width:100%; height:92vh; border:1px lightgray solid; font-size:12px;" >
						<table class="table table-bordered" id="userListTable"  style="width:100%; margin:0;">
							<tr class="text-center" style="color: white; cursor: default; position: sticky; z-index:100; top: 0px; background-color:#333258">
								<th style="width: 13%;">????????????</th>
								<th style="width: 20%;">??????</th>
								<th style="width: 55%;">????????????</th>
								<th style="width: 10%;">??????</th>
								<!-- yyyy-MM-dd  -->
							</tr>


							<c:choose>
								<c:when test="${empty cdList}">
									<tr>
										<td colspan="7" class="text-center">??????????????? ????????????.</td>
									</tr>
								</c:when>
								<c:otherwise>
									<c:forEach items="${cdList}" var="cd" varStatus="status">
										<tr id="${cd.cdCode}">
											<c:choose>
												<c:when test="${status.first}">
													<td class="align-middle" rowspan="${fn:length(cd.cureList)}" style="vertical-align:top; text-align: center;">
														<fmt:formatDate value="${cd.cdRegdate }" pattern="yyyy-MM-dd"/>
													</td>
												</c:when>
												<c:otherwise>
													<fmt:formatDate var="newDate" value="${cd.cdRegdate }" pattern="yyyy-MM-dd"/>
													<fmt:formatDate var="oldDate" value="${cdList[status.index-1].cdRegdate}" pattern="yyyy-MM-dd"/>
													<c:if test="${newDate ne oldDate}">
														<td class="align-middle" rowspan="${fn:length(cd.cureList)}" style="vertical-align:top; text-align: center;">
															<fmt:formatDate value="${cd.cdRegdate }" pattern="yyyy-MM-dd"/>
														</td>
													</c:if>
												</c:otherwise>
											</c:choose>
											<td class="align-middle" style="vertical-align:top">
												<div class="card" style="padding:0; margin:0;">
													<table class="chart-dental-formula">
														<tr>
															<td class="innerTableChisikLT pt-0 pb-0" style="border-right:1px solid; border-bottom:1px solid; border-left:0; border-top:0; width:60px; height: 16px; text-align: right;">
															${cd.cdUlJaw }
															</td>
															<td class="innerTableChisikRT pt-0 pb-0" style="border-right:0; border-bottom:1px solid; border-top:0; width:60px; height: 16px;">
															
															${cd.cdUrJaw }
															
															</td>
														</tr> 
														<tr> 
															<td class="innerTableChisikLB pt-0 pb-0" style="border-left:0; border-bottom:0; border-right:1px solid; width:60px; height: 16px; text-align: right;">
															
															${cd.cdBlJaw }
															
															</td>
															<td class="innerTableChisikRB pt-0 pb-0" style="border-right:0; border-bottom:0 ; width:60px; height: 16px;">
															
															${cd.cdBrJaw }
															
															</td>
														</tr>
													</table>
												</div>
											</td>
											<td style="vertical-align:top; text-align:left">
												<div class="card"  style="margin:0; auto;">
													<ul>
													<!-- 2022-11-12 ?????? ?????? ?????? ??????????????? -->
														<li>
															<div class="row">
																<div class="col-2 mr-0 pr-0" style="max-width: 12.6667%; position: relative; width: 100%;">
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
																	<span style="color:${cccNameColor}; font-weight:bold">${cd.cccName }</span>
																		-
																	<span></span>
																</div>
																<div class="col-10 p-0 m-0">
																	<c:forEach items="${cd.cureList}" var="cureList">
																		<span class="pl-2">${cureList.dzCode}</span>
																		<span class="pl-2">${cureList.dzKoName }</span>
																		<br>
																	</c:forEach>
																</div>
															</div>
														</li>
															<li class="pl-2">
															</li>
													</ul>
												</div>
											</td>
											<td class="text-center">${cd.memName}</td>
										</tr>
									</c:forEach>
								</c:otherwise>
							</c:choose>
							
							
							
							
							
							<c:if test="${empty minfoList }">
								
							</c:if>
						</table>
					</div>
				</section>
			</section>
		</div>
		<div class="col-sm-5 justify-content-center">
			<section class="content text-align-center" style="width: 100%; padding-left:20px;">
				<section class="content-header">
					<div id="tabs">
					    <div class="tab whiteborder">PI??????</div>
					    <div class="tab">????????????</div>
					    <div class="tab">??????</div>
					    <div class="tab">????????????</div>
					    <div class="tab">X-ray</div>
					    <div class="tab">????????????</div>
<%-- 					    <c:forEach items="${teethStart}" var="teeths"> --%>
<%-- 			     			???????????? : ${teeths} --%>
<%-- 			     		</c:forEach> --%>
						<div class="tabContent">
					     	<div class="teeth-orgnzChart-pl">
				     			<div class="row justify-content-center">
					     			<button type="button" class="btn btn-primary m-1">??????</button>
					     			<button type="button" class="btn btn-primary m-1">??????</button>
					     			<button type="button" class="btn btn-primary m-1">????????????</button>
					     			<button type="button" class="btn btn-primary m-1">????????????</button>
					     			<button type="button" class="btn btn-primary m-1">????????????</button>
					     			<button type="button" class="btn btn-primary m-1">????????????</button>
					     		</div>
					     		<c:set var="teethStartCount" value="0"/>
					     		<c:forEach begin="1" end="4" var="i" step="1">
						     		
						     		
						     		<!-- ?????? ????????? ?????? ??????-->
						     		<c:set value="teeth-upper" var="upperOrLower"/>
						     		<!-- ?????? ?????? ??????-->
					     			<c:set value="7" var="babyTeeth" />
									<!-- ?????? ????????? ?????? -->
									<c:if test="${i > 2}">
							     		<c:set value="teeth-lower" var="upperOrLower"/>
						     		</c:if>
						     		<!-- ?????? ?????? -->
						     		<c:if test="${i > 1 and i < 4 }">
						     			<c:set value="3" var="babyTeeth" />
						     		</c:if>
						     		
						     		
						     		<div class="row justify-content-center">
						     			<c:forEach begin="1" end="2" var="j">
						     				<!-- ?????? ?????? ?????? ??????-->
								     		<c:set value="justify-content-end" var="startOrEnd"/>
											<!-- ?????? ?????? ?????? -->
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
											     			<c:when test="${j == 1}">
												     			<div class="col-1 teeth teethDeselect" title="${teethNumByStatus1}">${tsc - k }</div>
												     			<input type="hidden" class="teethHidden" id="teethNumberHiddenId${tsc - k }" name="teethNumber${tsc - k }" value="???">
											     			</c:when>
											     			<c:otherwise>
												     			<div class="col-1 teeth teethDeselect" title="${teethNumByStatus2-1}">${k }</div>
												     			<input type="hidden" class="teethHidden" id="teethNumberHiddenId${k }" name="teethNumber${k }" value="???">
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
								<h5 style="font-weight: bolder; padding-top:0; float:left;">??? ????????? ?????? PI ??????</h5>
							</div>
								
								
						    <div class="card" style="width:100%; height:63%; border: 1px lightgray solid; font-size: 16px">
								<div class="row-cbody">
									<div class="pl-category-color-first">
									 	<label id="pibtn1"><input type="checkbox" class="float-checkbox" onclick="pibtn(1)"> Blue</label>
	      								<label id="pibtn2"><input type="checkbox" class="float-checkbox" onclick="pibtn(2)"> Red</label>
	      								<label id="pibtn3"><input type="checkbox" class="float-checkbox" onclick="pibtn(3)"> Bite(+)</label>
	      								<label id="pibtn4"><input type="checkbox" class="float-checkbox" onclick="pibtn(4)"> Cold(+)</label>
	      								<label id="pibtn5"><input type="checkbox" class="float-checkbox" onclick="pibtn(5)"> Hot(+)</label>
	      								<label id="pibtn6"><input type="checkbox" class="float-checkbox" onclick="pibtn(6)"> EPT(-)</label>
	      								<label id="pibtn7"><input type="checkbox" class="float-checkbox" onclick="pibtn(7)"> ??????(+)</label>
      								</div>
      								<div class="pl-category-color-second">
	      								<label id="pibtn8"><input type="checkbox" class="float-checkbox" onclick="pibtn(8)"> Bite(-)</label>
	      								<label id="pibtn9"><input type="checkbox" class="float-checkbox" onclick="pibtn(9)"> Air(-)</label>
      								</div>
								</div>
								<div class="row-cbody">
									<div class="pl-category-color-third">
										<label id="pibtn10"><input type="checkbox" class="float-checkbox" onclick="pibtn(10)"> ????????? ??????</label>
										<label id="pibtn11"><input type="checkbox" class="float-checkbox" onclick="pibtn(11)"> ????????? ??????</label>
										<label id="pibtn12"><input type="checkbox" class="float-checkbox" onclick="pibtn(12)"> ?????? ??????</label>
										<label id="pibtn13"><input type="checkbox" class="float-checkbox" onclick="pibtn(13)"> ?????? ??????</label>
										<label id="pibtn14"><input type="checkbox" class="float-checkbox" onclick="pibtn(14)"> ?????? ??????</label>
										<label id="pibtn15"><input type="checkbox" class="float-checkbox" onclick="pibtn(15)"> ?????? ??????</label>
										<label id="pibtn16"><input type="checkbox" class="float-checkbox" onclick="pibtn(16)"> ?????????/????????? ??????</label>
										<label id="pibtn17"><input type="checkbox" class="float-checkbox" onclick="pibtn(17)"> ?????????</label>
										<label id="pibtn18"><input type="checkbox" class="float-checkbox" onclick="pibtn(18)"> ????????????</label>
										<label id="pibtn19"><input type="checkbox" class="float-checkbox" onclick="pibtn(19)"> ?????????</label>
										<label id="pibtn20"><input type="checkbox" class="float-checkbox" onclick="pibtn(20)"> ????????????</label>
									</div>
								</div>
								<div class="row-cbody">
									<div class="pl-category-color-fourth">
										<label id="pibtn21"><input type="checkbox" class="float-checkbox" onclick="pibtn(21)"> ????????? ??????/????????????</label>
										<label id="pibtn22"><input type="checkbox" class="float-checkbox" onclick="pibtn(22)"> ????????????/??????</label>
										<label id="pibtn23"><input type="checkbox" class="float-checkbox" onclick="pibtn(23)"> Tooth Crack</label>
										<label id="pibtn24"><input type="checkbox" class="float-checkbox" onclick="pibtn(24)"> ?????? ??????</label>
										<label id="pibtn25"><input type="checkbox" class="float-checkbox" onclick="pibtn(25)"> ????????? ??????</label>
										<label id="pibtn26"><input type="checkbox" class="float-checkbox" onclick="pibtn(26)"> ?????? ??????</label>
		                            </div>
	                            </div>
								<div class="row-cbody">
									<div class="pl-category-color-fifth">
										<label id="pibtn27"><input type="checkbox" class="float-checkbox" onclick="pibtn(27)"> Pus ??????</label>
										<label id="pibtn28"><input type="checkbox" class="float-checkbox" onclick="pibtn(28)"> ?????? ??????</label>
										<label id="pibtn29"><input type="checkbox" class="float-checkbox" onclick="pibtn(29)"> Cellulitis</label>
		                            </div>
									<div class="pl-category-color-tenth">
										<label id="pibtn30"><input type="checkbox" class="float-checkbox" onclick="pibtn(30)"> ?????? ??????/?????? ??????</label>
										<label id="pibtn31"><input type="checkbox" class="float-checkbox" onclick="pibtn(31)"> ?????? ??????/??????</label>
										<label id="pibtn32"><input type="checkbox" class="float-checkbox" onclick="pibtn(32)"> ????????? ??????</label>
										<label id="pibtn33"><input type="checkbox" class="float-checkbox" onclick="pibtn(33)"> Mob(1)</label>
										<label id="pibtn34"><input type="checkbox" class="float-checkbox" onclick="pibtn(34)"> Mob(2)</label>
										<label id="pibtn35"><input type="checkbox" class="float-checkbox" onclick="pibtn(35)"> Mob(3)</label>
		                            </div>
	                            </div>
								<div class="row-cbody">
									<div class="pl-category-color-sixth">
										<label id="pibtn36"><input type="checkbox" class="float-checkbox" onclick="pibtn(36)"> ??????</label>
										<label id="pibtn37"><input type="checkbox" class="float-checkbox" onclick="pibtn(37)"> ??????</label>
										<label id="pibtn38"><input type="checkbox" class="float-checkbox" onclick="pibtn(38)"> ?????????</label>
										<label id="pibtn39"><input type="checkbox" class="float-checkbox" onclick="pibtn(39)"> ?????????</label>
										<label id="pibtn40"><input type="checkbox" class="float-checkbox" onclick="pibtn(40)"> ?????????</label>
										<label id="pibtn41"><input type="checkbox" class="float-checkbox" onclick="pibtn(41)"> ?????????</label>
										<label id="pibtn42"><input type="checkbox" class="float-checkbox" onclick="pibtn(42)"> ?????????</label>
										<label id="pibtn43"><input type="checkbox" class="float-checkbox" onclick="pibtn(43)"> ?????????</label>
										<label id="pibtn44"><input type="checkbox" class="float-checkbox" onclick="pibtn(44)"> ?????????</label>
		                            </div>
	                            </div>
								<div class="row-cbody">
									<div class="pl-category-color-seventh">
										<label id="pibtn45"><input type="checkbox" class="float-checkbox" onclick="pibtn(45)"> ?????? ?????????</label>
										<label id="pibtn45"><input type="checkbox" class="float-checkbox" onclick="pibtn(46)"> ????????? ??????</label>
										<label id="pibtn47"><input type="checkbox" class="float-checkbox" onclick="pibtn(47)"> ????????????</label>
										<label id="pibtn48"><input type="checkbox" class="float-checkbox" onclick="pibtn(48)"> ?????? ??????</label>
										<label id="pibtn49"><input type="checkbox" class="float-checkbox" onclick="pibtn(49)"> ?????????</label>
									 </div>
									<div class="pl-category-color-eighth">
										<label id="pibtn50"><input type="checkbox" class="float-checkbox" onclick="pibtn(50)"> ????????????</label>
									 </div>
								 </div>
						    </div>
					    </div>
					    <div class="tabContent">
				    		<div class="teeth-orgnzChart-cure">
								<div class="row justify-content-center">
									<div class="col-6">
										<div class="row justify-content-end teeth-upper">
											<div class="col-1 teeth">18</div>
											<div class="col-1 teeth">17</div>
											<div class="col-1 teeth">16</div>
											<div class="col-1 teeth">15</div>
											<div class="col-1 teeth">14</div>
											<div class="col-1 teeth">13</div>
											<div class="col-1 teeth">12</div>
											<div class="col-1 teeth">11</div>
										</div>
									</div>
									<div class="col-6">
										<div class="row justify-content-start  teeth-upper">
											<div class="col-1 teeth">21</div>
											<div class="col-1 teeth">22</div>
											<div class="col-1 teeth">23</div>
											<div class="col-1 teeth">24</div>
											<div class="col-1 teeth">25</div>
											<div class="col-1 teeth">26</div>
											<div class="col-1 teeth">27</div>
											<div class="col-1 teeth">28</div>
										</div>
									</div>
								</div>
								
								<div class="row justify-content-center">
									<div class="col-6">
										<div class="row justify-content-end  teeth-upper">
											<div class="col-1 teeth">55</div>
											<div class="col-1 teeth">54</div>
											<div class="col-1 teeth">53</div>
											<div class="col-1 teeth">52</div>
											<div class="col-1 teeth">51</div>
										</div>
									</div>
									<div class="col-6">
										<div class="row justify-content-start teeth-upper">
											<div class="col-1 teeth">61</div>
											<div class="col-1 teeth">62</div>
											<div class="col-1 teeth">63</div>
											<div class="col-1 teeth">64</div>
											<div class="col-1 teeth">65</div>
										</div>
									</div>
								</div>
								<div class="row justify-content-center">
									<div class="col-6">
										<div class="row justify-content-end teeth-lower">
											<div class="col-1 teeth">85</div>
											<div class="col-1 teeth">84</div>
											<div class="col-1 teeth">83</div>
											<div class="col-1 teeth">82</div>
											<div class="col-1 teeth">81</div>
										</div>
									</div>
									<div class="col-6">
										<div class="row justify-content-start teeth-lower">
											<div class="col-1 teeth">71</div>
											<div class="col-1 teeth">72</div>
											<div class="col-1 teeth">73</div>
											<div class="col-1 teeth">74</div>
											<div class="col-1 teeth">75</div>
										</div>
									</div>
								</div>
								
								<div class="row justify-content-center">
									<div class="col-6">
										<div class="row justify-content-end teeth-lower">
											<div class="col-1 teeth">48</div>
											<div class="col-1 teeth">47</div>
											<div class="col-1 teeth">46</div>
											<div class="col-1 teeth">45</div>
											<div class="col-1 teeth">44</div>
											<div class="col-1 teeth">43</div>
											<div class="col-1 teeth">42</div>
											<div class="col-1 teeth">41</div>
										</div>
									</div>
									<div class="col-6">
										<div class="row justify-content-start teeth-lower">
											<div class="col-1 teeth">31</div>
											<div class="col-1 teeth">32</div>
											<div class="col-1 teeth">33</div>
											<div class="col-1 teeth">34</div>
											<div class="col-1 teeth">35</div>
											<div class="col-1 teeth">36</div>
											<div class="col-1 teeth">37</div>
											<div class="col-1 teeth">38</div>
										</div>
									</div>
								</div>
							</div>
					    	<div class="">
								<h5 class="pb-2" style="font-weight: bolder; padding-top: 15px; float:left;">??? ???????????? ??????</h5>
								<button type="button" id="selectDiagnosisView" class=""  data-toggle="modal1" data-target="#modalGrid" style="float: right; border-radius: 5px;background-color:green;
									border-color:darkgray; margin-top: 15px; color:white; width:90px; height:25px; font-size:13px;">?????? ??????
								</button> 
							</div>
					    	<div class="card m-0 mb-2" style="width:100%; height:48%; overflow-y:scroll; border: 1px lightgray solid;">
								<table id="frequentDiagnosisTable" class="bg-white text-center" id="" style=" height:100%; width:100%;">
									<tr class="trFrequentDiagnosis">
										<td class="tdFrequentDiagnosis20">????????????</td>
										<td class="tdFrequentDiagnosis80">
											<button class="frequentDiagnosisButton" id="diagnosisbtn1" onclick="diagnosisbtn(1)">????????????</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn2" onclick="diagnosisbtn(2)">???????????????</button>
										</td>
									</tr>
									<tr class="trFrequentDiagnosis">
										<td class="tdFrequentDiagnosis20">X-ray</td>
										<td class="tdFrequentDiagnosis80">
											<button class="frequentDiagnosisButton" id="diagnosisbtn3" onclick="diagnosisbtn(3)">?????????</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn4" onclick="diagnosisbtn(4)">????????????</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn5" onclick="diagnosisbtn(5)">CT??????</button>
										</td>
									</tr>
									<tr class="trFrequentDiagnosis">
										<td class="tdFrequentDiagnosis20">??????</td>
										<td class="tdFrequentDiagnosis80">
											<button class="frequentDiagnosisButton" id="diagnosisbtn6" onclick="diagnosisbtn(6)">????????????</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn7" onclick="diagnosisbtn(7)">????????????</button>
										</td>
									</tr>
									<tr class="trFrequentDiagnosis">
										<td class="tdFrequentDiagnosis20">??????</td>
										<td class="tdFrequentDiagnosis80">
											<button class="frequentDiagnosisButton" id="diagnosisbtn8" onclick="diagnosisbtn(8)">????????????</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn9" onclick="diagnosisbtn(9)">????????????</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn10" onclick="diagnosisbtn(10)">??????(??????)</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn11" onclick="diagnosisbtn(11)">??????(??????)</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn12" onclick="diagnosisbtn(12)">????????????</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn13" onclick="diagnosisbtn(13)">???????????????</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn14" onclick="diagnosisbtn(14)">?????????</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn15" onclick="diagnosisbtn(15)">????????????</button>
										</td>
									</tr>
									<tr class="trFrequentDiagnosis">
										<td class="tdFrequentDiagnosis20">GI??????</td>
										<td class="tdFrequentDiagnosis80">
											<button class="frequentDiagnosisButton" id="diagnosisbtn16" onclick="diagnosisbtn(16)">1???(GI??????)</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn17" onclick="diagnosisbtn(17)">2???(GI??????)</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn18" onclick="diagnosisbtn(18)">3???(GI??????)</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn19" onclick="diagnosisbtn(19)">4???(GI??????)</button>
										</td>
									</tr>
									<tr class="trFrequentDiagnosis">
										<td class="tdFrequentDiagnosis20">GI??????</td>
										<td class="tdFrequentDiagnosis80">
											<button class="frequentDiagnosisButton" id="diagnosisbtn20" onclick="diagnosisbtn(20)">1???(GI??????)</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn21" onclick="diagnosisbtn(21)">2???(GI??????)</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn22" onclick="diagnosisbtn(22)">3???(GI??????)</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn23" onclick="diagnosisbtn(23)">4???(GI??????)</button>
										</td>
									</tr>
									<tr class="trFrequentDiagnosis">
										<td class="tdFrequentDiagnosis20">Am??????</td>
										<td class="tdFrequentDiagnosis80">
											<button class="frequentDiagnosisButton" id="diagnosisbtn24" onclick="diagnosisbtn(24)">1???(Am??????)</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn25" onclick="diagnosisbtn(25)">2???(Am??????)</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn26" onclick="diagnosisbtn(26)">3???(Am??????)</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn27" onclick="diagnosisbtn(27)">4???(Am??????)</button>
										</td>
									</tr>
									<tr class="trFrequentDiagnosis">
										<td class="tdFrequentDiagnosis20">????????????</td>
										<td class="tdFrequentDiagnosis80">
											<button class="frequentDiagnosisButton" id="diagnosisbtn28" onclick="diagnosisbtn(28)">??????</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn29" onclick="diagnosisbtn(29)">????????????</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn30" onclick="diagnosisbtn(30)">????????????</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn31" onclick="diagnosisbtn(31)">????????????</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn32" onclick="diagnosisbtn(32)">???????????????</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn33" onclick="diagnosisbtn(33)">????????????</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn34" onclick="diagnosisbtn(34)">????????????</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn35" onclick="diagnosisbtn(35)">????????????</button>
										</td>
									</tr>
									<tr class="trFrequentDiagnosis">
										<td class="tdFrequentDiagnosis20">??????/??????</td>
										<td class="tdFrequentDiagnosis80">
											<button class="frequentDiagnosisButton" id="diagnosisbtn36" onclick="diagnosisbtn(36)">??????</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn37" onclick="diagnosisbtn(37)">?????????</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn38" onclick="diagnosisbtn(38)">????????????</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn39" onclick="diagnosisbtn(39)">????????????</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn40" onclick="diagnosisbtn(40)">????????????</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn41" onclick="diagnosisbtn(41)">??????????????????</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn42" onclick="diagnosisbtn(42)">S/O</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn43" onclick="diagnosisbtn(43)">?????????</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn44" onclick="diagnosisbtn(44)">?????? 3/0</button>
										</td>
									</tr>
									<tr class="trFrequentDiagnosis">
										<td class="tdFrequentDiagnosis20">????????????</td>
										<td class="tdFrequentDiagnosis80">
											<button class="frequentDiagnosisButton" id="diagnosisbtn45" onclick="diagnosisbtn(45)">????????????(???1???)</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn46" onclick="diagnosisbtn(46)">??????????????????</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn47" onclick="diagnosisbtn(47)">????????????</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn48" onclick="diagnosisbtn(48)">????????????</button>
										</td>
									</tr>
									<tr class="trFrequentDiagnosis">
										<td class="tdFrequentDiagnosis20">????????????</td>
										<td class="tdFrequentDiagnosis80">
											<button class="frequentDiagnosisButton" id="diagnosisbtn49" onclick="diagnosisbtn(49)">????????????(????????????)</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn50" onclick="diagnosisbtn(50)">APF</button>
										</td>
									</tr>
									<tr class="trFrequentDiagnosis">
										<td class="tdFrequentDiagnosis20">??????</td>
										<td class="tdFrequentDiagnosis80">
											<button class="frequentDiagnosisButton" id="diagnosisbtn51" onclick="diagnosisbtn(51)">???????????????</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn52" onclick="diagnosisbtn(52)">?????????,Cr??????</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn53" onclick="diagnosisbtn(53)">???????????????</button>
										</td>
									</tr>
									<tr class="trFrequentDiagnosis">
										<td class="tdFrequentDiagnosis20">?????????</td>
										<td class="tdFrequentDiagnosis80">
											<button class="frequentDiagnosisButton" id="diagnosisbtn54" onclick="diagnosisbtn(54)">???????????????</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn55" onclick="diagnosisbtn(55)">????????????</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn56" onclick="diagnosisbtn(56)">?????????</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn57" onclick="diagnosisbtn(57)">????????????</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn58" onclick="diagnosisbtn(58)">????????????</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn59" onclick="diagnosisbtn(59)">????????????</button>
										</td>
									</tr>
									<tr class="trFrequentDiagnosis">
										<td class="tdFrequentDiagnosis20">??????</td>
										<td class="tdFrequentDiagnosis80">
											<button class="frequentDiagnosisButton" id="diagnosisbtn60" onclick="diagnosisbtn(60)">????????????</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn61" onclick="diagnosisbtn(61)">????????????(??????)</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn62" onclick="diagnosisbtn(62)">????????????</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn63" onclick="diagnosisbtn(63)">????????????</button>
										</td>
									</tr>
								</table>
							</div>
							<h5 style="font-weight: bolder;">??? ????????????</h5>
							<div class="pb-4">
					            <form id="frm_textArea" name="frm_textArea">
					                <textarea rows="10" class="form-control" id="textArea_byteLimit" name="textArea_byteLimit" 
					                    onkeyup="fn_checkByte(this)" style="padding:0; margin:0; height:100px; border:1px lightgray solid; resize:none;"></textarea>
					            </form>
					            <sup style="float:right;">(<span id="nowByte">0</span>/300bytes)</sup>
							</div>
					    </div>
						    
					    <div class="tabContent">
					    	<div class="">
								<h5 class="pb-2" style="font-weight: bolder; padding-top: 10px">??? ?????? ????????? ?????? ??????</h5>
							</div>
							<div class ="card" style="height:30%;" >
								<table class="normalTable">
									<tr class="normalTr" style="height:35px;">
										<th class="normalTh" style="width:50px; background-color:#333258; text-align:center; color:white;">?????????</th>
										<th class="normalTh" style="width:50px; background-color:#333258; text-align:center; color:white;">????????? ????????????</th>
										<th class="normalTh" style="width:50px; background-color:#333258; text-align:center; color:white;">???????????????</th>
									</tr>
									<tr class="normalTr" style="height:35px;">
										<td class="normalTd" style="width:50px;"><input name="selectDate" type="date" id="selectDate" style="text-align:center;" disabled></td>
										<td class="normalTd" style="width:50px;"><input name="selectDate" type="date" id="selectDate2" style="text-align:center;" disabled></td>
										<td class="normalTd" style="width:50px;"><input value="26222-10" type="text" style="width:100px; height:30px; text-align:center;" disabled></input></td>
									</tr>
									<tr class="normalTr">
										<th class="normalTh" colspan="2" style="background-color:#333258; text-align:center; color:white;">????????????</th>
										<th class="normalTh" style=" background-color:#333258; text-align:center; color:white;">????????????</th>
									</tr>
									<tr class="normalTr" >
										<td class="normalTd" colspan="2">
											<input id="inputSearchBar3"type="text" name="keyword" autocomplete="off" placeholder="????????? ????????? ???????????? ????????????" value="${param.keyword }" style="width:90%; height:30px;">
										</td>
										<td class="normalTd" >
										<input value="?????????" type="text" style="width:50px; height:30px; text-align:center;" disabled />
										</td>
									</tr>
								</table>
					   		</div>
							
						    <!-- <div class="justify-content-center">
								<hr style="margin: 5px; background: black; width:100%;">
							</div> -->
  								<div class="">
								<h5 class="" style="font-weight: bolder; padding-top: 5px; float:left;">??? ?????? ??????</h5>
								<button type="button" id="btn-modal1" class=""  data-toggle="modal1" data-target="#modalGrid" style="float: right; border-radius: 5px;background-color:green;
									border-color:darkgray; color:white; width:150px; height:25px; font-size:13px;">????????? ??????/??????
								</button> 
								<button type="button" id="btn-modal3"  class="" style="float: right; border-radius: 5px;background-color:#EAEAEA;
									border-color:darkgray; color:gray; width:70px; height:25px; font-size:13px; margin-right:5px;">????????????
								</button>
							</div>
							<div class="card" style="width:100%; height:47%; overflow-y:scroll; overflow-x:scroll; border:1px lightgray solid;" >
								<table class="" style="width:1000px; font-size:13px;">
									<tr class="normalTr" bgcolor="#333258" style="color: white; height:30px; font-size:15px; position:sticky; top:0px; z-index:1; text-align:center;"> 
										<th class="normalTh" style="width:10% ">??????</th>
										<th class="normalTh" style="width:50%">?????????</th>
										<th class="normalTh" style="width:10%">1????????????</th>
										<th class="normalTh" style="width:10%">1???????????????</th>
										<th class="normalTh" style="width:10%">???????????????</th>
										<th class="normalTh" style="width:10%">??????</th>
									</tr>
									<tr  class="normalTr">
										<td class="normalTd" style="text-align:center;">?????????</td>
										<td class="normalTd" >???????????????(?????????????????????)_(50mg/1???)</td>
										<td class="normalTd" style="text-align:center;">1</td>
										<td class="normalTd" style="text-align:center;">3</td>
										<td class="normalTd" style="text-align:center;">3</td>
										<td class="normalTd" style="text-align:center;">?????? 30???</td>
									</tr>
									<tr  class="normalTr">
										<td class="normalTd" style="text-align:center;">?????????</td>
										<td class="normalTd" >???????????????(?????????????????????)_(50mg/1???)</td>
										<td class="normalTd" style="text-align:center;">1</td>
										<td class="normalTd" style="text-align:center;">3</td>
										<td class="normalTd" style="text-align:center;">3</td>
										<td class="normalTd" style="text-align:center;">?????? 30???</td>
									</tr>
									<tr  class="normalTr">
										<td class="normalTd" style="text-align:center;">?????????</td>
										<td class="normalTd" >???????????????(?????????????????????)_(50mg/1???)</td>
										<td class="normalTd" style="text-align:center;">1</td>
										<td class="normalTd" style="text-align:center;">3</td>
										<td class="normalTd" style="text-align:center;">3</td>
										<td class="normalTd" style="text-align:center;">?????? 30???</td>
									</tr>
									<tr  class="normalTr">
										<td class="normalTd" style="text-align:center;">?????????</td>
										<td class="normalTd" >???????????????(?????????????????????)_(50mg/1???)</td>
										<td class="normalTd" style="text-align:center;">1</td>
										<td class="normalTd" style="text-align:center;">3</td>
										<td class="normalTd" style="text-align:center;">3</td>
										<td class="normalTd" style="text-align:center;">?????? 30???</td>
									</tr>
									<tr  class="normalTr">
										<td class="normalTd" style="text-align:center;">?????????</td>
										<td class="normalTd" >???????????????(?????????????????????)_(50mg/1???)</td>
										<td class="normalTd" style="text-align:center;">1</td>
										<td class="normalTd" style="text-align:center;">3</td>
										<td class="normalTd" style="text-align:center;">3</td>
										<td class="normalTd" style="text-align:center;">?????? 30???</td>
									</tr>
									<tr  class="normalTr">
										<td class="normalTd" style="text-align:center;">?????????</td>
										<td class="normalTd" >???????????????(?????????????????????)_(50mg/1???)</td>
										<td class="normalTd" style="text-align:center;">1</td>
										<td class="normalTd" style="text-align:center;">3</td>
										<td class="normalTd" style="text-align:center;">3</td>
										<td class="normalTd" style="text-align:center;">?????? 30???</td>
									</tr>
								</table>
							</div>
						</div>
		    			<div class="tabContent">
							<div class="container-fluid" style="padding:0;">
								<h5>??? ?????? ??????</h5>
							</div>
							<div class="p-1 card" style="width:100%; height:54%; overflow-y:scroll; border:1px lightgray solid; font-size:13px;">
								<table class="tnormalTable" id="userListTable">
									<tr class="normalTr" bgcolor="#333258" style="color: white; cursor: default; height:5vh;">
										<th class="normalTh" style="width:20%; text-align:center;">??????</th>
										<th class="normalTh" style="width:40%; text-align:center;">????????????</th>
										<th class="normalTh" style="width:10%; text-align:center;">???</th>
										<th class="normalTh" style="width:30%; text-align:center;">??????</th>
										<!-- yyyy-MM-dd  -->
									</tr>
									<tr class="normalTr">
										<td class="normalTd" style="text-align:center;">#</td>
										<td class="normalTd" style="text-align:left;">?????? (?????????)</td>
										<td class="normalTd" style="text-align:center;">3</td>
										<td class="normalTd" style="text-align:right;"><span>42,500</span> ???</td>
									</tr>
									<tr class="normalTr">
										<td class="normalTd" style="text-align:center;">#</td>
										<td class="normalTd" style="text-align:left;">?????? (?????????)</td>
										<td class="normalTd" style="text-align:center;">3</td>
										<td class="normalTd" style="text-align:right;"><span>42,500</span> ???</td>
									</tr>
									<tr class="normalTr">
										<td class="normalTd" style="text-align:center;">#</td>
										<td class="normalTd" style="text-align:left;">?????? (?????????)</td>
										<td class="normalTd" style="text-align:center;">3</td>
										<td class="normalTd" style="text-align:right;"><span>42,500</span> ???</td>
									</tr>
									<tr class="normalTr">
										<td class="normalTd" style="text-align:center;">#</td>
										<td class="normalTd" style="text-align:left;">?????? (?????????)</td>
										<td class="normalTd" style="text-align:center;">3</td>
										<td class="normalTd" style="text-align:right;"><span>42,500</span> ???</td>
									</tr>
									<tr class="normalTr">
										<td class="normalTd" style="text-align:center;">#</td>
										<td class="normalTd" style="text-align:left;">?????? (?????????)</td>
										<td class="normalTd" style="text-align:center;">3</td>
										<td class="normalTd" style="text-align:right;"><span>42,500</span> ???</td>
									</tr>
									<tr class="normalTr">
										<td class="normalTd" style="text-align:center;">#</td>
										<td class="normalTd" style="text-align:left;">?????? (?????????)</td>
										<td class="normalTd" style="text-align:center;">3</td>
										<td class="normalTd" style="text-align:right;"><span>42,500</span> ???</td>
									</tr>
									<tr class="normalTr">
										<td class="normalTd" style="text-align:center;">#</td>
										<td class="normalTd" style="text-align:left;">?????? (?????????)</td>
										<td class="normalTd" style="text-align:center;">3</td>
										<td class="normalTd" style="text-align:right;"><span>42,500</span> ???</td>
									</tr>
									<tr class="normalTr">
										<td class="normalTd" style="text-align:center;">#</td>
										<td class="normalTd" style="text-align:left;">?????? (?????????)</td>
										<td class="normalTd" style="text-align:center;">3</td>
										<td class="normalTd" style="text-align:right;"><span>42,500</span> ???</td>
									</tr>
								</table>
							</div>
							<div class="container-fluid" style="padding:0;">
								<h5>??? ?????? ??????</h5>
							</div>
							<div class="p-1 card" style=" width:100%; height:28%; border:1px lightgray solid; font-size:13px;">
								<table class="normalTable" id="userListTable">
									<tr class="normalTr" >
										<th class="normalTh" style="">?????????</th>
										<td class="normalTd"><span>2022-09-26</span></td>
										<th class="normalTh">????????????</th>
										<td class="normalTd"><span>?????? ??????</span></td>
									</tr>
									<tr class="normalTr" >
										<th class="normalTh">????????????</th>
										<td class="normalTd" >?????????</td>
										<th class="normalTh">?????????</th>
										<td class="normalTd" >????????????</td>
									</tr>
									<tr class="normalTr">
										<th class="normalTh">?????????</th>
										<td class="normalTd" >????????????</td>
										<th class="normalTh">????????????</th>
										<td class="normalTd" >??????</td>
									</tr>
									<tr class="normalTr">
										<th class="normalTh">????????????</th>
										<td class="normalTd" >125,000???</td>
										<th class="normalTh">????????????</th>
										<td class="normalTd" >87,000???</td>
									</tr>
								</table>
							</div>
						</div>
					    <div class="tabContent">4</div>
					    <div class="tabContent">5</div>
	   				</div>
				</section>
			</section>
			<div class="card" style="width:97.3%; height:10vh; border:1px lightgray solid; overflow-y:scroll; margin:15px 0px 10px 20px;">
				<span style="font-weight:600; font-size:15px;">[????????? ??????]</span>
				<div id="diagnosisInnerText" style="font-size:12px;"></div>
			</div>
  				<div class="pt-4" style="padding-right:0; margin-right:0; float:right;">
				<a onclick="tempSaveBtn()" type="button" class="btnOpen" style="padding:0; margin:1px;">
					<button style="float: right; border-radius: 5px; margin-right:0px; margin-top:0px; background-color:#C90000;
						border-color:darkgray; color:white; width:100px; height:30px;">????????????
					</button>
				</a>
				<a onclick="openRegistDiagnosis()" type="button" class="btnOpen" style="padding:0; margin:1px;">
					<button style="float: right; border-radius: 5px; margin-right:0px; padding-right:0; margin-top:0px; background-color:#333258;
						border-color:darkgray; color:white; width:100px; height:30px;">????????? ??????
					</button>
				</a>
			</div>
		</div>
	</div>
</div>
<!-- ????????? ????????? #1 (????????? ?????? / ??????) -->
<div id="modal1" class="modal-overlay">
	<div class="modal-window">
	    <span class="close-area" style="font-size:30px;">X</span>
	    <div class="content">
			<div class="">
				<h3 class="pb-1"  style="width:100%; font-weight: bolder; padding-top: 10px">??? ????????? ??????</h3>
			</div>
		    <div class="pb-2" style="float:right;">
				<input class="dropdown-toggle" id="drugKeyword" onkeyup="serchDrug()" data-toggle="dropdown" 
				style="float:left; border:1px lightgray solid; width:70%; height:30px;">
				<a onclick="" type="button" class="">
					<button style="float:right; border-radius: 5px; background-color:#EAEAEA;
						border-color:darkgray; color:black; width:8vh; height:30px;" onclick="drugListByKeyword()">??????
					</button>
				</a>
			</div>
			<div class="" style="float:right;">
				<select class="" name="drugSearchType" id="drugSearchType" style="border:1px lightgray solid; height:30px;">
					<option value="na" ${cri.searchType eq 'na' ? 'selected':'' }>?????????</option>
					<option value="n"  ${cri.searchType eq 'n' ? 'selected':'' }>????????????</option>
					<option value="m"  ${cri.searchType eq 'm' ? 'selected':'' }>???????????????</option>
					<option value="p" ${cri.searchType eq 'p' ? 'selected':'' }>????????????</option>
				</select>
			</div>
			<div class="" style="float:right;">
				<select class="" name="perPageNum" id="perPageNum" onchange="list_go(1);" style="border:1px lightgray solid; height:30px; vertical-align:center;">					  		  		
			 		<option value="10" ${cri.perPageNum eq 10 ? 'selected' : '' }>10??????</option>
			 		<option value="20" ${cri.perPageNum eq 20 ? 'selected' : '' }>20??????</option>
			 		<option value="30" ${cri.perPageNum eq 30 ? 'selected' : '' }>30??????</option>
			 	</select>
			</div>
			<div class="card" style="width:100%; height:300px; overflow-y:scroll; border:1px lightgray solid;" >
				<table id="table22" style="width:100%; font-size:13px;">
					<tr class="normalTr" bgcolor="#333258" style="color: white; height:30px; font-size:15px; position:sticky; top:0px; z-index:1; text-align:center;"> 
						<th class="normalTh" style="width:10% ">????????????<br>????????????</th>
						<th class="normalTh" style="width:60%">???????????????</th>
						<th class="normalTh" style="width:20%">???????????????<br>?????????</th>
						<th class="normalTh" style="width:10%">?????????<br>????????????</th>
					</tr>
					<tbody id="drugTbody">
						<tr>
							<td class="text-center" colspan="4">
								<strong>????????? ????????? ????????????.</strong>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div>
			<%@ include file="/WEB-INF/views/include/pagination.jsp" %>
			</div>
			<div class="row pt-4 pb-2 pl-2 justify-content-end">
				<div class="row p-1">
					<button type="button" class="btn btn-primary " 
							style="float: right; background:red; border-radius: 10px; 
								   margin-right: 50px;">
							????????????
					</button>
				</div>
				<div class="row p-1">
					<button id="closeDrugCode" onclick="getHiddenDrug()" type="button" class="btn btn-primary " 
							style="float: right; border-radius: 10px; margin-right: 50px;
								   ">
							??????
					</button>
				</div>
			</div>
		</div>
    </div>
</div>
<!-- ????????? ????????? #2 (???????????? ??????) -->
<div id="modal2" class="modal-overlay">
	<div class="modal-window" style="width: 1300px; height: 650px; top: 48%; left: 52%;">
	    <span class="close-area" style="font-size:30px;">X</span>
	    <div class="content">
  				<div class="row justify-content-around">
			</div>
			<div class="row justify-content-around">
				<div class="col-6 pt-2">
					<div class="">
						<h3 class="pb-4"  style="width:100%; font-weight: bolder; padding-top: 10px">??? ??????????????? ???????????? ????????? ??????</h3>
					</div>
					<div class="" style="float:right;">
						<select class="" name="searchType" id="searchType">
							<option value="ic"  ${cri.searchType eq 'tcw' ? 'selected':'' }>????????????</option>
							<option value="in" ${cri.searchType eq 'i' ? 'selected':'' }>?????????</option>
						</select>
						<input id="inputSearchBar1" type="text" name="keyword" placeholder="???????????? ???????????????." value="${param.keyword }" style="width:18vh; height:28px;"/>
						<button type="button" style="border:1pxsolid; border-color:darkgray; border-radius:5px; width:5vh;">??????</button>
					</div>
					<div class="card" style="width:100%; height:415px; overflow-y:scroll;">
						<table class="table table-bordered border-primary text-center" style="padding:0; margin:0;  border:1px black solid;" >
							<tr bgcolor="#333258" style="color: white; height:45px; font-size:15px; position:sticky; top:0px; z-index:1;">
								<td style="width:30%; text-align:center;">??????</td>
								<td style="width:30%; text-align:center;">????????????</td>
								<td style="width:40%; text-align:center;">?????????</td>
							</tr>
							<tr style="font-size: 15px; background-color:white; height:71px;">
								<td >
									<div class="card" style="padding:0; margin:0;">
										<table>
											<tr>
												<td class="innerTableChisikLT pt-0 pb-0" style="border-right:1px solid; border-bottom:1px solid; border-left:0; border-top:0; width:50%;">abcd</td>
												<td class="innerTableChisikRT pt-0 pb-0" style="border-right:0; border-bottom:1px solid; border-top:0; width:50%;">1234</td>
											</tr> 
											<tr> 
												<td class="innerTableChisikLB pt-0 pb-0" style="border-left:0; border-bottom:0; border-right:1px solid;">1234</td>
												<td class="innerTableChisikRB pt-0 pb-0" style="border-right:0; border-bottom:0;">=6</td>
											</tr>
										</table>
									</div>
								</td>
								<td>K01.0</td>
								<td>?????????</td>
							</tr>
							<tr style="font-size: 15px; background-color:white; height:71px;">
								<td>
									<div class="card" style="padding:0; margin:0;">
										<table>
											<tr>
												<td class="innerTableChisikLT pt-0 pb-0" style="border-right:1px solid; border-bottom:1px solid; border-left:0; border-top:0; width:50%;">abcd</td>
												<td class="innerTableChisikRT pt-0 pb-0" style="border-right:0; border-bottom:1px solid; border-top:0; width:50%;">1234</td>
											</tr> 
											<tr> 
												<td class="innerTableChisikLB pt-0 pb-0" style="border-left:0; border-bottom:0; border-right:1px solid;">1234</td>
												<td class="innerTableChisikRB pt-0 pb-0" style="border-right:0; border-bottom:0;">=6</td>
											</tr>
										</table>
									</div>
								</td>
								<td>K02.0</td>
								<td>?????????</td>
							</tr>
							<tr style="font-size: 15px; background-color:white; height:71px;">
								<td>
									<div class="card" style="padding:0; margin:0;">
										<table>
											<tr>
												<td class="innerTableChisikLT pt-0 pb-0" style="border-right:1px solid; border-bottom:1px solid; border-left:0; border-top:0; width:50%;">abcd</td>
												<td class="innerTableChisikRT pt-0 pb-0" style="border-right:0; border-bottom:1px solid; border-top:0; width:50%;">1234</td>
											</tr> 
											<tr> 
												<td class="innerTableChisikLB pt-0 pb-0" style="border-left:0; border-bottom:0; border-right:1px solid;">1234</td>
												<td class="innerTableChisikRB pt-0 pb-0" style="border-right:0; border-bottom:0;">=6</td>
											</tr>
										</table>
									</div>
								</td>
								<td>K7.0</td>
								<td>???????????????</td>
							</tr>
							<tr style="font-size: 15px; background-color:white; height:71px;">
								<td>
									<div class="card" style="padding:0; margin:0;">
										<table>
											<tr>
												<td class="innerTableChisikLT pt-0 pb-0" style="border-right:1px solid; border-bottom:1px solid; border-left:0; border-top:0; width:50%;">abcd</td>
												<td class="innerTableChisikRT pt-0 pb-0" style="border-right:0; border-bottom:1px solid; border-top:0; width:50%;">1234</td>
											</tr> 
											<tr> 
												<td class="innerTableChisikLB pt-0 pb-0" style="border-left:0; border-bottom:0; border-right:1px solid;">1234</td>
												<td class="innerTableChisikRB pt-0 pb-0" style="border-right:0; border-bottom:0;">=6</td>
											</tr>
										</table>
									</div>
								</td>
								<td>K12.0</td>
								<td>???????????????</td>
							</tr>
							<%-- <c:if test="${!empty minfoList }">
								<c:forEach items="${minfoList}" var="minfo">
									<tr onclick="detail()" style="font-weight:bolder; font-size: 11px;">
										<td>${minfo.minfoClass }</td>
										<td>${minfo.minfoCode }</td>
										<td>${minfo.minfoContent }
										<td>${minfo.minfoWriter }</td>
										<td>${minfo.minfoWriter }</td>
										<td>${minfo.minfoWriter }</td>
										<td>${minfo.minfoWriter }</td>
										<td><fmt:formatDate value="${minfo.minfoRegdate }"
												pattern="yyyy-MM-dd" /></td>
									</tr>
								</c:forEach>
							</c:if> --%>
			             	<%-- <c:if test="${empty minfoList }">
								<tr>
									<td colspan="7" class="text-center">??????????????? ????????????.</td>
								</tr>
								</c:if> --%>
						</table>
					</div>
				</div>
				<div class="col-6 pt-2">
					<div class="">
						<h3 class="pb-4" style="width:100%; font-weight: bolder; padding-top: 10px">??? ????????? ??????</h3>
					</div>
					<div class="" style="float:right;">
						<select class="" name="searchType" id="searchType">
							<option value="ic"  ${cri.searchType eq 'tcw' ? 'selected':'' }>????????????</option>
							<option value="in" ${cri.searchType eq 'i' ? 'selected':'' }>?????????</option>
						</select>
						<input id="inputSearchBar2" type="text" name="keyword" placeholder="???????????? ???????????????." value="${param.keyword }" style="width:18vh; height:28px;"/>
						<button type="button" style="border:1pxsolid; border-color:darkgray; border-radius:5px; width:5vh;">??????</button>
					</div>
					<div class="card" style="width:100%; height:415px; overflow-y:scroll;">
						<table class="table table-bordered text-center" style="padding:0; margin:0;" >
							<tr bgcolor="#333258" style="color: white; height:45px; font-size:15px; position:sticky; top:0px; z-index:1;"> 
								<td style="width:20%; text-align:center;">????????????</td>
								<td style="width:80%; text-align:center;">?????????</td>
							</tr>
							<tr style="font-size: 15px; background-color:white; height:50px;">
								<td>K01.0</td>
								<td>?????????</td>
							</tr>
							<tr style="font-size: 15px; background-color:white; height:50px;">
								<td>K01.0</td>
								<td>?????????</td>
							</tr>
							<tr style="font-size: 15px; background-color:white; height:50px;">
								<td>K01.0</td>
								<td>?????????</td>
							</tr>
							<tr style="font-size: 15px; background-color:white; height:50px;">
								<td>K01.0</td>
								<td>?????????</td>
							</tr>
							<tr style="font-size: 15px; background-color:white; height:50px;">
								<td>K01.0</td>
								<td>?????????</td>
							</tr>
							<tr style="font-size: 15px; background-color:white; height:50px;">
								<td>K01.0</td>
								<td>?????????</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-8 pl-5 row justify-content-start">
				</div>
				<div class="col-4 row justify-content-end">
					<div class="row p-1">
						<button type="button" class="btn btn-primary " 
								style="float: right; background:red; border-radius: 10px; margin-right: 30px; margin-bottom:10px;">????????????
							
						</button>
					</div>
					<div class="row p-1">
						<button type="button" class="closeWindowModal btn btn-primary " 
								style="float: right; border-radius: 10px; margin-right:0px;  margin-bottom:10px;">??????
						</button>
					</div>
				</div>
			</div>
		
		
		</div>
    </div>
</div>


<!-- ????????? ????????? #3 (???????????? ?????? ??????) -->
<div id="modal3" class="modal-overlay">
	<div class="modal-window">
	    <span class="close-area" style="font-size:30px;">X</span>
	    <div class="content">
			<div class="">
				<h3 class="pb-4"  style="width:100%; font-weight: bolder; padding-top: 10px">??? ?????? ??????</h3>
			</div>
				<%-- <div class="" style="float:right;">
					<select class="" name="searchType" id="searchType">
						<option value="ic"  ${cri.searchType eq 'tcw' ? 'selected':'' }>????????????</option>
						<option value="in" ${cri.searchType eq 'i' ? 'selected':'' }>?????????</option>
					</select>
					<input id="inputSearchBar1" type="text" name="keyword" placeholder="???????????? ???????????????." value="${param.keyword }" style="width:18vh; height:28px;"/>
					<button type="button" style="border:1pxsolid; border-color:darkgray; border-radius:5px; width:5vh;">??????</button>
				</div> --%>
			<div class="card" style="width:100%; height:240px; overflow-y:scroll; border:1px lightgray solid;" >
				<table class="" style="width:100%; font-size:13px;">
					<tr class="normalTr" bgcolor="#333258" style="color: white; height:30px; font-size:15px; position:sticky; top:0px; z-index:1; text-align:center;"> 
						<th class="normalTh" style="width:10% ">??????</th>
						<th class="normalTh" style="width:50%">?????????</th>
						<th class="normalTh" style="width:10%">1????????????</th>
						<th class="normalTh" style="width:10%">1???????????????</th>
						<th class="normalTh" style="width:10%">???????????????</th>
						<th class="normalTh" style="width:10%">??????</th>
					</tr>
					<tr  class="normalTr">
						<td class="normalTd" style="text-align:center;">?????????</td>
						<td class="normalTd" >???????????????(?????????????????????)_(50mg/1???)</td>
						<td class="normalTd" style="text-align:center;">1</td>
						<td class="normalTd" style="text-align:center;">3</td>
						<td class="normalTd" style="text-align:center;">3</td>
						<td class="normalTd" style="text-align:center;">?????? 30???</td>
					</tr>
					<tr  class="normalTr">
						<td class="normalTd" style="text-align:center;">?????????</td>
						<td class="normalTd" >???????????????(?????????????????????)_(50mg/1???)</td>
						<td class="normalTd" style="text-align:center;">1</td>
						<td class="normalTd" style="text-align:center;">3</td>
						<td class="normalTd" style="text-align:center;">3</td>
						<td class="normalTd" style="text-align:center;">?????? 30???</td>
					</tr>
					<tr  class="normalTr">
						<td class="normalTd" style="text-align:center;">?????????</td>
						<td class="normalTd" >???????????????(?????????????????????)_(50mg/1???)</td>
						<td class="normalTd" style="text-align:center;">1</td>
						<td class="normalTd" style="text-align:center;">3</td>
						<td class="normalTd" style="text-align:center;">3</td>
						<td class="normalTd" style="text-align:center;">?????? 30???</td>
					</tr>
					<tr  class="normalTr">
						<td class="normalTd" style="text-align:center;">?????????</td>
						<td class="normalTd" >???????????????(?????????????????????)_(50mg/1???)</td>
						<td class="normalTd" style="text-align:center;">1</td>
						<td class="normalTd" style="text-align:center;">3</td>
						<td class="normalTd" style="text-align:center;">3</td>
						<td class="normalTd" style="text-align:center;">?????? 30???</td>
					</tr>
					<tr  class="normalTr">
						<td class="normalTd" style="text-align:center;">?????????</td>
						<td class="normalTd" >???????????????(?????????????????????)_(50mg/1???)</td>
						<td class="normalTd" style="text-align:center;">1</td>
						<td class="normalTd" style="text-align:center;">3</td>
						<td class="normalTd" style="text-align:center;">3</td>
						<td class="normalTd" style="text-align:center;">?????? 30???</td>
					</tr>
					<tr  class="normalTr">
						<td class="normalTd" style="text-align:center;">?????????</td>
						<td class="normalTd" >???????????????(?????????????????????)_(50mg/1???)</td>
						<td class="normalTd" style="text-align:center;">1</td>
						<td class="normalTd" style="text-align:center;">3</td>
						<td class="normalTd" style="text-align:center;">3</td>
						<td class="normalTd" style="text-align:center;">?????? 30???</td>
					</tr>
				</table>
			</div>
			<div class="row justify-content-end">
				<div class="row p-1">
					<button id="closeIllCode" onclick="getHiddenIll()" type="button" class="btn btn-primary " 
							style="float: right; border-radius: 10px; margin-right:22px;  margin-bottom:10px;">??????
					</button>
				</div>
			</div>
		</div>
    </div>
</div>

<!-- ????????? ????????? #4 (????????? ?????? ????????????) -->
<!-- <div id="registWindow" class="popWarp" style="display:none;"> -->
<!-- 	<div class="modal-window"> -->
<!-- 		<div class="popInner p-3"> -->
<!-- 			<div class="p-3">?????????????????? ???????????????????</div> -->
<!-- 			<button type="button" onclick="btnYes()" id="btnYes" class="btnYes p-1" style="border-radius: 5px; border-color:darkgray; font-size:15px;" >???, ???????????????.</button> -->
<!-- 			 &nbsp;&nbsp;&nbsp; -->
<!-- 			<button type="button" onclick="btnClose()" id="btnClose" class="btnClose p-1" style="border-radius: 5px; border-color:darkgray; font-size:15px; ">?????????.</button> -->
<!-- 		</div> -->
<!-- 	</div> -->
<!-- </div> -->

<div id="registWindow" class="popWarp" style="display:none; z-index:200">
	<div class="modal-window" style="width: 50%; height: 50%;">
		<div class="popInner p-3 mb-0 pb-0 justify-content-center">
			<form role="piForm">
				<div class="row justify-content-start">
					<div class="col-3 mr-auto">
						<h1 style="font-weight:bold"><span style="color:blue;">PI</span> ??????</h1>
					</div>
					<div class="col-2 align-self-center m-0 p-0 border-right border-dark">
						????????????: <span style="color:blue;">${patient.PNo }</span>
						<input type="hidden" value="${patient.PNo }" name="PNo">
					</div>
					<div class="col-2 align-self-center ml-1 mr-3 m-0 p-0">
						????????????: <span style="color:blue;">${patient.PName }</span>
					</div>
				</div>
				<hr>
				<div class="row">
					<div class="col-4">
						<span style="font-weight:bold">??????</span>
					</div>
					<div class="col-8 text-left" style="padding-left:35px">
						<span style="font-weight:600; font-size:15px;">[????????? ??????]</span>
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
			<div class="col-4 text-center pl-5">PI??? ?????? ???????????????????</div>
			<div class="col-4 align-self-center">
				<button type="button" onclick="btnYes()" id="btnYes" class="btnyes p-1" style="border-radius: 5px; border-color:darkgray; font-size:15px;" >???????????????.</button>
				 &nbsp;&nbsp;&nbsp;
				<button type="button" onclick="btnClose()" id="btnClose" class="btnclose p-1" style="border-radius: 5px; border-color:darkgray; font-size:15px; ">?????????.</button>
			</div>
		</div>
	</div>
</div>

<!-- ????????? ????????? #5 (?????????????????? ????????????) -->
<div id="saveLoadWindow" class="modal-overlay">
	<div class="modal-window">
	    <span class="close-area" style="font-size:30px;">X</span>
	    <div class="content">
			<div class="">
				<h3 class="pb-4"  style="width:100%; font-weight: bolder; padding-top: 10px">??? ???????????? ??????</h3>
			</div>
				<%-- <div class="" style="float:right;">
					<select class="" name="searchType" id="searchType">
						<option value="ic"  ${cri.searchType eq 'tcw' ? 'selected':'' }>????????????</option>
						<option value="in" ${cri.searchType eq 'i' ? 'selected':'' }>?????????</option>
					</select>
					<input id="inputSearchBar1" type="text" name="keyword" placeholder="???????????? ???????????????." value="${param.keyword }" style="width:18vh; height:28px;"/>
					<button type="button" style="border:1pxsolid; border-color:darkgray; border-radius:5px; width:5vh;">??????</button>
				</div> --%>
			<div class="card" style="width:100%; height:240px; overflow-y:scroll; border:1px lightgray solid;" >
				<table id="table22" style="width:100%; font-size:13px;">
					<tr class="normalTr" bgcolor="#333258" style="color: white; height:30px; font-size:15px; position:sticky; top:0px; z-index:1; text-align:center;"> 
						<th class="normalTh" style="width:10% ">????????????</th>
						<th class="normalTh" style="width:10%">?????????</th>
						<th class="normalTh" style="width:20%">????????????</th>
						<th class="normalTh" style="width:20%">??????</th>
						<th class="normalTh" style="width:20%">????????????</th>
						<th class="normalTh" style="width:10%">X-ray</th>
						<th class="normalTh" style="width:10%">????????????</th>
					</tr>
					<tr  class="normalTrSel">
						<td class="normalTd" style="text-align:center;"><div><span id="dateOfTempSave">2022-11-08</span><br><span>09:25:36</span></div></td>
						<td class="normalTd" style="text-align:center;"><div><span>?????????</span></div></td>
						<td class="normalTd" style="text-align:center;"><div><span>????????????</span>,&nbsp;<span>???????????????</span></div></td>
						<td class="normalTd" style="text-align:center;"><div><span>K01.0</span>&nbsp;<span>?????????</span></div></td>
						<td class="normalTd" style="text-align:center;"><div><span>??????(?????????)</span>,&nbsp;<span>???????????????</span></div></td>
						<td class="normalTd" style="text-align:center;">#</td>
						<td class="normalTd" style="text-align:center;"><div><span>?????????</span>,&nbsp;<span>?????????</span></div></td>
					</tr>
					<tr  class="normalTrSel">
						<td class="normalTd" style="text-align:center;"><div><span id="dateOfTempSave">2022-11-08</span><br><span>09:25:36</span></div></td>
						<td class="normalTd" style="text-align:center;"><div><span>????????????</span></div></td>
						<td class="normalTd" style="text-align:center;"><div><span>????????????</span>,&nbsp;<span>???????????????</span></div></td>
						<td class="normalTd" style="text-align:center;"><div><span>K01.0</span>&nbsp;<span>?????????</span></div></td>
						<td class="normalTd" style="text-align:center;"><div><span>??????(?????????)</span>,&nbsp;<span>???????????????</span></div></td>
						<td class="normalTd" style="text-align:center;">#</td>
						<td class="normalTd" style="text-align:center;"><div><span>?????????</span>,&nbsp;<span>?????????</span></div></td>
					</tr>
					<tr  class="normalTrSel">
						<td class="normalTd" style="text-align:center;"><div><span id="dateOfTempSave">2022-11-08</span><br><span>09:25:36</span></div></td>
						<td class="normalTd" style="text-align:center;"><div><span>????????????</span></div></td>
						<td class="normalTd" style="text-align:center;"><div><span>????????????</span>,&nbsp;<span>???????????????</span></div></td>
						<td class="normalTd" style="text-align:center;"><div><span>K01.0</span>&nbsp;<span>?????????</span></div></td>
						<td class="normalTd" style="text-align:center;"><div><span>??????(?????????)</span>,&nbsp;<span>???????????????</span></div></td>
						<td class="normalTd" style="text-align:center;">#</td>
						<td class="normalTd" style="text-align:center;"><div><span>?????????</span>,&nbsp;<span>?????????</span></div></td>
					</tr>
				</table>
			</div>
			<div class="row justify-content-between">
				<div class="row pl-4">??? ????????? ????????? ????????? ?????????????????????.</div>
				<div class="row p-1">
					<button type="button" class="closeWindowModal btn btn-primary " 
							style="float: right; border-radius: 10px; margin-right:22px;  margin-bottom:10px;">??????
					</button>
				</div>
			</div>
		</div>
    </div>
</div>

<!-- ????????? ????????? #6 (????????? ?????? ??????) -->
<div id="selectDiagnosisWindow" class="modal-overlay">
	<div class="modal-window">
	    <span class="close-area" style="font-size:30px;">X</span>
	    <div class="content">
			<div class="">
				<h3 class="pb-1"  style="width:100%; font-weight: bolder; padding-top: 10px">??? ?????? ??????</h3>
			</div>
			<div class="pb-2" style="float:right;">
				<input class="dropdown-toggle" id="dzKeyword" data-toggle="dropdown" 
				style="float:left; border:1px lightgray solid; width:70%; height:30px;">
				<a onclick="" type="button" class="">
					<button style="float:right; border-radius: 5px; background-color:#EAEAEA;
						border-color:darkgray; color:black; width:8vh; height:30px;" onclick="dzListByKeyword()">??????
					</button>
				</a>
			</div>
			<div class="" style="float:right;">
				<select class="" name="dzSearchType" id="dzSearchType" style="border:1px lightgray solid; height:30px;">
					<option value="ko">?????????</option>
					<option value="code">????????????</option>
					<option value="ncode">????????????</option>
					<option value="en">?????????</option>
					<option value="umls">UMLS</option>
					<option value="kcd">KCD</option>
				</select>
			</div>
			<div class="card" style="width:100%; height:300px; overflow-y:scroll; border:1px lightgray solid;" >
				<table id="table22" style="width:100%; font-size:13px;">
					<tr class="normalTr" bgcolor="#333258" style="color: white; height:30px; font-size:15px; position:sticky; top:0px; z-index:1; text-align:center;"> 
						<th class="normalTh" style="width:5% ">??????</th>
						<th class="normalTh" style="width:10%">????????????</th>
						<th class="normalTh" style="width:10%">????????????</th>
						<th class="normalTh" style="width:29%">?????????</th>
						<th class="normalTh" style="width:30%">?????????</th>
						<th class="normalTh" style="width:8%">UMLS</th>
						<th class="normalTh" style="width:8%">KCD</th>
					</tr>
					<tbody id="dzTbody">
						<tr>
							<td class="text-center" colspan="7">
								<strong>????????? ????????? ????????????.</strong>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>

<!-- ???????????? ??? ????????? ????????? ????????? ??? -->


<!-- <script>

/** ?????? ?????? ??????*/
	var target = document.querySelectorAll('.btnOpen');
	var btnPopClose = document.querySelectorAll('.popWarp .btnClose'); 
	var targetID;
	
	var yesClick = document.querySelectorAll('.btnYes')
	
	// ?????? ??????
	for(var i = 0; i < target.length; i++){
	  target[i].addEventListener('click', function(){
	    targetID = this.getAttribute('href');
	    document.querySelector(targetID).style.display = 'block';
	  });
	}
	
	// ?????? ???!
	for(var j = 0; j < target.length; j++){
		yesClick[j].addEventListener('click', function(){
	    this.parentNode.parentNode.style.display = 'none';
	    alert('?????????????????? ??????????????? ?????????????????????.')
	  });
	}
	
	
	// ?????? ??????
	for(var j = 0; j < target.length; j++){
	  btnPopClose[j].addEventListener('click', function(){
	    this.parentNode.parentNode.style.display = 'none';
	  });
	}
	
	
</script> -->

<script>
	// ???????????? ?????????
	let teethCount = 0;
	const teeth_selects = document.querySelectorAll('.teeth');
	teeth_selects.forEach((target) => target.addEventListener("click", teethSelect));
	
	function teethSelect(event){
		var etc = event.target.className;
		var teeth_numer =  event.target.title;
		var text_value =  event.target.textContent;
		var teeth_hidden = document.querySelector('#teethNumberHiddenId'+text_value);
		var p_name = document.querySelector('#p_no').title
		
		if(!p_name){
			swal ( "??????" ,  "????????? ???????????????." ,  "error" );
	  		return;
		}
		
		if(etc == 'col-1 teeth teethDeselect'){
			event.target.className = 'col-1 teeth teethSelect'
			teeth_hidden.value = teeth_numer;
			teethCount += 1;
		}else{
			event.target.className = 'col-1 teeth teethDeselect';
			teeth_hidden.value = "???";
			teethCount -= 1;
		}
	}
</script>


<script>
// ???????????? ?????????
function resetTeethSelect(){
	teethCount = 0;

	var x = document.querySelectorAll(".teethSelect"); 
	var y = document.querySelectorAll(".teethHidden");
	var z = document.querySelectorAll(".piStrong");
	var o = document.querySelectorAll(".float-checkbox");
	
	for (var i = 0; i < x.length; i++) { 
		x[i].className = 'col-1 teeth teethDeselect';
	}
	
	for (var i = 0; i < y.length; i++) { 
		y[i].value = "???";
	}
	
	for (var i = 0; i < z.length; i++) { 
		z[i].className = '';
	}
	for (var i = 0; i < o.length; i++) { 
		o[i].checked = false;
	}
	
	
	document.querySelector("#diagnosisInnerText").innerHTML = '';

	
};
</script>

<script> //???????????? ??????  ?????? ??? ?????? ??????(?????? ?????????) 

	var textList = [];
	var innerTextContent = document.querySelector('#diagnosisInnerText');
	
	function diagnosisbtn(num) {
		var strongColor = document.querySelector('#diagnosisbtn'+num);
		var strongText = strongColor.innerText;
		
		if ((strongColor.classList.contains("strong")) == false) {
			//console.log(strongText);
			textList.push(strongText);
			innerTextContent.innerHTML = textList.join(" ");
			strongColor.classList.add("strong");
			//console.log("paint color!")
			//console.log(textList);
		} else {
			//console.log("remove color! T_T");
			strongColor.classList.remove("strong");
			//console.log(strongText);
			removeArrayElement(textList, strongText);
			innerTextContent.innerHTML = textList.join(" ");
			//console.log(stringValue);
			//console.log(textList);
		} 
	};

</script>

<script> //Pi ?????? ??? ?????? ??????(?????? ?????????) 
	var piTextList = [];
	var piInnerTextContent = document.querySelector('#diagnosisInnerText');
	
	function pibtn(num) {
		var piStrongColor = document.querySelector('#pibtn'+num);
		var piStrongText = piStrongColor.innerText;
		
		if ((piStrongColor.classList.contains("piStrong")) == false) {
			//console.log(strongText);
			piTextList.push(piStrongText);
			piInnerTextContent.innerHTML = piTextList.join(" ");
			piStrongColor.classList.add("piStrong");
			//console.log("paint color!")
			//console.log(textList);
		} else {
			//console.log("remove color! T_T");
			piStrongColor.classList.remove("piStrong");
			//console.log(strongText);
			removeArrayElement(piTextList, piStrongText);
			piInnerTextContent.innerHTML = piTextList.join(" ");
			//console.log(stringValue);
			//console.log(textList);
		} 
	};

</script>

<script> //???????????? ?????? ?????? ??????(?????? ????????? ??????)

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
		// ?????? ????????? ?????? ????????? 1/2 ?????? ??????????????? ????????????

		var popupY= (window.screen.height / 2) - (800 / 2);
		// ?????? ????????? ?????? ????????? 1/2 ?????? ??????????????? ????????????
		
		
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
	if(teethCount > 0){
		swal({
			  title: "??? ????????? ????????? ??????????????????.",
			  text: "?????????????????????????",
			  icon: "warning",
			  buttons: true,
			  dangerMode: true,
			})
			.then((willDelete) => {
			  if (!willDelete) {
			    swal("?????????????????????.");
			    return;
			  } else {
				resetTeethSelect();
				moveToTap(b);
			  }
			});
	}else{
		moveToTap(b);
	}
};
function moveToTap(b){
    if (tabContent[b].classList.contains('hide')) {
        hideTabsContent(0);
        tab[b].classList.add('whiteborder');
        tabContent[b].classList.remove('hide');
        tabContent[b].classList.add('show');
    }
};
</script>


<script> /** textarea ??? ????????? ??????*/

function fn_checkByte(obj){
    const maxByte = 300; //?????? 300?????????
    const text_val = obj.value; //????????? ??????
    const text_len = text_val.length; //????????? ?????????
    
    let totalByte=0;
    for(let i=0; i<text_len; i++){
    	const each_char = text_val.charAt(i);
        const uni_char = escape(each_char); //???????????? ???????????? ??????
        if(uni_char.length>4){
        	// ?????? : 2Byte
            totalByte += 2;
        }else{
        	// ??????,??????,???????????? : 1Byte
            totalByte += 1;
        }
    }
    
    if(totalByte>maxByte){
    	alert('?????? 300Byte????????? ?????????????????????.');
        	document.getElementById("nowByte").innerText = totalByte;
            document.getElementById("nowByte").style.color = "red";
        }else{
        	document.getElementById("nowByte").innerText = totalByte;
            document.getElementById("nowByte").style.color = "green";
        }
}

</script>

<script> /** ???????????? */

function selectList(){
	  var keyword = document.getElementById('inputkeyword').value;
	  const name = choHangul(document.getElementById('inputkeyword').value); 
 	  var choKeyword = (name); 
	  console.log(keyword)
			//???????????? ?????? 
		 	if (keyword!="" && choKeyword==""){ 
			    choDiv = 'y'; 
			}else{ 
			    choDiv = 'n'; 
			} 

			
			function choHangul(str) { 
				  cho = ["???","???","???","???","???","???","???","???","???","???","???","???","???","???","???","???","???","???","???"]; 
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
		  url : "getSearchPatient",
		  type : "get",
		  dataType : "json",
		  data : {keyword: keyword,
			  	  searchType  : choDiv
			   },
		  success : function(data){
			  console.log(data)
			  var s = '';
			  if(data.patList.patientsearchList < 1 || keyword==""){
				  s += '<div style="text-align:center"><h3>??????????????? ????????????</h3></div>' ;
				
			  }else{
				  
				$.each(data.patList.patientsearchList, function(index,value){
			  
					s +=	'<tr> <td style="width:18%"> <a>'+value.pname+'</a></td>';
	                s +=	'<td style="vertical-align : bottom; font-size:15px;"><a>?????????2<p style="font-size:5px;"> "?????????3</p></a></td>';
	                s += '	<td style="width:20%;vertical-align : middle; font-size:13px;" onClick=patient('+value.pno+');curelist('+value.pno+')>'+value.pno+'</td> </tr>';
					s += '<hr/>';
					

				})
			  }
				$("#selectView").html(s);
		  }
			   
})};

</script>



<script>
	
/** ????????? ????????? */
	document.getElementById('selectDate').value = new Date().toISOString().substring(0, 10);

	
/** ????????? ???????????? */
	
	var today = new Date();
	const expDrug = new Date(today);
	expDrug.setDate(today.getDate() + 45);  //????????? 45??? ???
	//console.log(expDrug)
	document.getElementById('selectDate2').value = expDrug.toISOString().substring(0, 10);
			
</script>

<script>/** ????????? ?????? ???*/
	// ?????? ??????
	function openRegistDiagnosis(){
		if(teethCount == 0){
			swal ( "??????" ,  "????????? ??????????????????." ,  "error" );
	  		return;
		}
		
		
		if(piInnerTextContent.innerHTML == ''){
			swal ( "??????" ,  "PI??? ??????????????????." ,  "error" );
	  		return;
		}
		
		chartPiInsert();
		
		
	    document.querySelector('#registWindow').style.display = 'block';
		return;
	}
	// pi??????
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
	//????????????
	function tempSaveBtn(){
		alert("??? ???????????? ???????????? ???????????????. ")
	}

	
</script>
	
<script>/** ???????????? ???????????? ?????????*/
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


<script>/** ????????? */

//?????????(????????? ??????/??????)
document.querySelector("#btn-modal1").onclick = function(){
	//?????? ????????? ????????? ???????????? ????????? ??????
	const modal = document.getElementById("modal1");
    modal.style.display = "flex";
	
	//???????????? ?????????(x) ????????? ????????? ???????????? ????????? ??????
	const closeBtn = modal.querySelector(".close-area");
	closeBtn.addEventListener("click", e => {
	    modal.style.display = "none";
	})
	    
	    
	//????????? ?????? ????????? ???????????? ???????????? ????????? ??????
	modal.addEventListener("click", e => {
	    const evTarget = e.target;
	    if(evTarget.classList.contains("modal-overlay")) {
	        modal.style.display = "none";
	    }
	})
};

//?????????(???????????? ??????)
document.querySelector("#inputSearchBar3").onclick = function(){
	const modal = document.getElementById("modal2");
    modal.style.display = "flex";   
	
	const closeBtn = modal.querySelector(".close-area");
	closeBtn.addEventListener("click", e => {
	    modal.style.display = "none";
	})
	    
	modal.addEventListener("click", e => {
	    const evTarget = e.target;
	    if(evTarget.classList.contains("modal-overlay")) {
	        modal.style.display = "none";
	    }
	})
};

//?????????(???????????? ????????????)
document.querySelector("#btn-modal3").onclick = function(){
	const modal = document.getElementById("modal3");
    modal.style.display = "flex";   
	
	const closeBtn = modal.querySelector(".close-area");
	closeBtn.addEventListener("click", e => {
	    modal.style.display = "none";
	})
	    
	modal.addEventListener("click", e => {
	    const evTarget = e.target;
	    if(evTarget.classList.contains("modal-overlay")) {
	        modal.style.display = "none";
	    }
	})
};


//?????????(????????? ?????? ??????)
document.querySelector("#selectDiagnosisView").onclick = function(){
	const modal = document.getElementById("selectDiagnosisWindow");
    modal.style.display = "flex";   
	
	const closeBtn = modal.querySelector(".close-area");
	closeBtn.addEventListener("click", e => {
	    modal.style.display = "none";
	})
	    
	modal.addEventListener("click", e => {
	    const evTarget = e.target;
	    if(evTarget.classList.contains("modal-overlay")) {
	        modal.style.display = "none";
	    }
	})
};


</script> 

<script> /** ????????? ?????? ?????? ??? ?????? ??????(?????? ?????????)*/
	
	

	//console.log("yes!");
	
function indexOfRow(x) {
  //console.log("row index = " + (x.rowIndex-1));
	trRowIndex = x.rowIndex-1;
	console.log("row index = " + trRowIndex);
	  
	 	var nts1 = document.querySelectorAll(".normalTrSel1");
	 	var sdt1 = document.querySelectorAll(".searchDiagnosisInnerText1");
	
	//nts1[trRowIndex].addEventListener("click",function(){
		var searchInnerText = sdt1[trRowIndex].innerText; 
		console.log("index Step",trRowIndex);	
		if (nts1[trRowIndex].classList.contains("normalTrSelChange1") == false){
			nts1[trRowIndex].classList.add("normalTrSelChange1");
			console.log("no!");
				//this.sdt1.innerText
				//delArr[0].ClassList.remove("normalTrSelChange");
				//delArr.splice(0,1,trs[i]);
				
			textList.push(searchInnerText);
			innerTextContent.innerHTML = textList.join(",\u00a0\u00a0");
			console.log(textList);
				
		} else if(nts1[trRowIndex].classList.contains("normalTrSelChange1") == true){
			nts1[trRowIndex].classList.remove("normalTrSelChange1");
			console.log("yes!");
			
			removeArrayElement(textList, searchInnerText);
			innerTextContent.innerHTML = textList.join(",\u00a0\u00a0"); 
			console.log(textList);
		}
	//});
  
}
	


</script>

<script>
	// ????????? ????????????
	function dzListByKeyword(){
		  var keyword = document.getElementById('dzKeyword').value;
		  var searchType = document.getElementById('dzSearchType').value;
		  
		  	var d =""
				d += '<tr style="height:30vh"><td class="text-center" colspan="7">';
				d += '<div class="sk-three-bounce">';
				d += '<div class="sk-child sk-bounce1"></div>';
				d += '<div class="sk-child sk-bounce2"></div>';
				d += '<div class="sk-child sk-bounce3"></div>';
				d += '</div>';
				d += '</td></tr>';
				$("#symTbody").html(d);
	
		  $.ajax({
			  url : "getDiseasesListByKeyword",
			  type : "post",
			  data : {"keyword": keyword,"searchType":searchType},
			  success : function(data){
				  var s = '';
				  $("#dzTbody").html(s);
				  if(data < 1){
					  s = `<tr><td class="text-center" colspan="7"><strong>????????? ????????? ????????????.</strong></td></tr>`;
					  $("#dzTbody").html(s);
					  return;
				  }else{
					$.each(data, function(index,item){
// 							s += '<tr class="normalTrSel1" onclick="indexOfRow(this)">';
// 								s += '<td class="normalTd" style="text-align:center;">'+(index+1)+'</td>';
// 								s += '<td class="normalTd" style="text-align:center;">'+item.dzCode+'</td>';
// 								s += '<td class="normalTd" style="text-align:center;">'+item.dzNcode+'</td>';
// 								s += '<td class="searchDiagnosisInnerText1 normalTd">'+item.dzKo+'</td>';
// 								s += '<td class="normalTd">'+item.symEn+'</td>';
// 								s += '<td class="normalTd"style="text-align:center;">'+item.dzUmls+'</td>';
// 								s += '<td class="normalTd"style="text-align:center;">'+item.dzKcd+'</td>';
// 							s += '</tr>';
					})
					$("#dzTbody").html(s);
				  }
			  },
			  error : function (jqXHR, textStatus, errorThrown){
				alert("???????????? : "+textStatus);  
			  }
		  })
	};
</script>

<script>
	// ????????? ???????????????
	function drugListByKeyword(){
	 	var keyword = document.getElementById('drugKeyword').value;
	  	var searchType = document.getElementById('drugSearchType').value;
	  	
	  	if(keyword == ''){
	  		swal ( "??????" ,  "???????????? ???????????????." ,  "error" );
	  		return;
	  	}
	  	
	  	var d =""
		d += '<tr style="height:30vh"><td class="text-center" colspan="4">';
		d += '<div class="sk-three-bounce">';
		d += '<div class="sk-child sk-bounce1"></div>';
		d += '<div class="sk-child sk-bounce2"></div>';
		d += '<div class="sk-child sk-bounce3"></div>';
		d += '</div>';
		d += '</td></tr>';
		$("#drugTbody").html(d);
		  $.ajax({
			  url : "getDrugListByKeyword",
			  type : "post",
			  data : {"keyword": keyword,"searchType":searchType},
			  success : function(data){
				  var s = '';
				  $("#drugTbody").html(s);
				  if(data < 1){
					  s = `<tr><td class="text-center" colspan="4"><strong>????????? ????????? ????????????.</strong></td></tr>`;
					  $("#drugTbody").html(s);
					  return;
				  }else{
				 	
					$.each(data, function(index,item){
						s += '<tr class="normalTrSel1" onclick="">';
						s += '<td class="normalTd" style="text-align:center;">'+item.drugNo+'</td>'
						s += '<td class="normalTd">'+item.drugName+'</td>'
						s += '<td class="normalTd">'+item.drugMaker+'</td>'
						s += '<td class="normalTd"style="text-align:center;">'+item.drugPnum+'</td>'
						s += '</tr>';
					})
					$("#drugTbody").html(s);
				  }
			  },
			  error : function (jqXHR, textStatus, errorThrown){
				alert("???????????? : "+textStatus);  
			  }
		  })
	};
</script>
<script>
	function serchDrug(){
		if(window.event.keyCode == 13){
			drugListByKeyword();
		}
	}
</script>
<script>
	function getPatient(){
		var pKeyword = document.querySelector('#patientKeyword').value
		var iframValue = "/chart/list";
		var url = iframValue+'?pNo='+pKeyword;
		if(pKeyword == ''){
			alert("??????????????? ???????????????");
			return;
		}
		
		parent.document.querySelector('iframe[name="ifr"]').setAttribute("src", url);
// 		alert("????????????");
	}
</script>
<script>
	function chageToChart(pno){
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
	chartScroll.scrollTop = chartScroll.scrollHeight
</script>

<script>
	function chartPiInsert(){
		var ur = ""
		var ul = ""
		var br = ""
		var bl = ""

		
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
							bl += document.querySelector('#teethNumberHiddenId${numStr}').value
						</c:forEach>
					</c:when>
					<c:otherwise>
						<c:forEach begin="1" end="8" var="j">
							<c:set value="${i}${reverse - j}" var="numStr"/>
							br += document.querySelector('#teethNumberHiddenId${numStr}').value
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			
			document.querySelector('#ulInput').value = ul;
			document.querySelector('#urInput').value = ur;
			document.querySelector('#blInput').value = bl;
			document.querySelector('#brInput').value = br;
			
			
			
			var diagnosisInnerText = document.querySelector('#diagnosisInnerText').textContent;
			
			document.querySelector('#piInputText').textContent = diagnosisInnerText;
			document.querySelector('#piInputHiddenText').value = diagnosisInnerText;
	}
</script>


<c:if test="${from eq 'regist'}" >
	<script>
	window.onload = function(){
		swal({
			  title: "??????",
			  text: "PI??? ?????????????????????.",
			  icon: "success",
			  button: "??????",
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