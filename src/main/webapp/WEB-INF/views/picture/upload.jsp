<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    

<div class="authincation h-100 loginFormBackground">
	<div class="container h-100">
		<div class="row justify-content-center h-100 align-items-center">
			<div class="col-md-10">
				<div style="text-align : center; margin: 10px;">
					<img src="<%=request.getContextPath()%>/resources/images/logo-full.png" alt="" width="60%" height="60%" >
				</div>
				<div class="authincation-content">
					<div class="row no-gutters">
						<div class="col-xl-12">
							<form class="form-horizontal" role="xrayPicture" action="/chart/uploadXrayPic" method="post" enctype="multipart/form-data">
								<input type="file" accept="image/*" id="inputFile" onchange="changePicture_go();" name="picture" style="display:none">
								<input id="picture" class="form-control" type="hidden" name="fileName">
								<input id="pictureType" class="form-control" type="hidden" name="fileClass">
								<input id="pictureSize" class="form-control" type="hidden" name="fileSize">
								<input id="inputFileName" class="form-control" type="hidden" name="tempPicture" disabled="" value="">
								<input id="inputPNo" class="form-control" type="hidden" name="PNo" value="${pNo }">
							</form>
							<form role="form" class="form-horizontal" action="modify" method="post">
								<div style="background: white; padding: 30px; height: 80vh;">
									<div class="mb-3" style="border-bottom: 2px solid;">
										<h3 style="font-weight: bold;">의료사진 업로드</h3>
									</div>
									<div class="row justify-content-center">
										<div class="col-12">
											<div class="img-fluid rounded" id="pictureView" style="height: 250px;background-image:url(<%=request.getContextPath()%>/resources/images/stock/stock_detail_example.jpg);"></div>
										</div>
									</div>
									<div class="row justify-content-center mt-4">
										<div class="col-4">
											<label style="width: 100%" for="inputFile" class="btn btn-rounded btn-warning">사진 선택</label>
										</div>
										<div class="col-4">
											<label style="width: 100%" onclick="modify_go()" class="btn btn-rounded btn-primary">업로드하기</label>
										</div>
										<div class="col-4">
											<button style="width: 100%" class="closeBtn btn btn-rounded" onclick="window.close();" type="button">닫기</button>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script>
function changePicture_go(){
	     
	   var picture = $('input#inputFile')[0];
	   var fileFormat = picture.value.substr(picture.value.lastIndexOf(".")+1).toUpperCase();

	   if(!(fileFormat=="JPG" || fileFormat=="JPEG"|| fileFormat=="PNG")){
	      swal("오류","이미지는 jpg 형식만 가능합니다.","error");
	      return;
	   } 
	   
	   if(picture.files[0].size>10240*1024*1){
		   swal("오류","사진 용량은 10MB 이하만 가능합니다.","error");
	      return;
	   };
	   
		document.getElementById('inputFileName').value = picture.files[0].name;
		document.getElementById('pictureType').value = fileFormat;
		document.getElementById('pictureSize').value = picture.files[0].size;
		
	   $('input[name="fileName"]').val(picture.files[0].name);
	   
	   if (picture.files && picture.files[0]) {
	      var reader = new FileReader();
	       
	       reader.onload = function (e) {
	              $('div#pictureView')
	              .css({'background-image':'url('+e.target.result+')',
	                 'background-position':'center',
	                 'background-size':'cover',
	                 'background-repeat':'no-repeat'
	                 });
	           }
	          reader.readAsDataURL(picture.files[0]);
	   }
	}	
</script>
<script>
function modify_go(){
	var picture = document.getElementById('inputFile').value
	if(!picture){
		 swal("오류","사진을 입력하여 주십시오.","error");
		return;
	}
    var form = $('form[role="xrayPicture"]');
	swal({
		  title: "의료 사진을 등록합니다.",
		  text: "사진을 등록하시겠습니까?",
		  icon: "warning",
		  buttons: true,
		  dangerMode: true,
		})
		.then((willDelete) => {
		  if (!willDelete) {
		    swal("취소되었습니다.");
		    return;
		  } else {
		  	form.submit();
		  }
		});
	
	
 }
</script>

<c:if test="${from eq 'insertPic'}" >
	<script>
	window.onload = function(){
		swal({
			  title: "성공",
			  text: "사진이 업로드 되었습니다.",
			  icon: "success",
			  button: "확인",
		})
		.then((willDelete) => {
		  if (willDelete) {
			  window.close();
			  opener.location.href = "javascript:getXrayGo();"
		  }
		});
		
	}
	</script>
</c:if>