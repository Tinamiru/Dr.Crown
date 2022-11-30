<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" />
<c:set var="memberDoctorList" value="${dataMap.memberDoctorList }" />
<c:set var="memberEmployeeList" value="${dataMap.memberEmployeeList }" />
<c:set var="bookingByList" value="${dataMap.bookingByList }" />
<c:set var="patientList" value="${dataMap.patientList }" />


<link rel="stylesheet" href="https://uicdn.toast.com/calendar/latest/toastui-calendar.min.css" />
<link rel="stylesheet" href="https://uicdn.toast.com/tui.time-picker/latest/tui-time-picker.css">
<link rel="stylesheet" href="https://uicdn.toast.com/tui.date-picker/latest/tui-date-picker.css" />
            
           
            
            <div class="container-fluid">
              
                <!-- row -->


                <div class="row">
                	
                	<div class="col-sm-9 ">
                		<div class="row">
                			<div class="col-sm-4 ">
			                	<button type="button" class="btn btn-primary btn-rounded mt-2 mb-2 dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
			                         	
			                     </button>
			                     <div class="dropdown-menu" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 56px, 0px);">
			                         <a class="dropdown-item" id="dayViewBtn">일간</a>
			                         <a class="dropdown-item" id="weekViewBtn">주간</a>
			                         <a class="dropdown-item" id="monthViewBtn" >월간</a>
			                     </div>  
			                	  
			                    <button id="todayBtn" type="button" class="btn btn-primary btn-rounded mt-2 mb-2" >
			                         	오늘
			                     </button>
			                    
			                    <button id="prevBtn" type="button" class="btn btn-primary btn-rounded mt-2 mb-2" >
			                         	◀
			                     </button>
			                   
			                    <button id="nextBtn" type="button" class="btn btn-primary btn-rounded mt-2 mb-2" >
			                         	▶
			                     </button>
			               </div>      
			               <div class="col-sm-4" align="center">       
			                    <h3 class="m-2" id="getToDate"></h3>  
			               </div>
			                    
		                   <div class="col-sm-4" align="right">
		                   	
			                  
		                   </div>
	                    </div>
                 
                            
            
                    	<div id="calendar" style="height: 750px;"></div>
                            
                            
                        
                    </div>
                    
                    <div class="col-sm-3">

	                
	                        <div class="row no-gutters">
	                          
	                            <div class="col-xl-12">
	                            
	                                <div class="auth-form loginBoxBackground">
										<div style="border-bottom: 2px solid;">
										<h2 style="font-weight: bold;">예약등록</h2>
	                                    </div>
	                                   <form role="form" class="form-horizontal" action="regist" method="post">
	                                    
	                                    	 	<div class="form-row">
			                                        <div class="col-sm-5">
			                                    		  <label class="text-white" ><strong>환자 성함</strong></label>
					                                         <div class="input-group mb-1"  data-toggle="modal" data-target=".bd-exampl2e-modal-lg" >
					                                            <input type="text" id="P_NAME" class="form-control form-control-input  " value=" "placeholder="${patient.PName}"  disabled>
			                                    		 </div>
			                                         </div>
			                                        <div class="col-sm-5">
			                                    		  <label class="text-white"><strong>차트 번호</strong></label>
					                                         <div class="input-group mb-1">
					                                            <input type="text"  id="pNo" name="pNo" class="form-control form-control-input" value=" " readonly>
	
			                                    		 </div>
			                                         </div>
			                                         <div class="col-sm-2">
			                                    		  <label class="text-white"><strong>성별</strong></label>
					                                         <div class="input-group mb-1">
					                                            <input type="text" id="P_gender" class="form-control form-control-input" value=" " disabled >
			                                    		 </div>
			                                           </div>
		                                         </div>   
		                                         
		                                         
		                                         <div class="form-row">
			                                        <div class="col-sm-6">
			                                    		  <label class="text-white"><strong>생년 월일</strong></label>
					                                         <div class="input-group mb-1">
					                                            <input type="text" id="P_BIR" class="form-control form-control-input"  placeholder=""  value=" " disabled  >
			                                    		 </div>
			                                         </div>
			                                        <div class="col-sm-6">
			                                    		  <label class="text-white"><strong>최종내원일</strong></label>
					                                         <div class="input-group mb-1">
					                                            <input type="text" id="P_LASTDATE" class="form-control form-control-input"  value=" " placeholder="${patient.PLastdate}" disabled  >
					                                            
			                                    		 </div>
			                                         </div>
		                                         </div>   
		                                         
		                                           <div class="form-row">
			                                        <div class="col-sm-7">
		                                             <label class="text-white"><strong>전화 번호</strong></label>
		                                         <div class="input-group mb-3">
		                                            <input type="text" class="form-control form-control-input" id="P_TEL"  placeholder="${patient.PTel}" value=" " disabled  >
		                                        </div>
		                                         </div>
			                                       
		                                        
		                                         <div class="col-sm-5">
		                                         <label class="text-white"><strong>보험 정보</strong></label>
		                                         <div class="input-group mb-3">
		                                            <input type="text" class="form-control form-control-input" id="P_INSURANCE" value=" " disabled  >
		                                        </div>
		                                        </div>
		                                          </div> 
		                                        
		               
		                            
		                                 
			                                       <label class="text-white"><strong>예약담당의사/직원</strong></label>
		                                        <div class="form-row">
		                                        	<div class="col-sm-6">
		                                                <select id="bookingDoc" name="bookingDoc" class=" form-control-input form-control default-select">
		                                                    <option selected value="n">== 담당의 ==</option>
		                                                    <c:forEach items="${memberDoctorList}" var="Doc">
		                                                    <option class="text-white" value="${Doc.memId}">${Doc.memName}</option>
		                                                   
		                                                    </c:forEach>
		                                                </select>
	                                                 </div>
	                                                
	                                                 <div class="col-sm-6">
		                                                <input type="text"  id="MEMname" name="bookingWriter" class="form-control form-control-input"  value=" ${loginUser.memName}" readonly>
		                                                <input type="hidden"  id="hiddenmemid" name="memNo" class="form-control form-control-input"  value="${loginUser.memId}">
		                                                
		                                                   
	                                                 </div>
		                                        </div> 
		                                        
		                               
		                                      
	                               				<label class="text-white mt-3"><strong>예약일시</strong></label>	
	                            					 <div class="form-row">
		                                        	<div class="col-sm-6">
		                                                <input type="date"  id="BOOKING_DATE" class="form-control form-control-input"  pattern="yyyy-mm-dd" value=" ">
		                                                
	                                                 </div>
	                                                
	                                                 <div class="col-sm-6">
		                                                <select id="BOOKING_TIME" class=" form-control-input form-control default-select">
		                                                    <option selected value="n">예약시간</option>
		                                                    <option class="text-white" value="09:00">09:00</option>
		                                                    <option class="text-white" value="10:00">10:00</option>
		                                                    <option class="text-white" value="11:00">11:00</option>
		                                                    <option class="text-white" value="13:00">13:00</option>
		                                                    <option class="text-white" value="14:00">14:00</option>
		                                                    <option class="text-white" value="15:00">15:00</option>
		                                                    <option class="text-white" value="16:00">16:00</option>
		                                                    <option class="text-white" value="17:00">17:00</option>
		                                                    <option class="text-white" value="18:00">18:00</option>
		                                                    <option class="text-white" value="19:00">19:00</option>
		                                
		       
		                                                </select>
	                                                 </div>
		                                        </div> 
	                            			  <input type="hidden"  id="hiddenTime" name="bookingRdate" class="form-control form-control-input"  value=" ">
	                                    	
	                                    	
	                                    	 
		                                        <div class="form-group mt-1">
		                                            <label class="text-white"><strong>증상 내용</strong></label>
		                                             <textarea style="resize: none;"  id="BOOKING_CC"  name="bookingCc" class="textarea_editor form-control bg-transparent" rows="6" placeholder="증상 입력."></textarea>
		                                        </div>
		                                        
		      
		                                        
		                                        
	                                      
	                                    </form>
	                                        
		                                        <div class="row no-gutters justify-content-right" style="float: right;">
							                        <div class="text-center">
							                            <button type="button" id="registBtn" onclick="regist_go();" class="loginBtn btn btn-block">예약 등록</button>
							                        </div>
						                        
						                         	<div class="text-center mr-1">
							                             <button type="button" onclick="javascript:window.close()" class="loginBtn btn bg-white text-primary btn-block">&nbsp;취&nbsp;&nbsp;&nbsp;&nbsp;소&nbsp;</button>
							                        </div>
				                        		</div>
		                                         </div>
	                                    </div>
		                                        
	                                </div>
	
	                         		
	                    </div>
                </div>
          
                 
                   
                </div>
          
          
          
          
          			 <div class="modal fade bd-exampl2e-modal-lg" tabindex="-1" role="dialog" aria-hidden="true">
                                        <div class="modal-dialog modal-lg">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h3 class="modal-title">환자 검색</h3>
                                                    <button type="button" class="close" data-dismiss="modal"><span>&times;</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">
												<div class="row">
													<div class="col-md-12">
														<div class="row justify-content-end pl-5 pr-3">
															<div class="col-8" style="height: 50px;">
																<div class="row justify-content-end" >
																	<div class="col-3 p-0">
																		<select class="form-control" name="searchType" id="searchType">
																			<option value="tcw"  ${cri.searchType eq 'tcw' ? 'selected':'' }>전 체</option>
																			<option value="t" ${cri.searchType eq 't' ? 'selected':'' }>이름</option>
																			<option value="w" ${cri.searchType eq 'w' ? 'selected':'' }>작성자</option>
																			<option value="c" ${cri.searchType eq 'c' ? 'selected':'' }>내 용</option>
																			<option value="tc" ${cri.searchType eq 'tc' ? 'selected':'' }>제목+내용</option>
																			<option value="cw" ${cri.searchType eq 'cw' ? 'selected':'' }>작성자+내용</option>							
																			<option value="tcw" ${cri.searchType eq 'tcw' ? 'selected':'' }>작성자+제목+내용</option>
																		</select>
																	</div>
																	<div class="col-6 p-0">
																		<input  class="form-control" type="text" name="keyword" placeholder="검색어를 입력하세요." value="${param.keyword }"/>
																	</div>
																	<div class="pr-3">
																		<span class="input-group-append">
																			<button class="btn btn-primary" type="button">검색</button>
																		</span>
																	</div>
																</div>
															</div>
														</div>
														<hr>
														<!-- 테이블 -->
														<div class="card-body" style="height: 68vh; overflow-y:scroll;">
															<div class="table-responsive">
																<table class="table table-bordered" id="example-table-2"
																	style="margin: auto; text-align: center; font-size: 13px;">
																	<thead class="thead">
																		<tr bgcolor="#333258" style="color: white">
																			<th scope="col">차트번호</th>
																			<th scope="col">이름</th>
																			<th scope="col">생년월일</th>
																			<th scope="col">성별</th>
																			<th scope="col">보험정보</th>
																			<th scope="col">휴대전화</th>
																			<th scope="col">최종내원일</th>
																			<th scope="col">선택</th>
																		</tr>
																	</thead>
																	<c:if test="${empty patientList }" >
																		<tr>
																			<td colspan="8">
																				<strong>해당 내용이 없습니다.</strong>
																			</td>
																		</tr>
																	</c:if>	
																	<c:forEach items="${patientList}" var="patient">
																		<tbody>
																			<tr class="tr-select"  style="cursor:pointer;">
																				<td>${patient.PNo}</td>
																				<td>${patient.PName}</td>
																				<td><fmt:formatDate value="${patient.PBir}"
																						pattern="yyMMdd" /></td>
																				<c:set var="gender" value="${fn:substring(patient.PRnum,6,7)}"/>
																				<c:choose>
																					<c:when test="${(gender eq '1') or (gender eq '3') }">
																						<td>남</td>
																					</c:when >
																					<c:when test="${(gender eq '2') or (gender eq '4') }">
																						<td>여</td>
																					</c:when >
																					<c:otherwise>
																						<td></td>
																					</c:otherwise>
																				</c:choose>
																				<td>${patient.PInsurance}</td>
																				<td>${patient.PTel}</td>
																				<td><fmt:formatDate value="${patient.PLastdate }"
																						pattern="yyyy-MM-dd" /></td>
																				<td><input type="button" class="checkB222tn" value="선택"  data-dismiss="modal"/></td>		
																			</tr>
																		</tbody>
																	</c:forEach>
																</table>
															</div>
														</div>
														<hr>
													</div>
		
											</div>
												</div>
                                                <div class="modal-footer">
                                                   
                                                </div>
                                            </div>
                                        </div>
                                    </div>
							
<!-- Large modal -->
                                  
                                   
		                                    
		 
          
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
  defaultView: 'week',
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
	    dayNames: ['일','월', '화', '수', '목', '금', '토'],
	    hourStart: 9,
	    hourEnd: 20,
	    taskView: false,
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
<script>
	function regist_go(){
		if(!$('input[id="P_NAME"]').val()){
		  swal ( "실패" ,  "환자이름 혹은 차트번호를 검색해주세요." ,  "error" );
		  return;
		}
	    
		   if($("#BOOKING_DOC option:selected").val() == 'n'){
			  swal ( "실패" ,  "전문의 선택은 필수입니다." ,  "error" );
			  return;
			}
		   
		if($("#BOOKING_WRITER option:selected").val() == 'n'){
		   	 swal ( "실패" ,  "직원 선택은 필수입니다." ,  "error" );
			  return;
			}
		
		if($("#BOOKING_DATE option:selected").val() == 'n'){
	    	swal ( "실패" ,  "예약날짜 선택은 필수입니다." ,  "error" );  
			  return;
		}
		
	    if($("#BOOKING_TIME option:selected").val() == 'n'){
	    	swal ( "실패" ,  "예약시간 선택은 필수입니다." ,  "error" );  
			  return;
		}
	    
	    if($("#BOOKING_CC").val() == ""){
	    	swal ( "실패" ,  "증상을 입력해주세요." ,  "error" );  
			  return;
		}
	    
	   var parse_date = new Date(document.getElementById('BOOKING_DATE').value +" "+ document.getElementById('BOOKING_TIME').value);
	   document.getElementById('hiddenTime').value = parse_date;
	 
	    


	   var form = $('form[role="form"]');
	   		form.attr({"method":"post",
	   		     	   "action":"bookingRegist"
	   		   		  });
	   		form.submit();
	   		
		
	}
</script> 

<c:if test="${from eq 'regist'}" >
	<script>
	window.onload = function(){
		swal({
			  title: "성공",
			  text: "예약이 완료되었습니다.",
			  icon: "success",
			  button: "확인",
			  
		})
		.then((willDelete) => {
		  if (willDelete) {
			  location.reload();
		 
		  }
		});
		
	}
	</script>
</c:if>


  