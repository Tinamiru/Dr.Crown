<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<style>
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
            width: 530px;
            border: 0px;
            border-collapse: collapse;
        }

        #userListTable th,
        #userListTable td{
            width: 15%;
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
         
        }

        #userListTable th {
            position: sticky;
            top: 0px;
            background-color: #333258 !important;
        }
    </style>
		
<div style="position: fixed; width: 100%; height: 100%; ">
	<div class="contaner-fluid" style="margin: 1.5em; ">
		<div class="row">
			<div class="col-sm-6 justify-content-center" style="border-right: solid 1px;">
				<section class="content" style="hight 80%; wigth:100%">
					<section class="content-header" >
						<div class="container-fluid" >
								<div class="row">
							<h4 style="text-align: left; " class="patName"></h4><h4 style="text-align: left;">님의 님의 오늘의 진료</h4>
						<div class="col-sm-12">
						
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
                                            <div class="form-group col-md-2">
                                                <label>치아번호</label>
                                                <input type="text" class="form-control" placeholder="" value="#">
                                
                                            </div>
                                            <input type="hidden" class="form-control" id="memNo" name="memNo" placeholder="Email" value=${loginUser.memId}>
                                             <input type="hidden" class="form-control" id="pNo" name="pNo"  placeholder="차트번호">
                                         </div>
                                    <textarea name="bookingCc" id="contents">
						</textarea>
                                    
                                    
                                    
								
												<div class="row">
							<h4 style="text-align: left;" class="patName"></h4><h4 style="text-align: left;">님의 담당의사 / 담당직원</h4>
									  <div>
								담당의사&nbsp;
						
								<c:set var="nowYear" value="2022"></c:set>
								<select name="bookingDoc">
								  <c:forEach var="i" begin="1950" end="${nowYear}" step="1">
								    <option value="${nowYear - i + 1950}">${nowYear - i + 1950}년생</option>
								  </c:forEach>
								</select>
									 
									  
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;담당직원&nbsp;
								<c:set var="nowYear" value="2022"></c:set>
								<select name="bookingWriter">
								  <c:forEach var="i" begin="1950" end="${nowYear}" step="1">
								    <option value="${nowYear - i + 1950}">${nowYear - i + 1950}년생</option>
								  </c:forEach>
								</select>
							
									  </div>
			
							</div>
										
						
							         
			  <button type="button" class="btn btn-primary" name="deskbooking"  id="add" style="float: right; border-radius: 10px; margin-right: 5px; height: 70px">접수</button>
			  <button type="button" class="btn btn-primary" name=""  id="reg" onclick="goStg()" style="float: right; border-radius: 10px; margin-right: 5px; height: 70px">임시저장</button>
                                   	 </form>
                                </div>
                        		
              	<section class="content-header" >
						<div class="container-fluid" >
								
							</div>
							</section>
						
				
								
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
					<div class="container-fluid" style="">
							<h4 style="text-align: left;" class="patName"></h4><h4 style="text-align: left;">님의 전신병력 및 체크사항</h4>
							</div>
					<section class="content" style="height: 10vh; width: 95%;" >
						<div class="card">
							<div class="card-body" style="text-align: center; font-size: 13px; margin-top: -30px; margin-right: -30px; margin-left: -28px;">
								<div class="row">
								
									<div class="col-sm-12" style="margin-top: 0px">
									   <div  class="form-row" >
                      <div class = "col-12 d-inline-block">
						<div class = "row pt-2">
							<div class="col-md-2 ">
								<div class="custom-control custom-checkbox mb-3">
									<input type="checkbox" class="custom-control-input" checked id="customCheckBox1" >
									<label class="custom-control-label col-form-label-sm" for="customCheckBox1">치석</label>
								</div>
							</div>
							<div class="col-md-2">
								<div class="custom-control custom-checkbox mb-3" style="margin-left:-5px;">
									<input type="checkbox" class="custom-control-input" checked id="customCheckBox2" >
									<label class="custom-control-label col-form-label-sm" for="customCheckBox2">교정&nbsp;&nbsp;</label>
								</div>
							</div>
							<div class="col-md-2">
								<div class="custom-control custom-checkbox mb-3">
									<input type="checkbox" class="custom-control-input" checked id="customCheckBox3" >
									<label class="custom-control-label col-form-label-sm" for="customCheckBox3">보철물</label>
								</div>
							</div>
							<div class="col-md-3">
								<div class="custom-control custom-checkbox mb-3" style="margin-left:-30px;">
									<input type="checkbox" class="custom-control-input" checked id="customCheckBox4" >
									<label class="custom-control-label col-form-label-sm" for="customCheckBox4">구강질환</label>
								</div>
							</div>
							<div class="col-md-3">
								<div class="custom-control custom-checkbox mb-3" style="margin-left:-80px;">
									<input type="checkbox" class="custom-control-input" checked id="customCheckBox5" >
									<label class="custom-control-label col-form-label-sm" for="customCheckBox5">치주질환</label>
								</div>
							</div>
						</div>
						<div class = "row">
							<div class="col-md-2">
								<div class="custom-control custom-checkbox mb-3">
									<input type="checkbox" class="custom-control-input" checked id="customCheckBox6" >
									<label class="custom-control-label col-form-label-sm" for="customCheckBox6">간염</label>
								</div>
							</div>
							<div class="col-md-2">
								<div class="custom-control custom-checkbox mb-3">
									<input type="checkbox" class="custom-control-input" checked id="customCheckBox7" >
									<label class="custom-control-label col-form-label-sm" for="customCheckBox7">임신중</label>
								</div>
							</div>
							<div class="col-md-2">
								<div class="custom-control custom-checkbox mb-3">
									<input type="checkbox" class="custom-control-input" checked id="customCheckBox8" >
									<label class="custom-control-label col-form-label-sm" for="customCheckBox8">고혈압</label>
								</div>
							</div>
							<div class="col-md-3">
								<div class="custom-control custom-checkbox mb-3" style="margin-left:-30px;">
									<input type="checkbox" class="custom-control-input" checked id="customCheckBox9" >
									<label class="custom-control-label col-form-label-sm" for="customCheckBox9">신부전증</label>
								</div>
							</div>
							<div class="col-md-3">
								<div class="custom-control custom-checkbox mb-3" style="margin-left:-80px;">
									<input type="checkbox" class="custom-control-input" checked id="customCheckBox10" >
									<label class="custom-control-label col-form-label-sm" for="customCheckBox10">항우울증</label>
								</div>
							</div>
			
						</div>
						<div class = "row ">
							<div class="col-md-2">
								<div class="custom-control custom-checkbox mb-3">
									<input type="checkbox" class="custom-control-input" checked id="customCheckBox14" >
									<label class="custom-control-label col-form-label-sm" for="customCheckBox14">기타</label>
								</div>
							</div>
							<div class="col-md-2">
								<div class="custom-control custom-checkbox mb-3">
									<input type="checkbox" class="custom-control-input" checked id="customCheckBox15" >
									<label class="custom-control-label col-form-label-sm" for="customCheckBox15">이갈이</label>
								</div>
							</div>
									<div class="col-md-2">
								<div class="custom-control custom-checkbox mb-3">
									<input type="checkbox" class="custom-control-input" checked id="customCheckBox11" >
									<label class="custom-control-label col-form-label-sm" for="customCheckBox11">뇌경색</label>
								</div>
							</div>
							<div class="col-md-3">
								<div class="custom-control custom-checkbox mb-3" style="margin-left:-30px;">
									<input type="checkbox" class="custom-control-input" checked id="customCheckBox12" >
									<label class="custom-control-label col-form-label-sm" for="customCheckBox12">아스피린</label>
								</div>
							</div>
							<div class="col-md-3">
								<div class="custom-control custom-checkbox mb-3" style="margin-left:-80px;">
									<input type="checkbox" class="custom-control-input" checked id="customCheckBox16" >
									<label class="custom-control-label col-form-label-sm" for="customCheckBox16">신장투석</label>
								</div>
							</div>
						</div>
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
				</div>
			</div>
	<%-- 		<div class="col-sm-6">
				<div class="row justify-content-center" style="padding-bottom: 3vh;">
					<section class="content" style="height: 50vh; width: 95%;">
						<section class="content-header">
							<div class="container-fluid" style="">
							<h4 style="text-align: left; ">최근 진료목록</h4>
							</div>
							
						</section>
						<div class="card" style="overflow-y: scroll; overflow-x:hidden">
							<div class="card-body" style="text-align: center; font-size: 13px; margin-top: -30px; margin-right: -30px; margin-left: -28px;">
								<div class="row">
									<div class="col-sm-12">
										<div id="ajaxCureList"><table class="table table-bordered" id="userListTable">
											<tr bgcolor="#333258" style="color: white">
												<th style="width: 15%">진료일자</th>
												<th style="width: 15%">담당의</th>
												<th style="width: 15%">치식</th>
												<th style="width: 55%">진료내역</th>
											
												<!-- yyyy-MM-dd  -->
											</tr>
											
											<tr>
												<td colspan="4">최근진료내역이없습니다</td>
												
												
											</tr>
										</table>
										</div>
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
								<h4 style="text-align: left; margin-top: 1px; ">최근예약목록</h4>
							</div>
						</section>
						<div class="card" style="overflow-y: scroll; overflow-x: hidden;">
							<div class="card-body" style="text-align: center; font-size: 13px; margin-top: -30px; margin-right: -30px; margin-left: -28px;">
								<div class="row">
									<div class="col-sm-12">
									<div id="ajaxBookList">예약목록이없습니다
										<table class="table table-bordered" id="userListTable" style=" width: 100%;">
											<tr bgcolor="#333258" style="color: white; cursor: default;">
												<th>예약시간</th>
												<th>차트번호</th>
												<th>이름</th>
												<th>연령|성별</th>
												<th>CC|증상</th>
												<th>담당의사</th>
												<!-- yyyy-MM-dd  -->
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
					</section>
				</div>
			</div> --%>
		</div>


		<div class="row">
			<div style="width: 47%; margin-left: 1.5em;">


				<div style="max-height: 39%; overflow-y: scroll;"></div>
			</div>
		</div>
	</div>
</div>
<script src="<%=request.getContextPath()%>/resources/vendor/jquery/jquery.min.js" ></script>

<script>
const url = new URL(window.location.href)
const urlParams = url.searchParams;
var a=urlParams.get('pNo')
patient(a)

/* history.replaceState({}, null, location.pathname); */
function patient(a){  
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
		console.log(data)
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
		
		const sel = document.querySelectorAll('.patName')
		sel[0].innerHTML = data.voList.pname
		sel[1].innerHTML = data.voList.pname
		sel[2].innerHTML = data.voList.pname
	}

list(a)
	
function list(b){  
		

		$.ajax({
			url:"getBookingpno.do",
			type:"get",
			data: {pNo: b},
			dataType:"json",
			success: ajaxHtml,
			error:function(){alert("error");
			console.log(data)}
		});
	}

		function ajaxHtml(data){
			console.log(data)
			var html="<table class='table table-bordered' id='userListTable'>";
			html+="<tr>";
			html+="<th>순번</th>";
			html+="<th>진료|접수내역</th>";
			html+="<th>차트번호</th>";
			html+="<th>이름</th>";
			html+="<th>접수시간</th>";  		
			html+="<th>상태</th>";  		
			html+="</tr>";
			
			$.each(data.bookingDateList, (index, obj)=>{
				
				html+="<tr onClick=patient("+obj.pno+");curelist("+obj.pno+")>";
		  		html+="<td>"+obj.bookingCode+"</td>";
		  		html+="<td>"+obj.bookingCc+"</td>";
		  		html+="<td>"+obj.bookingDoc+"</td>";
		  		html+="<td>"+obj.bookingWriter+"</td>";
		  		html+="<td>"+moment(obj.bookingRegdate).format("MM-DD")+"</td>";
		  		html+="</tr>";
			})
			html+="</table>";
			
			$("#ajaxBookList").html(html);
		}

		function NotReload(){
		    if( (event.ctrlKey == true && (event.keyCode == 78 || event.keyCode == 82)) || (event.keyCode == 116) ) {
		    	event.keyCode = 0;
		        event.cancelBubble = true;
		        event.returnValue = false;
		    } 
		}
		document.onkeydown = NotReload;

curelist(a)	


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

		var html="<table class='table table-bordered' id='userListTable'>";
		html+="<tr>";
		html+="<th>진료일자</th>";
		html+="<th>진료의사</th>";
		html+="<th>진료내역</th>";
		html+="<th>이름</th>";
		html+="<th>연령|성별</th>";
	 		
		html+="</tr>";
		
		
		$.each(data, (index, obj)=>{

			html+="<tr onClick=patient("+obj.P_NO+")>";
	  		html+="<td>"+moment(obj.CD_REGDATE).format("MM-DD")+"</td>";
	  		html+="<td>"+ ""+"</td>";
	  		html+="<td>"+obj.SYM_KO+"</td>";
	  		html+="<td>"+""+"</td>";
	  		html+="<td>"+""+"</td>";
	  		html+="<td>"+""+"</td>";
	  		html+="</tr>";
		})
		html+="</table>";
		
		$("#ajaxCureList").html(html);
	}


</script>

<script src="https://cdn.ckeditor.com/4.20.0/basic/ckeditor.js"></script>
<script>

CKEDITOR.replace( 'contents', {

/* 	filebrowserUploadUrl: '${pageContext.request.contextPath}/file/ckeditorImageUpload.do'	 */

});

	 var a=urlParams.get('pNo')
		$(document).ready(function(){
			$('#add').on('click', function(){
			CKupdate();	

		        $.ajax({
		            url: "registvisitBooking",
		            type: "POST",
		            data: $('#frm').serialize(),
		            success: function(data){

		            	console.log(data)
		            	goAction(a);
		            },
		            error: function(){  alert("접수 error");  }
		        });
		    });
		});	
		
		
function CKupdate(){

			for ( instance in CKEDITOR.instances )
			
			CKEDITOR.instances[instance].updateElement();

		}


		
</script>

<script>

var a=urlParams.get('pNo')



 if (localStorage.getItem(a)) {
	 
	 if (confirm("임시저장데이터를 불러오시겠습니까") == true){    //확인

	 const getData = JSON.parse(localStorage.getItem(a))
	 console.log(getData.pNo)
	 console.log(getData.con)
	 document.getElementById("contents").innerHTML = getData.con
	 }
}else{
	
} 

function goStg() {
	CKupdate();	
	const todayBtn = document.getElementById('contents').value;	
	const data ={
			pNo: a,
			con: todayBtn
		}
	localStorage.setItem(a, JSON.stringify(data));
	console.log(JSON.parse(localStorage.getItem(a)))
}
</script>

<script>
function goAction(a) {
/* opener.location.href = "http://www.neotopaz.com"; */
localStorage.removeItem(a)
opener.patient(a);
opener.bcal();
 window.close(); 
}
</script>

