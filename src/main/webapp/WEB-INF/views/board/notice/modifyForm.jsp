<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"

	uri="http://www.springframework.org/security/tags"%>


<c:set var="noticeList" value="${dataMap.noticeList }" />

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

/**????????????*/
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
			<div id="sideButton1" class="thisPlace" onclick="changeIframeUrl1()">????????????</div>
			<div id="sideButton2" class="anotherPlace" onclick="changeIframeUrl2()"> ?????? ??? ?????????</div>
		</div> 
		<div class="right-iframe col-10">
			<div class="col-3 pl-2" style="margin-top:10px; margin-bottom:10px;">
				<h4 style="font-weight:600">???????????? > ??????</h4>
			</div>
			<form role="form" method="post" action="modify.do" name="modifyForm">
				<ul>
					<li class="user" style="display:none;">
						<input type="hidden" name="noticeNo" value="${notice.noticeNo}"/>
						<span class="subject">?????????</span><span class="sub">??????</span>
						<span class="txt"><input type="text" name="memId" value="${loginUser.memId }" readonly/></span>
					</li>
					<li class="title">
						<span class="subject">?????????</span><span class="sub">??????</span>
						<span class="txt"><input type="text" name="noticeTitle" style="width:500px;" value="${notice.noticeTitle}" placeholder="????????? ????????????"/></span>
					</li>
					<li class="person">
						<span class="subject">?????????</span><span class="sub">??????</span>
						<span class="txt"><input type="text" name="noticeWriter" value="${notice.noticeWriter}" style="width:150px;" readonly/></span>
						<span class="subject">?????????</span><span class="sub">??????</span>
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
				<textarea class="summernote" name="noticeContent" style="margin:0; padding:0; width:100vh;">${notice.noticeContent}</textarea>  
					<div class="row justify-content-beetween">
						<div class="col-6 row form-group">								
							<%-- <div style="padding-left:4vh; padding-right:1vh; padding-top:2vh; ">
								<button class="btn btn-xs btn-dark" onclick="addFile_go();" type="button" id="addFileBtn">?????? ??????</button>
							</div>
							<div class="card-footer fileInput" style="width:450px; height:100px; overflow-y:scroll; margin-top:2vh; background-color:white; border:1px lightgray solid;">
							</div>
						<!-- ???????????? ????????? -->
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
							</c:forEach> --%>
						</div>
						<div class="col-6 row justify-content-end">
							<div  style="padding-right:1vw; padding-top:2vh;">
								<button onclick="history.back()" type="button" class = "btnBottom">??????</button>
							</div>
							<div style="padding-right:1vw; padding-top:2vh;">
								<button onclick="modify_go()" type="button" class = "btnBottom">??????</button>
							</div>
						</div>
				</div>
			</form>
		</div>
	</div>
</div>




<script>

/* $(function() {
	  $(window).on('beforeunload', function() {
	    return "??? ???????????? ???????????? ???????????? ????????? ?????????.";
	  });
	}); */


</script>


<script>

$('.summernote').summernote({
	  // ????????? ?????????
	  height: 340,
	  disableResizeEditor: true,
	  // ????????? ?????? ??????
	  lang: "ko-KR",
	  // ???????????? ?????? ?????? (input?????? autofocus?????? ??????????????? ?????????.)
	  focus : true,
	  toolbar: [
		    // ?????? ??????
		    ['fontname', ['fontname']],
		    // ?????? ?????? ??????
		    ['fontsize', ['fontsize']],
		    // ??????, ????????????, ??????,?????? ???, ???????????????
		    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
		    // ?????????
		    ['color', ['forecolor','color']],
		    // ????????????
		    ['table', ['table']],
		    // ????????? ??????, ???????????????, ????????????
		    ['para', ['ul', 'ol', 'paragraph']],
		    // ?????????
		    ['height', ['height']],
		    // ????????????, ???????????????, ???????????????
		    ['insert',['picture','link','video']],
		    // ????????????, ??????????????????, ?????????
		    ['view', ['codeview',/* 'fullscreen' */, 'help']]
		  ],
		  // ????????? ??????
		fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','?????? ??????','??????','?????????','??????','?????????','?????????'],
		 // ????????? ???????????????
		fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72'],
		/* fontcolor: ['red', 'blue', 'black', 'green', 'gray'] */
	});
</script>


<script>
window.onload=function(){
	summernote_go($("#content"),'<%=request.getContextPath()%>');
}



function modify_go(){
	
	//????????? ??????
	var form = document.modifyForm;
		
	//?????? ????????????
	var files = $('input[name="uploadFile"]');
	for(var file of files){
		console.log(file.name+" : "+file.value);
		if(file.value==""){
			alert("????????? ???????????????.");
			file.click();
			return false;
		}
	}	
	form.submit();
}


function removeFile_go(className){
	//alert("X btn click");
	var li = $('li.'+className);
	if(!confirm(li.attr("file-name")+"??? ?????? ?????????????????????????")){
		return;
	}
	li.remove();
	
	var input=$('<input>').attr({"type":"hidden",
		 "name":"deleteFile",
		 "value":li.attr("target-ano")
		}); 
	$('form[role="form"]').prepend(input);
}

var dataNum=0;
function addFile_go(){
	//alert("add file btn click");
	
	var attachedFile=$('a[name="attachedFile"]').length; //????????????
	var inputFile=$('input[name="uploadFile"]').length;	 //????????? ??????
	var attachCount=attachedFile+inputFile; //???????????? + ??????????????? ??????
	
	if(attachCount >=5){
		alert("??????????????? 5???????????? ???????????????.");
		return;
	}
	
	var div=$('<div>').addClass("inputRow").attr("data-no",dataNum);
	var input=$('<input>').attr({"type":"file","name":"uploadFile"}).css("display","inline");
	
	var button="<button onclick='remove_go("+dataNum+");' style='border:0;outline:0;' class='badge' type='button'>X</button>";
	
	div.append(input).append(button);
	$('.fileInput').append(div);
	
	
	dataNum++;
}



</script>

<c:if test="${from eq 'modify'}" >
	<script>	//????????? ?????? 
	window.onload = function(){
		swal({
			  title: "??????",
			  text: "????????? ????????? ?????????????????????.",
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

