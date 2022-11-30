<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>



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
	background-color:lightgray;
	border:2px solid;
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

input{

	border-color:lightgray;

}

input:disabled{

	background-color:white;
	text-align:center;
}


textarea::placeholder {
	color: #ccc;
}



/**아래버튼*/
.btnBottom{

	border-color:darkgray;
	border-radius:5px;
	color:white;
	width:130px;
	height:41px;
	background-color:#333258;

}

/**게시판 콘텐츠*/

.subject{
	
    font-weight: 600;
    color: #8C8C8C;
    width: 90px;
    /* position: absolute; */
    left: 0;
    top: 0;
    margin: 0;
    padding: 0 10px;
    vertical-align: middle;
}


.sub{

	/* display: table-cell; */
/* 	padding-left: 10px;
	text-align: left; */
	vertical-align: middle;
	item-align: center;
	font-size:10px;

}

textarea{
	
	border-top:2px lightgray solid;
	border-left:2px lightgray solid;
	border-right:2px lightgray solid;
	border-bottom:2px lightgray solid;
	
	width:95%;
	height:330px;
/* 	text-align:left;
	vertical-align:top; */
	resize:none;"

}



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
						<h3 style="font-weight:600">공지사항 > 상세보기</h3>
					</div>
				</div>
			</div>
			<hr>
			<div id="detailFrame" class = "content" style="background-color:none;">
				<ul>
					<li class="person" style="display:none;">
						<div class="row">
							<span class="subject">사용자</span><span class="sub">│　</span>
							<span class="txt">${notice.memId}</span>
						</div>
					</li>
					<li class="title">
						<div class="row pl-4">
							<span class="subject">제　목</span><span class="sub">│　</span>
							<span class="txt">${notice.noticeTitle}</span>
						</div>
					</li>
					<li class="person">
						<div class="row pl-4">
							<div class="col-2 row"><span class="subject">작성자</span><span class="sub">│　</span><span class="txt">${notice.noticeWriter}</span></div>
							<div class="col-3 row"><span class="subject">작성일</span><span class="sub">│　</span><span class="txt"><fmt:formatDate value="${notice.noticeRegdate}" pattern="yyyy-MM-dd  HH:mm" /></span></div>
							<div class="col-2 row"><span class="subject">조회수</span><span class="sub">│　</span><span class="txt">${notice.noticeCount}</span></div>
						</div>
					</li>
					<li class="title">
						<div class="row pl-4">
							<span class="subject">내　용</span><span class="sub">│　</span>
							<div class="border m-4 mt-0" style="width: 100%; height: 46vh; overflow-y:scroll; background-color:white;">${notice.noticeContent}</div>
						</div>
					</li>
				</ul>
			</div>
			<!-- 첨부파일 썸네일 -->
			<div>
				<c:forEach items="${notice.attachList }" var="attach">
					<div class="col-md-4 col-sm-4 col-xs-12"  style="cursor:pointer;"
					 onclick="location.href='<%=request.getContextPath()%>/notice/getFile.do?attachNo=${attach.attachNo}';">
						<div class="info-box">	
						 	<span class="info-box-icon bg-yellow">
								<i class="fa fa-copy"></i>
							</span>
							<div class="info-box-content">
								<span class ="info-box-text">
									<fmt:formatDate value="${attach.regDate }" pattern="yyyy-MM-dd" />	
								</span>
								<span class ="info-box-number">${attach.fileName }</span>
							</div>
						</div>
					</div>			
				</c:forEach>
			</div>
			<div class="board_txt">
				<p>
				</p>
			</div>
			<hr id="bar">
			<div class="row justify-content-end">
				<c:if test="${loginUser.memAuthority eq 'ROLE_ADMIN' }">
					<div style="padding-right:1vw; padding-top:0vh;">
						<button onclick="noticeListDel(${notice.noticeNo})" type="button" class = "btnBottom"  style="background-color:#DB0000;">삭제</button>
					</div>
					<div style="padding-right:1vw; padding-top:0vh;">
						<button onclick="noticeListModify(${notice.noticeNo})" type="button" class = "btnBottom">수정</button>
					</div>
				</c:if>
				<div  style="padding-right:1vw; padding-top:0vh;">
					<button onclick="goToNoticeList()" type="button" class = "btnBottom">목록</button>
				</div>
			</div>
		</div>
	</div>
</div>
		
	
<script>

/* var data1 = {"id":"${loginUser.memId}"}; */

$.ajax({
   /* url: "http://192.168.141.24:5002/getMenu", */ 
   url: "http://127.0.0.1:5000", 
   type: 'POST',
   data : JSON.stringify(data1),
   dataType: 'JSON',
   contentType: "application/json",
   success:function(paper){
      alert(data1);
      document.getElementById('getPaper').innerText = paper;
   }
});
</script>



<script>
function noticeListModify(a){
		var iframValue = "/board/notice/modifyForm?noticeNo=";
		var url = iframValue+a;
		
		/* return url; */
		parent.document.querySelector('#iframePlace').setAttribute("src", url);
		
}
function noticeListDel(a){
		$.ajax({
			url:"detail/noticeDelete",
			type:"post",
			data: {noticeNo: a},
			dataType:"json",
			success:alert("삭제완료") ,
					
			error: function(){	}
			
		});
 		var iframValue = "/board/notice/list";
		var url = iframValue;
		parent.document.querySelector('#iframePlace').setAttribute("src", url);
		opener.location.reload();
		
}
function goToNoticeList(){
		var iframValue = "/board/notice/list";
		var url = iframValue;
		parent.document.querySelector('#iframePlace').setAttribute("src", url);
}
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
	
}
</script>

<script>
var iframePlaceSrc = document.getElementById("iframePlace").src;
var sideButton1 = document.getElementById("sideButton1");
var sideButton2 = document.getElementById("sideButton2");
var sideButton3 = document.getElementById("sideButton3");

console.log(iframePlaceSrc);
console.log("<%=request.getContextPath()%>/board/mediInfo/list");

if (iframePlaceSrc == ("<%=request.getContextPath()%>/board/mediInfo/list"))
{
	
	console.log("ww");
	
	sideButton2.classList.remove("anotherPlace");
	sideButton2.classList.add("thisPlace");
	sideButton1.classList.remove("thisPlace");
	sideButton1.classList.add("anotherPlace");
	
}


</script>

