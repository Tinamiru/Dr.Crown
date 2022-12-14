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
			                                        <a href="#navpills2-1" onclick="goInsidePage('/desk/main','M030000')" class="nav-link active" data-toggle="tab" aria-expanded="false">????????????</a>
			                                    </li>
			                                    <li class=" nav-item">
			                                        <a href="#navpills2-1" class="nav-link" data-toggle="tab" aria-expanded="false">????????????</a>
			                                    </li>
			                                    <li class="nav-item">
			                                        <a href="#navpills2-2" onclick="goInsidePage('/desk/document/list','M030300')" class="nav-link" data-toggle="tab" aria-expanded="false">????????????</a>
			                                    </li>
			                                    <li class="nav-item" onclick="goInsidePage('/desk/patient/list','M030200')">
			                                        <a href="#navpills2-2" class="nav-link" data-toggle="tab" aria-expanded="false">????????????</a>
			                                    </li>
			                                    <li class="nav-item" onclick="goInsidePage('/desk/booking/list','M030100')">
			                                        <a  class="nav-link"  data-toggle="tab" aria-expanded="true">????????????</a>
			                                    </li>
			                                </ul>
				</div>	 -->
				<section class="content" style="hight 80%; wigth:100%">
		
						<section class="content-header" style="margin-top: -20px" >
						<div class="container-fluid" >
								<div class="row">
								<div class="col-sm-2" style="margin-top:30px">
							<h4 style="font-weight:600; text-align: left;">???????????????</h4>
				
							</div>
						<div class="col-sm-10">
							<div style="float: right;">
								<div id="keyword" class="card-tools"
								style="width: 450px; height: 60px; font-size: 13px; float: left;">
									<div class="input-group search-area d-lg-inline-flex d-none" style="margin-left: 165px">
			<input class="form-control"  href="#" id="inputkeyword" onkeyup='selectList()' placeholder="????????????" data-toggle="dropdown">
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
								<td colspan="2" style="font-size:20px">&nbsp;&nbsp;???????????? ?????????????????? </td> 
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
												<th class="normalTh" style="">??????</th>
												 <td colspan="2">
													   <input type="text" id="pName" name="pName" size="3" style="width:100%;">
												 </td>
												 <td colspan="1" >
													   <input type="text" name="pSfx" size="3" style="width:100%;">
												 </td>
												 <th class="normalTh">????????????</th>
												<td >
													   <input type="text" id="pNo" name="pNo" size="3" style="width:100%;" placeholder="?????????????????????" readonly="readonly">
												 </td>
												 <th class="normalTh">????????????</th>
												<td class="normalTd"> <select class="my-select" id="pVisitPath" name="pVisitPath" style="margin-top: -10px" >
						
																	  <option value="??????, ??? ??????">??????, ??? ??????</option>
																	
																	  <option value="????????? ??????">????????? ??????</option>
																	
																	  <option value="?????? ??????">?????? ??????</option>
																	  
																	  <option value="??????">??????</option>
																	  
																	  <option value="????????? ??????">????????? ??????</option>
																	
																	</select></td>
											</tr>
											<tr class="normalTr" >
												<th class="normalTh">??????????????????</th>
												<td colspan="3">
													   <input type="text" class="pRnum" id="pRnum" name="pRnum" size="2" style="width:100%;">
												 </td>
												<th class="normalTh">????????????</th>
												<td>
													   <input type="text" id="pTel" name="pTel" size="3" style="width:100%;">
												 </td>
												<th class="normalTh">????????????</th>
												<td>
													   <input type="text" class="birDate" name="pBir" size="1" style="width:100%;">
												</td>
											</tr>
											<tr class="normalTr">
											</tr>
											<tr class="normalTr">
												<th class="normalTh">????????????</th>
												<td colspan="1">
													   <input type="text" id="zip_kakao" name="pZipcode" size="3" style="width:100%;">
												</td>
												<th class="normalTh">??????</th>
												<td colspan="3">
													   <input type="text" id="address_kakao" name="pAddr1" size="3" style="width:100%;" placeholder="??????????????? ??????">
												</td>
											</tr>
											<tr class="normalTr">
												<th class="normalTh">???????????????</th>
												<td colspan="5">
													   <input type="text" name="pAddr2" size="3" style="width:100%;">
												</td>
												<th class="normalTh">????????????</th>
												<td class="normalTd"> <select class="my-select" id="pInsurance" name="pInsurance" >
						
																	  <option value="N001">??????(?????????)</option>
																	
																	  <option value="H001">?????? ??????</option>
																	
																	  <option value="M001">???????????? 1???</option>
																	  
																	  <option value="M002">???????????? 2???</option>
																	  
																	  <option value="S002">??????2?????????</option>
																	  
																	  <option value="A001">??????????????????</option>
																	
																	</select></td>
											</tr>
											<tr class="normalTr">
												<th class="normalTh">??????</th>
												<td colspan="5">
													   <input type="text" name="pMemo" size="3" style="width:100%;">
												</td>
												
											</tr>
										</table>
								
									</div>

                             
                                        </div>
                                        <div class="form-row" style="float: right; margin-top: -20px">
                                           			<div>
                                         			<button type="button" class="btn btn-primary" onclick="kwak();">??????????????????</button>
                                           			</div>
                                           			<div>
                                         			<button type="button" class="btn btn-primary"onclick="patUpdate()" id="add">????????????</button>
                                           			</div>
                                           			<div>
                                         			<button type="button" class="btn btn-primary"  name="deskbooking">??????</button>
                                           			</div>
                                          
                                           			
                                           			
                                        </div>
                                     
                                        
                                    </form>	
								<!-- <div>
										<div style="float:left; width: 50%">
												<table class="ui celled table" border='1' style="width: 425px; float:right;">
										  <thead>
										    <tr>
										    <th>????????????</th>
										    <th>????????????</th>
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
										    <th>???????????????</th>
										    <th>??????</th>
										    <th>??????</th>
										    <th>??????</th>
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
						  <div class="tab whiteborder">????????????</div>
						    <div class="tab">CC</div>
						    <div class="tab">??????</div>
						     <div class="tab" >????????????</div>
						     <div class="tab" >???????????????</div>
						     <div class="tab" >????????????</div>
						   
						    
						  <div class="tabContent">
						<div class="card" style="overflow-y: scroll; height:50vh">
							<div class="card-body" style="text-align: center; font-size: 13px;">
								<div class="row">
									<div class="col-sm-12">
									<div id="ajaxCureList"><table class="table table-bordered" id="userListTable">
											<tr bgcolor="#333258" style="color:white; cursor: default;">
												<th>????????????</th>
												<th>????????????</th>
												<th>??????</th>
												<th>????????????</th>
											</tr>
											<tr>
												<td colspan="4">???????????????????????????</td>
												
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
												<th>????????????</th>
												<th>??????(CC)</th>
											</tr>
											<tr>
												<td colspan="4">???????????????????????????</td>
												
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
												<th>????????????/??????</th>
												<th>????????????</th>
												<th>?????? ??????</th>
											</tr>
											<tr>
												<td colspan="4">???????????????????????????</td>
												
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
												<th>????????????</th>
												<th>????????????</th>
												<th>????????????</th>
												<th>????????????</th>
											</tr>
											<tr>
												<td colspan="4">???????????????????????????</td>
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
												<th>????????????</th>
												<th>????????????</th>
												<th>????????????</th>
											</tr>
											<tr>
												<td colspan="4">???????????????????????????</td>
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
												<th>????????????</th>
												<th>????????????</th>
												<th>????????????</th>
											</tr>
											<tr>
												<td colspan="4">???????????????????????????</td>
												
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
						<h4 style="font-weight:600; text-align: left; margin-top: 1px;">???????????????</h4>

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
	<th>??????</th>
		<th>????????????</th>	
	<th>????????????</th>
		<th>??????</th>
	<th>??????|??????</th>
	<th style='width:35%;'>????????????</th>
		<th>??????</th> 		
		</tr>
	

			<tr>
	  		<td colspan='7'>???????????????????????????</td>
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
								<h4 style="font-weight:600; text-align: left; margin-top: 4px; ">???????????????</h4>
								
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
	<th>??????</th>
		<th>????????????</th>	
	<th>????????????</th>
		<th>??????</th>
	<th>??????|??????</th>
	<th style='width:35%;'>????????????</th>
		<th>??????</th> 		
		</tr>
	

			<tr>
	  		<td colspan='7'>???????????????????????????</td>
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
		alert("?????? ????????? ???????????????")
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
		html+="<th>????????????</th>";  		
		html+="<th>????????????</th>";
		html+="<th>??????</th>";
		html+="<th>?????????</th>";
		html+="<th style='width:35%;'>????????????</th>";
		html+="<th>?????????</th>";  		
		html+="</tr>";
	
		if(data.callbookingDateList<1){
			html+="<tr>";
	  		html+="<td colspan='7'>???????????????????????????</td>";
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
	        				  title: "??????",
	        				  text: "??????????????? ?????????????????????.",
	        				  icon: "success",
	        				  button: "??????",
	        			})
	   location.reload();
	            	console.log(data)
	            },
	            error: function(){  alert("???????????? error");  }
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
				  title: "??????",
				  text: "??????????????? ?????????????????????.",
				  icon: "success",
				  button: "??????",
			}) 

			},
			error: function(){ alert("???????????? error"); }
			
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
		alert("?????? ????????? ???????????????")
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
		html+="<th>??????</th>";
		html+="<th>????????????</th>";
		html+="<th>??????</th>";
		html+="<th>??????|??????</th>";
		html+="<th style='width:25%;'>????????????</th>";
		html+="<th>????????????</th>";  		
		html+="<th>??????</th>";  		
		html+="<th>????????????</th>";  		
		html+="</tr>";
	
		if(data.bookingDateList<1){
			html+="<tr>";
	  		html+="<td colspan='7'>???????????????????????????</td>";
	  		html+="</tr>";
	  		html+="</table>";
			
			$("#ajaxBookList").html(html);
		}
		

		$.each(data.bookingDateList, (index, obj)=>{
		const rnum = genAge(obj.prnum.substr(0, 8));
		code = ["??????", "??????", "??????", "??????", "??????", "??????"];
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
	var curDateObj = new Date(); // ?????? Object ??????
	var curDate = ""; // ????????????
	var tmpAge = 0; // ????????????
	var curYear = curDateObj.getFullYear(); // ????????????
	var curMonth = curDateObj.getMonth() + 1; // ?????????
	if(curMonth < 10) curMonth = "0" + curMonth; // ?????? ?????? 10?????? ???????????? '0' ?????? ?????????
	var curDay = curDateObj.getDate(); // ?????????
	if(curDay < 10) curDay = "0" + curDay; // ?????? ?????? 10?????? ???????????? '0' ?????? ?????????
	curDate = curYear + curMonth + curDay;
		var genType = bir.substr(7, 1); // ???????????? ????????? ???????????? ?????? ??????

	if(genType <= 2) {

		tmpAge = curYear - (1900+parseInt(bir.substr(0,2))); // 1, 2 ?????????

	} else {

		tmpAge = curYear - (2000 + parseInt(bir.substr(0,2))); // ??? ?????? ??????
	}
		var tmpBirthday = bir.substr(2, 4); // ???????????? 4?????? ???????????? ??????

		if(curDate < (curYear + tmpBirthday)) {

		tmpAge += 1;
	}

	gen=bir.substr(7, 1);
	 result = ""; 
	 genName = ["","???","???","???","???"]
	 
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
		html+="<th style='width:13%;'>????????????</th>";
		html+="<th style='width:15%;'>????????????</th>";
		html+="<th style='width:20%;'>??????</th>";
		html+="<th style='width:62%;'>????????????</th>";
	 		
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
		html+="<th>????????????</th>";
		html+="<th>??????(CC)</th>";
		
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
		html+="<th>????????????/??????</th>";
		html+="<th>????????????(CC)</th>";
		
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

	
	
	
	
	<%--???????????? ????????? ?????? --%>

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

			error:function(){alert("???????????? ????????????");
			}
		});
	 }

	  function ajaxPrint(data){
		//  alert("data:"+data);
			var html='	<div id="documentPrintList"><table class="table table-bordered" id="userListTable">';
			html+='<tr bgcolor="#333258" style="color: white">';
			html+='<th>????????????</th>';
			html+='<th>????????????</th>';
			html+='<th>????????????</th>';
			html+='<th>????????????</th>';
			html+="</tr>";
		

			$.each(data.bookingDateList, (index, doc)=>{
				
				
				var docKindName = ["?????????", "?????????", "?????? ?????????", "??????/???????????????"];
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
	  
	  
	<%--??????????????? ????????? ?????? --%>

	 function prescriptionAjax(pNo){  
		  
		 $.ajax({
			url:"<%=request.getContextPath()%>/prescription/getPrintPrescriptionListByPno",
			type:"get",
			data: {docPno:pNo},
			dataType:"json",
			success:function(data){
				 
				prescriptionPrint(data);
				
			
			},

			error:function(){alert("??????????????? ????????????");
			}
		});
	 }

	  function prescriptionPrint(data){
		  console.log(data);
			var html='	<div id="documentPrintList"><table class="table table-bordered" id="userListTable">';
			html+='<tr bgcolor="#333258" style="color: white">';
			html+='<th>????????????</th>';
			html+='<th>????????????</th>';
			html+='<th>????????????</th>';
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
		html+="<th>????????????</th>";
		html+="<th>????????????</th>";
		html+="<th>????????????</th>";
		
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
		alert("???????????????????????????")
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
	alert("???????????? ????????? '????????????' ????????? ?????? ???????????????.")
<%--     function ajaxTest(){
        $.ajax({
          type : "GET",
          url : "<%=request.getContextPath()%>/mainfrm.jsp",
          dataType : "text",
          error : function() {
            alert('????????????!!');
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
			//???????????? ?????? 
		 	if (keyword!="" && choKeyword==""){ 
			    choDiv = 'y'; 
			}else{ 
			    choDiv = 'n'; 
			} 

			
			function choHangul(str) { 
				  cho = ["???","???","???","???","???","???","???","???","???","???","???","???","???","???","???","???","???","???","???"]; 
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
				  s += '<div style="text-align:center"><h3>??????????????? ????????????</h3></div>' ;
				
			  }else{
				  
				$.each(data.patList.patientsearchList, function(index,value){
					const rnum = genAge(value.prnum.substr(0, 8));
<<<<<<< .mine
// 					s +=	'<tr rowspan="2"> <td style="width:18%"> <a>'+value.pname+'('+value.pno+')'+'</a></td>';
// 	                s +=	'<td style="vertical-align : bottom; font-size:15px;"><a>'+rnum+'<p style="font-size:5px;"> "?????????3</p></a></td>';
// 	                s += '	<td style="width:20%;vertical-align : middle; font-size:13px;">'+value.pno+'</td> </tr>';
// 					s += '<hr/>';
||||||| .r292542
					s +=	'<tr rowspan="2"> <td style="width:18%"> <a>'+value.pname+'('+value.pno+')'+'</a></td>';
	                s +=	'<td style="vertical-align : bottom; font-size:15px;"><a>'+rnum+'<p style="font-size:5px;"> "?????????3</p></a></td>';
	                s += '	<td style="width:20%;vertical-align : middle; font-size:13px;" onClick=patient('+value.pno+');curelist('+value.pno+');bookingCclist('+value.pno+');printAjax('+value.pno+');prescriptionAjax('+value.pno+');>'+value.pno+'</td> </tr>';
					s += '<hr/>';
=======
					s +=	'<tr rowspan="2"> <td style="width:18%"> <a>'+value.pname+'('+value.pno+')'+'</a></td>';
	                s +=	'<td style="vertical-align : bottom; font-size:15px;"><a>'+rnum+'<p style="font-size:5px;"> "?????????3</p></a></td>';
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
    document.getElementById("address_kakao").addEventListener("click", function(){ //?????????????????? ????????????
        //????????? ?????? ??????
        new daum.Postcode({
            oncomplete: function(data) { //????????? ????????? ??????
                document.getElementById("zip_kakao").value = data.zonecode; // ?????? ??????
                document.getElementById("address_kakao").value = data.address; // ?????? ??????
                document.getElementById("address_kakao").focus(); //???????????? ?????????
            },
            theme: {
        		searchBgColor: "#484769", //????????? ?????????
        		queryTextColor: "#FFFFFF" //????????? ?????????
    	    }
        }).open();
    });
})
</script>



<%-- ???????????? ?????? --%>
<script>
function detailDocument(data){
	 window.open('/document/printForm?docCode='+data,'????????????','height=1000, width=670');
}
</script>

<%-- ??????????????? ?????? --%>
<script>
function detailprescription(data){
var pNo = document.getElementById('pNo').value;
	 window.open('/prescription/printPrescriptionForm?pNo='+pNo+'&cdCode='+data,'???????????????','height=1000, width=670');
}

</script>



<%@ include file="/WEB-INF/views/common/preloader_js.jsp"%>

<%@ include file="../common/index_js.jsp"%>
<%@ include file="../common/ifram_js.jsp"%>


