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

        #userListTable {
            width: 830px;
            border: 0px;
            border-collapse: collapse;
        }

        #userListTable th,
        #userListTable td{
            width: 10%;
            border-right: 1px solid lightgray;
        }

        #userListTable th:last-child,
        #userListTable td:last-child{
            border-right: 0px !important;
        }

        #userListTable tr:first-child{
            background-color: gray !important;
            color: white !important;
            font-weight: bold !important;
        }

        #userListTable tr:nth-child(odd){
            background-color: blanchedalmond;

        }

        #userListTable th {
            position: sticky;
            top: 0px;
            background-color: gray !important;
        }
        
      label{margin-left: 20px;}
		#datePicker{width:180px; margin: 0 20px 20px 20px;}
		#datePicker > span:hover{cursor: pointer;}
    </style>

<div style="position: fixed; width: 100%; height: 100%; ">
	<div class="contaner-fluid" style="margin: 1.5em; ">
		<div class="row">
			<div class="col-sm-6 justify-content-center" style="border-right: solid 1px;">
				<section class="content" style="hight 80%; wigth:100%">
					<section class="content-header" >
						<div class="container-fluid" >
								<div class="row">
						<div class="col-sm-12">
							<div style="float: left;">
								<div id="keyword" class="card-tools"
								style="width: 450px; height: 60px; font-size: 13px; float: right;">
									<div class="input-group row">
									<!-- search bar -->
									<!-- sort num -->
										<select class="form-control col-md-3" name="perPageNum"
											id="perPageNum" onchange="list_go(1);">
											<option value="10" ${cri.perPageNum eq 10 ? 'selected' : '' }>정렬개수</option>
											<option value="5" ${cri.perPageNum eq 5 ? 'selected' : '' }>5개씩</option>
											<option value="10" ${cri.perPageNum eq 10 ? 'selected' : '' }>10개씩</option>
											<option value="20" ${cri.perPageNum eq 20 ? 'selected' : '' }>20개씩</option>
										</select>


									<!-- search bar -->
										<select class="form-control col-md-3" name="searchType"
											id="searchType">
											<option value="">검색구분</option>
	
											<option value="i" ${param.searchType=='i' ? "selected":"" }>제약코드</option>
											<option value="n" ${param.searchType=='n' ? "selected":"" }>품목명</option>
											<option value="p" ${param.searchType=='p' ? "selected":"" }>재고</option>
											<option value="e" ${param.searchType=='e' ? "selected":"" }>업체명</option>
	
										</select>
										<!-- keyword -->
										<input class="form-control" type="text" name="keyword"
											placeholder="환자이름울 입력하세요." value="${cri.keyword }" /> <span
											class="input-group-append">
											<button class="btn btn-primary" type="button" id="searchBtn"
												data-card-widget="search" onclick="list_go(1);">
												<i class="fa fa-fw fa-search"></i>
											</button>
										</span>
										<!-- end : search bar -->
									</div>
								</div>
						
							</div>
						</div>
					</div>
						</div>
					</section>
					
				
					
					<div class="card" style="height: 60vh; overflow: hidden;" >
						

						<div class="card-body" style="text-align: left; font-size: 13px;">
							<div class="row">
								<div class="col-sm-12">
								<div>
							
                        <div class="card">
                      
                                    <form id="frm" method="post">

                                        <div class="form-row">
                                            <div class="form-group col-md-3">
                                                <label>이름</label>
                                                <input type="text" class="form-control" id="pName" name="pName" placeholder="1234 Main St">
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label>주민등록번호</label>
                                                <input type="email" class="form-control" id="pRnum" name="pRnum" placeholder="Email">
                                            </div>
                                            
                                            <div class="form-group col-md-3">
                                                <label>휴대전화</label>
                                                <input type="text" class="form-control" id="pTel" name="pTel"  placeholder="Password">
                                            </div>
                                            <div class="form-group col-md-3">
                                                <label>차트번호</label>
                                                <input type="text" class="form-control" id="pNo" name="pNo"  placeholder="Password">
                                            </div>
                                            <div class="form-group col-md-3">
                                                <label>생년월일</label>
                                                <input type="text" class="form-control">
                                            </div>
                                          <div class="form-group col-md-6">
                                                <label>환자메모</label>
                                                <input type="text" class="form-control">
                                            </div>
                                        </div>
                                       
                                        <div class="form-row">
                                            <div class="form-group col-md-1">
                                                <label>우편번호</label>
                                                <div class="dropdown bootstrap-select form-control default-select">
                                                <input type="text" id="zip_kakao" name="zonecode" class="form-control" readonly/>
                                                </div>
                                            </div>
                                            <div class="form-group col-md-7">
                                                <label>나머지주소</label>
                                                <input type="text" id="address_kakao" name="address" class="form-control" />
                                            </div>
                                           			<button type="button" class="btn btn-primary" id="add" style="float: left; border-radius: 10px; margin-right: 5px;">환자<br /><br /><br />저장</button>
                                           			<button type="button" class="btn btn-primary" style="float: left; border-radius: 10px; margin-right: 5px;">접수</button>
                                           			<button type="button" class="btn btn-primary" style="float: left; border-radius: 10px; margin-right: 5px;">버튼3</button>
                                        </div>
                                        <div  class="form-row" >
                                        <div class="form-check" style="margin-top: -9px;">
											  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
											  <label class="form-check-label" for="flexCheckDefault">치주질환</label>
											</div>
											<div class="form-check" style="margin-left: 30px; margin-top: -8px;">
											  <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked>
											  <label class="form-check-label" for="flexCheckChecked">
											    	치석
											  </label>
											</div>
											<div class="form-check" style="margin-left: 30px; margin-top: -8px;">
											  <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked>
											  <label class="form-check-label" for="flexCheckChecked">
											    	교정
											  </label>
											</div>
											<div class="form-check" style="margin-left: 30px; margin-top: -8px;">
											  <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked>
											  <label class="form-check-label" for="flexCheckChecked">
											    	보철물
											  </label>
											</div>
											<div class="form-check" style="margin-left: 30px; margin-top: -8px;">
											  <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked>
											  <label class="form-check-label" for="flexCheckChecked">
											    	구강질환
											  </label>
											</div>
                                        </div>
                                        
                                    </form>
                                    
								
										
										<table class="ui celled table" border='1'>
										  <thead>
										    <tr>
										    <th>할인금액</th>
										    <th>수납할금액</th>
										    <th>카드</th>
										    <th>현금</th>
										    <th>기타</th>
										  </tr></thead>
										  <tbody>
										    <tr>
										      <td data-label="Name">0</td>
										      <td data-label="Age">0</td>
										      <td data-label="Job">0</td>
										      <td data-label="Job">0</td>
										      <td data-label="Job">0</td>
										    </tr>
										  </tbody>
										</table>
                                        
              							

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
					<section class="content" style="height: 30vh; width: 95%;" >
						<div class="card" style="overflow-y: scroll;">
							<div class="card-body" style="text-align: center; font-size: 13px;;">
								<div class="row">
									<div class="col-sm-12">
										<table class="table table-bordered" id="userListTable">
											<tr bgcolor="#333258" style="color: white; cursor: default;">
												<th>진료일자</th>
												<th>진료의사</th>
												<th>치식</th>
												<th>진료내역</th>
												<!-- yyyy-MM-dd  -->
											</tr>
											<tr>
												<td>1</td>
												<td>2022.09.27 발주요청서</td>
												<td>비품</td>
												<td>1</td>
											</tr>
											<tr>
												<td>1</td>
												<td>2022.09.27 발주요청서</td>
												<td>비품</td>
												<td>1</td>
											</tr>
											<tr>
												<td>1</td>
												<td>2022.09.27 발주요청서</td>
												<td>비품</td>
												<td>1</td>
											</tr>
											<tr>
												<td>1</td>
												<td>2022.09.27 발주요청서</td>
												<td>비품</td>
												<td>1</td>
											</tr>
											<tr>
												<td>2</td>
												<td>2022.09.27 발주요청서</td>
												<td>비품</td>
												<td>1</td>	
											</tr>
											<tr>
												<td>3</td>
												<td>2022.09.27 발주요청서</td>
												<td>비품</td>
												<td>1</td>				
											</tr>
											<tr>
												<td>4</td>
												<td>2022.09.27 발주요청서</td>
												<td>비품</td>
												<td>1</td>				
											</tr>
											<tr>
												<td>1</td>
												<td>2022.09.27 발주요청서</td>
												<td>비품</td>
												<td>1</td>					
											</tr>

											<c:if test="${!empty minfoList }">
												<c:forEach items="${minfoList}" var="minfo">
													<tr>

														<td>${minfo.minfoClass }</td>
														<td>${minfo.minfoCode }</td>
														<td>${minfo.minfoContent }
														<td>${minfo.minfoWriter }</td>
														<td>${minfo.minfoWriter }</td>
														<td>${minfo.minfoWriter }</td>
														<td><fmt:formatDate value="${minfo.minfoRegdate }"
																pattern="yyyy-MM-dd" /></td>
													</tr>

												</c:forEach>
											</c:if>
											<c:if test="${empty minfoList }">
												<tr>
													<td colspan="7" class="text-center">해당내용이 없습니다.</td>
												</tr>
											</c:if>
										</table>
									</div>
									<!-- col-sm-12 -->
								</div>
								<!-- row -->
							</div>
							<!-- card-body -->
						</div>
					</section>
				</div>
			</div>
			<div class="col-sm-6">
				<div class="row justify-content-center" style="padding-bottom: 3vh;">
					<section class="content" style="height: 50vh; width: 95%;">
						<section class="content-header">
							<div class="container-fluid" style="">
							<h4 style="text-align: left; ">접수목록</h4>
				<input type="text" class="cal_input" id="datePicker"> 
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
    									<div id="ajaxBookList">여기에 도서목록이 출력됩니다.</div>
								

									</div>
									<!-- col-sm-12 --
    	       </div> <!-- row -->
								</div>
								<!-- card-body -->
							</div>
							
						</div>
					
					</section>
					
				</div>
				
				<div class="row justify-content-center" style="padding-bottom: 8vh;">
					<section class="content" style="height: 43vh; width: 95%;" >
						<section class="content-header">
							<div class="container-fluid">
								<h4 style="text-align: left; margin-top: 1px; ">예약목록</h4>
							</div>
						</section>
						<div class="card" style="overflow-y: scroll;">
							<div class="card-body" style="text-align: center; font-size: 13px;;">
								<div class="row">
									<div class="col-sm-12">
										<table class="table table-bordered" id="userListTable">
											<tr bgcolor="#333258" style="color: white; cursor: default;">
												<th>예약시간</th>
												<th>차트번호</th>
												<th>이름</th>
												<th>연령|성별</th>
												<th>CC|증상</th>
												<th>담당의사</th>
												<!-- yyyy-MM-dd  -->
											</tr>
											<tr>
												<td>1</td>
												<td>2022.09.27 발주요청서</td>
												<td>비품</td>
												<td>1</td>
												<td>이금박</td>
												<td>2022/09/27</td>
												
											</tr>
											<tr>
												<td>1</td>
												<td>2022.09.27 발주요청서</td>
												<td>비품</td>
												<td>1</td>
												<td>이금박</td>
												<td>2022/09/27</td>
												
											</tr>
											<tr>
												<td>1</td>
												<td>2022.09.27 발주요청서</td>
												<td>비품</td>
												<td>1</td>
												<td>이금박</td>
												<td>2022/09/27</td>
												
											</tr>
											<tr>
												<td>1</td>
												<td>2022.09.27 발주요청서</td>
												<td>비품</td>
												<td>1</td>
												<td>이금박</td>
												<td>2022/09/27</td>
												
											</tr>
											<tr>
												<td>2</td>
												<td>2022.09.27 발주요청서</td>
												<td>비품</td>
												<td>1</td>
												<td>이금박</td>
												<td>2022/09/27</td>
												
											</tr>
											<tr>
												<td>3</td>
												<td>2022.09.27 발주요청서</td>
												<td>비품</td>
												<td>1</td>
												<td>이금박</td>
												<td>2022/09/27</td>
												
											</tr>
											<tr>
												<td>4</td>
												<td>2022.09.27 발주요청서</td>
												<td>비품</td>
												<td>1</td>
												<td>이금박</td>
												<td>2022/09/27</td>
											
											</tr>
											<tr>
												<td>1</td>
												<td>2022.09.27 발주요청서</td>
												<td>비품</td>
												<td>1</td>
												<td>이금박</td>
												<td>2022/09/27</td>
												
											</tr>

											<c:if test="${!empty minfoList }">
												<c:forEach items="${minfoList}" var="minfo">
													<tr>

														<td>${minfo.minfoClass }</td>
														<td>${minfo.minfoCode }</td>
														<td>${minfo.minfoContent }
														<td>${minfo.minfoWriter }</td>
														<td>${minfo.minfoWriter }</td>
														<td>${minfo.minfoWriter }</td>
														<td><fmt:formatDate value="${minfo.minfoRegdate }"
																pattern="yyyy-MM-dd" /></td>
													</tr>

												</c:forEach>
											</c:if>
											<c:if test="${empty minfoList }">
												<tr>
													<td colspan="7" class="text-center">해당내용이 없습니다.</td>
												</tr>
											</c:if>
										</table>
									</div>
									<!-- col-sm-12 -->
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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script>
		$(document).ready(function(){
			$('#add').on('click', function(){
		        $.ajax({
		            url: "regist",
		            type: "POST",
		            data: $('#frm').serialize(),
		            success: function(data){
		                location.href="main";
		            },
		            error: function(){  alert("신규등록 error");  }
		        });
		    });
		});	
	</script>
	
<script>

/* $(document).ready(function(){
		$.ajax({
			url:"getBoardList",
			type:"get",
			dataType:"json",
			success: ajaxHtml,
			error:function(){alert("error");}
		});
	});

	function ajaxHtml(data){
	console.log(data)
		var html="<table class='table table-bordered' id='userListTable'>";
		html+="<tr>";
		html+="<th>순번</th>";
		html+="<th>진료|예약내역</th>";
		html+="<th>차트번호</th>";
		html+="<th>이름</th>";
		html+="<th>연령|성별</th>";
		html+="<th>접수시간</th>";  		
		html+="<th>상태</th>";  		
		html+="</tr>";
		
		$.each(data.bookingList, (index, obj)=>{
			
			html+="<tr>";
	  		html+="<td>"+obj.bookingCode+"</td>";
	  		html+="<td>"+obj.pno+"</td>";
	  		html+="<td>"+obj.bookingCc+"</td>";
	  		html+="<td>"+obj.bookingDoc+"</td>";
	  		html+="<td>"+obj.bookingWriter+"</td>";
	  		html+="<td>"+moment(obj.bookingRegdate).format("HH:mm")+"</td>";
	  		html+="</tr>";
		})
		html+="</table>";
		
		$("#ajaxBookList").html(html);
	}



var data1 = "${loginUser.memId}";
console.log(data1)

sessionStorage.setItem("mineSession", data1 ); // 저장
sessionStorage.getItem("mineSession"); // mineItRecord
 */
</script>

<script >
$(function patient(){  

	$.ajax({
		url:"getPatient.do",
		type:"get",
		data: {pNo: "1"},
		dataType:"json",
		success:ajaxHtml2,
		error:function(){alert("error");
		console.log(data)}
	});
});

function ajaxHtml2(data){
	$.each(data.voList, ( obj)=>{
	console.log(obj.pbir);
	});
	$('input[name=pName]').attr('value',data.voList.pname);
	$('input[name=pRnum]').attr('value',data.voList.prnum);
	$('input[name=pTel]').attr('value',data.voList.ptel);
	$('input[name=pNo]').attr('value',data.voList.pno);
	$('input[name=zonecode]').attr('value',data.voList.pzipcode);
	$('input[name=address]').attr('value',data.voList.paddr1 + " " + data.voList.paddr2);
	console.log(data);
}
</script>

<script>
$(function () {

	  $("#datePicker").datepicker({ 
		  format: 'yyyy-mm-dd',
	        autoclose: true, 
	        todayHighlight: false,
	        
	
	  }).on('changeDate', function (e) {
		  console.log(document.getElementById('datePicker').value)
		  sessionStorage.clear();
		  var data1 = moment(document.getElementById('datePicker').value).format("YYYYMMDD");

	  		sessionStorage.setItem("mineSession", data1 ); // 저장
		   console.log(data1);

		   list();
		 
	    }).datepicker('update', new Date());
});



$(document).ready(list());

function list(){  

	$.ajax({
		url:"getBoardDateList.do",
		type:"get",
		data: {bookingRegdate: sessionStorage.getItem("mineSession")},
		dataType:"json",
		success: ajaxHtml,
		error:function(){alert("error");
		console.log(data)}
	});
}

	function ajaxHtml(data){
		
		var html="<table class='table table-bordered' id='userListTable'>";
		html+="<tr>";
		html+="<th>순번</th>";
		html+="<th>진료|예약내역</th>";
		html+="<th>차트번호</th>";
		html+="<th>이름</th>";
		html+="<th>연령|성별</th>";
		html+="<th>접수시간</th>";  		
		html+="<th>상태</th>";  		
		html+="</tr>";
		
		$.each(data.bookingDateList, (index, obj)=>{
			
			html+="<tr>";
	  		html+="<td>"+obj.bookingCode+"</td>";
	  		html+="<td>"+obj.pno+"</td>";
	  		html+="<td>"+obj.bookingCc+"</td>";
	  		html+="<td>"+obj.bookingDoc+"</td>";
	  		html+="<td>"+obj.bookingWriter+"</td>";
	  		html+="<td>"+moment(obj.bookingRegdate).format("HH:mm")+"</td>";
	  		html+="</tr>";
		})
		html+="</table>";
		
		$("#ajaxBookList").html(html);
	}

	

</script>

<script>


window.onload = function(){
    document.getElementById("address_kakao").addEventListener("click", function(){ //주소입력칸을 클릭하면
        //카카오 지도 발생
        new daum.Postcode({
            oncomplete: function(data) { //선택시 입력값 세팅
                document.getElementById("zip_kakao").value = data.zonecode; // 주소 넣기
                document.getElementById("address_kakao").value = data.address; // 주소 넣기
                document.getElementById("address_kakao").focus(); //상세입력 포커싱
            }
        }).open();
    });
}
</script>


