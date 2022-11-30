<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>


<!-- summerNote please insert -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<!-- summerNote please insert -->



<style>
/**right-iframe*/

.right-iframe{

	padding:0;
	margin:0;
	height:100vh;
	background-color:#EAEAEA;
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

input:placeholder{

	background-color:white;
	text-align:center;
}


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

textarea::placeholder {
	color: #ccc;
}

select{

	border-top:2px gray solid;
	border-left:2px gray solid;
	border-right:2px lightgray solid;
	border-bottom:2px lightgray solid;

}

#detailFrame{

	height:70vh;

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


.panel-heading{

	border-bottom: 1px lightgray solid;

}

</style>



<div class="container-fluid">
	<div class="row">
		<div class="card left-side-bar col-2">
			<div id="sideButton1" class="btnOpen thisPlace" onclick="changeIframeUrl1()">공지사항</div>
			<div id="sideButton2" class="btnOpen anotherPlace" onclick="changeIframeUrl2()"> 논문 및 의학지</div>
		</div> 
		<div class="right-iframe col-10">
				<div class="col-3 pl-2" style="margin-top:10px; margin-bottom:10px;">
						<h4 style="font-weight:600">공지사항 > 게시글 작성</h4>
				</div>
				<!-- <div class = "card content" style="height:60vh;"> -->
					<form role="form" method="post" action="<%=request.getContextPath()%>/board/notice/regist" name="registForm" enctype="multipart/form-data">
						<ul>
						    <li class="user" style="display:none;">
								<span class="subject">사용자</span><span class="sub">│　</span>
								<span class="txt"><input type="text" name="memId" value="${loginUser.memId }" readonly/></span>
							</li>
							<li class="title">
								<span class="subject">제　목</span><span class="sub">│　</span>
								<span class="txt"><input type="text" name="noticeTitle" style="width:500px;" placeholder="제목을 쓰십시오"/></span>
							</li>
							<li class="person">
								<span class="subject">작성자</span><span class="sub">│　</span>
								<span class="txt"><input type="text" name="noticeWriter" value="${loginUser.memName }" style="width:150px;" readonly/></span>
								<span class="subject">분　류</span><span class="sub">│　</span>
								<span class="txt">							
									<select name="nccNumber" >
					                    <c:forEach items="${categoryList}" var="category">
					                            <option value="${category.nccNumber}">${category.nccName}</option>
					                    </c:forEach>
									</select>
								</span>
							</li>
							<li class="category">
							</li>
						</ul>
						<textarea class="summernote" name="noticeContent" style="margin:0; padding:0; width:100vh;"></textarea>  
						<div class="row justify-content-beetween">
							<div class="col-6 row form-group">								
								<!-- <div style="padding-left:4vh; padding-right:1vh; padding-top:2vh; ">
									<button class="btn btn-xs btn-dark" onclick="addFile_go();" type="button" id="addFileBtn">파일 추가</button>
								</div>
								<div class="card-footer fileInput" style="width:450px; height:100px; overflow-y:scroll; margin-top:2vh; background-color:white; border:1px lightgray solid;">
								</div> -->
								<!-- </div> -->
							</div>
							<div class="col-6 row justify-content-end">
								<div  style="padding-right:1vw; padding-top:2vh;">
									<button onclick="goToNoticeList()" type="button" class = "btnOpen btnBottom">취소</button>
								</div>
								<div style="padding-right:1vw; padding-top:2vh;">
									<button onclick="regist_go()" type="button" class = "btnBottom">작성</button>
								</div>
				<!-- 				<div style="padding-right:1vw; padding-top:4vh;"> -->
				<!-- 					<button onclick="" type="button" class = "btnBottom"  style="background-color:#DB0000;">임시저장</button> -->
				<!-- 				</div> -->
							</div>
						</div>
					</form>
				<!-- </div> -->
		</div>
	</div>
</div>

<!-- <script>

$(function() {
	  $(window).on('beforeunload', function() {
	    return "이 페이지를 벗어나면 데이터가 초기화 됩니다.";
	  });
	});

</script> -->



<script>
	window.onload=function(){
		summernote_go($('#content'),'<%=request.getContextPath()%>');	
		
		
		$('.fileInput').on('change','input[type="file"]',function(event){
			//alert(this.files[0].size);
			if(this.files[0].size>1024*1024*40){
	 			alert("파일 용량이 40MB를 초과하였습니다.");
	 			this.click();
	 			this.value="";	 					
	 			return false;
	 		} 
		});
	}	
	
	
	var dataNum=0;

	function addFile_go(){
		//alert("click add btn");
		

		if($('input[name="uploadFile"]').length >=5){
			alert("파일추가는 5개까지만 가능합니다.");
			return;
		}
		
		var div=$('<div>').addClass("inputRow").attr("data-no",dataNum);
		var input=$('<input>').attr({"type":"file","name":"uploadFile"}).css("display","inline");
		
		var button="<button onclick='remove_go("+dataNum+");' style='border:0;outline:0;' class='badge bg-bad' type='button'>X</button>";
		
		div.append(input).append(button);
		$('.fileInput').append(div);
		
		
		dataNum++;
	}

	function remove_go(dataNum){
		$('div[data-no="'+dataNum+'"]').remove();
	}
	
</script>   	
	
	
	




<script>

$('.summernote').summernote({//Your classic summernote code here
	  // 에디터 디자인
	  height: 340,
	  disableResizeEditor: true,
	  // 에디터 한글 설정
	  lang: "ko-KR",
	  // 에디터에 커서 이동 (input창의 autofocus라고 생각하시면 됩니다.)
	  focus : true,
	  toolbar: [
		    // 글꼴 설정
		    ['fontname', ['fontname']],
		    // 글자 크기 설정
		    ['fontsize', ['fontsize']],
		    // 굵기, 기울임꼴, 밑줄,취소 선, 서식지우기
		    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
		    // 글자색
		    ['color', ['forecolor','color']],
		    // 표만들기
		    ['table', ['table']],
		    // 글머리 기호, 번호매기기, 문단정렬
		    ['para', ['ul', 'ol', 'paragraph']],
		    // 줄간격
		    ['height', ['height']],
		    // 그림첨부, 링크만들기, 동영상첨부
		    ['insert', ['link', 'picture', 'video', 'file']],
		    // 코드보기, 확대해서보기, 도움말
		    ['view', ['codeview',/* 'fullscreen' */, 'help']]
		  ],
		  // 추가한 글꼴
		fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋음체','바탕체'],
		 // 추가한 폰트사이즈
		fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72'],
		/* fontcolor: ['red', 'blue', 'black', 'green', 'gray'] */
		
		
		//Define the callback
	    callbacks: {
	        onFileUpload: function(file) {
	        	 myOwnCallBack(file[0]); //Your own code goes here
	        },
	    },
	});
	
	
function myOwnCallBack(file) {
    let data = new FormData();
    data.append("files", files);
    $.ajax({
        data: data,
        type: "POST",
        url: "file-uploader.php", //Your own back-end uploader
        cache: false,
        contentType: false,
        processData: false,
        xhr: function() { //Handle progress upload
            let myXhr = $.ajaxSettings.xhr();
            if (myXhr.upload) myXhr.upload.addEventListener('progress', progressHandlingFunction, false);
            return myXhr;
        },
        success: function(reponse) {
            if(reponse.status === true) {
                let listMimeImg = ['image/png', 'image/jpeg', 'image/webp', 'image/gif', 'image/svg'];
                let listMimeAudio = ['audio/mpeg', 'audio/ogg'];
                let listMimeVideo = ['video/mpeg', 'video/mp4', 'video/webm'];
                let elem;

                if (listMimeImg.indexOf(file.type) > -1) {
                    //Picture
                    $('.summernote').summernote('editor.insertImage', reponse.filename);
                } else if (listMimeAudio.indexOf(file.type) > -1) {
                    //Audio
                    elem = document.createElement("audio");
                    elem.setAttribute("src", reponse.filename);
                    elem.setAttribute("controls", "controls");
                    elem.setAttribute("preload", "metadata");
                    $('.summernote').summernote('editor.insertNode', elem);
                } else if (listMimeVideo.indexOf(file.type) > -1) {
                    //Video
                    elem = document.createElement("video");
                    elem.setAttribute("src", reponse.filename);
                    elem.setAttribute("controls", "controls");
                    elem.setAttribute("preload", "metadata");
                    $('.summernote').summernote('editor.insertNode', elem);
                } else {
                    //Other file type
                    elem = document.createElement("a");
                    let linkText = document.createTextNode(file.name);
                    elem.appendChild(linkText);
                    elem.title = file.name;
                    elem.href = reponse.filename;
                    $('.summernote').summernote('editor.insertNode', elem);
                }
            }
        }
    });
}

function progressHandlingFunction(e) {
    if (e.lengthComputable) {
        //Log current progress
        console.log((e.loaded / e.total * 100) + '%');

        //Reset progress on complete
        if (e.loaded === e.total) {
            console.log("Upload finished.");
        }
    }
}
	
</script>


<script>
window.onload=function(){
	summernote_go($('#content'),'<%=request.getContextPath()%>'); 
}


function regist_go(){
	var form = document.registForm;
/* 	if(form.noticeTitle.value==""){
		alert("제목은 필수입니다.");
		return;
	} */
	
	console.log("폼",form);
	form.submit();
	

}

</script>

<c:if test="${from eq 'regist'}" >
	<script>
	window.onload = function(){
		swal({
			  title: "성공",
			  text: "게시글 작성 완료되었습니다.",
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

<script>
function changeIframeUrl1() {
	
	var iframValue = "/board/notice/list";
	var url = iframValue;
	
	/* return url; */
	parent.document.querySelector('#iframePlace').setAttribute("src", url);
	
<%-- 	$.ajax({
		url:"<%=request.getContextPath()%>/board/notice/list",
		type:"get",
		data: {document.getElementById("iframePlace").src: <%=request.getContextPath()%>/board/notice/list},
		dataType:"json",
		success:console.log("pass") ,
	}); --%>
	
	
	
	<%-- document.getElementById("iframePlace").src= "<%=request.getContextPath()%>/board/notice/list";
	console.log("changeIframeUrl1's URL = ", iframePlaceSrc); --%>
	
/* 	sideButton1.classList.remove("anotherPlace");
	sideButton1.classList.add("thisPlace");
	sideButton2.classList.remove("thisPlace");
	sideButton2.classList.add("anotherPlace");
	sideButton3.classList.remove("thisPlace");
	sideButton3.classList.add("anotherPlace"); */
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

<script>
function goToNoticeList(){
	var iframValue = "/board/notice/list";
	var url = iframValue;
	parent.document.querySelector('#iframePlace').setAttribute("src", url);
}
</script>
