<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.css" rel="stylesheet" type="text/css" />

<script  src="http://code.jquery.com/jquery-latest.min.js"></script>

<c:set var="noticeList" value="${dataMap.noticeList }" />
<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" />

<style>




/**right-iframe*/

.right-iframe{

	padding:0;
	margin:0;

}

.iframeBox{

	border:none;
	height: 90vh;

}	


/**table*/
	.normalTable{
		text-align:center;
		width:100%;
	}
	
	.normalTr{
		border: 1px lightgray solid;
		padding: 5px;
		position:sticky; 
		top:-2px;
		cursor:pointer;
		
	}
	
	.normalTh{
		background-color: #333258;
		border: 1px lightgray solid;
		color:white;
		height:30px;
	}
	
	.normalTd{
		padding: 5px;
		border: 1px lightgray solid;
	}


/** tr hover */

	.normalTr:hover{
	    background: #EAEAEA;
	    
	}


</style>


<div class="container-fluid">
	<div class="row justify-content-start">
		<div class="row col-5 pl-4 ">
			<div class="pb-3 ">
				<h3 style="font-weight:600;">게시판</h3>
			</div>
			<div class="pb-3 ">
				<h3 id="getPaper"></h3>
			</div>
		</div>
	</div>
	<div class="card">
		<iframe id="iframePlace" class="iframeBox" src="<%=request.getContextPath()%>/board/notice/list">
		</iframe >
	</div>
</div>





<script>
function changeIframeUrl1() {
	document.getElementById("iframePlace").src= "<%=request.getContextPath()%>/board/notice/list";
	console.log("changeIframeUrl1's URL = ", iframePlaceSrc);
	
	sideButton1.classList.remove("anotherPlace");
	sideButton1.classList.add("thisPlace");
	sideButton2.classList.remove("thisPlace");
	sideButton2.classList.add("anotherPlace");
	sideButton3.classList.remove("thisPlace");
	sideButton3.classList.add("anotherPlace");
}
function changeIframeUrl2() {
	document.getElementById("iframePlace").src= "<%=request.getContextPath()%>/board/mediInfo/list";
	console.log("changeIframeUrl2's URL = ", iframePlaceSrc);
	 
	sideButton2.classList.remove("anotherPlace");
	sideButton2.classList.add("thisPlace");
	sideButton1.classList.remove("thisPlace");
	sideButton1.classList.add("anotherPlace");
	sideButton3.classList.remove("thisPlace");
	sideButton3.classList.add("anotherPlace");
}
function changeIframeUrl3() {
	document.getElementById("iframePlace").src= "<%=request.getContextPath()%>/board/seminar/list";
	console.log("changeIframeUrl3's URL = ", iframePlaceSrc);
	
	sideButton3.classList.remove("anotherPlace");
	sideButton3.classList.add("thisPlace");
	sideButton1.classList.remove("thisPlace");
	sideButton1.classList.add("anotherPlace");
	sideButton2.classList.remove("thisPlace");
	sideButton2.classList.add("anotherPlace");
	 
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

<!-- <script type="text/javascript" src="http://192.168.141.24:5003.json"></script> -->

<!-- <script>
 $.ajax({
    url: "http://192.168.141.24:5002/getMenu",
   url: "http://192.168.141.24:5003", 
   method: 'GET',
   data : JSON.stringify(),
   dataType: 'JSON',
   contentType: "application/json",
   success: function(data){
	      document.getElementById('getPaper').innerText = data;
	    } 
	   
	    
});
</script>  -->



<%@ include file="../../common/ifram_js.jsp"%>
<%@ include file="/WEB-INF/views/common/preloader_js.jsp"%>
<script>
	window.onload= preloaderNone();
	function preloaderNone(){
		preloaderCustom.style.display = "none";
	}
</script>

