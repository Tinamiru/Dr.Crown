<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" />
<c:set var="minfoList" value="${dataMap.minfoList }" />

  <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/resources/css/ChartStyle.css"
	rel="stylesheet">
	<link href="<%=request.getContextPath()%>/resources/css/customcss.css"
	rel="stylesheet">

<style>
		.card-body {
			margin-top: -30px;
		}
        * {
            box-sizing: border-box;
        }

        .tableWrapper {
            width: 400px;
            height: 300px;
            background-color: lightgreen;
            overflow: auto;
        }

        #userListTable,
        #userListTable1
        #userListTable2
         {
            width: 800px;
            border: 0px;
            border-collapse: collapse;
        }

        #userListTable th,
        #userListTable1 th,
        #userListTable2 th,
        #userListTable1 td,
        #userListTable2 td,
        #userListTable td{
            width: 10%;
            border-right: 1px solid lightgray;
        }

        #userListTable th:last-child,
        #userListTable1 th:last-child,
        #userListTable2 th:last-child,
        #userListTable1 td:last-child,
        #userListTable2 td:last-child,
        #userListTable td:last-child{
            border-right: 0px !important;
        }

        #userListTable tr:first-child,
        #userListTable2 tr:first-child,
        #userListTable1 tr:first-child{
            background-color: #333258 !important;
            color: white !important;
            font-weight: bold !important;
        }


        #userListTable th, 
        #userListTable2 th, 
        #userListTable1 th {
            position: sticky;
            top: 0px;
            background-color: #333258 !important;
        }
        
      label{margin-left: 20px;}
		#datePicker{width:150px; margin: 0 20px 20px 20px;}
		#datePicker > span:hover{cursor: pointer;}
    </style>

<div style="position: fixed; width: 100%; height: 100%; ">
<div class="row justify-content-center">
			<hr class="m-0" style="  width: 35%; ">
		</div>
		<div class="row justify-content-center">
			<div class="subMenuList">
			</div>
		</div>
		<div class="row justify-content-center">
			<hr class="m-0" style="  width: 35%; ">
		</div>
	<div class="contaner-fluid" style="margin: 1.5em; ">
		<div class="row">
			<div class="col-sm-6 justify-content-center" style="border-right: solid 1px;">
			<!-- <div style="float:right; margin-top: -10px">

											<ul class="nav nav-pills justify-content-end mb-3">
			                                    <li class=" nav-item">
			                                        <a href="#navpills2-1" onclick="goInsidePage('/desk/main','M030000')" class="nav-link active" data-toggle="tab" aria-expanded="false">데스크홈</a>
			                                    </li>
			                                    <li class=" nav-item">
			                                        <a href="#navpills2-1" class="nav-link" data-toggle="tab" aria-expanded="false">진료내역</a>
			                                    </li>
			                                    <li class="nav-item">
			                                        <a href="#navpills2-2" onclick="goInsidePage('/desk/document/list','M030300')" class="nav-link" data-toggle="tab" aria-expanded="false">문서출력</a>
			                                    </li>
			                                    <li class="nav-item" onclick="goInsidePage('/desk/patient/list','M030200')">
			                                        <a href="#navpills2-2" class="nav-link" data-toggle="tab" aria-expanded="false">환자목록</a>
			                                    </li>
			                                    <li class="nav-item" onclick="goInsidePage('/desk/booking/list','M030100')">
			                                        <a  class="nav-link"  data-toggle="tab" aria-expanded="true">환자예약</a>
			                                    </li>
			                                </ul>
				</div>	 -->
				<section class="content" style="hight 80%; wigth:100%">
		
						<section class="content-header" style="margin-top: -20px" >
						<div class="container-fluid" >
								<div class="row">
								<div class="col-sm-2" style="margin-top:30px">
							<h4 style="font-weight:600; text-align: left;">▶환자정보</h4>
				
							</div>
						<div class="col-sm-10">
							<div style="float: right;">
								<div id="keyword" class="card-tools"
								style="width: 450px; height: 60px; font-size: 13px; float: left;">
									<div class="input-group search-area d-lg-inline-flex d-none" style="margin-left: 165px">
			<input class="form-control"  href="#" id="inputkeyword" onkeyup='selectList()' placeholder="환자검색" data-toggle="dropdown">
				<div class="input-group-append">
										<span class="input-group-text"><a href="javascript:void(0)"><i class="flaticon-381-search-2"></i></a></span>
									</div>
                <ul class="dropdown-menu">
                  <li class="dropdown" id="aaa">
                  <div style="width:550px;height:400px;  overflow:auto" class="bg-light">
                  
                  <div>
                  </div>
                  <div id="selectView" class="bg-light">
                   <table class="table table-hover bg-light">
                    <tbody id="seachKeywordModal">
							<tr> 
								<td colspan="2" style="font-size:20px">&nbsp;&nbsp;검색어를 입력해주세요 </td> 
							</tr>
                    </tbody>
                  </table>
       
                  </div>
                  </div>
                  </li>
                </ul>
           	
										<!-- end : search bar -->
									</div>
								</div>
						
							</div>
						</div>
					</div>
						</div>
						
					</section>
					
				
					<div class="card" style="height: 30vh; overflow: hidden;" >

					
						<div class="card-body" style="text-align: left; font-size: 13px;">
							<div class="row">
								<div class="col-sm-12">
								<div>
							
                        <div class="card" id="input3">
                     <form id="frm" method="post">
                            <div class="form-row" id="input2">
									<div class="p-1 card" style=" width:100%; height:28%; border:1px lightgray solid; font-size:13px; text-align: center;">
										<table class="normalTable" id="">
											<tr class="normalTr" >
												<th class="normalTh" style="">이름</th>
												 <td colspan="2">
													   <input type="text" id="pName" name="pName" size="3" style="width:100%;">
												 </td>
												 <td colspan="1" >
													   <input type="text" name="pSfx" size="3" style="width:100%;">
												 </td>
												 <th class="normalTh">차트번호</th>
												<td >
													   <input type="text" id="pNo" name="pNo" size="3" style="width:100%;" placeholder="신환등록시공백" readonly="readonly">
												 </td>
												 <th class="normalTh">내원경로</th>
												<td class="normalTd"> <select class="my-select" id="pVisitPath" name="pVisitPath" style="margin-top: -10px" >
						
																	  <option value="직장, 집 근처">직장, 집 근처</option>
																	
																	  <option value="인터넷 검색">인터넷 검색</option>
																	
																	  <option value="직원 지인">직원 지인</option>
																	  
																	  <option value="광고">광고</option>
																	  
																	  <option value="지인의 소개">지인의 소개</option>
																	
																	</select></td>
											</tr>
											<tr class="normalTr" >
												<th class="normalTh">주민등록번호</th>
												<td colspan="3">
													   <input type="text" class="pRnum" id="pRnum" name="pRnum" size="2" style="width:100%;">
												 </td>
												<th class="normalTh">휴대전화</th>
												<td>
													   <input type="text" id="pTel" name="pTel" size="3" style="width:100%;">
												 </td>
												<th class="normalTh">생년월일</th>
												<td>
													   <input type="text" class="birDate" name="pBir" size="1" style="width:100%;">
												</td>
											</tr>
											<tr class="normalTr">
											</tr>
											<tr class="normalTr">
												<th class="normalTh">우편번호</th>
												<td colspan="1">
													   <input type="text" id="zip_kakao" name="pZipcode" size="3" style="width:100%;">
												</td>
												<th class="normalTh">주소</th>
												<td colspan="3">
													   <input type="text" id="address_kakao" name="pAddr1" size="3" style="width:100%;" placeholder="주소검색시 클릭">
												</td>
											</tr>
											<tr class="normalTr">
												<th class="normalTh">나머지주소</th>
												<td colspan="5">
													   <input type="text" name="pAddr2" size="3" style="width:100%;">
												</td>
												<th class="normalTh">보험구분</th>
												<td class="normalTd"> <select class="my-select" id="pInsurance" name="pInsurance" >
						
																	  <option value="N001">일반(비급여)</option>
																	
																	  <option value="H001">건강 보험</option>
																	
																	  <option value="M001">의료급여 1종</option>
																	  
																	  <option value="M002">의료급여 2종</option>
																	  
																	  <option value="S002">급여2종장애</option>
																	  
																	  <option value="A001">전액본인부담</option>
																	
																	</select></td>
											</tr>
											<tr class="normalTr">
												<th class="normalTh">메모</th>
												<td colspan="5">
													   <input type="text" name="pMemo" size="3" style="width:100%;">
												</td>
												
											</tr>
										</table>
								
									</div>

                             
                                        </div>
                                        <div class="form-row" style="float: right; margin-top: -20px">
                                           			<div>
                                         			<button type="button" class="btn btn-primary" onclick="kwak();">신규환자등록</button>
                                           			</div>
                                           			<div>
                                         			<button type="button" class="btn btn-primary"onclick="patUpdate()" id="add">환자저장</button>
                                           			</div>
                                           			<div>
                                         			<button type="button" class="btn btn-primary"  name="deskbooking">접수</button>
                                           			</div>
                                          
                                           			
                                           			
                                        </div>
                                     
                                        
                                    </form>	
								<!-- <div>
										<div style="float:left; width: 50%">
												<table class="ui celled table" border='1' style="width: 425px; float:right;">
										  <thead>
										    <tr>
										    <th>총진료비</th>
										    <th>총미수금</th>
										  </tr></thead>
										  <tbody>
										    <tr>
										      <td data-label="Name">0</td>
										      <td data-label="Age">0</td>		
										    </tr>
										  </tbody>
										</table>
									
										</div>
									<div style="float:right; width: 50%">
              						<table class="ui celled table" border='1' style="width: 425px; ">
										  <thead>
										    <tr>
										    <th>수납할금액</th>
										    <th>카드</th>
										    <th>현금</th>
										    <th>기타</th>
										  </tr></thead>
										  <tbody>
										    <tr>
										      <td data-label="Age">0</td>
										      <td data-label="Job">0</td>
										      <td data-label="Job">0</td>
										      <td data-label="Job">0</td>
										    </tr>
										  </tbody>
										</table>
									</div>                                        
								</div> -->

                                </div>
				
								
								</div>
								</div>
								<!-- col-sm-12 -->
							</div>
							<!-- row -->
				
						</div>
						<!-- card-body -->
						
					</div>
					
				</section>
				
				<div class="row justify-content-center" >
					<section class="content" style="height:35vh; width: 95%;" >
					<section class="content-header">		
							<div class="container-fluid">
							</div>
						</section>
						<div id="tabs"  style="margin-top:-20px;">
						  <div class="tab whiteborder">진료내역</div>
						    <div class="tab">CC</div>
						    <div class="tab">예약</div>
						     <div class="tab" >문서출력</div>
						     <div class="tab" >처방전출력</div>
						     <div class="tab" >환자수납</div>
						   
						    
						  <div class="tabContent">
						<div class="card" style="overflow-y: scroll; height:50vh">
							<div class="card-body" style="text-align: center; font-size: 13px;">
								<div class="row">
									<div class="col-sm-12">
									<div id="ajaxCureList"><table class="table table-bordered" id="userListTable">
											<tr bgcolor="#333258" style="color:white; cursor: default;">
												<th>진료일자</th>
												<th>진료의사</th>
												<th>치식</th>
												<th>진료내역</th>
											</tr>
											<tr>
												<td colspan="4">환자를선택해주세요</td>
												
											</tr>
										
											
										</table>
										</div>
										
									</div>
									<!-- col-sm-12 -->
								</div>
								<!-- row -->
							</div>
							<!-- card-body -->
						</div>
						</div>
						  <div class="tabContent">
						<div class="card" style="overflow-y: scroll; height:50vh">
							<div class="card-body" style="text-align: center; font-size: 13px;">
								<div class="row">
									<div class="col-sm-12">
									<div id="ajaxCcList"><table class="table table-bordered" id="userListTable">
											<tr bgcolor="#333258" style="color: white; cursor: default;">
												<th>진료일자</th>
												<th>증상(CC)</th>
											</tr>
											<tr>
												<td colspan="4">환자를선택해주세요</td>
												
											</tr>
										
											
										</table>
										</div>
										
									</div>
									<!-- col-sm-12 -->
								</div>
								<!-- row -->
							</div>
							<!-- card-body -->
						</div>
						</div>
						  <div class="tabContent">
						<div class="card" style="overflow-y: scroll; height:50vh">
							<div class="card-body" style="text-align: center; font-size: 13px;">
								<div class="row">
									<div class="col-sm-12">
									<div id="ajaxBkList"><table class="table table-bordered" id="userListTable">
											<tr bgcolor="#333258" style="color: white; cursor: default;">
												<th>예약날짜/시간</th>
												<th>담당의사</th>
												<th>예약 내용</th>
											</tr>
											<tr>
												<td colspan="4">환자를선택해주세요</td>
												
											</tr>
										
											
										</table>
										</div>
										
									</div>
									<!-- col-sm-12 -->
								</div>
								<!-- row -->
							</div>
							<!-- card-body -->
						</div>
						</div>
										<div class="tabContent">
							<div class="card" style="overflow-y: scroll; height:50vh">
							<div class="card-body" style="text-align: center; font-size: 13px;">
								<div class="row">
									<div class="col-sm-12">
								<div id="documentPrintList"><table class="table table-bordered" id="userListTable">
											<tr bgcolor="#333258" style="color: white; cursor: default;">
												<th>문서번호</th>
												<th>문서종류</th>
												<th>발급의사</th>
												<th>발급날짜</th>
											</tr>
											<tr>
												<td colspan="4">환자를선택해주세요</td>
											</tr>
										
											
										</table>
										</div>
										</div>
									<!-- col-sm-12 -->
								</div>

</div>
</div>
</div>
										<div class="tabContent">
							<div class="card" style="overflow-y: scroll; height:50vh">
							<div class="card-body" style="text-align: center; font-size: 13px;">
								<div class="row">
									<div class="col-sm-12">
								<div id="prescriptionPrintList">
								<table class="table table-bordered" id="userListTable">
											<tr bgcolor="#333258" style="color: white; cursor: default;">
												<th>처방번호</th>
												<th>발급의사</th>
												<th>발급날짜</th>
											</tr>
											<tr>
												<td colspan="4">환자를선택해주세요</td>
											</tr>
										
											
										</table>
										</div>
										</div>
									<!-- col-sm-12 -->
								</div>

</div>
</div>
</div>
							  <div class="tabContent">
						<div class="card" style="overflow-y: scroll; height:50vh">
							<div class="card-body" style="text-align: center; font-size: 13px;">
								<div class="row">
									<div class="col-sm-12">
									<div id="ajaxPtpayList"><table class="table table-bordered" id="userListTable">
											<tr bgcolor="#333258" style="color: white; cursor: default;">
												<th>진료일자</th>
												<th>미수납액</th>
												<th>수납여부</th>
											</tr>
											<tr>
												<td colspan="4">환자를선택해주세요</td>
												
											</tr>
										
											
										</table>
										</div>
										
									</div>
									<!-- col-sm-12 -->
								</div>
								<!-- row -->
							</div>
							<!-- card-body -->
						</div>
						</div>
						
						</div>
					</section>
			</div>


			</div>
			<div class="col-sm-6">
			
			<div class="row justify-content-center" style="padding-bottom: 3vh;">
					<section class="content" style="height: 45vh; width: 95%;">
						<section class="content-header">
						<h4 style="font-weight:600; text-align: left; margin-top: 1px;">▶접수조회</h4>

							<div class="container-fluid" style="text-align: left;margin-top: -33px; margin-left: 60px" >
				<input type="text" class="cal_input" id="datePicker"  >
							</div>
				<!-- <div id="datePicker" class="input-group date" >
 					 <input class="form-control" type="text" readonly />
			  <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
			</div>		 -->	
			
						</section>
						<div class="card" style="overflow-y: scroll;">
							<div class="card-body" style="text-align: center; font-size: 13px; ">
								<div class="row">
									<div class="col-sm-12">
    									<div id="ajaxBookList"><table class='table table-bordered' id='userListTable1'>
<tr>
	<th>순번</th>
		<th>예약시간</th>	
	<th>차트번호</th>
		<th>이름</th>
	<th>연령|성별</th>
	<th style='width:35%;'>접수내역</th>
		<th>상태</th> 		
		</tr>
	

			<tr>
	  		<td colspan='7'>접수내역이없습니다</td>
	  	</tr>
	  		</table></div>
								

									</div>
									<!-- col-sm-12 --
    	       </div> <!-- row -->
								</div>
								<!-- card-body -->
							</div>
							
						</div>
					
					</section>
					
				</div>
			

			<div >
								<h4 style="font-weight:600; text-align: left; margin-top: 4px; ">▶예약목록</h4>
								
						<div class="container-fluid" style="text-align: left;margin-top: -33px; margin-left: 70px" >
                		    &nbsp; <input type="text" class="input" id="calldatePicker"  >
							</div>
						
			</div>
			 <div id="Context" style="margin-top: 15px">
				
				<div class="row justify-content-center" style="padding-bottom: 3vh;">
					<section class="content" style="height: 42vh; width: 95%;" >
						<div class="card" style="overflow-y: scroll;">
							<div class="card-body" style="text-align: center; font-size: 13px;">
							<div class="row">
							<div class="col-sm-12">
							<div id="ajaxcallBookingList">
							<table class='table table-bordered' id='userListTable2'>
<tr>
	<th>순번</th>
		<th>예약시간</th>	
	<th>차트번호</th>
		<th>이름</th>
	<th>연령|성별</th>
	<th style='width:35%;'>접수내역</th>
		<th>상태</th> 		
		</tr>
	

			<tr>
	  		<td colspan='7'>예약내역이없습니다</td>
	  	</tr>
	  		</table>

</div>
						
						</div>
						</div>
								<!-- row -->
							</div>
							<!-- card-body -->
						</div>
					</section>
				
				</div>
			  </div>
		</div>


		<div class="row">
			<div style="width: 47%; margin-left: 1.5em;">


				<div style="max-height: 39%; overflow-y: scroll;"></div>
			</div>
		</div>
	</div>
</div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>



 <script>
 $(document).on("keyup", ".birDate", function() { 
 
	 $(this).val( $(this).val().replace(/[^0-9]/g, "").replace(/(\d{4})(0[1-9]|1[012])(0[1-9]|[12][0-9]|3[01])/, `$1/$2/$3`));
 });
 $(document).on("keyup", ".pRnum", function() { 
 
	 $(this).val( $(this).val().replace(/[^0-9]/g, "").replace(/([0-9]{2}(?:0[1-9]|1[0-2])(?:0[1-9]|[1,2][0-9]|3[0,1]))([1-4][0-9]{6})/, `$1-$2`));
 });


$( cbcal = function () {
	  $("#calldatePicker").datepicker({ 
		  	format: 'yyyy-mm-dd',
	        autoclose: true, 
	        todayHighlight: true,
	    	
	
	  }).on('changeDate', function (e) {
		  console.log(document.getElementById('calldatePicker').value)

		  var data = moment(document.getElementById('calldatePicker').value).format("YYYYMMDD");

		   console.log(data);

		   calllist(data);
	    }).datepicker('update', new Date());
		var date = moment(document.getElementById('calldatePicker').value).format("YYYYMMDD");
		calllist(date);
		
	
});


function calllist(c){  
	if (isNaN(c)){
		alert("이미 선택한 날짜입니다")
		return ;

	}

	$.ajax({
		url:"getcallBoardDateList.do",
		type:"get",
		data: {bookingRegdate: c},
		dataType:"json",
		success: callajaxHtml,

		error:function(){alert("error");
		console.log(data)
		}
	});

}


	function callajaxHtml(data){

		var html="<table class='table table-bordered' id='userListTable2'>";
		html+="<tr>";
		html+="<th>예약시간</th>";  		
		html+="<th>차트번호</th>";
		html+="<th>이름</th>";
		html+="<th>담당의</th>";
		html+="<th style='width:35%;'>예약내역</th>";
		html+="<th>접수자</th>";  		
		html+="</tr>";
	
		if(data.callbookingDateList<1){
			html+="<tr>";
	  		html+="<td colspan='7'>예약내역이없습니다</td>";
	  		html+="</tr>";
	  		html+="</table>";
			
			$("#ajaxcallBookingList").html(html);
		}

		$.each(data.callbookingDateList, (index, obj)=>{

			html+="<tr onclick='patient("+obj.pno+");curelist("+obj.pno+");bookingCclist("+obj.pno+");printAjax("+obj.pno+");prescriptionAjax("+obj.pno+");bookingCclist2("+obj.pno+");' id='abc'>";
	  		html+="<td>"+moment(obj.bookingRdate).format("HH:mm")+"</td>";
	  		html+="<td>"+obj.pno+"</td>";
	  		html+="<td name='username'>"+"</td>";
	  		html+="<td>"+obj.bookingDoc+"</td>";
	  		html+="<td style='height:5px;table-layout:fixed'>"+obj.bookingCc.replace(/<p[^>]*>/g, '').replace(/<\/p>/g, '<br />');+"</td>";
	  		html+="<td>"+obj.bookingWriter+"</td>";
	  		html+="</tr>";
	  	
		})
	  		
	
		html+="</table>";
		
		$("#ajaxcallBookingList").html(html);
		
		$.each(data.callbookingDateList, (index, obj)=>{
		var kim = obj.pno
		$.ajax({
			url:"getPatient.do",
			type:"get",
			data: {pNo: kim},
			dataType:"json",
			success:ajaxHtmllist,
			error:function(){alert("error");
			console.log(data)}
		});
		
		function ajaxHtmllist(data){
			$.each(data.voList, (index, obj)=>{

			}); 
// 			console.log(index +data.voList.pname);
			
			var usertable1 = $('#userListTable2').find("tbody tr td").eq(5);

	/* 		table#userListTable1.table.table-bordered */
/* 	$('#userListTable1').find("tbody tr td").eq(5).html(data.voList.pname); */
//  			$('table.table-bordered tr td[name=username]').attr('value',data.voList.pname); 
/* 				$('#userListTable1').find("tbody tr td").eq(5).attr('value',data.voList.pname); */ 
				/* document.getElementById("userListTable1").getElementsByTagName("tr")[0].getElementsByTagName("td")[index].innerHTML = data.voList.pname */
			 	document.getElementById("userListTable2").getElementsByTagName("tr")[index+1].getElementsByTagName("td")[2].innerHTML = data.voList.pname 
/* 				$('#userListTable1').find("tbody tr td").eq(5).innerHTML = 'data.voList.pname';  */

		}
		
		});
	}

</script> 



<script>

function patUpdate(){
var pNo = document.getElementById('pNo').value;
if(pNo==''){
/* 	$(document).ready(function(){
		$('#add').on('click', function(){ */
	        $.ajax({
	            url: "regist",
	            type: "POST",
	            data: $('#frm').serialize(),
	            success: function(data){
	   	        			swal({
	        				  title: "성공",
	        				  text: "환자등록이 완료되었습니다.",
	        				  icon: "success",
	        				  button: "확인",
	        			})
	   location.reload();
	            	console.log(data)
	            },
	            error: function(){  alert("신규등록 error");  }
	        });
	/*     });
	});	 */
	
	
}else{
		$.ajax({
			url:"<%=request.getContextPath()%>/desk/patientModify",
			type:"post",
			data: $('#frm').serialize(),
			success: function(){
				swal({
				  title: "성공",
				  text: "환자수정이 완료되었습니다.",
				  icon: "success",
				  button: "확인",
			}) 

			},
			error: function(){ alert("환자수정 error"); }
			
		});
	
	}
		
}		
		
	
		
</script>
	
<script>
$( window.bcal = function () {
	  $("#datePicker").datepicker({ 
		  	format: 'yyyy-mm-dd',
	        autoclose: true, 
	        todayHighlight: true,
	    	
	
	  }).on('changeDate', function (e) {
		  console.log(document.getElementById('datePicker').value)

		  var data = moment(document.getElementById('datePicker').value).format("YYYYMMDD");

		   console.log(data);

		   list(data);
	    }).datepicker('update', new Date());
		var date = moment(document.getElementById('datePicker').value).format("YYYYMMDD");
		list(date);
		todayList(date);
	
});


function list(b){  
	if (isNaN(b)){
		alert("이미 선택한 날짜입니다")
		return bcal()

	}

	$.ajax({
		url:"getBoardDateList.do",
		type:"get",
		data: {bookingRegdate: b},
		dataType:"json",
		success: ajaxHtml,

		error:function(){alert("error");
		console.log(data)
		}
	});

}


	function ajaxHtml(data){
	console.log(data)
		var html="<table class='table table-bordered' id='userListTable1'>";
		html+="<tr>";
		html+="<th>순번</th>";
		html+="<th>차트번호</th>";
		html+="<th>이름</th>";
		html+="<th>연령|성별</th>";
		html+="<th style='width:25%;'>접수내역</th>";
		html+="<th>접수시간</th>";  		
		html+="<th>상태</th>";  		
		html+="<th>담당의사</th>";  		
		html+="</tr>";
	
		if(data.bookingDateList<1){
			html+="<tr>";
	  		html+="<td colspan='7'>접수내역이없습니다</td>";
	  		html+="</tr>";
	  		html+="</table>";
			
			$("#ajaxBookList").html(html);
		}
		

		$.each(data.bookingDateList, (index, obj)=>{
		const rnum = genAge(obj.prnum.substr(0, 8));
		code = ["접수", "예약", "대기", "진료", "수납", "완료"];
		localName = code[obj.bookingStateCode];
			        
			html+="<tr onclick='patient("+obj.pno+");curelist("+obj.pno+");bookingCclist("+obj.pno+");printAjax("+obj.pno+");bookingCclist2("+obj.pno+");' id='abc'>";
	  		html+="<td>"+(data.bookingDateList.length-index)+"</td>";
	  		html+="<td>"+obj.pno+"</td>";
	  		html+="<td name='username'>"+"</td>";
	  	 	html+="<td>"+rnum+"</td>";
	  		html+="<td style='height:5px;table-layout:fixed'>"+obj.bookingCc.replace(/<p[^>]*>/g, '').replace(/<\/p>/g, '<br />');+"</td>";
	  		html+="<td>"+moment(obj.bookingRegdate).format("HH:mm")+"</td>";
	  		html+="<td>"+localName+"</td>";
	  		html+="<td>"+obj.bookingDoc+"</td>";
	  		html+="</tr>";
	  	
		})
	  		
	
		html+="</table>";
		
		$("#ajaxBookList").html(html);
		
		$.each(data.bookingDateList, (index, obj)=>{
		var kim = obj.pno
		$.ajax({
			url:"getPatient.do",
			type:"get",
			data: {pNo: kim},
			dataType:"json",
			success:ajaxHtml3,
			error:function(){alert("error");
			console.log(data)}
		});
		
		function ajaxHtml3(data){
			$.each(data.voList, (index, obj)=>{

			}); 
// 			console.log(index +data.voList.pname);
			
			var usertable1 = $('#userListTable1').find("tbody tr td").eq(5);

	/* 		table#userListTable1.table.table-bordered */
	/* 	$('#userListTable1').find("tbody tr td").eq(5).html(data.voList.pname); */
//  			$('table.table-bordered tr td[name=username]').attr('value',data.voList.pname); 
/* 				$('#userListTable1').find("tbody tr td").eq(5).attr('value',data.voList.pname); */ 
				/* document.getElementById("userListTable1").getElementsByTagName("tr")[0].getElementsByTagName("td")[index].innerHTML = data.voList.pname */
			 	document.getElementById("userListTable1").getElementsByTagName("tr")[index+1].getElementsByTagName("td")[2].innerHTML = data.voList.pname 
/* 				$('#userListTable1').find("tbody tr td").eq(5).innerHTML = 'data.voList.pname';  */

		}
		
		});
	}

</script>
<script>
function genAge(bir) {
	var curDateObj = new Date(); // 날짜 Object 생성
	var curDate = ""; // 현재일자
	var tmpAge = 0; // 임시나이
	var curYear = curDateObj.getFullYear(); // 현재년도
	var curMonth = curDateObj.getMonth() + 1; // 현재월
	if(curMonth < 10) curMonth = "0" + curMonth; // 현재 월이 10보다 작을경우 '0' 문자 합한다
	var curDay = curDateObj.getDate(); // 현재일
	if(curDay < 10) curDay = "0" + curDay; // 현재 일이 10보다 작을경우 '0' 문자 합한다
	curDate = curYear + curMonth + curDay;
		var genType = bir.substr(7, 1); // 주민번호 뒷자리 성별구분 문자 추출

	if(genType <= 2) {

		tmpAge = curYear - (1900+parseInt(bir.substr(0,2))); // 1, 2 일경우

	} else {

		tmpAge = curYear - (2000 + parseInt(bir.substr(0,2))); // 그 외의 경우
	}
		var tmpBirthday = bir.substr(2, 4); // 주민번호 4자리 생일문자 추출

		if(curDate < (curYear + tmpBirthday)) {

		tmpAge += 1;
	}

	gen=bir.substr(7, 1);
	 result = ""; 
	 genName = ["","남","여","남","여"]
	 
	result = genName[gen];
	return tmpAge+" | "+result
	
}
</script>

<script>

function curelist(c){  

	$.ajax({
		url:"myjob",
		type:"post",
		data: {pNo: c},
		dataType:"json",
		success: ajaxHtmlCure,
		error:function(){alert("error");
		console.log(data)}
	});
}

	function ajaxHtmlCure(data){
	console.log(data)
		var html="<table class='table table-bordered' id='userListTable'>";
		html+="<tr>";
		html+="<th style='width:13%;'>진료일자</th>";
		html+="<th style='width:15%;'>진료의사</th>";
		html+="<th style='width:20%;'>치식</th>";
		html+="<th style='width:62%;'>진료내역</th>";
	 		
		html+="</tr>";
		
		
		$.each(data, (index, obj)=>{
			
	  		html+="<td>"+moment(obj.CD_REGDATE).format("YYYY-MM-DD")+"</td>";
			html+="<td>"+obj.MEM_NAME+"</td>";
	  		html+="<td>"
	  			html+='<div class="card" style="padding:0; margin:0; position: static;">'
	  			html+='<table class="chart-dental-formula">'
	  			html+="<tr>"
		  		html+='	<td class="innerTableChisikLT pt-0 pb-0" style="border-right:1px solid; border-bottom:1px solid; border-left:0; border-top:0; width:60px; height: 16px; text-align: right;">'
		  		html+=`\${obj.CD_UL_JAW}`
		  		html+='	</td>'
		  		html+='	<td class="innerTableChisikRT pt-0 pb-0" style="border-right:0; border-bottom:1px solid; border-top:0; width:60px; height: 16px;">'
					
		  		html+=`\${obj.CD_UR_JAW}`
					
		  		html+='	</td>'
		  		html+='</tr>' 
		  		html+='<tr>' 
		  		html+='	<td class="innerTableChisikLB pt-0 pb-0" style="border-left:0; border-bottom:0; border-right:1px solid; width:60px; height: 16px; text-align: right;">'
		  		
		  		html+=`\${obj.CD_BL_JAW}`
					
		  		html+='	</td>'
		  		html+='	<td class="innerTableChisikRB pt-0 pb-0" style="border-right:0; border-bottom:0 ; width:60px; height: 16px;">'
				
		  		html+=`\${obj.CD_BR_JAW}`
		  							
		  		html+='	</td>'
		  		html+='	</tr>'
		  			html+='</div>'
		  				html+='</table>'
	  		
	  		html+="</td>";
	  		html+="<td style='text-align: left;'>"+obj.TL_NAME+"</td>";
	  		html+="</tr>";

	  		
	  											
		})
		html+="</table>";
		
		$("#ajaxCureList").html(html);
	}



</script>

<script>

window.bookingCclist = function (pNo){  

	$.ajax({
		url:"getBookingpno",
		type:"get",
		data: {pNo: pNo},
		dataType:"json",
		success:function(data){
			ajaxbookingCc(data);
			ajaxbookingpNo(data);
		},
		error:function(){alert("error");
		console.log(data)}
	});
}

	function ajaxbookingCc(data){
		var html="<table class='table table-bordered' id='userListTable'>";
		html+="<tr>";
		html+="<th>진료일자</th>";
		html+="<th>증상(CC)</th>";
		
		html+="</tr>";
		
		
		$.each(data.bookingDateList, (index, obj)=>{

		if(obj.bookingStateCode !=1){
	  		html+="<td>"+moment(obj.bookingRegdate).format("YYYY-MM-DD")+"</td>";
	  		html+="<td>"+obj.bookingCc.replace(/<p[^>]*>/g, '').replace(/<\/p>/g, '<br />');+"</td>";
	  
	  		html+="</tr>";
		}
		})
		html+="</table>";
		
			
		$("#ajaxCcList").html(html);
		
	}
	function ajaxbookingpNo(data){
		var html="<table class='table table-bordered' id='userListTable'>";
		html+='<tr bgcolor="#333258" style="color: white; cursor: default;">';
		html+="<th>예약날짜/시간</th>";
		html+="<th>예약증상(CC)</th>";
		
		html+="</tr>";
		
		
		$.each(data.bookingDateList, (index, obj)=>{

		if(obj.bookingStateCode==1){
	  		html+="<td>"+moment(obj.bookingRegdate).format("YYYY-MM-DD HH:mm")+"</td>";
	  		html+="<td>"+obj.bookingCc.replace(/<p[^>]*>/g, '').replace(/<\/p>/g, '<br />');+"</td>";
	  
	  		html+="</tr>";
		}
		})
		html+="</table>";
		
			
		$("#ajaxBkList").html(html);
		
	}

	
	
	
	
	<%--문서출력 비동기 처리 --%>

	 function printAjax(pNo){  
		 // alert("pNo:"+pNo);
		 $.ajax({
			url:"<%=request.getContextPath()%>/document/getPrintDocumentListByPno",
			type:"get",
			data: {docPno:pNo},
			dataType:"json",
			success:function(data){
				ajaxPrint(data);
				
			
			},

			error:function(){alert("문서발급 오류발생");
			}
		});
	 }

	  function ajaxPrint(data){
		//  alert("data:"+data);
			var html='	<div id="documentPrintList"><table class="table table-bordered" id="userListTable">';
			html+='<tr bgcolor="#333258" style="color: white">';
			html+='<th>문서번호</th>';
			html+='<th>문서종류</th>';
			html+='<th>발급의사</th>';
			html+='<th>발급날짜</th>';
			html+="</tr>";
		

			$.each(data.bookingDateList, (index, doc)=>{
				
				
				var docKindName = ["진단서", "소견서", "치료 계획서", "진료/수술확인서"];
				var kindName = docKindName[doc.docKind];   
				
			 	html+="<tr onclick='detailDocument("+doc.docCode+");' id='abc'>";
		  		html+="<td>"+doc.docCode+"</td>";
		  		html+="<td>"+kindName+"</td>";
		  		html+="<td>"+doc.docWriter+"</td>";
		  		html+="<td>"+moment(doc.docRegDate).format("YYYY-MM-DD")+"</td>"; 
		  		html+="</tr>";   	
			})

			html+="</table>";	
			
			$("#documentPrintList").html(html);
		}
	  
	  
	<%--처방전출력 비동기 처리 --%>

	 function prescriptionAjax(pNo){  
		  
		 $.ajax({
			url:"<%=request.getContextPath()%>/prescription/getPrintPrescriptionListByPno",
			type:"get",
			data: {docPno:pNo},
			dataType:"json",
			success:function(data){
				 
				prescriptionPrint(data);
				
			
			},

			error:function(){alert("처방전발급 오류발생");
			}
		});
	 }

	  function prescriptionPrint(data){
		  console.log(data);
			var html='	<div id="documentPrintList"><table class="table table-bordered" id="userListTable">';
			html+='<tr bgcolor="#333258" style="color: white">';
			html+='<th>처방번호</th>';
			html+='<th>발급의사</th>';
			html+='<th>발급날짜</th>';
			html+="</tr>";
		
			
			$.each(data.prescriptionPnoList, (index, pre)=>{
			 	html+="<tr onclick='detailprescription("+pre.cdCode+");' id='abc'>";
		  		html+="<td>"+moment(pre.ppRegDate).format("YYYYMMDD")+pre.cdCode+"</td>";
		  		html+="<td>"+pre.memName+"</td>";
		  		html+="<td>"+moment(pre.ppRegDate).format("YYYY-MM-DD")+"</td>"; 
		  		html+="</tr>";   	
			})

			html+="</table>";	
			
			$("#prescriptionPrintList").html(html);
		}

	
</script>

<script>
function bookingCclist2(pNo){  

	$.ajax({
		url:"ptpaylistpno",
		type:"post",
		data: {pNo: pNo},
		dataType:"json",
		success:function(data){
			ajaxpPtpaypno(data);
		},
		error:function(){alert("error");
		console.log(data)}
	});
}

	function ajaxpPtpaypno(data){
		console.log(data)
		var html="<table class='table table-bordered' id='userListTable'>";
		html+="<tr>";
		html+="<th>진료일자</th>";
		html+="<th>미수납액</th>";
		html+="<th>수납여부</th>";
		
		html+="</tr>";
		
		
		$.each(data, (index, obj)=>{
			html+="<tr onclick='ptpayment("+obj.CD_CODE+");'>";
	  		html+="<td>"+moment(obj.CD_REGDATE).format("YYYY-MM-DD")+"</td>"; 
	  		html+="<td style='text-align: right;'>"+obj.CD_TOTALPAY.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ',')+"</td>";
	  		html+="<td>"+obj.CD_IS_FULLPAY+"</td>";
	  		html+="</tr>";   	
	
		})
		html+="</table>";
		
			
		$("#ajaxPtpayList").html(html);
		
	}

</script>

<script>

window.patient = function (a){  

		$.ajax({
			url:"getPatient.do",
			type:"get",
			data: {pNo: a},
			dataType:"json",
			success:ajaxHtml2,
			error:function(){alert("error");
			console.log(data)}
		});
	};

	function ajaxHtml2(data){
		$.each(data.voList, ( obj)=>{
			console.log(data)

		});
		var a = data.voList.prnum.substr(0, 6);
		var b =data.voList.prnum.substr(7, 1)+"******";
		$('input[name=pName]').val(data.voList.pname);
		$('input[name=pRnum]').val(a+b);
	 	$('input[id=pRnum2]').val(data.voList.prnum.substr(7, 1)+"******"); 
		$('input[name=pTel]').val(data.voList.ptel);
		$('input[name=pBir]').val(moment(data.voList.pbir).format("YYYY/MM/DD"));
		$('input[name=pNo]').val(data.voList.pno);
		$('input[name=pZipcode]').val(data.voList.pzipcode);
		$('input[name=pAddr1]').val(data.voList.paddr1);
		$('input[name=pAddr2]').val(data.voList.paddr2);
		$('input[name=pSfx]').val(data.voList.psfx);
		$('input[name=pMemo]').val(data.voList.pmemo);
		$("#pInsurance").val(data.voList.pinsurance);
		$("#pVisitPath").val(data.voList.pvisitpath);
	
	}


</script>
<script >

$(document).ready(function () {
	  $("button[name='deskbooking']").click( window.bcal2=function () {
	var a = $('#pNo').val();
	
	if (a<1){
		alert("환자를선택해주세요")
	}else{
		
	var popupWidth = 800;
	var popupHeight = 800;

	var popupX = (document.body.offsetWidth / 2) - (800 / 2);
	var popupY= (window.screen.height / 2) - (800 / 2);
	
	window.open('detail?pNo='+a,'detail2','height=800, width=1400, left='+ popupX + ', top='+ popupY);
	}
})
	  })


</script>
<script >

 window.ptpayment=function (a) {

	var popupWidth = 800;
	var popupHeight = 800;

	var popupX = (document.body.offsetWidth / 2) - (800 / 2);
	var popupY= (window.screen.height / 2) - (800 / 2);
	
	window.open('ptPayment/list?cdCode='+a,'detail3','height=620, width=800, left='+ popupX + ', top='+ popupY);
	}

</script>


<script>
function kwak(){
 	$('#input3').load(location.href + " #input3"); 
	alert("환자정보 입력후 '환자저장' 버튼을 눌러 저장하세요.")
<%--     function ajaxTest(){
        $.ajax({
          type : "GET",
          url : "<%=request.getContextPath()%>/mainfrm.jsp",
          dataType : "text",
          error : function() {
            alert('통신실패!!');
          },
          success : function(data) {
            $('#Context').html(data);
          }
   
        });
      }
   
      ajaxTest();  --%>

}
function selectList(){
	  var keyword = document.getElementById('inputkeyword').value;
	  const name = choHangul(document.getElementById('inputkeyword').value); 
 	  var choKeyword = (name); 
	  console.log(keyword)
			//초성검색 구분 
		 	if (keyword!="" && choKeyword==""){ 
			    choDiv = 'y'; 
			}else{ 
			    choDiv = 'n'; 
			} 

			
			function choHangul(str) { 
				  cho = ["ㄱ","ㄲ","ㄴ","ㄷ","ㄸ","ㄹ","ㅁ","ㅂ","ㅃ","ㅅ","ㅆ","ㅇ","ㅈ","ㅉ","ㅊ","ㅋ","ㅌ","ㅍ","ㅎ"]; 
				  result = ""; 
				  for(i=0;i<str.length;i++) { 
				    code = str.charCodeAt(i)-44032; 
				    if(code>-1 && code<11172){
				        result += cho[Math.floor(code/588)]; 
				    } 
				    return result; 
				}
			}; 

	  $.ajax({
		  url : "getSearchPatient",
		  type : "get",
		  dataType : "json",
		  data : {keyword: keyword,
			  	  searchType  : choDiv
			   },
		  success : function(data){
			  console.log(data)
			  var s = '';
			  if(data.patList.patientsearchList < 1 || keyword==""){
				  s += '<div style="text-align:center"><h3>검색결과가 없습니다</h3></div>' ;
				
			  }else{
				  
				$.each(data.patList.patientsearchList, function(index,value){
					const rnum = genAge(value.prnum.substr(0, 8));
<<<<<<< .mine
// 					s +=	'<tr rowspan="2"> <td style="width:18%"> <a>'+value.pname+'('+value.pno+')'+'</a></td>';
// 	                s +=	'<td style="vertical-align : bottom; font-size:15px;"><a>'+rnum+'<p style="font-size:5px;"> "테스트3</p></a></td>';
// 	                s += '	<td style="width:20%;vertical-align : middle; font-size:13px;">'+value.pno+'</td> </tr>';
// 					s += '<hr/>';
||||||| .r292542
					s +=	'<tr rowspan="2"> <td style="width:18%"> <a>'+value.pname+'('+value.pno+')'+'</a></td>';
	                s +=	'<td style="vertical-align : bottom; font-size:15px;"><a>'+rnum+'<p style="font-size:5px;"> "테스트3</p></a></td>';
	                s += '	<td style="width:20%;vertical-align : middle; font-size:13px;" onClick=patient('+value.pno+');curelist('+value.pno+');bookingCclist('+value.pno+');printAjax('+value.pno+');prescriptionAjax('+value.pno+');>'+value.pno+'</td> </tr>';
					s += '<hr/>';
=======
					s +=	'<tr rowspan="2"> <td style="width:18%"> <a>'+value.pname+'('+value.pno+')'+'</a></td>';
	                s +=	'<td style="vertical-align : bottom; font-size:15px;"><a>'+rnum+'<p style="font-size:5px;"> "테스트3</p></a></td>';
	                s += '	<td style="width:20%;vertical-align : middle; font-size:13px;" onClick=patient('+value.pno+');curelist('+value.pno+');bookingCclist('+value.pno+');printAjax('+value.pno+');prescriptionAjax('+value.pno+');bookingCclist2('+value.pno+');>'+value.pno+'</td> </tr>';
					s += '<hr/>';
>>>>>>> .r292555
					
					s += '<tr style="cursor:pointer; width:100%; font-size:20px;" onClick=patient('+value.pno+');curelist('+value.pno+');bookingCclist('+value.pno+');printAjax('+value.pno+');prescriptionAjax('+value.pno+');>';
					s +=	'<td style="width:50%; vertical-align : middle;">'+value.pno+'</td>';
	                s += 	'<td style="width:50%; vertical-align : middle;";>'+value.pname+'</td>';
	                s += '</tr>';

				})
			  }
				$("#seachKeywordModal").html(s);
		  }
			   
			   
			   
			   
})};

</script>

<script>
    var DELAY = 200, timer = null, clickCnt = 0;
    
    var funcClick = function() {
        console.log('click');
        clickCnt = 0;
        var theDiv = document.getElementById('abc');
       /*  theDiv.innerHTML = 'single click'; */
    };
    
    var funcDblClick = function() {
        clearTimeout(timer);
        console.log('dbl click');
        clickCnt = 0;
        var theDiv = document.getElementById('abc');
       /*  theDiv.innerHTML = 'double click'; */
    };

 $("#abc").on('click', (e) => {
        clickCnt++;
        if (clickCnt === 1) {
            // click
            timer = setTimeout(funcClick, DELAY);
        } else {
            // double click
            funcDblClick();
        }
    }).on('dblclick', (e) => {
        e.preventDefault();
    });
    
   </script>
   
   <script>
   
   </script>

<script>
	
function todayList(b){  
	$.ajax({
		url:"getBoardDateList.do",
		type:"get",
		data: {bookingRegdate: b},
		dataType:"json",
		success: ajaxHtml3,

		error:function(){alert("error");
		console.log(data)
		}
	});

}
	function ajaxHtml3(data){
 		var lang = [];
		var lang2 = JSON.stringify(lang);
		localStorage.setItem('language', lang2);
		localStorage.getItem('language');
		var newlang = JSON.parse(localStorage.getItem('language')); 
		
		$.each(data.bookingDateList, (index, obj)=>{
	  	  		newlang.push(obj.pno);
		})
		localStorage.setItem('language', newlang);
		console.log(newlang) 
		
	}
</script>

<script> /** tab */

var tab; 
var tabContent;


window.onload=function() {
    tabContent=document.getElementsByClassName('tabContent');
    tab=document.getElementsByClassName('tab');
    hideTabsContent(1);
    
    subMenu_go('M030000')
	preloaderCustom.style.display = "none";
}

document.getElementById('tabs').onclick= function (event) {
    var target=event.target;
    if (target.className=='tab') {
       for (var i=0; i<tab.length; i++) {
           if (target == tab[i]) {
               showTabsContent(i);
               break;
           }
       }
    }
}

function hideTabsContent(a) {
    for (var i=a; i<tabContent.length; i++) {
        tabContent[i].classList.remove('show');
        tabContent[i].classList.add("hide");
        tab[i].classList.remove('whiteborder');
    }
}

function showTabsContent(b){
    if (tabContent[b].classList.contains('hide')) {
        hideTabsContent(0);
        tab[b].classList.add('whiteborder');
        tabContent[b].classList.remove('hide');
        tabContent[b].classList.add('show');
    }
}

</script>


<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>


$( function(){
    document.getElementById("address_kakao").addEventListener("click", function(){ //주소입력칸을 클릭하면
        //카카오 지도 발생
        new daum.Postcode({
            oncomplete: function(data) { //선택시 입력값 세팅
                document.getElementById("zip_kakao").value = data.zonecode; // 주소 넣기
                document.getElementById("address_kakao").value = data.address; // 주소 넣기
                document.getElementById("address_kakao").focus(); //상세입력 포커싱
            },
            theme: {
        		searchBgColor: "#484769", //검색창 배경색
        		queryTextColor: "#FFFFFF" //검색창 글자색
    	    }
        }).open();
    });
})
</script>



<%-- 문서발급 인쇄 --%>
<script>
function detailDocument(data){
	 window.open('/document/printForm?docCode='+data,'문서출력','height=1000, width=670');
}
</script>

<%-- 처방전발급 인쇄 --%>
<script>
function detailprescription(data){
var pNo = document.getElementById('pNo').value;
	 window.open('/prescription/printPrescriptionForm?pNo='+pNo+'&cdCode='+data,'처방전출력','height=1000, width=670');
}

</script>



<%@ include file="/WEB-INF/views/common/preloader_js.jsp"%>

<%@ include file="../common/index_js.jsp"%>
<%@ include file="../common/ifram_js.jsp"%>


