<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
if('${loginUser.memId}'){
	var data1 = {'id': '${loginUser.memId}'};
	
	$.ajax({
// 		   url: "http://localhost:5012/makeh5", 
		    url: "http://192.168.141.26:5012/makeh5", 
		   type: 'POST',
		   data : data1,
		   dataType: 'JSON',
		   success:function(menu){
		   }
		});
}
</script>
<script>
	if('${loginUser.memId}'){
		parent.location.href="<%=request.getContextPath()%>/index";
	}else{
		parent.location.href="<%=request.getContextPath()%>/common/loginForm";
	}
</script>
