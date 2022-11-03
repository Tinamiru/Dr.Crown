<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<style>

/** 자주하는 진료 클릭 이벤트*/
	.strong {font-weight:700;color:blue}


	
/** 자주하는 진료 표 CSS */
	.tdFrequentDiagnosis20{
	
		width:20%;
		background-color:#0D6EFD;
		color:white;
		border: 1px black solid;
		padding: 5px;
	}

	.tdFrequentDiagnosis80{
	
		width:80%;
		color:black;
		border: 1px solid;
		text-align:left;
		padding-left:10px;
	}
	
 	.trFrequentDiagnosis{
	
		border: 1px black solid;
	} 
	
	.frequentDiagnosisButton{
		
		border: 1pxsolid;
		border-color: darkgray;
		border-radius: 5px;
	}
	
	
	#frequentDiagnosisTable{
		
		border: 1px black solid;
	}


 
/** 처방전 등록 CSS */
	
	
	#wrap{
		padding:10px;
	}
	
	.btnOpen{
		font-weight:bold; 
		margin:5px; 
		padding:4px 6px; 
		color:#fff;
	}
	
 	.popWarp{
		position:fixed; 
		top:50%; 
		left:30%; 
		width:20%;
		height::450px;
		background:#F9F9F9; 
		font-size:20px; 
		text-align:center;
		color:black;
		border-radius:10px;
		border:1px #333258 solid;
		
	} 
	
	.popWrap:after{
		display:inline-block; 
		height:100%; 
		vertical-align:middle; 
		content:'';
	}
	
	.popWrap .popInner{
		display:inline-block; 
		padding:20px 30px; 
		background:#fff; 
		width:200px; 
		vertical-align:middle; 
		font-size:15px;
	}


</style>


<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" />
<c:set var="minfoList" value="${dataMap.minfoList }" />

<div style="position: fixed; width: 100%; height: 100%; overflow-y: scroll; " >
	<div class="contaner-fluid" style="margin: 1.5em;">
		<div class="row">
			<div class="col-sm-5 justify-content-center" style="border-right: solid 1px;">
				<section class="content" style="hight: 50vh; wigth:95%;"> 
					<section class="content-header" >
						<div class="container-fluid" >
							<h3>▶ 진료내역</h3>
						</div>
						<div class="card" style="overflow-y: scroll; overflow-x: scroll; height:49vh" >
							<div class="card-body" style="text-align: center; font-size: 13px;;">
								<div class="row">
									<div class="col-sm-12">
										<table class="table table-bordered" id="userListTable"  style="width:90vh;">
											<tr bgcolor="#333258" style="color: white; cursor: default;">
												<th style="width:20%;">진료일자</th>
												<th style="width:30%;">치식</th>
												<th style="width:35%;">진료내역</th>
												<th style="width:15%;">담당의</th>
												<!-- yyyy-MM-dd  -->
											</tr>
											<tr>
												<td style="vertical-align:top">2022-09-27</td>
												<td style="vertical-align:top">
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
												<td style="vertical-align:top; text-align:left">
													<div class="card"  style="margin:0; auto;">
														<ul>
															<li><span style="color:orange; font-weight:bold">진료</span><span class="pl-2">부분 치석 제거</span></li>
															<li class="pl-2">-<span class="pl-2">치석제거 d/t 치석,부종,출혈</span></li>
															<li class="pl-2">-<span class="pl-2">치석제거 d/t 치석,부종,출혈</span></li>
															<li class="pl-2">-<span class="pl-2">치석제거 d/t 치석,부종,출혈</span></li>
															<li class="pl-2">-<span class="pl-2">치석제거 d/t 치석,부종,출혈</span></li>
															<li class="pl-2">-<span class="pl-2">치석제거 d/t 치석,부종,출혈</span></li>
														</ul>
													</div>
												</td>
												<td>심금규</td>
											</tr>
											<tr>
												<td style="vertical-align:top">2022-09-27</td>
												<td style="vertical-align:top">
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
												<td style="vertical-align:top; text-align:left">
													<div class="card"  style="margin:0; auto;">
														<ul>
															<li><span style="color:orange; font-weight:bold">진료</span><span class="pl-2">부분 치석 제거</span></li>
															<li class="pl-2">-<span class="pl-2">치석제거 d/t 치석,부종,출혈</span></li>
															<li class="pl-2">-<span class="pl-2">치석제거 d/t 치석,부종,출혈</span></li>
															<li class="pl-2">-<span class="pl-2">치석제거 d/t 치석,부종,출혈</span></li>
															<li class="pl-2">-<span class="pl-2">치석제거 d/t 치석,부종,출혈</span></li>
															<li class="pl-2">-<span class="pl-2">치석제거 d/t 치석,부종,출혈</span></li>
														</ul>
													</div>
												</td>
												<td>심금규</td>
											</tr>
	
											<c:if test="${!empty minfoList }">
												<c:forEach items="${minfoList}" var="minfo">
													<tr>
	
														<td>${minfo.minfoClass }</td>
														<td>${minfo.minfoCode }</td>
														<td>${minfo.minfoContent }
														<td>${minfo.minfoWriter }</td>
														<td>${minfo.minfoWriter }</td>
														<td>${minfo.minfoWriter }</td>
														<td><fmt:formatDate value="${minfo.minfoRegdate }"
																pattern="yyyy-MM-dd" /></td>
													</tr>
	
												</c:forEach>
											</c:if>
											<c:if test="${empty minfoList }">
												<tr>
													<td colspan="7" class="text-center">해당내용이 없습니다.</td>
												</tr>
											</c:if>
										</table>
									</div>
								</div>
							</div>
						</div>
					</section>
					<section class="content-header" >
						<div class="container-fluid" >
							<h3>▶ 처치내역</h3>
						</div>
						<div class="row justify-content-around" style="width:100%; height:35vh;">
							<div class="card col-sm-6" style= "text-align: center; font-size: 13px; ">
								<table class="table table-bordered" id="userListTable" style="height:100%; ">
									<tr bgcolor="#333258" style="color: white; cursor: default; height:5vh;">
										<th style="width:20%;">구분</th>
										<th style="width:40%;">진료항목</th>
										<th style="width:10%;">회</th>
										<th style="width:30%;">금액</th>
										<!-- yyyy-MM-dd  -->
									</tr>
									<tr >
										<td>#</td>
										<td>발치 (사랑니)</td>
										<td>3</td>
										<td>42,500 원</td>
									</tr>
								</table>
							</div>
							<div class="card col-sm-6" style= "text-align: center; font-size: 13px; overflow-x: scroll;">
								<table class="table table-bordered" id="userListTable" style=" height:100%; width:50vh;">
									<tr>
										<td style="width:20%; color: white; " bgcolor="#333258" >진료일</td>
										<td style="width:30%;">2022-09-26</td>
										<td style="width:20%; color: white; " bgcolor="#333258" >보험구분</td>
										<td style="width:30%;">건강 보험</td>
									</tr>
									<tr>
										<td bgcolor="#333258" style=" color: white; ">진료의사</td>
										<td>신민수</td>
										<td bgcolor="#333258" style=" color: white; ">진료과</td>
										<td>구강외과</td>
									</tr>
									<tr>
										<td bgcolor="#333258" style=" color: white; " >상병명</td>
										<td>입력바람</td>
										<td bgcolor="#333258" style=" color: white; " >기타내역</td>
										<td>입력</td>
									</tr>
									<tr>
										<td bgcolor="#333258" style=" color: white; ">총진료비</td>
										<td >125,000원</td>
										<td bgcolor="#333258"  style=" color: white; ">본인부담</td>
										<td>87,000원</td>
									</tr>
								</table>
							</div>
						</div>
					</section>
				</section>
			</div>
			<div class="col-sm-5 justify-content-center" style="border-right: solid 1px; height: overflow-y:scroll;">
				<section class="content" style="width: 95%;">
					<section class="content-header">
							<div class="container-fluid pb-3" style="">
								<h3>▶자주하는 진료</h3>
							</div>
							<div class="card pl-3" style="width:97%;">
								<table id="frequentDiagnosisTable" class="bg-white text-center" id="" style=" height:100%; width:100%;">
									<tr class="trFrequentDiagnosis">
										<td class="tdFrequentDiagnosis20">기본진료</td>
										<td class="tdFrequentDiagnosis80">
											<button class="frequentDiagnosisButton" id="diagnosisbtn1" onclick="diagnosisbtn(1)">구강검진</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn2" onclick="diagnosisbtn(2)">구내염처치</button>
										</td>
									</tr>
									<tr class="trFrequentDiagnosis">
										<td class="tdFrequentDiagnosis20">X-ray</td>
										<td class="tdFrequentDiagnosis80">
											<button class="frequentDiagnosisButton" id="diagnosisbtn3" onclick="diagnosisbtn(3)">치근단</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn4" onclick="diagnosisbtn(4)">파노라마</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn5" onclick="diagnosisbtn(5)">CT촬영</button>
										</td>
									</tr>
									<tr class="trFrequentDiagnosis">
										<td class="tdFrequentDiagnosis20">마취</td>
										<td class="tdFrequentDiagnosis80">
											<button class="frequentDiagnosisButton" id="diagnosisbtn6" onclick="diagnosisbtn(6)">침윤마취</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn7" onclick="diagnosisbtn(7)">전달마취</button>
										</td>
									</tr>
									<tr class="trFrequentDiagnosis">
										<td class="tdFrequentDiagnosis20">보존</td>
										<td class="tdFrequentDiagnosis80">
											<button class="frequentDiagnosisButton" id="diagnosisbtn8" onclick="diagnosisbtn(8)">진정처치</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn9" onclick="diagnosisbtn(9)">보통처치</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn10" onclick="diagnosisbtn(10)">지각(간단)</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn11" onclick="diagnosisbtn(11)">지각(복잡)</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn12" onclick="diagnosisbtn(12)">치수복조</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn13" onclick="diagnosisbtn(13)">보철재부착</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn14" onclick="diagnosisbtn(14)">러버댐</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn15" onclick="diagnosisbtn(15)">교합조정</button>
										</td>
									</tr>
									<tr class="trFrequentDiagnosis">
										<td class="tdFrequentDiagnosis20">GI즉처</td>
										<td class="tdFrequentDiagnosis80">
											<button class="frequentDiagnosisButton" id="diagnosisbtn16" onclick="diagnosisbtn(16)">1면(GI즉처)</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn17" onclick="diagnosisbtn(17)">2면(GI즉처)</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn18" onclick="diagnosisbtn(18)">3면(GI즉처)</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn19" onclick="diagnosisbtn(19)">4면(GI즉처)</button>
										</td>
									</tr>
									<tr class="trFrequentDiagnosis">
										<td class="tdFrequentDiagnosis20">GI충전</td>
										<td class="tdFrequentDiagnosis80">
											<button class="frequentDiagnosisButton" id="diagnosisbtn20" onclick="diagnosisbtn(20)">1면(GI충전)</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn21" onclick="diagnosisbtn(21)">2면(GI충전)</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn22" onclick="diagnosisbtn(22)">3면(GI충전)</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn23" onclick="diagnosisbtn(23)">4면(GI충전)</button>
										</td>
									</tr>
									<tr class="trFrequentDiagnosis">
										<td class="tdFrequentDiagnosis20">Am즉처</td>
										<td class="tdFrequentDiagnosis80">
											<button class="frequentDiagnosisButton" id="diagnosisbtn24" onclick="diagnosisbtn(24)">1면(Am즉처)</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn25" onclick="diagnosisbtn(25)">2면(Am즉처)</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn26" onclick="diagnosisbtn(26)">3면(Am즉처)</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn27" onclick="diagnosisbtn(27)">4면(Am즉처)</button>
										</td>
									</tr>
									<tr class="trFrequentDiagnosis">
										<td class="tdFrequentDiagnosis20">근관치료</td>
										<td class="tdFrequentDiagnosis80">
											<button class="frequentDiagnosisButton" id="diagnosisbtn28" onclick="diagnosisbtn(28)">발수</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn29" onclick="diagnosisbtn(29)">치수절단</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn30" onclick="diagnosisbtn(30)">근관확대</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn31" onclick="diagnosisbtn(31)">근관세척</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn32" onclick="diagnosisbtn(32)">근관장측정</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn33" onclick="diagnosisbtn(33)">가압근충</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn34" onclick="diagnosisbtn(34)">단순근충</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn35" onclick="diagnosisbtn(35)">응급처치</button>
										</td>
									</tr>
									<tr class="trFrequentDiagnosis">
										<td class="tdFrequentDiagnosis20">발치/외과</td>
										<td class="tdFrequentDiagnosis80">
											<button class="frequentDiagnosisButton" id="diagnosisbtn36" onclick="diagnosisbtn(36)">발치</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn37" onclick="diagnosisbtn(37)">난발치</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn38" onclick="diagnosisbtn(38)">단순매복</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn39" onclick="diagnosisbtn(39)">복잡매복</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn40" onclick="diagnosisbtn(40)">완전매복</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn41" onclick="diagnosisbtn(41)">치조골성형술</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn42" onclick="diagnosisbtn(42)">S/O</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn43" onclick="diagnosisbtn(43)">드레싱</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn44" onclick="diagnosisbtn(44)">실크 3/0</button>
										</td>
									</tr>
									<tr class="trFrequentDiagnosis">
										<td class="tdFrequentDiagnosis20">치주치료</td>
										<td class="tdFrequentDiagnosis80">
											<button class="frequentDiagnosisButton" id="diagnosisbtn45" onclick="diagnosisbtn(45)">치석제거(연1회)</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn46" onclick="diagnosisbtn(46)">부분치석제거</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn47" onclick="diagnosisbtn(47)">치근황택</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn48" onclick="diagnosisbtn(48)">치수소파</button>
										</td>
									</tr>
									<tr class="trFrequentDiagnosis">
										<td class="tdFrequentDiagnosis20">치관확장</td>
										<td class="tdFrequentDiagnosis80">
											<button class="frequentDiagnosisButton" id="diagnosisbtn49" onclick="diagnosisbtn(49)">치은절제(치관확장)</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn50" onclick="diagnosisbtn(50)">APF</button>
										</td>
									</tr>
									<tr class="trFrequentDiagnosis">
										<td class="tdFrequentDiagnosis20">제거</td>
										<td class="tdFrequentDiagnosis80">
											<button class="frequentDiagnosisButton" id="diagnosisbtn51" onclick="diagnosisbtn(51)">충전재제거</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn52" onclick="diagnosisbtn(52)">인레이,Cr제거</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn53" onclick="diagnosisbtn(53)">포스트제거</button>
										</td>
									</tr>
									<tr class="trFrequentDiagnosis">
										<td class="tdFrequentDiagnosis20">기타</td>
										<td class="tdFrequentDiagnosis80">
											<button class="frequentDiagnosisButton" id="diagnosisbtn54" onclick="diagnosisbtn(54)">홈메우기</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn55" onclick="diagnosisbtn(55)">치은절제(기타)</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn56" onclick="diagnosisbtn(56)">혈당검사</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn57" onclick="diagnosisbtn(57)">근육검사</button>
										</td>
									</tr>
									<tr class="trFrequentDiagnosis">
										<td class="tdFrequentDiagnosis20">비급여</td>
										<td class="tdFrequentDiagnosis80">
											<button class="frequentDiagnosisButton" id="diagnosisbtn58" onclick="diagnosisbtn(58)">아목시실린</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn59" onclick="diagnosisbtn(59)">오구멘틴</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn60" onclick="diagnosisbtn(60)">로도질</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn61" onclick="diagnosisbtn(61)">소아처방</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn62" onclick="diagnosisbtn(62)">근이완제</button>
											<button class="frequentDiagnosisButton" id="diagnosisbtn63" onclick="diagnosisbtn(63)">덴티스타</button>
										</td>
									</tr>
								</table>
							</div>
							<div>
								<span style="font-weight:600; font-size:15px;">[선택된 진료]</span>
								<div id="diagnosisInnerText"></div>
							</div>
							<div class="pt-3 container-fluid" style="width:97%; height:20%">
								<h3>▶진료메모</h3>
								<textarea class="form-control" style="height:5vh;"></textarea>
							</div>
							
							<!-- <div id="wrap" class="wrap text-right">
								<a href="#popInfo" type="button" class="btnOpen">
									<button style="float: right; border-radius: 5px; margin: 5px; background-color:#333258;
										border-color:darkgray; color:white;">처방전 등록 (임시버튼)
									</button>
								</a>
								<div id="popInfo" class="popWarp" style="display:none;">
									<div class="popInner p-3">
										<div class="p-3">처방전등록을 하시겠습니까?</div>
										<button type="button" class="btnYes p-1" style="border-radius: 5px; border-color:darkgray; font-size:15px;" >네, 등록합니다.</button>
										 &nbsp;&nbsp;&nbsp;
										<button type="button" class="btnClose p-1" style="border-radius: 5px; border-color:darkgray; font-size:15px; ">아니오.</button>
									</div>
								</div>
							</div> -->	
							
							<div id="wrap2" class="wrap2 text-right">
								<a onclick="diagnosisRegist()" type="button" class="btnOpen2">
									<button style="float: right; border-radius: 5px; margin: 5px; margin-right:21px; margin-top:30px; background-color:#333258;
										border-color:darkgray; color:white; width:135px; height:40px;">처방전 등록
									</button>
								</a>
							</div>
								
					</section>
				</section>
			</div>
			<div class="col-sm-2" style="heigth:30vh;">
				<div class="pb-3 pr-0">
					<h3>▶환자정보</h3>
					<table class="table-sm">
						<tr>
							<td style="font-weight:600; color:blue;">곽진기(10333)</td>
							<td>22/남</td>															
						</tr>
						<tr>
							<td class="text-right">환자 연락처 :</td>
							<td style="font-size:14px;">010-1234-5678</td>															
						</tr>
						<tr>
							<td class="text-right">보험구분 :</td>
							<td>건강보험</td>															
						</tr>
						<tr>
							<td class="text-right">내원경로 :</td>
							<td>소개직원</td>															
						</tr>
						<tr>
							<td class="text-right">소개자 :</td>
							<td>김금규</td>															
						</tr>
						<tr>
							<td class="text-right">구분 :</td>
							<td>#</td>															
						</tr>
						<tr>
							<td class="text-right">리콜구분 :</td>
							<td>#</td>															
						</tr>
						<tr>
							<td class="text-right">담당 :</td>
							<td>김의사</td>															
						</tr>
					</table>
				</div>
				<div class="pt-3">
					<h3>▶접수목록</h3>
					<div style="height:450px; overflow:auto">
						<table class="table table-striped table-responsive-sm2 ">
							<tr>
								<td>검진대기</td>
								<td>곽금규(95)</td>															
							</tr>	
						 	<tr>
								<td>검진대기</td>
								<td>곽금규(95)</td>															
							</tr>	
						 	<tr>
								<td>검진대기</td>
								<td>곽금규(95)</td>															
							</tr>	
						 	<tr>
								<td style="color:red">진료중</td>
								<td>곽금규(95)</td>															
							</tr>	
						 	<tr>
								<td style="color:red">진료중</td>
								<td>김민수(68)</td>															
							</tr>	
						 	<tr>
								<td style="color:red">진료중</td>
								<td>심재린(72)</td>															
							</tr>	
						 	<tr>
								<td style="color:red">진료중</td>
								<td>조정현(45)</td>															
							</tr>	
						 </table>	
					 </div>	   	
				 </div>
			</div>
		</div>


		<div class="row">
			<div style="width: 47%; margin-left: 1.5em;">


				<div style="max-height: 39%; overflow-y: scroll;"></div>
			</div>
		</div>
	</div>
</div>



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

<script> //자주하는 진료  추가 및 삭제 펑션(클릭 이벤트) 

	var textList = [];
	
	function diagnosisbtn(num) {
		var strongColor = document.querySelector('#diagnosisbtn'+num);
		var strongText = strongColor.innerText;
		var innerTextContent = document.querySelector('#diagnosisInnerText');
		
		if ((strongColor.classList.contains("strong")) == false) {
			//console.log(strongText);
			textList.push(strongText);
			innerTextContent.innerHTML = textList;
			strongColor.classList.add("strong");
			//console.log("paint color!")
			//console.log(textList);
		} else {
			//console.log("remove color! T_T");
			strongColor.classList.remove("strong");
			//console.log(strongText);
			removeArrayElement(textList, strongText);
			innerTextContent.innerHTML = textList;
			//console.log(stringValue);
			//console.log(textList);
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

