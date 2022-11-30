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
			               <div class="col-sm-4" align="center" >       
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
	                            
	                      						<div class="col-sm-12">
							<div style="float: left;">
								<div id="keyword" class="card-tools"
								style="width: 500px; height: 60px; font-size: 13px; float: left;">
									<div class="input-group search-area d-lg-inline-flex d-none" style="margin-left: 30px">
			<input class="form-control"  href="#" id="inputkeyword" onkeyup='selectList()' placeholder="환자검색" data-toggle="dropdown">
				<div class="input-group-append">
										<span class="input-group-text"><a href="javascript:void(0)"><i class="flaticon-381-search-2"></i></a></span>
									</div>
                <ul class="dropdown-menu">
                  <li class="dropdown" id="aaa">
                  <div style="width:350px;height:400px;  overflow:auto" class="bg-light">
                  
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
	                            
	                            
	                                <div class="auth-form loginBoxBackground">
										<div style="border-bottom: 2px solid;">
										<h2 style="font-weight: bold;">예약등록</h2>
	                                    </div>
	                                    
	                                    
	                                   <form role="form" class="form-horizontal" action="regist" method="post">
	                                    
	                                    	 	<div class="form-row">
			                                        <div class="col-sm-5">
			                                    		  <label class="text-white" ><strong>환자 성함</strong></label>
					                                         <div class="input-group mb-1"  >
					                                            <input type="text" id="P_NAME" class="form-control form-control-input  " placeholder=""  value=" "  disabled>
			                                    		 </div>
			                                         </div>
			                                        <div class="col-sm-5">
			                                    		  <label class="text-white"><strong>차트 번호</strong></label>
					                                         <div class="input-group mb-1">
					                                            <input type="text"  id="pNo" name="pNo" class="form-control form-control-input"  placeholder=""  value=" " readonly>
	
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
		                                            <input type="text" class="form-control form-control-input" id="P_TEL"   placeholder=""  value=" "disabled  >
		                                        </div>
		                                         </div>
			                                       
		                                        
		                                         <div class="col-sm-5">
		                                         <label class="text-white"><strong>보험 정보</strong></label>
		                                         <div class="input-group mb-3">
		                                            <input type="text" class="form-control form-control-input" id="P_INSURANCE"   placeholder=""   value=" " disabled  >
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
		<c:when test="${Doc.memId eq 'd000017'}">
		   backgroundColor: '#b4a7d6',
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
		    title: '${boo.PName}(${boo.PNo})',
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
	 
    subMenu_go('M030000')
	preloaderCustom.style.display = "none";
	  
	/*  $(".checkB222tn").click(function(){ 
			
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
			
			
			
		}); */
	 
	 
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
		  url : "<%=request.getContextPath()%>/desk/getSearchPatient",
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

					s += '<tr style="cursor:pointer; width:100%; font-size:18px;" onClick="patient('+value.pno+')">';
					s +=	'<td style="width:50%; vertical-align : middle;">'+value.pno+'</td>';
	                s += 	'<td style="width:50%; vertical-align : middle;";>'+value.pname+'</td>';
          			s +=	'</td>';
	                s += '</tr>';
					

				})
			  }
				$("#seachKeywordModal").html(s);
		  }
			   
			   
			   
			   
})};

</script>

<script>

window.patient = function (a){  

		$.ajax({
			url:"<%=request.getContextPath()%>/desk/getPatient.do",
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
		$('input[id=P_NAME]').attr('value',data.voList.pname);
		$('input[id=pNo]').attr('value',data.voList.pno);
		$('input[id=P_TEL]').attr('value',data.voList.ptel);
		$('input[id=P_BIR]').attr('value',moment(data.voList.pbir).format("YYYY-MM-DD"));
		$('input[id=P_LASTDATE]').attr('value',moment(data.voList.plastdate).format("YYYY-MM-DD"));
		$('input[id=P_INSURANCE]').attr('value',data.voList.pinsurance);
		$("#pInsurance").val(data.voList.pinsurance);
		$("#pVisitPath").val(data.voList.pvisitpath);
	
		
	if(data.voList.prnum.substr(7, 1) == "1" && "3"){
		 document.getElementById('P_gender').value = "남"
		}else if(data.voList.prnum.substr(7, 1) == "2" && "4"){
			 document.getElementById('P_gender').value  = "여"
		}
 
	}

</script>

<%@ include file="/WEB-INF/views/common/preloader_js.jsp"%>
<%@ include file="/WEB-INF/views/common/index_js.jsp"%>
<%@ include file="/WEB-INF/views/common/ifram_js.jsp"%>
