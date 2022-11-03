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
  <link rel="stylesheet" href="https://uicdn.toast.com/calendar/latest/toastui-calendar.min.css" />
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
            width: 700px;
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
				<li class="dropdown" style="font-size:23px;">
				<input class="dropdown-toggle"  href="#" id="inputkeyword" onkeyup='selectList()'  data-toggle="dropdown"><i class="fa fa-fw">&#xF002;</i></a>
                <ul class="dropdown-menu">
                  <li class="dropdown" id="aaa">
                  <div style="width:550px;height:400px;  overflow:auto" class="bg-light">
                  
                  <div>
                  </div>
                  <div id="selectView" class="bg-light">
                   <table class="table table-hover bg-light">
                    <tbody id="selectView">
										<div> <p style="font-size:20px">&nbsp;&nbsp;검색어를 입력해주세요 </p> 

</div>
                    </tbody>
                  </table>
       
                  </div>
                  </div>
                  </li>
                </ul>
              </li>
										
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
                                            <div class="form-group col-md-2">
                                                <label>이름</label>
                                                <input type="text" class="form-control" id="pName" name="pName" placeholder="1234 Main St">
                                            </div>
                                            <div class="form-group col-md-3">
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
                                            <button type="button" class="btn btn-primary" id="add" style="float: left; border-radius: 10px; margin-right: 5px; height: 70px ">환자<br /><br /><br />저장</button>
                                            <button type="button" class="btn btn-primary" onclick="detail()" style="float: left; border-radius: 10px; margin-right: 5px; height: 70px">접수</button>
                                        </div>
                                       
                                        <div class="form-row">
                                            <div class="form-group col-md-2">
                                                <label>우편번호</label>
                                                <div class="dropdown bootstrap-select form-control default-select">
                                                <input type="text" id="zip_kakao" name="zonecode" class="form-control" readonly/>
                                                </div>
                                            </div>
                                            <div class="form-group col-md-7">
                                                <label>나머지주소</label>
                                                <input type="text" id="address_kakao" name="address" class="form-control" />
                                            </div>
                                           			
                                           			<button type="button" class="btn btn-primary" style="float: left; border-radius: 10px; margin-right: 5px;height: 70px">수납<br /><br /><br />저장</button>
                                           			
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
                                        
              							<table class="ui celled table" border='1'>
										  <thead>
										    <tr>
										    <th>총진료비</th>
										    <th>본인부담금</th>
										    <th>총미수금</th>
										    <th>부가치세</th>
										    <th>환자부담금</th>
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
									<div id="ajaxCureList"><table class="table table-bordered" id="userListTable">
											<tr bgcolor="#333258" style="color: white; cursor: default;">
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
					</section>
				</div>
			</div>
			<div class="col-sm-6">
				<div class="row justify-content-center" style="padding-bottom: 3vh;">
					<section class="content" style="height: 50vh; width: 95%;">
						<section class="content-header">
							<h4 style="text-align: left; margin-top: 1px;">접수조회</h4>
							<div class="container-fluid" style="text-align: left;margin-top: -35px; margin-left: 50px" >
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
    									<div id="ajaxBookList">날짜를 선택해 주세요.</div>
								

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
                			<div class="col-sm-12 "style="text-align: right; margin-top: -48px">
			                	<button type="button" class="btn btn-primary btn-rounded mt-1 mb-2 dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
			                         	
			                     </button>
			                     <div class="dropdown-menu" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 56px, 0px);">
			                         <a class="dropdown-item" id="dayViewBtn">일간</a>
			                         <a class="dropdown-item" id="weekViewBtn">주간</a>
			                         <a class="dropdown-item" id="monthViewBtn" >월간</a>
			                     </div>  
			                	  
			                    <button id="todayBtn" type="button" class="btn btn-primary btn-rounded mt-1 mb-2" >
			                         	오늘
			                     </button>
			                    
			                    <button id="prevBtn" type="button" class="btn btn-primary btn-rounded mt-1 mb-2" >
			                         	◀
			                     </button>
			                   
			                    <button id="nextBtn" type="button" class="btn btn-primary btn-rounded mt-1 mb-2" >
			                         	▶
			                     </button>
			               </div>      
							</div>
						</section>
						<div class="card" style="overflow-y: scroll;">
							<div class="card-body" style="text-align: center; font-size: 13px;;">
			<!-- 					  		<div class="row">
			               <div class="col-sm-4" align="center">       
			                    <h3 class="m-2" id="getToDate"></h3>  
			               </div>
			                    
		                   <div class="col-sm-4" align="right">
		                   	
			                  
		                   </div>
	                    </div> -->
                 
                            
            
                    	<div id="calendar" style="height: 370px; margin-top: -43px"></div>
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
		            	console.log(data)
		            },
		            error: function(){  alert("신규등록 error");  }
		        });
		    });
		});	
		
		
</script>
	
<script>
$(function () {

	  $("#datePicker").datepicker({ 
		  	format: 'yyyy-mm-dd',
	        autoclose: true, 
	        todayHighlight: true,
	    	
	
	  }).on('changeDate', function (e) {
		  console.log(document.getElementById('datePicker').value)

		  var data1 = moment(document.getElementById('datePicker').value).format("YYYYMMDD");

		   console.log(data1);

		   list(data1);
		 
	    }).datepicker('update', new Date());
		var date = moment(document.getElementById('datePicker').value).format("YYYYMMDD");
		list(date);
	
});


function list(b){  
	if (b=="Invalid date"){
		alert("이미 선택한 날짜입니다")
		location.reload();
		return list()
	}

	$.ajax({
		url:"getBoardDateList.do",
		type:"get",
		data: {bookingRegdate: b},
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
			
			html+="<tr onClick=patient("+obj.pno+");curelist("+obj.pno+")>";
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
		html+="<th>진료일자</th>";
		html+="<th>진료의사</th>";
		html+="<th>진료내역</th>";
		html+="<th>이름</th>";
		html+="<th>연령|성별</th>";
	 		
		html+="</tr>";
		
		
		$.each(data, (index, obj)=>{
			console.log(data)
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

<script>

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

<script >

function detail() {
	
	var popupWidth = 800;
	var popupHeight = 800;

	var popupX = (document.body.offsetWidth / 2) - (800 / 2);
	var popupY= (window.screen.height / 2) - (800 / 2);
	
	window.open('detail','detail2','height=800, width=1200, left='+ popupX + ', top='+ popupY);
}

</script>

<script>
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
			  
					s +=	'<tr> <td style="width:18%"> <a>'+value.pname+'</a></td>';
	                s +=	'<td style="vertical-align : bottom; font-size:15px;"><a>테스트2<p style="font-size:5px;"> "테스트3</p></a></td>';
	                s += '	<td style="width:20%;vertical-align : middle; font-size:13px;" onClick=patient('+value.pno+');curelist('+value.pno+')>'+value.pno+'</td> </tr>';
					s += '<hr/>';
					

				})
			  }
				$("#selectView").html(s);
		  }
			   
			   
			   
			   
})};

</script>

 <script>
 window.onload = function() {
	 
	 $('.toastui-calendar-event-time').on('click',function(e){
		   console.log(e.currentTarget.dataset.eventId);
		   window.open('detail?bookingCode='+e.currentTarget.dataset.eventId,'예약상세','height=850, width=600');
		});	
	 
	 
	 /// 캘린더 상단 윌
	 document.getElementById('getToDate').innerText = getNavbarRange(calendar.getDateRangeStart(), calendar.getDateRangeEnd(), calendar.getViewName());
	 
	 
	 $(".checkB222tn").click(function(){ 
			
			var str = ""
			var tdArr = new Array();	// 배열 선언
			var checkBtn = $(this);
			
			// checkBtn.parent() : checkBtn의 부모는 <td>이다.
			// checkBtn.parent().parent() : <td>의 부모이므로 <tr>이다.
			var tr = checkBtn.parent().parent();
			var td = tr.children();
			
			var no = td.eq(0).text();
			var name = td.eq(1).text();
			var bir = td.eq(2).text();
			var gender = td.eq(3).text();
			var phone = td.eq(5).text();
			var lastDate = td.eq(6).text();
			var insurance = td.eq(4).text();
		
		
			document.getElementById('P_NAME').value = name
			document.getElementById('pNo').value = no
			document.getElementById('P_gender').value = gender
			document.getElementById('P_BIR').value = bir
			document.getElementById('P_LASTDATE').value = lastDate
			document.getElementById('P_TEL').value = phone
			document.getElementById('P_INSURANCE').value = insurance
			
			
			
		});
	 
	 console.log(document.getElementById('BOOKING_DATE').innerHTML)
 };
</script>

<script src="https://uicdn.toast.com/calendar/latest/toastui-calendar.min.js"></script>
<script src="https://uicdn.toast.com/tui.time-picker/latest/tui-time-picker.js"></script>
<script src="https://uicdn.toast.com/tui.date-picker/latest/tui-date-picker.js"></script>
<script src="https://uicdn.toast.com/calendar/latest/toastui-calendar.ie11.min.js"></script>  

<script>



const Calendar = tui.Calendar;
const DatePicker = tui.DatePicker;
const TimePicker = tui.TimePicker;
const container = document.getElementById('calendar');
const today = new Date();
const options = {
  defaultView: 'day',

  timezone: {
    zones: [
      {
        timezoneName: 'Asia/Seoul',
        displayLabel: 'Seoul',

      },
    ],
  },
  calendars: [
	  <c:forEach items="${memberDoctorList}" var="Doc">
	  {
	  id: '${Doc.memId}',
	  name: '${Doc.memName}',
	  <c:choose>
		<c:when test="${Doc.memId eq 'd000004'}">
		   backgroundColor: '#FFB6C1',
		</c:when >
		<c:when test="${Doc.memId eq 'manager'}">
		   backgroundColor: '#ADD8E6',
		</c:when >
		<c:otherwise>
		   backgroundColor: '#FFA07A',
		</c:otherwise>
	</c:choose>
	  },
	  </c:forEach>
	  
  ],
};

const calendar = new Calendar(container, options);

calendar.setOptions({
	  week: {
	    dayNames: [],
	    hourStart: 9,
	    hourEnd: 20,
	    taskView: false,
	    eventView: ['time'],

	  },
	  month: {
		    dayNames: ['일','월', '화', '수', '목', '금', '토'],
	  },
	  useFormPopup: false,
	  useDetailPopup: false,
	  
	});
	
calendar.setTheme({
	  common: {
	    saturday: {
	      color: 'rgba(64, 64, 255, 0.5)',
	    },
	    gridSelection: false,
	  },
	});	
calendar.createEvents([
	// 시간 남으면 start,end el문으로 30분단위 끊을 수 있게
	 <c:forEach items="${bookingByList}" var="boo">
	 	{
		    id: '${boo.bookingCode}',
		    calendarId: '${boo.bookingDoc}',
		    title: '${boo.PNo}',
		    start: '<fmt:formatDate value="${boo.bookingRdate}" pattern="yyyy-MM-dd"/>T<fmt:formatDate value="${boo.bookingRdate}" pattern="HH:mm:ss"/>',
		    end: '<fmt:formatDate value="${boo.bookingRdate}" pattern="yyyy-MM-dd"/>T<fmt:formatDate value="${boo.bookingRdate}" pattern="HH"/>:59',
		  },
		  
	  </c:forEach>
	
	
	]);


const todayBtn = document.getElementById('todayBtn');
const prevBtn = document.getElementById('prevBtn');
const nextBtn = document.getElementById('nextBtn');
const dayViewBtn = document.getElementById('dayViewBtn');
const weekViewBtn = document.getElementById('weekViewBtn');
const monthViewBtn = document.getElementById('monthViewBtn');



todayBtn.addEventListener('click', () => {
	  calendar.today();     
	  document.getElementById('getToDate').innerText = getNavbarRange(calendar.getDateRangeStart(), calendar.getDateRangeEnd(), calendar.getViewName());
	  	
	});

nextBtn.addEventListener('click', () => {
  calendar.next();     
  document.getElementById('getToDate').innerText =getNavbarRange(calendar.getDateRangeStart(), calendar.getDateRangeEnd(), calendar.getViewName())
  
  
});

prevBtn.addEventListener('click', () => {
  calendar.prev();                          // 현재 뷰 기준으로 이전 뷰로 이동
  document.getElementById('getToDate').innerText = getNavbarRange(calendar.getDateRangeStart(), calendar.getDateRangeEnd(), calendar.getViewName())
  
});

dayViewBtn.addEventListener('click', () => {
  calendar.changeView('day', true);         // 일간 뷰 보기
  document.getElementById('getToDate').innerText = getNavbarRange(calendar.getDateRangeStart(), calendar.getDateRangeEnd(), calendar.getViewName())
});

weekViewBtn.addEventListener('click', () => {
  calendar.changeView('week', true);        // 주간 뷰 보기
  document.getElementById('getToDate').innerText = getNavbarRange(calendar.getDateRangeStart(), calendar.getDateRangeEnd(), calendar.getViewName())
});

monthViewBtn.addEventListener('click', () => {
  calendar.changeView('month', true);       // 월간 뷰 보기
  document.getElementById('getToDate').innerText = getNavbarRange(calendar.getDateRangeStart(), calendar.getDateRangeEnd(), calendar.getViewName())
});


function getNavbarRange(tzStart, tzEnd, viewType) {
	  var start = tzStart.toDate();
	  var end = tzEnd.toDate();
	  var middle;
	  if (viewType === 'month') {
	    middle = new Date(start.getTime() + (end.getTime() - start.getTime()) / 2);

	    return moment(middle).format('YYYY-MM');
	  }
	  if (viewType === 'day') {
	    return moment(start).format('YYYY-MM-DD');
	  }
	  if (viewType === 'week') {
	    return moment(start).format('YYYY-MM-DD') + ' ~ ' + moment(end).format('MM-DD');
	  }
	  throw new Error('no view type');
	}
	


</script>

