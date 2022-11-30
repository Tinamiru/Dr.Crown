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

/**아래버튼*/
.btnBottom{

	border-color:darkgray;
	border-radius:5px;
	color:white;
	width:130px;
	height:41px;
	background-color:#333258;

}


</style>



<div class="container-fluid">
	<div class="row justify-content-start pb-3">
		<div class="col-3 pl-4">
			<div class="card-header p-0 pt-4">
				<h2 style="font-weight:600">논문 및 의학지 > 게시글 작성</h2>
			</div>
		</div>
	</div>
	<div id="detailFrame" class = "card content">
		<form role="form" method="post" action="regist.do" name="registForm">
			<ul>
				<li class="user" style="display:;">
					<span class="subject">사용자</span><span class="sub">│　</span>
					<span class="txt"><input type="text" name="memId" value="${loginUser.memId }" readonly/></span>
				</li>
				<li class="title">
					<span class="subject">제　목</span><span class="sub">│　</span>
					<span class="txt"><input type="text" name="minfoTitle" style="width:500px;" placeholder="제목을 쓰십시오"/></span>
				</li>
				<li class="person">
					<span class="subject">작성자</span><span class="sub">│　</span>
					<span class="txt"><input type="text" name="minfoWriter" value="" style="width:150px;"/></span>
				</li>
				<li class="category">
					<span class="subject">분　류</span><span class="sub">│　</span>
					<span class="txt">							
						<select name="pccNumber" >
		                    <c:forEach items="${categoryList}" var="category">
		                            <option value="${category.pccNumber}">${category.pccName}</option>
		                    </c:forEach>
						</select>
					</span>
				</li>
			</ul>
			<textarea class="summernote" name="minfoContent" style="margin:0; padding:0; width:100vh;"></textarea>  
		</form>
	</div>
</div>
<hr>
	<div class="row justify-content-end">
		<div  style="padding-right:1vw; padding-top:4vh;">
			<button onclick="" type="button" class = "btnBottom">취소</button>
		</div>
		<div style="padding-right:1vw; padding-top:4vh;">
			<button onclick="regist_go()" type="button" class = "btnBottom">작성</button>
		</div>
		<div style="padding-right:1vw; padding-top:4vh;">
			<button onclick="" type="button" class = "btnBottom"  style="background-color:#DB0000;">임시저장</button>
		</div>
	</div>




<script>

$('.summernote').summernote({
	  // 에디터 디자인
	  height: 260,
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
		    ['insert',['picture','link','video']],
		    // 코드보기, 확대해서보기, 도움말
		    ['view', ['codeview',/* 'fullscreen' */, 'help']]
		  ],
		  // 추가한 글꼴
		fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋음체','바탕체'],
		 // 추가한 폰트사이즈
		fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72'],
		/* fontcolor: ['red', 'blue', 'black', 'green', 'gray'] */
	});
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

