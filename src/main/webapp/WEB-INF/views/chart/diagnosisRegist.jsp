<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<style>



</style>


<style>


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
		z-index:1;
		position:fixed; 
		top:40%; 
		left:40%; 
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
 


/** placeholder */
	input::placeholder{
	
		text-align: center;
		color: darkgray;
		font-style: italic;
		font-size: 14px;
	}
	
	input{
		color: #000000;
		font-size: 14px;
	}
	
	input:hover{
	    background: #EAEAEA;
	}
	
	input:focus{
	    outline: none;
	}


/* td:hover{
background: #EAEAEA;
} */


</style>




<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" />
<c:set var="minfoList" value="${dataMap.minfoList }" />


<script src="https://kit.fontawesome.com/9e1d56064a.js" crossorigin="anonymous"></script>





<div class="content-fluid" style="height:1000px; weight:800px;">
	<div style="background-color: #333258; height: 100px; align-items:center; 
				display: flex; justify-content:center;">
		<img src="<%=request.getContextPath()%>/resources/images/logo-full.png" 
			 style="width: 300px; height: 75px;">
	</div>
	

			
			<!-- <div class="row"> -->

	
	
	
	
	
	
	
	
	<div class="col-12" style="padding:5px 30px; ">
		<div class="pl-4 pb-2" style="float:left;">
			<h3 class="pb-2" style="font-weight: bolder; padding-top: 10px">ㅣ 원외 처방전 발급 정보</h3>
		</div>
		<div class ="col-12 row p-0 pt-2 pb-2 table justify-content-center" >
			<table class="col-11 justify-content-center">
				<tr style="height:35px;">
					<td style="width:140px; background-color:#333258; text-align:center; color:white;">발급일</td>
					<td style="width:140px;"><input name="selectDate" type="date" id="selectDate" disabled></td>
					<td style="width:140px; background-color:#333258; text-align:center; color:white;">처방전 유효기간</td>
					<td style="width:140px;"><input name="selectDate" type="date" id="selectDate2" disabled> 까지</td>
					<td style="width:140px; background-color:#333258; text-align:center; color:white;">처방전번호</td>
					<td style="width:140px;"><input value="26222-10" type="text" style="width:150px; height:30px; text-align:center;" disabled></input></td>
				</tr>
				<tr>
					<td style="background-color:#333258; text-align:center; color:white;">질병코드</td>
					<td colspan="3"><input id="inputSearchBar3" onclick="getShowIll()" type="text" name="keyword" placeholder="상병코드 선택(환자 요청시 생략가능)" value="${param.keyword }" style="width:30vh; height:35px;"></td>
					<td style=" background-color:#333258; text-align:center; color:white;">발급의사</td>
					<td ><input value="심금규" type="text" style="width:150px; height:30px; text-align:center;" disabled></input></td>
				</tr>
			</table>
   		</div>
	</div>
	
	
	<div id="searchIllCode" class="col-12" style="background-color:#FAECC5; padding:5px 30px; display:none;">
		<div class="row justify-content-around">
			<div class="col-6 pt-4">
				<div class="pl-4 pb-2">
					<h3 class="pb-2" style="font-weight: bolder; padding-top: 10px">ㅣ 진료기록에 존재하는 상병명 목록</h3>
					<div class="pr-5" style="float:right;">
						<select class="" name="searchType" id="searchType">
							<option value="ic"  ${cri.searchType eq 'tcw' ? 'selected':'' }>상병코드</option>
							<option value="in" ${cri.searchType eq 'i' ? 'selected':'' }>상병명</option>
						</select>
						<input id="inputSearchBar1" type="text" name="keyword" placeholder="검색어를 입력하세요." value="${param.keyword }" style="width:16vh; height:28px;"/>
						<button type="button" style="border:1pxsolid; border-color:darkgray; border-radius:5px; width:5vh;">검색</button>
					</div>
				</div>
			</div>
			<div class="col-6 pt-4">
				<div class="pl-4 pb-2">
					<h3 class="pb-2" style="font-weight: bolder; padding-top: 10px">ㅣ 상병명 검색</h3>
					<div class="pr-5" style="float:right;">
						<select class="" name="searchType" id="searchType">
							<option value="ic"  ${cri.searchType eq 'tcw' ? 'selected':'' }>상병코드</option>
							<option value="in" ${cri.searchType eq 'i' ? 'selected':'' }>상병명</option>
						</select>
						<input id="inputSearchBar2" type="text" name="keyword" placeholder="검색어를 입력하세요." value="${param.keyword }" style="width:16vh; height:28px;"/>
						<button type="button" style="border:1pxsolid; border-color:darkgray; border-radius:5px; width:5vh;">검색</button>
					</div>
				</div>
			</div>
		</div>
		<div class="row justify-content-around">
			<div class="col-sm-6" style="height: 250px; overflow-y:scroll; padding:0; margin:0;">
				<table class="table table-bordered border-primary text-center" style="padding:0; margin:0;  border:1px black solid;" >
					<tr bgcolor="#333258" style="color: white; height:45px; font-size:15px; position:sticky; top:0px; z-index:1;">
						<td style="width:30%; text-align:center;">치식</td>
						<td style="width:30%; text-align:center;">상병코드</td>
						<td style="width:40%; text-align:center;">상병명</td>
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
						<td>매몰치</td>
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
						<td>만복치</td>
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
						<td>매몰만복치</td>
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
						<td>슈퍼매몰치</td>
					</tr>
					<c:if test="${!empty minfoList }">
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
					</c:if>
<%-- 								<c:if test="${empty minfoList }">
									<tr>
										<td colspan="7" class="text-center">해당내용이 없습니다.</td>
									</tr>
								</c:if> --%>
				</table>
			</div>
			<div class ="col-sm-6 pl-4" style="height: 250px; overflow-y:scroll; padding:0; margin:0;">
				<table class="table table-bordered text-center" style="padding:0; margin:0;" >
					<tr bgcolor="#333258" style="color: white; height:45px; font-size:15px; position:sticky; top:0px; z-index:1;"> 
						<td style="width:20%; text-align:center;">상병코드</td>
						<td style="width:80%; text-align:center;">상병명</td>
					</tr>
					<tr style="font-size: 15px; background-color:white; height:50px;">
						<td>K01.0</td>
						<td>매몰치</td>
					</tr>
					<tr style="font-size: 15px; background-color:white; height:50px;">
						<td>K01.0</td>
						<td>매몰치</td>
					</tr>
					<tr style="font-size: 15px; background-color:white; height:50px;">
						<td>K01.0</td>
						<td>매몰치</td>
					</tr>
					<tr style="font-size: 15px; background-color:white; height:50px;">
						<td>K01.0</td>
						<td>매몰치</td>
					</tr>
					<tr style="font-size: 15px; background-color:white; height:50px;">
						<td>K01.0</td>
						<td>매몰치</td>
					</tr>
				</table>
			</div>
   		</div>
		<div class="row pt-4 pb-2 pl-2 justify-content-end">
			<div class="row p-1">
				<button type="button" class="btn btn-primary " 
						style="float: right; background:red; border-radius: 10px; 
							   margin-right: 50px;">
						선택하기
				</button>
			</div>
			<div class="row p-1">
				<button id="closeIllCode" onclick="getHiddenIll()" type="button" class="btn btn-primary " 
						style="float: right; border-radius: 10px; margin-right: 50px;
							   ">
						닫기
				</button>
			</div>
		</div>
	</div>
	
	
	<div class="justify-content-center">
		<hr style="margin: 5px; background: black; width:100%;">
	</div>	
	
	
	<div class="row col-12 justify-content-between" style="padding:5px 30px;" >
		<div class="row pb-0 pt-3" style="padding-left:55px;" >
			<h3 class="pb-2" style="font-weight: bolder; padding-top: 10px">ㅣ 처방 내역</h3>
		</div>
		<div class="row pb-0 pt-5" >	
			<button type="button" onclick="" class="" style="float: right; border-radius: 5px; margin: 5px; margin-top:24px; background-color:green;
				border-color:darkgray; color:white; width:150px; height:45px; ">의약품 검색/추가
				
				<!-- 모달 -->
				
			
			</button>
		</div>
		<button type="button" class="btn btn-primary mb-2" data-toggle="modal" data-target="#modalGrid">Grid Inside Modal</button>
                                    <!-- Modal -->
	</div>
	<div class="col-12 " style="padding:5px 30px;" >
		<table class="table table-bordered col-12">
			<tr bgcolor="#333258" style="color: white; height:45px; font-size:15px; position:sticky; top:0px; z-index:1; text-align:center;"> 
				<td style="width:10% ">구분</td>
				<td style="width:40%">약품명</td>
				<td style="width:10%">1회투약량</td>
				<td style="width:10%">1회투약횟수</td>
				<td style="width:10%">총투약일수</td>
				<td style="width:20%">용법</td>
			</tr>
			<tr style="font-size: 15px; background-color:white; height:50px;">
				<td style="text-align:center;">내복약</td>
				<td>엑소페린정(에페이손염산염)_(50mg/1정)</td>
				<td style="text-align:center;">1</td>
				<td style="text-align:center;">3</td>
				<td style="text-align:center;">3</td>
				<td style="text-align:center;">식후 30분</td>
			</tr>
		</table>
	</div>
	
	
	<div id="searchDrugCode" class="col-12" style="background-color:#FAECC5; padding:5px 30px; display:none;">
		<div class="row pb-0 pt-5" style="padding-left:40px;" >
			<h3 class="pb-2" style="font-weight: bolder; padding-top: 10px;">ㅣ 의약품 검색</h3>
		</div>
		<div class="col-12 pl-4 pb-2 d-flex flex-row-reverse" >	
			<div class="col-4 pl-4 pb-2" style="margin-left:15px;">
				<select class="" name="searchType" id="searchType">
					<option value="ic"  ${cri.searchType eq 'tcw' ? 'selected':'' }>상병코드</option>
					<option value="in" ${cri.searchType eq 'i' ? 'selected':'' }>상병명</option>
				</select>
				<input id="inputSearchBar1" type="text" name="keyword" placeholder="검색어를 입력하세요." value="${param.keyword }" style="width:20vh; height:28px;"/>
				<button type="button" style="border:1pxsolid; border-color:darkgray; border-radius:5px; width:5vh;">검색</button>
			</div>
		</div>
		<div class="col-12">
			<div class ="" style="height: 250px; overflow-y:scroll; padding:0; margin:0;">
				<table class="table table-bordered" style="padding:0; margin:0;" >
					<tr class="text-center" bgcolor="#333258" style="color: white; height:45px; font-size:15px; position:sticky; top:0px; z-index:1;"> 
						<td style="width:10%;">코드</td>
						<td style="width:30%">의약품이름</td>
						<td style="width:7%">상한가</td>
						<td style="width:7%">구분</td>
						<td style="width:5%">보험구분</td>
						<td style="width:5%">본인부담</td>
						<td style="width:10%">제조사</td>
						<td style="width:10%">구분</td>
						<td style="width:10%">정보</td>
					</tr>
					<tr style="font-size: 15px; background-color:white; height:50px; padding:0; margin:0;">
						<td style="text-align:center;">07300780</td>
						<td>아모클라정375mg(아목시실린 클라불란산칼륨)_(1정)</td>
						<td style="text-align:center;" >353</td>
						<td style="text-align:center;">내복약</td>
						<td style="text-align:center;">급여</td>
						<td style="text-align:center;">급여</td>
						<td>(주)엘엔씨바이오</td>
						<td>항생제(그람양성,그람음성)</td>
						<td style="text-align:center;">정보보기</td>
					</tr>
					<tr style="font-size: 15px; background-color:white; height:50px; padding:0; margin:0;">
						<td style="text-align:center;">07300780</td>
						<td>아모클라정375mg(아목시실린 클라불란산칼륨)_(1정)</td>
						<td style="text-align:center;" >353</td>
						<td style="text-align:center;">내복약</td>
						<td style="text-align:center;">급여</td>
						<td style="text-align:center;">급여</td>
						<td>(주)엘엔씨바이오</td>
						<td>항생제(그람양성,그람음성)</td>
						<td style="text-align:center;">정보보기</td>
					</tr>
					<tr style="font-size: 15px; background-color:white; height:50px; padding:0; margin:0;">
						<td style="text-align:center;">07300780</td>
						<td>아모클라정375mg(아목시실린 클라불란산칼륨)_(1정)</td>
						<td style="text-align:center;" >353</td>
						<td style="text-align:center;">내복약</td>
						<td style="text-align:center;">급여</td>
						<td style="text-align:center;">급여</td>
						<td>(주)엘엔씨바이오</td>
						<td>항생제(그람양성,그람음성)</td>
						<td style="text-align:center;">정보보기</td>
					</tr>
				</table>
			</div>
   		</div>
		<div class="row pt-4 pb-2 pl-2 justify-content-end">
			<div class="row p-1">
				<button type="button" class="btn btn-primary " 
						style="float: right; background:red; border-radius: 10px; 
							   margin-right: 50px;">
						선택하기
				</button>
			</div>
			<div class="row p-1">
				<button id="closeDrugCode" onclick="getHiddenDrug()" type="button" class="btn btn-primary " 
						style="float: right; border-radius: 10px; margin-right: 50px;
							   ">
						닫기
				</button>
			</div>
		</div>
	</div>
	
	
	
	
	<div class="row pt-5 pl-2 justify-content-end">
		<div class="wrap row text-right">
			<button id="tempSaveBtn" onclick="tempSaveBtn()" style="float: right; border-radius: 5px; margin: 5px; margin-top:24px; background-color:red;
				border-color:darkgray; color:white; width:150px; height:45px;">임시저장
			</button>
		</div>
		<div id="wrap" class="wrap text-right">
			<a href="#popInfo" type="button" class="btnOpen">
				<button style="float: right; border-radius: 5px; margin: 5px; background-color:#333258;
					border-color:darkgray; color:white; width:180px; height:45px;">처방전 등록/신청
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
		</div>	
	</div>
	<div class="row justify-content-center" style="background-color: #333258; height: 65px; text-align: center ;">
		<div style="text-align: center; padding-top: 18px;" onclick="window.close()">
			<a style="padding: 5px; border-radius : 5px; color : black;
					  background-color: white; font-weight: bolder;">
					돌아가기
			</a>
		</div>
	</div>
	
	

<%--    	<div class="row col justify-content-center">
    	<div class="row pt-3">
			<%@ include file="/WEB-INF/views/include/pagination.jsp" %>
   		</div>
	</div>
	
	
	
	
	<div class="justify-content-center  pt-2 pb-3">
		<hr style="margin: 5px; background: black; width:100%;">
	</div> --%>
	
	
</div>

<script>
	
/** 처방전 작성일 */
	document.getElementById('selectDate').value = new Date().toISOString().substring(0, 10);

	
/** 처방전 유효기간 */
	
	var today = new Date();
	const expDrug = new Date(today);
	expDrug.setDate(today.getDate() + 45);  //예시는 45일 후
	//console.log(expDrug)
	document.getElementById('selectDate2').value = expDrug.toISOString().substring(0, 10);
			
</script>

<script>

/** 숨김 페이지 펼치기 */

	 function getShowIll() {
		document.querySelector('#searchIllCode').style.display = "block";
		//console.log("wow!");
	} 
		
	 function getShowDrug() {
		document.querySelector('#searchDrugCode').style.display = "block";
		
		document.querySelector('#tempSave').style.display = "none";
		document.querySelector('#finalRegist').style.display = "none";
		//console.log("wow!");
	} 
	
</script>


<script>

/** 펼친 페이지 다시 닫기 */

	 function getHiddenIll() {
		document.querySelector('#searchIllCode').style.display = "none";
		//console.log("wow!");
	} 
		
	 function getHiddenDrug() {
		document.querySelector('#searchDrugCode').style.display = "none";
		
		document.querySelector('#tempSave').style.display = "block";
		document.querySelector('#finalRegist').style.display = "block";
		//console.log("wow!");
	} 
	
</script>


<script>

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
	
	
	//임시저장
	function tempSaveBtn(){
		alert("본 처방전이 임시저장 되었습니다. ")
	}
	
	
	
	
</script>




