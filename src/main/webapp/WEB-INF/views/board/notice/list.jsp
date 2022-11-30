<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script  src="http://code.jquery.com/jquery-latest.min.js"></script>

<c:set var="noticeList" value="${dataMap.noticeList }" />
<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" />

<style>

/**right-iframe*/

.right-iframe{

	padding:0;
	margin:0;
	height:100vh;
	background-color:#F6F6F6;
	border-radius:5px;
	border:2px #333258 solid;
	border-left:none;
}

.iframeBox{

	border:none;
	height: 90vh;

}	
/**left-side-bar*/

.left-side-bar{
	padding:0;
	margin:0;
	height:100vh;
	border-radius:5px;
	background-color:lightgray;
	border:2px #333258 solid;
}

.thisPlace{
	margin:0;
	padding:0;
	
	weight:100%;
	height: 30%;
	
	background-color: #333258;
	border:1px lightgray solid;
	border-radius:5px;
	
	display:flex;
	justify-content:center;
	align-items:center;
	
	color:white;
	font-size:30px;
	font-weight:600;
}


.anotherPlace{

	margin:0;
	padding:0;
	
	weight:100%;
	height: 20%;
	
	background-color: lightgray;
	border:1px lightgray solid;
	
	display:flex;
	justify-content:center;
	align-items:center;
	
	color:gray;
	font-size:25px;
	font-weight:600;
}

.anotherPlace:hover{

	margin:0;
	padding:0;
	
	weight:100%;
	height: 20%;
	
	background-color: #F6F6F6;
	border:1px lightgray solid;
	border-radius:10px;
	
	display:flex;
	justify-content:center;
	align-items:center;
	
	color:gray;
	font-size:25px;
	font-weight:600;

	cursor:pointer;
}


/**table*/
	.normalTable{
		text-align:center;
		width:100%;
	}
	
	.normalTr{
		border: 1px lightgray solid;
		padding: 5px;
		cursor:pointer;
		
	}

	.normalTrHeader{
		border: 1px lightgray solid;
		padding: 5px;
		position:sticky; 
		top:-2px;
		cursor:pointer;
		z-index:10;
		
	}
	
	.normalTh{
		background-color: #333258;
		border: 1px lightgray solid;
		color:white;
		height:30px;
		
	}
	
	.normalTd, .normalTdCategory{
		padding: 5px;
		border: 1px lightgray solid;
	}


/** tr hover */


	.normalTr:hover{
	    background: #EAEAEA;
	    
	}

.hiddenTr{

	display:none;

}

#checkbox00, #checkbox11, #checkbox22, #checkbox33{

	width:20px;
	height:20px;

	background-color:white;
	color:rgba(0,0,0,0);
	
	border-color:lightgray;
}

.checkedCSS{

	background-color:blue;
}

/* .labelCheck:hover{

	background-clor:skyblue;

} */



</style>

<div class="container-fluid">
	<div class="row">
		<div class="left-side-bar col-2">
			<div id="sideButton1" class="thisPlace" onclick="changeIframeUrl(0)">공지사항</div>
			<div id="sideButton2" class="anotherPlace" onclick="changeIframeUrl(1)"> 논문 및 의학지</div>
			<!-- <div id="sideButton3" class="anotherPlace" onclick="changeIframeUrl3()"> 세미나 및 학회 </div> -->
		</div> 
		<div class="right-iframe col-10">
			<div class="row justify-content-start">
				<div class="col-3 pl-4">
					<div class="card-header p-0 pt-4">
						<h3 style="font-weight:600">공지사항</h3>
						${url}
					</div>
				</div>
			</div>
			<div class="row justify-content-between">
				<form role="form" method="GET" name="search" action="list.do">
					<div class="row pl-5" style="width:90vh;">
							<div class="" style="width:80px; right-margin:0px;">
								<input style="display:none;" onclick="clickFunction(0)" value="hij"  name="searchType" type="submit" id="checkbox0">
								<input value="0" name="keyword" style="display:none;"/>
								<label class="btn btn-md btn-primary rounded" style="vertical-align:middle;" for="checkbox0">전체</label>
							</div>
							<div class="" style="width:95px; right-margin:0px;">
								<input style="display:none;" onclick="clickFunction(1)" value="h"  name="searchType" type="submit" class="checkBox" id="checkbox1">
								<input  value="1" name="keyword" style="display:none;"/>
								<!-- <input  type="checkbox" class="checkBox" id="checkbox11"> -->
								<label style="vertical-align:middle;" class="btn btn-md btn-primary rounded" for="checkbox1">전문의</label>
							</div>
							<div class="" style="width:80px; right-margin:0px;">
								<input style="display:none;"onclick="clickFunction(2)" value="i"  name="searchType" type="submit" class="checkBox" id="checkbox2">
								<input value="2" name="keyword" style="display:none;"/>
								<!-- <input  type="checkbox" class="checkBox" id="checkbox22"> -->
								<label style="vertical-align:middle;" class="btn btn-md btn-primary rounded" for="checkbox2">직원</label>
							</div>
							<div class="" style="width:100px; right-margin:0px;">
								<input style="display:none;"onclick="clickFunction(3)" value="j"  name="searchType" type="submit"  class="checkBox" id="checkbox3">
								<input value="3" name="keyword" style="display:none;"/>
								<!-- <input  type="checkbox" class="checkBox" id="checkbox33"> -->
								<label style="vertical-align:middle;" class="btn btn-md btn-primary rounded" for="checkbox3">간호사</label>
							</div>
					</div>
				</form>
				<form role="form" method="GET" name="search" action="list.do">
					<div class="row">
						<div class="p-0 align-self-center">
							<select class="form-control " name="perPageNum" id="perPageNum" onchange="list_go(1);" style="border-color:lightgray;">					  		  		
						 		<option value="5" ${cri.perPageNum eq 5 ? 'selected' : '' } >5개씩</option>
						 		<option value="10" ${cri.perPageNum eq 10 ? 'selected' : '' }>10개씩</option>
						 		<option value="20" ${cri.perPageNum eq 20 ? 'selected' : '' }>20개씩</option>
						 		<option value="30" ${cri.perPageNum eq 30 ? 'selected' : '' }>30개씩</option>
						 	</select>
						</div>
						<div class="p-0 align-self-center">
							<select class="form-control" name="searchType" id="searchType" style="border-color:lightgray;">
								<option value="tcw"  ${cri.searchType eq 'tcw' ? 'selected':'' }>전 체</option>
								<option value="t" ${cri.searchType eq 't' ? 'selected':'' }>제 목</option>
								<option value="w" ${cri.searchType eq 'w' ? 'selected':'' }>작성자</option>
								<option value="c" ${cri.searchType eq 'c' ? 'selected':'' }>내 용</option>
							</select>
						</div>
						<div class="p-0 align-self-center">
							<input  class="form-control" type="text" name="keyword" placeholder="검색어를 입력하세요." value="${param.keyword }" style="border-color:lightgray;"/>
						</div>
						<div class="p-0 align-self-center">
							<button id="searchClick" class="bg-drcrown" type="submit" style=" width:80px; height:40px; margin-right:5vh; margin-bottom:1px; border-color:darkgray; border-radius:5px; color:white;">
								<span style="text-align:center;">검색</span>
							</button>
						</div>
					</div>
				</form>
			</div>
			<hr>
			<!-- 테이블 -->
			<div class="card" style="height: 60vh; overflow-y:scroll; border:1px lightgray solid;">
				<table id="noticeTable" class="normalTable">
					<tr class="normalTrHeader" >
						<th class="normalTh" scope="col" style="width:8%">순번</th>
						<th class="normalTh" scope="col" style="width:10%">분류</th>
						<th class="normalTh" scope="col" style="width:50%">제목</th>
						<th class="normalTh" scope="col" style="width:10%">작성자</th>
						<th class="normalTh" scope="col" style="width:14%">작성일자</th>
						<!-- <th class="normalTh" scope="col" style="width:10%">첨부파일</th> -->
						<th class="normalTh" scope="col" style="width:8%">조회수</th>
					</tr>
					<c:if test="${empty noticeList }" >
						<tr class="normalTr" >
							<td class="normalTd" colspan="8">
								<strong>해당 내용이 없습니다.</strong>
							</td>
						</tr>
					</c:if>	
					<c:forEach items="${noticeList}" var="notice">
						<tr class="normalTr" onclick="goToNoticeDetail(${notice.noticeNo})">
							<td class="normalTd">${notice.noticeNo}</td>
							<td class="normalTdCategory">
								<c:set var="name" value="${notice.nccNumber}"/>
									<c:if test="${name eq '0'}">
										<span>전체</span>
									</c:if>
									<c:if test="${name eq '1'}">
										<span>전문의</span>
									</c:if>
									<c:if test="${name eq '2'}">
										<span>직원</span>
									</c:if>
									<c:if test="${name eq '3'}">
										<span>간호사</span>
									</c:if>
							</td>
							<%-- <td class="normalTd">${notice.nccNumber}</td> --%>
	<%-- 						<td class="normalTd">
								<span class="btn-square btn-xs btn-dark">${notice.nccName}</span>
							</td>	 --%>
							<td class="normalTd" style="text-align:left;">${notice.noticeTitle}</td>
							<td class="normalTd">${notice.noticeWriter}</td>
							<td class="normalTd">
								<span id="fmtDate"><fmt:formatDate value="${notice.noticeRegdate }"
									pattern="yyyy-MM-dd" /></span>
								<span id="fmtClock"><fmt:formatDate value="${notice.noticeRegdate }"
									pattern="HH:mm" /></span></td>
							<!-- <td class="normalTd"></td> -->
							<td class="normalTd">${notice.noticeCount}</td>
						</tr>
					</c:forEach>
				</table>
			</div>
			<hr>
			<div class = "row justify-content-end pr-5">
				<div>
					<c:if test="${loginUser.memAuthority eq 'ROLE_ADMIN' }">
						<button onclick="noticeRegistForm()" type="button" class="bg-drcrown" style="position: absolute; right: 4vw; border-color:darkgray; border-radius:5px; color:white; width:130px; height:41px;">글쓰기</button>
					</c:if>
				</div>
			</div>
			<%@ include file="/WEB-INF/views/include/pagination.jsp" %>
		</div>
	</div>
</div>



<!-- <script>
	function goToNoticeDetail(param){
		var iframValue = "/board/notice/detail.do?from=list&noticeNo=";
		var url = iframValue+param;
		parent.document.querySelector('iframe[name="ifr"]').setAttribute("src", url);
	}
</script> -->

<script>

function clickFunction(){
	
	String url = request.getRequestURL().toString();
	request.setAttribute("url", url);
	
	console.log(rUrl);
	
}

/* $("#checkbox00for").click(function(){
    $('#checkbox00').val($(this).val());
}); */


</script>




<script> /**글쓰기, 글 상세보기 펑션*/

	// 글쓰기 펑션
	function noticeRegistForm(){
		var iframValue = "/board/notice/registForm";
		var url = iframValue;
		parent.document.querySelector('#iframePlace').setAttribute("src", url);
	}
	
	// 글 상세보기 펑션
	function goToNoticeDetail(param){
		var iframValue = "/board/notice/detail.do?from=list&noticeNo=";
		var url = iframValue+param;
		parent.document.querySelector('#iframePlace').setAttribute("src", url);
	}
</script>



<script>/** 오늘날짜일 경우, 날짜 hidden처리 펑션*/



var fmtDate = document.querySelector("#fmtDate");
var fmtClock = document.querySelector("#fmtClock");
var normalTr = document.querySelectorAll(".normalTr");


function leftPad(value) {
    if (value >= 10) {
        return value;
    }

    return `0${value}`;
} 

function toStringByFormatting(source, delimiter = '-') {
    const year = source.getFullYear(); 
    const month = leftPad(source.getMonth() + 1);
    const day = leftPad(source.getDate());

    return [year, month, day].join(delimiter);
}


//console.log(toStringByFormatting(new Date));
//console.log(typeof (toStringByFormatting(new Date)));


//console.log("normalTr", normalTr);
//console.log("normalTr.length", normalTr.length);
//console.log("normalTr[0]", normalTr[0]);


for(var i=0; i<normalTr.length; i++){
	if(normalTr[i].cells[4].children[0].innerText == toStringByFormatting(new Date)){
		
		normalTr[i].cells[4].children[0].style.display = "none";
		normalTr[i].cells[4].children[1].style.display = "";
		
	} else if (normalTr[i].cells[4].children[0].innerText != toStringByFormatting(new Date)){
		
		normalTr[i].cells[4].children[0].style.display = "";
		normalTr[i].cells[4].children[1].style.display = "none";
	}
}

//console.log("fmtDate.style.display : ", fmtDate.style.display);
//console.log("fmtClock.style.display : ", fmtClock.style.display);

</script>

<script>
function changeIframeUrl(param) {
	var iframValue = "/board/notice/list";
	
	if(param == 1){
		iframValue = "/board/mediInfo/list";
	}
	var url = iframValue;
	
	/* return url; */
	parent.document.querySelector('#iframePlace').setAttribute("src", url);
	
}
function changeIframeUrl2() {
	
	
	var iframValue = "/board/mediInfo/list";
	var url = iframValue;
	
	/* return url; */
	parent.document.querySelector('#iframePlace').setAttribute("src", url);
	
	
<%-- 	$.ajax({
		url:"<%=request.getContextPath()%>/board/mediInfo/list",
		type:"get",
		data: {document.getElementById("iframePlace").src: <%=request.getContextPath()%>/board/mediInfo/list},
		dataType:"json",
		success:console.log("pass") ,
	}); --%>
	
	<%-- document.getElementById("iframePlace").src= "<%=request.getContextPath()%>/board/mediInfo/list";
	console.log("changeIframeUrl2's URL = ", iframePlaceSrc); --%>
	 
/* 	sideButton2.classList.remove("anotherPlace");
	sideButton2.classList.add("thisPlace");
	sideButton1.classList.remove("thisPlace");
	sideButton1.classList.add("anotherPlace");
	sideButton3.classList.remove("thisPlace");
	sideButton3.classList.add("anotherPlace"); */
}
function changeIframeUrl3() {
	
	<%-- document.getElementById("iframePlace").src= "<%=request.getContextPath()%>/board/seminar/list";
	console.log("changeIframeUrl3's URL = ", iframePlaceSrc); --%>
	
/* 	sideButton3.classList.remove("anotherPlace");
	sideButton3.classList.add("thisPlace");
	sideButton1.classList.remove("thisPlace");
	sideButton1.classList.add("anotherPlace");
	sideButton2.classList.remove("thisPlace");
	sideButton2.classList.add("anotherPlace"); */
	 
}
</script>

<script>
var iframePlaceSrc = document.getElementById("iframePlace").src;
var sideButton1 = document.getElementById("sideButton1");
var sideButton2 = document.getElementById("sideButton2");
var sideButton3 = document.getElementById("sideButton3");

console.log(iframePlaceSrc);
console.log("<%=request.getContextPath()%>/board/mediInfo/list");

if (iframePlaceSrc == ("<%=request.getContextPath()%>/board/mediInfo/list")){
	
	console.log("ww");
	
	sideButton2.classList.remove("anotherPlace");
	sideButton2.classList.add("thisPlace");
	sideButton1.classList.remove("thisPlace");
	sideButton1.classList.add("anotherPlace");
	
}


</script>

