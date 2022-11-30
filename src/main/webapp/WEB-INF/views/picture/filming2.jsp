<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
   uri="http://www.springframework.org/security/tags"%> 

<div class="row" style="margin-top: 10px;">
   <div class="col-sm-5 justify-content-center text-center" style="border-right: solid 1px;">  
        <video hidden="hidden" id="video" width="640" height="480" autoplay></video> 
      
   </div>
   <div class="col-sm-7 justify-content-center" style="border-right: solid 1px;"> 
      <canvas id="canvas"  hidden="hidden"  width="640" height="480" onclick="uploadCanvasToServer()"></canvas>
      <canvas id="canvasSet"  width="640" height="480" ></canvas>
       
      
   </div>
<!--    <div> -->
<!--       <img src="" id="img" width="640" height="480"></img> -->
<!--    </div> -->
   
</div>

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
</script>
<script>
   // Elements for taking the snapshot
   var canvas = document.getElementById('canvas');
   var context = canvas.getContext('2d');
   var video = document.getElementById('video');
   
   // Trigger photo take
   document.getElementById("snap").addEventListener("click", function() {
      
   });
</script>

<script>
   uploadCanvasToServer = function() {
        const canvas = document.getElementById('canvas');
        const imgBase64 = canvas.toDataURL('image/jpeg', 'image/octet-stream');
        const decodImg = atob(imgBase64.split(',')[1]);
   		
        
        
        let array = [];
        for (let i = 0; i < decodImg .length; i++) {
          array.push(decodImg .charCodeAt(i));
        }
   
        const file = new Blob([new Uint8Array(array)], {type: 'image/jpeg'});
        const filename = 'img.jpg';
        
        let fd = new FormData();
        fd.append("file", file, filename);
        $.ajax({
           url : "http://192.168.141.6:5001/webcam",
           type : "post",
           contentType : false,
           processData : false,
           data : fd,
           dataType : "text",
           success : function(data) {
             
              
           },
           error : function(errorMessage) {
              alert("파일 전송 실패, 관리자에게 문의바랍니다.")
              history.back()

           },
        }).done(function(data) {
           console.log(data);
        });
        
      };

</script>
<script>
setInterval(function(){
   context.drawImage(video, 0, 0, 640, 480);

   uploadCanvasToServer();
}, 500);


</script>

