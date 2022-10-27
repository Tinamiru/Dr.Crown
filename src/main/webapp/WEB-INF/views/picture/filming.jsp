<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%> 
   
   
<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" />
<c:set var="noticeList" value="${dataMap.noticeList }" />



<link href="<%=request.getContextPath()%>/resources/vendor/lightgallery/css/lightgallery.min.css" rel="stylesheet">
    
<div class="row" style="margin-top: 10px;">
	<div class="col-sm-5 justify-content-center" style="border-right: solid 1px;">  
		 
		 <video id="video" width="640" height="480" autoplay></video>
		  <button id="snap" class="loginBtn btn btn-block">사진촬영</button>
		
	
	<!-- col-sm-8 -->	
	</div>
	
	<div class="col-sm-7 justify-content-center" style="border-right: solid 1px;"> 
	
		<canvas id="canvas" width="640" height="480"></canvas>


	<div class="card-body pb-1">
				<div id="lightgallery" class="row">
					<a href="<%=request.getContextPath()%>/resources/images/big/img1.jpg" data-exthumbimage="<%=request.getContextPath()%>/resources/images/big/img1.jpg" data-src="<%=request.getContextPath()%>/resources/images/big/img1.jpg" class="col-lg-3 col-md-6 mb-4">
						<img src="<%=request.getContextPath()%>/resources/images/big/img1.jpg" style="width:100%;"/>
					</a>
					<a href="<%=request.getContextPath()%>/resources/images/big/img2.jpg" data-exthumbimage="<%=request.getContextPath()%>/resources/images/big/img2.jpg" data-src="<%=request.getContextPath()%>/resources/images/big/img2.jpg" class="col-lg-3 col-md-6 mb-4">
						<img src="<%=request.getContextPath()%>/resources/images/big/img2.jpg" style="width:100%;"/>
					</a>
					<a href="<%=request.getContextPath()%>/resources/images/big/img1.jpg" data-exthumbimage="<%=request.getContextPath()%>/resources/images/big/img1.jpg" data-src="<%=request.getContextPath()%>/resources/images/big/img1.jpg" class="col-lg-3 col-md-6 mb-4">
						<img src="<%=request.getContextPath()%>/resources/images/big/img1.jpg" style="width:100%;"/>
					</a>
					<a href="<%=request.getContextPath()%>/resources/images/big/img1.jpg" data-exthumbimage="<%=request.getContextPath()%>/resources/images/big/img1.jpg" data-src="<%=request.getContextPath()%>/resources/images/big/img1.jpg" class="col-lg-3 col-md-6 mb-4">
						<img src="<%=request.getContextPath()%>/resources/images/big/img1.jpg" style="width:100%;"/>
					</a>
					<a href="<%=request.getContextPath()%>/resources/images/big/img1.jpg" data-exthumbimage="<%=request.getContextPath()%>/resources/images/big/img1.jpg" data-src="<%=request.getContextPath()%>/resources/images/big/img1.jpg" class="col-lg-3 col-md-6 mb-4">
						<img src="<%=request.getContextPath()%>/resources/images/big/img1.jpg" style="width:100%;"/>
					</a>
					<a href="<%=request.getContextPath()%>/resources/images/big/img1.jpg" data-exthumbimage="<%=request.getContextPath()%>/resources/images/big/img1.jpg" data-src="<%=request.getContextPath()%>/resources/images/big/img1.jpg" class="col-lg-3 col-md-6 mb-4">
						<img src="<%=request.getContextPath()%>/resources/images/big/img1.jpg" style="width:100%;"/>
					</a>
					<a href="<%=request.getContextPath()%>/resources/images/big/img1.jpg" data-exthumbimage="<%=request.getContextPath()%>/resources/images/big/img1.jpg" data-src="<%=request.getContextPath()%>/resources/images/big/img1.jpg" class="col-lg-3 col-md-6 mb-4">
						<img src="<%=request.getContextPath()%>/resources/images/big/img1.jpg" style="width:100%;"/>
					</a>
					<a href="<%=request.getContextPath()%>/resources/images/big/img1.jpg" data-exthumbimage="<%=request.getContextPath()%>/resources/images/big/img1.jpg" data-src="<%=request.getContextPath()%>/resources/images/big/img1.jpg" class="col-lg-3 col-md-6 mb-4">
						<img src="<%=request.getContextPath()%>/resources/images/big/img1.jpg" style="width:100%;"/>
					</a>
					
				</div>
			</div>
		
		
	<!-- col-sm-4 -->	
	</div>
<!-- main row -->	
</div>






<script src="<%=request.getContextPath()%>/resources/vendor/lightgallery/js/lightgallery-all.min.js"></script>	

<script>
		$('#lightgallery').lightGallery({
			loop:true,
			thumbnail:true,
			exThumbImage: 'data-exthumbimage'
		});
</script>
	
<script>
	// Grab elements, create settings, etc.
var video = document.getElementById('video');

// Get access to the camera!
if(navigator.mediaDevices && navigator.mediaDevices.getUserMedia) {
    // Not adding `{ audio: true }` since we only want video now
    navigator.mediaDevices.getUserMedia({ video: true }).then(function(stream) {
        //video.src = window.URL.createObjectURL(stream);
        video.srcObject = stream;
        video.play();
    });
}

/* Legacy code below: getUserMedia 
else if(navigator.getUserMedia) { // Standard
    navigator.getUserMedia({ video: true }, function(stream) {
        video.src = stream;
        video.play();
    }, errBack);
} else if(navigator.webkitGetUserMedia) { // WebKit-prefixed
    navigator.webkitGetUserMedia({ video: true }, function(stream){
        video.src = window.webkitURL.createObjectURL(stream);
        video.play();
    }, errBack);
} else if(navigator.mozGetUserMedia) { // Mozilla-prefixed
    navigator.mozGetUserMedia({ video: true }, function(stream){
        video.srcObject = stream;
        video.play();
    }, errBack);
}
*/
	</script>
	<script>
	// Elements for taking the snapshot
var canvas = document.getElementById('canvas');
var context = canvas.getContext('2d');
var video = document.getElementById('video');

// Trigger photo take
document.getElementById("snap").addEventListener("click", function() {
	context.drawImage(video, 0, 0, 640, 480);
});
	</script>