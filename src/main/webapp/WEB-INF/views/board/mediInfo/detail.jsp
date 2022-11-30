<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>

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




.divPaper{

	border-top:2px gray solid;
	border-left:2px gray solid;
	border-right:2px lightgray solid;
	border-bottom:2px lightgray solid;
	
	width: 49%;
	height: 250px;
	overflow-y:scroll;
	margin:0;
}


#rUrlId:hover{

	cursor:pointer;
	text-decoration:underline;
	color:blue;

}


</style>

<div class="container-fluid">
	<div class="row">
		<div class="card left-side-bar col-2">
			<div id="sideButton2" class="thisPlace" onclick="changeIframeUrl2()"> 논문 및 의학지</div>
			<div id="sideButton1" class="anotherPlace" onclick="changeIframeUrl1()">공지사항</div>
		</div> 
		<div class="right-iframe col-10">
			<div class="row justify-content-start">
				<div class="col-3 pl-4">
					<div class="card-header p-0 pt-4">
						<h3 style="font-weight:600">논문 및 의학지 > 상세보기</h3>
					</div>
				</div>
			</div>
			<div>
				<div id="detailFrame" class = "card content" style="background-color:none;">
					<ul>
						<li class="person" style="display:none;">
							<span class="subject">분　　류</span><span class="sub">│　</span>
							<span class="txt" id="typeId"></span>
						</li>
						<li class="title">
							<span class="subject">논문명　</span><span class="sub">│　</span>
							<span class="txt" id="titleId"></span>
						</li>
						<li class="person">
							<span class="subject">저　자　</span><span class="sub">│　</span>
							<span class="txt" id="authorId"></span>
						</li>
						<li class="date">
							<span class="subject">발행일자</span><span class="sub">│　</span>
							<span class="txt" id="pubdateId"></span>
						</li>
						<li class="clickCnt">
							<span class="subject">발행기관</span><span class="sub">│　</span>
							<span class="txt" id="publisherId"></span>
						</li>
						<li class="content">
							<span class="subject" style="vertical-align:top;">내　용</span>
							<div class="row justify-content-center">
								<div class="card divPaper txt" style="overflow-y:scroll;">
									<div class="" id="beforeTranslateInDiv">
										<!-- <textarea id="beforeTranslate" readonly></textarea> -->
									</div>
								</div>
								<div class="card divPaper txt" style="overflow-y:scroll;">
									<div class="" id="afterTranslateInDiv">
										<!-- <textarea id="beforeTranslate" readonly></textarea> -->
									</div>
								</div>
							</div>
							<div class="row justify-content-end pr-4">
								<button class="subject" onclick="translateData()" style="border:1pxsolid; border-color:darkgray;">번　역</button>
							</div>
						</li>
						<li class="content">
							<span class="subject" style="vertical-align:top;">링크 : </span>
							<span onclick="goUrl()" class="txt" id=rUrlId></span>
						</li>
					</ul>
				</div>
				<div class="row justify-content-end">
					<div  style="padding-right:1vw; padding-top:4vh;">
						<button onclick="goToMinfoList()" type="button" class = "btnBottom">목록</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
	
	
<script>


function goToMinfoList(){
	var iframValue = "/board/mediInfo/list";
	var url = iframValue;
	parent.document.querySelector('#iframePlace').setAttribute("src", url);
}


/* var data1 = {"id":"${loginUser.memId}"}; */
 
/* var iframValue = getParameterByName('iframValue');
console.log("detail ,iframValue =", iframValue); */
 
 
 
const url = new URL(window.location.href)
const urlParams = url.searchParams;
var type = urlParams.get('type');
var title = urlParams.get('title');
var author = urlParams.get('author');
var pubdate = urlParams.get('pubdate');
var publisher = urlParams.get('publisher');
var rUrl = urlParams.get('rUrl');

console.log("type = ", type);
console.log("title = ", title);
console.log("author = ", author);
console.log("pubdate = ", pubdate);
console.log("publisher = ", publisher);
console.log("rUrl = ", rUrl);
 
var typeIdInnerText = document.getElementById("typeId");
var titleIdInnerText = document.getElementById("titleId");
var authorIdInnerText = document.getElementById("authorId");
var pubdateIdInnerText = document.getElementById("pubdateId");
var publisherIdInnerText = document.getElementById("publisherId");
var rUrlIdInnerText = document.getElementById("rUrlId");

 
 
typeIdInnerText.innerText= type;
titleIdInnerText.innerText= title;
authorIdInnerText.innerText= author;
pubdateIdInnerText.innerText= pubdate;
publisherIdInnerText.innerText= publisher;
rUrlIdInnerText.innerText= rUrl;


function goUrl() {
	console.log("rUrlId");
	window.open(rUrl);
	
	
}


</script>

<script>/**웹의 특정 컨텐츠를 가져오는 펑션*/

$(document).ready(function(){
	$.ajax(rUrl,{
		success : function(data){
			var filterData = ($(data).find("#additionalInfoDiv > div > div:nth-child(1) > div:nth-child(5) > p"));
			console.log("filterData's type = ", typeof filterData);
			
			$('#beforeTranslateInDiv').append(filterData);
			
		}
	})
});
</script>

<script type=text/javascript src="{{url_for('static', filename='jQuery.js') }}"></script>

<script>/**번역 클릭 펑션*/ 
function translateData(){
	
	var beforeTranslateInDivText = document.querySelector("#beforeTranslateInDiv").innerText;
	var dataParse = {"jsonData":beforeTranslateInDivText};
	$.ajax({
		
		url: 'http://192.168.141.26:5012/paper',
// 		url: 'http://localhost:5012/paper',
		type: 'post', 
		data : dataParse,
		dataType : "JSON",
		success : function(data){
			$.each(data, function(key, value) {
		    	document.getElementById('afterTranslateInDiv').innerText = value;
			});
		},
		error : function(req,status,err){
			alert("err code: "+req.status+"\n"+"massage: "+req.responseText+"\n"+"error: "+err);
			 
		}
	})
	
	
}
</script>
<!-- 
<script>
//간단한 HTTP GET Request 
const http_req = new XMLHttpRequest() 
http_req.open("GET", "http://192.168.141.24:5099/") 
http_req.onload = () => console.log("[번역은 다음과 같습니다] : " + http_req.responseText)

http_req.onload = () => console.log("http_req.responseText", http_req.responseText);

var tlansText = http_req.responseText;

console.log("tlansText : ", tlansText);
console.log("endText");

http_req.send()
</script> 
 -->
 
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