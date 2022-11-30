<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>404에러</title>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="<%=request.getContextPath()%>/resources/images/favicon.png">
    <link href="<%=request.getContextPath()%>/resources/css/style.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/resources/css/customcss.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&family=Roboto:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
</head>
<body style="height: 100vh">

    <div class="authincation h-100 loginFormBackground">
        <div class="container h-100">
            <div class="row justify-content-center h-100 align-items-center">
                <div class="col-md-6">
                    <div class="form-input-content text-center error-page">
                        <div class="row justify-content-center">
                        <h1 class="error-text font-weight-bold errortext">4</h1>
                        <img src="<%=request.getContextPath()%>/resources/images/error.png" alt="">
                        <h1 class="error-text font-weight-bold errortext">4</h1>
                        </div>
                        <br>
                        <h4><i class="fa fa-exclamation-triangle text-warning"></i> 페이지를 찾을 수 없습니다</h4>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%@ include file="/WEB-INF/views/common/preloader_js.jsp"%>
</body>
<!--**********************************
	Scripts
***********************************-->
<!-- Required vendors -->
<script src="<%=request.getContextPath()%>/resources/vendor/global/global.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/vendor/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/custom.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/deznav-init.js"></script>
</html>