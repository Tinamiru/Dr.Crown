<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>

<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" />
<c:set var="workMain" value="${dataMap.workMain }" />


<script src="https://kit.fontawesome.com/9e1d56064a.js" crossorigin="anonymous"></script>


<head>
<style type="text/css">.swal-icon--error{border-color:#f27474;-webkit-animation:animateErrorIcon .5s;animation:animateErrorIcon .5s}.swal-icon--error__x-mark{position:relative;display:block;-webkit-animation:animateXMark .5s;animation:animateXMark .5s}.swal-icon--error__line{position:absolute;height:5px;width:47px;background-color:#f27474;display:block;top:37px;border-radius:2px}.swal-icon--error__line--left{-webkit-transform:rotate(45deg);transform:rotate(45deg);left:17px}.swal-icon--error__line--right{-webkit-transform:rotate(-45deg);transform:rotate(-45deg);right:16px}@-webkit-keyframes animateErrorIcon{0%{-webkit-transform:rotateX(100deg);transform:rotateX(100deg);opacity:0}to{-webkit-transform:rotateX(0deg);transform:rotateX(0deg);opacity:1}}@keyframes animateErrorIcon{0%{-webkit-transform:rotateX(100deg);transform:rotateX(100deg);opacity:0}to{-webkit-transform:rotateX(0deg);transform:rotateX(0deg);opacity:1}}@-webkit-keyframes animateXMark{0%{-webkit-transform:scale(.4);transform:scale(.4);margin-top:26px;opacity:0}50%{-webkit-transform:scale(.4);transform:scale(.4);margin-top:26px;opacity:0}80%{-webkit-transform:scale(1.15);transform:scale(1.15);margin-top:-6px}to{-webkit-transform:scale(1);transform:scale(1);margin-top:0;opacity:1}}@keyframes animateXMark{0%{-webkit-transform:scale(.4);transform:scale(.4);margin-top:26px;opacity:0}50%{-webkit-transform:scale(.4);transform:scale(.4);margin-top:26px;opacity:0}80%{-webkit-transform:scale(1.15);transform:scale(1.15);margin-top:-6px}to{-webkit-transform:scale(1);transform:scale(1);margin-top:0;opacity:1}}.swal-icon--warning{border-color:#f8bb86;-webkit-animation:pulseWarning .75s infinite alternate;animation:pulseWarning .75s infinite alternate}.swal-icon--warning__body{width:5px;height:47px;top:10px;border-radius:2px;margin-left:-2px}.swal-icon--warning__body,.swal-icon--warning__dot{position:absolute;left:50%;background-color:#f8bb86}.swal-icon--warning__dot{width:7px;height:7px;border-radius:50%;margin-left:-4px;bottom:-11px}@-webkit-keyframes pulseWarning{0%{border-color:#f8d486}to{border-color:#f8bb86}}@keyframes pulseWarning{0%{border-color:#f8d486}to{border-color:#f8bb86}}.swal-icon--success{border-color:#a5dc86}.swal-icon--success:after,.swal-icon--success:before{content:"";border-radius:50%;position:absolute;width:60px;height:120px;background:#fff;-webkit-transform:rotate(45deg);transform:rotate(45deg)}.swal-icon--success:before{border-radius:120px 0 0 120px;top:-7px;left:-33px;-webkit-transform:rotate(-45deg);transform:rotate(-45deg);-webkit-transform-origin:60px 60px;transform-origin:60px 60px}.swal-icon--success:after{border-radius:0 120px 120px 0;top:-11px;left:30px;-webkit-transform:rotate(-45deg);transform:rotate(-45deg);-webkit-transform-origin:0 60px;transform-origin:0 60px;-webkit-animation:rotatePlaceholder 4.25s ease-in;animation:rotatePlaceholder 4.25s ease-in}.swal-icon--success__ring{width:80px;height:80px;border:4px solid hsla(98,55%,69%,.2);border-radius:50%;box-sizing:content-box;position:absolute;left:-4px;top:-4px;z-index:2}.swal-icon--success__hide-corners{width:5px;height:90px;background-color:#fff;padding:1px;position:absolute;left:28px;top:8px;z-index:1;-webkit-transform:rotate(-45deg);transform:rotate(-45deg)}.swal-icon--success__line{height:5px;background-color:#a5dc86;display:block;border-radius:2px;position:absolute;z-index:2}.swal-icon--success__line--tip{width:25px;left:14px;top:46px;-webkit-transform:rotate(45deg);transform:rotate(45deg);-webkit-animation:animateSuccessTip .75s;animation:animateSuccessTip .75s}.swal-icon--success__line--long{width:47px;right:8px;top:38px;-webkit-transform:rotate(-45deg);transform:rotate(-45deg);-webkit-animation:animateSuccessLong .75s;animation:animateSuccessLong .75s}@-webkit-keyframes rotatePlaceholder{0%{-webkit-transform:rotate(-45deg);transform:rotate(-45deg)}5%{-webkit-transform:rotate(-45deg);transform:rotate(-45deg)}12%{-webkit-transform:rotate(-405deg);transform:rotate(-405deg)}to{-webkit-transform:rotate(-405deg);transform:rotate(-405deg)}}@keyframes rotatePlaceholder{0%{-webkit-transform:rotate(-45deg);transform:rotate(-45deg)}5%{-webkit-transform:rotate(-45deg);transform:rotate(-45deg)}12%{-webkit-transform:rotate(-405deg);transform:rotate(-405deg)}to{-webkit-transform:rotate(-405deg);transform:rotate(-405deg)}}@-webkit-keyframes animateSuccessTip{0%{width:0;left:1px;top:19px}54%{width:0;left:1px;top:19px}70%{width:50px;left:-8px;top:37px}84%{width:17px;left:21px;top:48px}to{width:25px;left:14px;top:45px}}@keyframes animateSuccessTip{0%{width:0;left:1px;top:19px}54%{width:0;left:1px;top:19px}70%{width:50px;left:-8px;top:37px}84%{width:17px;left:21px;top:48px}to{width:25px;left:14px;top:45px}}@-webkit-keyframes animateSuccessLong{0%{width:0;right:46px;top:54px}65%{width:0;right:46px;top:54px}84%{width:55px;right:0;top:35px}to{width:47px;right:8px;top:38px}}@keyframes animateSuccessLong{0%{width:0;right:46px;top:54px}65%{width:0;right:46px;top:54px}84%{width:55px;right:0;top:35px}to{width:47px;right:8px;top:38px}}.swal-icon--info{border-color:#c9dae1}.swal-icon--info:before{width:5px;height:29px;bottom:17px;border-radius:2px;margin-left:-2px}.swal-icon--info:after,.swal-icon--info:before{content:"";position:absolute;left:50%;background-color:#c9dae1}.swal-icon--info:after{width:7px;height:7px;border-radius:50%;margin-left:-3px;top:19px}.swal-icon{width:80px;height:80px;border-width:4px;border-style:solid;border-radius:50%;padding:0;position:relative;box-sizing:content-box;margin:20px auto}.swal-icon:first-child{margin-top:32px}.swal-icon--custom{width:auto;height:auto;max-width:100%;border:none;border-radius:0}.swal-icon img{max-width:100%;max-height:100%}.swal-title{color:rgba(0,0,0,.65);font-weight:600;text-transform:none;position:relative;display:block;padding:13px 16px;font-size:27px;line-height:normal;text-align:center;margin-bottom:0}.swal-title:first-child{margin-top:26px}.swal-title:not(:first-child){padding-bottom:0}.swal-title:not(:last-child){margin-bottom:13px}.swal-text{font-size:16px;position:relative;float:none;line-height:normal;vertical-align:top;text-align:left;display:inline-block;margin:0;padding:0 10px;font-weight:400;color:rgba(0,0,0,.64);max-width:calc(100% - 20px);overflow-wrap:break-word;box-sizing:border-box}.swal-text:first-child{margin-top:45px}.swal-text:last-child{margin-bottom:45px}.swal-footer{text-align:right;padding-top:13px;margin-top:13px;padding:13px 16px;border-radius:inherit;border-top-left-radius:0;border-top-right-radius:0}.swal-button-container{margin:5px;display:inline-block;position:relative}.swal-button{background-color:#7cd1f9;color:#fff;border:none;box-shadow:none;border-radius:5px;font-weight:600;font-size:14px;padding:10px 24px;margin:0;cursor:pointer}.swal-button:not([disabled]):hover{background-color:#78cbf2}.swal-button:active{background-color:#70bce0}.swal-button:focus{outline:none;box-shadow:0 0 0 1px #fff,0 0 0 3px rgba(43,114,165,.29)}.swal-button[disabled]{opacity:.5;cursor:default}.swal-button::-moz-focus-inner{border:0}.swal-button--cancel{color:#555;background-color:#efefef}.swal-button--cancel:not([disabled]):hover{background-color:#e8e8e8}.swal-button--cancel:active{background-color:#d7d7d7}.swal-button--cancel:focus{box-shadow:0 0 0 1px #fff,0 0 0 3px rgba(116,136,150,.29)}.swal-button--danger{background-color:#e64942}.swal-button--danger:not([disabled]):hover{background-color:#df4740}.swal-button--danger:active{background-color:#cf423b}.swal-button--danger:focus{box-shadow:0 0 0 1px #fff,0 0 0 3px rgba(165,43,43,.29)}.swal-content{padding:0 20px;margin-top:20px;font-size:medium}.swal-content:last-child{margin-bottom:20px}.swal-content__input,.swal-content__textarea{-webkit-appearance:none;background-color:#fff;border:none;font-size:14px;display:block;box-sizing:border-box;width:100%;border:1px solid rgba(0,0,0,.14);padding:10px 13px;border-radius:2px;transition:border-color .2s}.swal-content__input:focus,.swal-content__textarea:focus{outline:none;border-color:#6db8ff}.swal-content__textarea{resize:vertical}.swal-button--loading{color:transparent}.swal-button--loading~.swal-button__loader{opacity:1}.swal-button__loader{position:absolute;height:auto;width:43px;z-index:2;left:50%;top:50%;-webkit-transform:translateX(-50%) translateY(-50%);transform:translateX(-50%) translateY(-50%);text-align:center;pointer-events:none;opacity:0}.swal-button__loader div{display:inline-block;float:none;vertical-align:baseline;width:9px;height:9px;padding:0;border:none;margin:2px;opacity:.4;border-radius:7px;background-color:hsla(0,0%,100%,.9);transition:background .2s;-webkit-animation:swal-loading-anim 1s infinite;animation:swal-loading-anim 1s infinite}.swal-button__loader div:nth-child(3n+2){-webkit-animation-delay:.15s;animation-delay:.15s}.swal-button__loader div:nth-child(3n+3){-webkit-animation-delay:.3s;animation-delay:.3s}@-webkit-keyframes swal-loading-anim{0%{opacity:.4}20%{opacity:.4}50%{opacity:1}to{opacity:.4}}@keyframes swal-loading-anim{0%{opacity:.4}20%{opacity:.4}50%{opacity:1}to{opacity:.4}}.swal-overlay{position:fixed;top:0;bottom:0;left:0;right:0;text-align:center;font-size:0;overflow-y:auto;background-color:rgba(0,0,0,.4);z-index:10000;pointer-events:none;opacity:0;transition:opacity .3s}.swal-overlay:before{content:" ";display:inline-block;vertical-align:middle;height:100%}.swal-overlay--show-modal{opacity:1;pointer-events:auto}.swal-overlay--show-modal .swal-modal{opacity:1;pointer-events:auto;box-sizing:border-box;-webkit-animation:showSweetAlert .3s;animation:showSweetAlert .3s;will-change:transform}.swal-modal{width:478px;opacity:0;pointer-events:none;background-color:#fff;text-align:center;border-radius:5px;position:static;margin:20px auto;display:inline-block;vertical-align:middle;-webkit-transform:scale(1);transform:scale(1);-webkit-transform-origin:50% 50%;transform-origin:50% 50%;z-index:10001;transition:opacity .2s,-webkit-transform .3s;transition:transform .3s,opacity .2s;transition:transform .3s,opacity .2s,-webkit-transform .3s}@media (max-width:500px){.swal-modal{width:calc(100% - 20px)}}@-webkit-keyframes showSweetAlert{0%{-webkit-transform:scale(1);transform:scale(1)}1%{-webkit-transform:scale(.5);transform:scale(.5)}45%{-webkit-transform:scale(1.05);transform:scale(1.05)}80%{-webkit-transform:scale(.95);transform:scale(.95)}to{-webkit-transform:scale(1);transform:scale(1)}}@keyframes showSweetAlert{0%{-webkit-transform:scale(1);transform:scale(1)}1%{-webkit-transform:scale(.5);transform:scale(.5)}45%{-webkit-transform:scale(1.05);transform:scale(1.05)}80%{-webkit-transform:scale(.95);transform:scale(.95)}to{-webkit-transform:scale(1);transform:scale(1)}}</style>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Dr.Crown Dental Pro</title>
    <!-- Favicon icon -->
    
    <link rel="icon" type="image/png" sizes="16x16" href="/resources/images/favicon.png">
    <link href="/resources/vendor/jqvmap/css/jqvmap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="/resources/vendor/chartist/css/chartist.min.css">
    <link href="/resources/vendor/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet">
	<link href="/resources/vendor/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
    <link href="/resources/css/style.css" rel="stylesheet">
    <link href="/resources/css/customcss.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&amp;family=Roboto:wght@100;300;400;500;700;900&amp;display=swap" rel="stylesheet">
  
    <link rel="stylesheet" href="/resources/icons/font-awesome-old/css/font-awesome.min.css">
    <link href="/resources/vendor/sweetalert2/dist/sweetalert2.min.css" rel="stylesheet">
</head>




<div class="container-fluid">
	<div class="row justify-content-between pr-4">
		<div class="row col-5 pl-4 ">
			<div class="p-0 pt-4 ">
				<h1>근태관리</h1>
			</div>
			<div class="p-0 pl-5 pt-5 align-self-center">
				<h3>휴가관리&nbsp;>&nbsp;휴가메뉴조회</h3>
			</div>
		</div>
		<div class="row col-6 justify-content-end p-0 pt-4 pr-2">
             <div class="pl-2 pr-2">
                 <div class="">
                     <button id="btn1" type="button" class="btn btn-primary dropdown-toggle btn-rounded" data-toggle="dropdown" aria-expanded="false">
                         	근무관리
                     </button>
                     <div class="dropdown-menu" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 56px, 0px);">
                         <a class="dropdown-item" href="http://localhost/manage/work/main" >근무스케줄</a>
                         <a class="dropdown-item" href="http://localhost/manage/work/workHoursList" >근무시간내역</a>
                     </div>
                 </div>
             </div>
             <div class="basic-dropdown pl-2 pr-2">
                 <div class="dropdown">
                     <button id="btn2" type="button" class="btn btn-primary dropdown-toggle btn-rounded" data-toggle="dropdown" aria-expanded="false">
                         	근태신청관리
                     </button>
                     <div class="dropdown-menu" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 56px, 0px);">
                         <a class="dropdown-item" href="http://localhost/manage/work/list">출퇴근내역</a>
                         <a class="dropdown-item" href="http://localhost/manage/work/attendanceApplicationList">근태신청내역</a>
                     </div>
                 </div>
             </div>
             <div class="basic-dropdown pl-2 pr-5">
                 <div class="dropdown">
                     <button id="btn3" type="button" class="btn btn-primary dropdown-toggle btn-rounded" data-toggle="dropdown" aria-expanded="false">
                         	휴가관리
                     </button>
                     <div class="dropdown-menu" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 56px, 0px);">
                         <a class="dropdown-item" href="http://localhost/manage/work/vacationMenu">휴가메뉴조회</a>
                         <a class="dropdown-item" onclick="vacationApplication()">휴가신청</a>
                         <a class="dropdown-item" href="http://localhost/manage/work/vacationList">휴가내역현황</a>
                     </div>
                 </div>
             </div>
        </div>
	</div>
	<hr>
	<div class="row justify-content-center pb-3 pr-5">
		<div class="row col-3 d-flex" >
			<a onclick="vacationApplication()"><button type="button" class="btn btn-primary btn-lg col-xl rounded" >
				<h1 style="color:white">휴가신청하기
					<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-caret-down-fill" viewBox="0 0 16 16">
					  <path d="M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z"/>
					</svg>
				</h1>
			</button></a>
		</div>
		<div class = "row col-4 pt-2">
	   		<div class = "col-3 d-flex justify-content-end align-self-center" >
				    <label>연도 선택 : </label>
			</div>
	   		<div class = "col-4 p-0 d-flex justify-content-start align-self-center" >
				<c:set var="nowYear" value="2022"></c:set>
				<h3><select id="selectYear1" style="height:45px; border:0; border-radius: 10px; color:#6761f9;">
				  <c:forEach var="i" begin="2020" end="${nowYear}" step="1">
				    <option value="${nowYear - i + 2020}">${nowYear - i + 2020}년</option>
				  </c:forEach>
				</select></h3><label for="nowYear" class="align-self-center">&nbsp;부터</label>
			</div>
	   		<div class = "col-4 p-0 d-flex justify-content-start align-self-center">
				<c:set var="nowYear" value="2022"></c:set>
				<h3><select id="selectYear2" style="height:45px; border:0; border-radius: 10px; color:#6761f9;">
				  <c:forEach var="i" begin="2020" end="${nowYear}" step="1">
				    <option value="${nowYear - i + 2020}">${nowYear - i + 2020}년</option>
				  </c:forEach>
				</select></h3><label for="nowYear" class="align-self-center">&nbsp;까지</label>
			</div>
		</div>
	</div>
			
	<!-- 테이블 -->
	<div class="row border borderd border-2">
		<div class="card col-4" style="height:50vh;">
			<div class=" justify-content-around p-3 bg-white" style="height:50vh;">
				<div class="row pb-3 pt-2" style="height:50px;" >
					<div class="align-self-center pl-3"><h3><span class="col-5 pl-2 align-self-center">본인 휴가조회</span></h3></div>&nbsp;&nbsp;&nbsp;&nbsp;<div class="align-self-center"><span class="pl-2">본인의 휴가사용내역을 확인합니다</span></div>
				</div>
		        <div id="vacation1" class="row align-self-center text-center p-2" 
			        style="width:500px; height:100px; border:1px solid; 
			        border-radius:10px; border-color:rgba(51,50,88,.5);border-width:3px; margin:10px;">
		            <div class="col-3 align-self-center">
		        		<div>아이콘</div>
		        	</div>
		            <div class="col-5 align-self-center" >
		            	<div style="font-size:20px; font-weight:bolder;">총 휴가일 수</div>
		        	</div>
		            <div class="col-3 align-self-center">
		            	<div style="font-size:20px; font-weight:bolder;">15</div>
		        	</div>
		        </div>
		        <div id="vacation2" class="row align-self-center text-center p-2"
		   	        style="width:500px; height:100px; border:1px solid; 
			        border-radius:10px; border-color:rgba(51,50,88,.5);border-width:3px; margin:10px;">
		            <div class="col-3 align-self-center">
		        		<div>아이콘</div>
		        	</div>
		            <div class="col-5 align-self-center" >
		            	<div style="font-size:20px; font-weight:bolder;">휴가 사용일 수</div>
		        	</div>
		            <div class="col-3 align-self-center">
		            	<div style="font-size:20px; font-weight:bolder;">11.5</div>
		        	</div>
		        </div>
		        <div id="vacation3" class="row align-self-center text-center p-2"
		   	        style="width:500px; height:100px; border:1px solid; 
			        border-radius:10px; border-color:rgba(51,50,88,.5);border-width:3px; margin:10px;">
		            <div class="col-3 align-self-center">
		        		<div>아이콘</div>
		        	</div>
		            <div class="col-5 align-self-center" >
		            	<div style="font-size:20px; font-weight:bolder;">휴가 잔여일</div>
		        	</div>
		            <div class="col-3 align-self-center">
		            	<div style="font-size:20px; font-weight:bolder;">3.5</div>
		        	</div>
		        </div>
		    </div>
	    </div>
	    <div class="card col-8 pb-2" style="height:50vh;">
		    <div class=" border borderd"  style="height:20vh;">
		    	<div class="row justify-content-around p-3 bg-white" style="height:200px;">
					<div class="col-2 border borderd rounded">
						<div class="row justify-content-center pt-3" >
							<div style="font-size:18px; font-weight:bolder;">귀속년도</div>
						</div>
						<hr>
						<div class="row justify-content-center pt-4" >
							<div>2020</div>
						</div>
					</div>
					<div class="col-3 border borderd rounded">
						<div class="row justify-content-center pt-3" >
							<div style="font-size:18px; font-weight:bolder;">휴가 귀속년도 기간</div>
						</div>
						<hr>
						<div class="row justify-content-around">
							<div class="row col-6 justify-content-center pt-3" >
								<div style="font-size:14px; font-weight:bolder;">시작기간</div>
								<div>2020-11-15</div>
							</div>
							<div class="row col-6 row justify-content-center pt-3" >
								<div style="font-size:14px; font-weight:bolder;">종료기간</div>
								<div>2020-11-19</div>
							</div>
						</div>
					</div>
					<div class="col-3 border borderd rounded">
						<div class="row justify-content-center pt-3" >
							<div style="font-size:18px; font-weight:bolder;">부여일 수</div>
						</div>
						<hr>
						<div class="row justify-content-around">
							<div class="row col-4 justify-content-center pt-3" >
								<div style="font-size:14px; font-weight:bolder;">기본일수</div>
								<div>15</div>
							</div>
							<div class="row col-4 row justify-content-center pt-3" >
								<div style="font-size:14px; font-weight:bolder;">기본조정</div>
								<div>1</div>
							</div>
							<div class="row col-4 row justify-content-center pt-3" >
								<div style="font-size:14px; font-weight:bolder;">월별조정</div>
								<div>0</div>
							</div>
						</div>
					</div>
					<div class="col-2 border borderd rounded">
						<div class="row justify-content-center pt-3" >	
							<div style="font-size:18px; font-weight:bolder;">소진일 수</div>
						</div>
						<hr>
					<div class="row justify-content-around">
							<div class="row col-6 justify-content-center pt-3" >
								<div style="font-size:14px; font-weight:bolder;">사용일수</div>
								<div>2.5</div>
							</div>
							<div class="row col-6 row justify-content-center pt-3" >
								<div style="font-size:14px; font-weight:bolder;">사용조정</div>
								<div>1</div>
							</div>
						</div>
					</div>
					<div class="col-2 border borderd rounded">
						<div class="row justify-content-center pt-3" >	
							<div style="font-size:18px; font-weight:bolder;">잔여일 수</div>
						</div>
						<hr>
						<div class="row justify-content-center pt-4" >
							<div>3.5</div>
						</div>
					</div>
				</div>		    
		    </div>
		    <div class="border borderd rounded pt-2" style="height:20vh;  margin:30px 0px 0px 0px;">
					<div class="table-responsive" style="height: 18vh; weight:20vh; overflow-y:scroll;">
						<table class="table table-bordered"
							style="text-align: center; vertical-align:middle; font-size:15px;">
							<thead class="thead" >
								<tr bgcolor="#333258" style="color: white; position:sticky; top:0px;">
									<th scope="col" style="width:12%">신청날짜</th>
									<th scope="col" style="width:8%">분류</th>
									<th scope="col" style="width:40%">휴가기간</th>
									<th scope="col" style="width:30%">사유</th>
									<th scope="col" style="width:10%">상태</th>
								</tr>
								<tr >
										<td class="p-1" style="vertical-align:middle" >2022-09-06</td>
										<td class="p-1" style="vertical-align:middle"><span class="badge light badge-info rounded">반차</span></td>
										<td class="p-1" style="vertical-align:middle">
											<span class="pr-1">2022-09-08</span>
											<span class="pl-1 pr-3">09:00</span>
											~
											<span class="pl-3">2022-09-08</span>
											<span class="pl-2 pr-3">12:00</span>
										</td>
										<td class="p-1" style="vertical-align:middle">은행업무로 인한 오전 개인일정</td>
										<td class="p-1" style="vertical-align:middle"><span class="badge light badge-dark">미처리</span></td>
								</tr>
								<tr>
										<td class="p-1" style="vertical-align:middle">2022-07-09</td>
										<td class="p-1" style="vertical-align:middle"><span class="badge light badge-info rounded">연차</span></td>
										<td class="p-1" style="vertical-align:middle"><span class="pr-3">2022-07-15</span> ~ <span class="pl-3">2022-07-17</span></td>
										<td class="p-1" style="vertical-align:middle">휴식</td>
										<td class="p-1" style="vertical-align:middle"><span class="badge light badge-success">처리완료</span></td>
								</tr>
								<tr>
										<td class="p-1" style="vertical-align:middle">2022-04-21</td>
										<td class="p-1" style="vertical-align:middle"><span class="badge light badge-info rounded">연차</span></td>
										<td class="p-1" style="vertical-align:middle"><span class="pr-3">2022-04-27</span> ~ <span class="pl-3">2022-04-29</span></td>
										<td class="p-1" style="vertical-align:middle">휴식</td>
										<td class="p-1" style="vertical-align:middle"><span class="badge light badge-success">처리완료</span></td>
								</tr>
								<tr>
										<td class="p-1" style="vertical-align:middle">2022-04-21</td>
										<td class="p-1" style="vertical-align:middle"><span class="badge light badge-info rounded">연차</span></td>
										<td class="p-1" style="vertical-align:middle"><span class="pr-3">2022-04-27</span> ~ <span class="pl-3">2022-04-29</span></td>
										<td class="p-1" style="vertical-align:middle">휴식</td>
										<td class="p-1" style="vertical-align:middle"><span class="badge light badge-success">처리완료</span></td>
								</tr>
								<tr>
										<td class="p-1" style="vertical-align:middle">2022-04-21</td>
										<td class="p-1" style="vertical-align:middle"><span class="badge light badge-info rounded">연차</span></td>
										<td class="p-1" style="vertical-align:middle"><span class="pr-3">2022-04-27</span> ~ <span class="pl-3">2022-04-29</span></td>
										<td class="p-1" style="vertical-align:middle">휴식</td>
										<td class="p-1" style="vertical-align:middle"><span class="badge light badge-success">처리완료</span></td>
								</tr>
								
							</thead>
<%-- 							<c:if test="${empty memeberList }" >
								<tr>
									<td colspan="8">
										<strong>해당 내용이 없습니다.</strong>
									</td>
								</tr>
							</c:if>	 --%>
							<c:forEach items="${memberList}" var="memeber">
								<tbody>
									<tr>
										<td>${memeberList[status.count].key}</td>
										<td>${memeber.empId}</td>
										<td>${memeber.memName}</td>
										<td>${memeber.memPhone}</td>
										<td>${memeber.memMail }</td>
										<td>${memeber.memPos}</td>
										<td>${memeber.memAuthority}</td>
										<td><button type="button" class="btn btn-danger btn-xl" style="float: right; border-radius: 10px; margin-right: 5px;">삭제</button></td>
									</tr>
								</tbody>
							</c:forEach>
						</table>
						
					</div>
				<div class="pt-3">
					<%@ include file="/WEB-INF/views/include/pagination.jsp"%>
	    		</div>
		    </div>
	    </div>
	    <div class="col-12 row bg-white justify-content-between pt-3 pl-5">
	    	<div class="row col-6 justify-content-start pl-3">
	    		<div class="align-self-center"><h3><span class="col-5 pl-2">전체직원 휴가조회</span></h3></div >&nbsp;&nbsp;&nbsp;&nbsp;<div class="align-self-center"><span>전체 직원에대한  휴가자현황을 확인합니다</span></div>
	    	</div>
	    	<div class="col-6 row justify-content-end pl-5 pr-3 align-self-center">
				<div class="col-3">
					<select class="form-control " name="perPageNum" id="perPageNum" onchange="list_go(1);">					  		  		
				 		<option value="5">5개씩</option>
				 		<option value="10" selected="">10개씩</option>
				 		<option value="20">20개씩</option>
				 		<option value="30">30개씩</option>
				 	</select>
				</div>
				<div class="col-9">
					<div class="row justify-content-end">
						<div class="col-3 p-0">
							<select class="form-control" name="searchType" id="searchType">
								<option value="tcw">전 체</option>
								<option value="t">제 목</option>
								<option value="w">작성자</option>
								<option value="c">내 용</option>
								<option value="tc">제목+내용</option>
								<option value="cw">작성자+내용</option>							
								<option value="tcw">작성자+제목+내용</option>
							</select>
						</div>
						<div class="col-5 p-0">
							<input class="form-control" type="text" name="keyword" placeholder="검색어를 입력하세요." value="">
						</div>
						<div class="col-4 p-0">
							<span class="input-group-append">
								<button class="btn btn-primary" type="button">검색</button>
							</span>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row col-12 bg-white justify-content-center pt-3 pl-2">
	    	<div class= "row bg-white pl-2 p-0" style="height: 45vh; overflow-y:scroll; width:95%; ">
	    		<table class="table table-bordered"
					style="text-align: center; vertical-align:middle; font-size:15px; height:15px; margin:0;">
						<tr bgcolor="lightgray" style="color: white; position:sticky; top:0px;">
							<th style="width:160px;"><span class="pr-3">이름</span><span> \ &nbsp;</span><span class="pl-3">10월</span></th>
							<th style="width:3%; color:blue;">1</th>
							<th style="width:3%; color:red;">2</th>
							<th style="width:3%">3</th>
							<th style="width:3%">4</th>
							<th style="width:3%">5</th>
							<th style="width:3%">6</th>
							<th style="width:3%">7</th>
							<th style="width:3%; color:blue;">8</th>
							<th style="width:3%; color:red;">9</th>
							<th style="width:3%">10</th>
							<th style="width:3%">11</th>
							<th style="width:3%">12</th>
							<th style="width:3%">13</th>
							<th style="width:3%">14</th>
							<th style="width:3%; color:blue;">15</th>
							<th style="width:3%; color:red;">16</th>
							<th style="width:3%">17</th>
							<th style="width:3%">18</th>
							<th style="width:3%">19</th>
							<th style="width:3%">20</th>
							<th style="width:3%">21</th>
							<th style="width:3%; color:blue;">22</th>
							<th style="width:3%; color:red;">23</th>
							<th style="width:3%">24</th>
							<th style="width:3%">25</th>
							<th style="width:3%">26</th>
							<th style="width:3%">27</th>
							<th style="width:3%">28</th>
							<th style="width:3%; color:blue;">29</th>
							<th style="width:3%; color:red;">30</th>
						</tr>
							<c:forEach var="i" begin="1" end="50">
							<tr id="forId"> 
								<td style="vertical-align:middle; padding:0;" ><span>곽재린</span></td>
								<td style="vertical-align:middle; padding:0;"></td>
								<td style="vertical-align:middle; padding:0;"></td>
								<td style="vertical-align:middle; padding:0;"></td>
								<td style="vertical-align:middle; padding:0;"></td>
								<td style="vertical-align:middle; padding:0;"></td>
								<td style="vertical-align:middle; padding:0;"></td>
								<td style="vertical-align:middle; padding:0;"></td>
								<td style="vertical-align:middle; padding:0;"></td>
								<td style="vertical-align:middle; padding:0;"></td>
								<td style="vertical-align:middle; padding:0;"></td>
								<td style="vertical-align:middle; padding:0;"><div style="width:100%; height:10px; background-color:lightgray; border-radius:40px 0px 0px 40px;"></div></td>
								<td style="vertical-align:middle; padding:0;"><div style="width:100%; height:10px; background-color:lightgray;"></div></td>
								<td style="vertical-align:middle; padding:0;"><div style="width:100%; height:10px; background-color:lightgray; border-radius:0px 40px 40px 0px;"></div></td>
								<td style="vertical-align:middle; padding:0;"></td>
								<td style="vertical-align:middle; padding:0;"></td>
								<td style="vertical-align:middle; padding:0;"></td>
								<td style="vertical-align:middle; padding:0;"></td>
								<td style="vertical-align:middle; padding:0;"></td>
								<td style="vertical-align:middle; padding:0;"><div style="width:100%; height:10px; background-color:lightgray; border-radius:40px 0px 0px 40px;"></div></td>
								<td style="vertical-align:middle; padding:0;"><div style="width:100%; height:10px; background-color:lightgray; border-radius:0px 40px 40px 0px;"></div></td>
								<td style="vertical-align:middle; padding:0;"></td>
								<td style="vertical-align:middle; padding:0;"></td>
								<td style="vertical-align:middle; padding:0;"></td>
								<td style="vertical-align:middle; padding:0;"></td>
								<td style="vertical-align:middle; padding:0;"></td>
								<td style="vertical-align:middle; padding:0;"></td>
								<td style="vertical-align:middle; padding:0;"></td>
								<td style="vertical-align:middle; padding:0;"></td>
								<td style="vertical-align:middle; padding:0;"></td>
							</tr>
						</c:forEach>
				</table>
	    	</div>
	    	<div class="pt-3 pb-3">
				<%@ include file="/WEB-INF/views/include/pagination.jsp" %>
    		</div>
	    </div>
    </div>	
</div>
    










<script>

function printName()  {
	const printDate = document.getElementById('selectDate').value;
	document.getElementById("resultDate").innerText = printDate;
	}

</script>

<script>
	document.getElementById('selectDate').value = new Date().toISOString().substring(0, 10);
	document.getElementById('resultDate').innerText = new Date().toISOString().substring(0, 10);
</script>


  
<script type="text/javascript">
	function vacationApplication() {
		
		var popupWidth = 800;
		var popupHeight = 800;

		var popupX = (document.body.offsetWidth / 2) - (800 / 2);
		// 만들 팝업창 좌우 크기의 1/2 만큼 보정값으로 빼주었음

		var popupY= (window.screen.height / 2) - (800 / 2);
		// 만들 팝업창 상하 크기의 1/2 만큼 보정값으로 빼주었음
		
		
		window.open('vacationApplication','vacationApplication','height=800, width=1200, left='+ popupX + ', top='+ popupY);
	} 
</script>
   
   
   