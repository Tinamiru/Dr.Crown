<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<link rel="stylesheet" href="https://uicdn.toast.com/calendar/latest/toastui-calendar.min.css" />
<link rel="stylesheet" href="https://uicdn.toast.com/tui.time-picker/latest/tui-time-picker.css">
<link rel="stylesheet" href="https://uicdn.toast.com/tui.date-picker/latest/tui-date-picker.css" />
            <div class="container-fluid">
              
                <!-- row -->


                <div class="row">
                	
                	<div class="col-sm-8 ">
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
		                   	
			                   <button id="nextBtn" type="button" class="btn btn-primary btn-rounded mt-2 mb-2"  onclick="OpenWindow('/desk/booking/regist','예약등록',1000,600);">
				               예약등록
				               </button>
		                   </div>
	                    </div>
                 
                            
                    	<div id="calendar" style="height: 750px;"></div>
                            
                            
                          
                       
                    </div>
                    
                    <div class="col-sm-4">

	                    
	                        <div class="row no-gutters">
	                            <div class="col-xl-12">
	                            
	                                <div class="auth-form loginBoxBackground">
										<div style="border-bottom: 2px solid;">
										<h2 style="font-weight: bold;">예약등록</h2>
	                                    </div>
	                                   <form>
	                                    
	                                    	 	<div class="form-row">
			                                        <div class="col-sm-5">
			                                    		  <label class="text-white"><strong>환자 성함</strong></label>
					                                         <div class="input-group mb-1">
					                                            <input type="text" id="P_NAME" class="form-control form-control-input" >
			                                    		 </div>
			                                         </div>
			                                        <div class="col-sm-5">
			                                    		  <label class="text-white"><strong>환자 번호</strong></label>
					                                         <div class="input-group mb-1">
					                                            <input type="text" class="form-control form-control-input" >
	
			                                    		 </div>
			                                         </div>
			                                         <div class="col-sm-2">
			                                    		  <label class="text-white"><strong>성별</strong></label>
					                                         <div class="input-group mb-1">
					                                            <input type="text" id="P_" class="form-control form-control-input" >
			                                    		 </div>
			                                           </div>
		                                         </div>   
		                                         
		                                         
		                                         <div class="form-row">
			                                        <div class="col-sm-6">
			                                    		  <label class="text-white"><strong>생년 월일</strong></label>
					                                         <div class="input-group mb-1">
					                                            <input type="text" id="P_BIR" class="form-control form-control-input"  disabled >
			                                    		 </div>
			                                         </div>
			                                        <div class="col-sm-6">
			                                    		  <label class="text-white"><strong>최종방문일</strong></label>
					                                         <div class="input-group mb-1">
					                                            <input type="text" id="P_LASTDATE" class="form-control form-control-input" placeholder="최종방문일" disabled >
					                                            
			                                    		 </div>
			                                         </div>
		                                         </div>   
		                                         
		                                           
		                                             <label class="text-white"><strong>전화 번호</strong></label>
		                                         <div class="input-group mb-3">
		                                            <input type="text" class="form-control form-control-input" placeholder="전화번호" disabled >
		                                            <div class="input-group-append ">
		                                                <button class="loginBtn btn btn-block"  id="P_TEL" type="button">문자전송</button>
		                                            </div> 
		                                        </div>
		                                        
		                                        
		                                         <label class="text-white"><strong>보험 정보</strong></label>
		                                         <div class="input-group mb-3">
		                                            <input type="text" class="form-control form-control-input" id="P_INSURANCE" placeholder="보험정보"   disabled >
		                                        </div>
		                                        
		                                        
	                            			
	                            					
		                                  
		                                    
		 
		                                 
			                                       <label class="text-white"><strong>예약담당의사/직원</strong></label>
		                                        <div class="form-row">
		                                        	<div class="col-sm-6">
		                                                <select id="BOOKING_DOC" class=" form-control-input form-control default-select">
		                                                    <option selected value="n">== 담당의 ==</option>
		                                                    <option class="text-white" value="1">곽닥터</option>
		                                                    <option class="text-white" value="2">김닥터</option>
		                                                    <option class="text-white" value="3">이닥터</option>
		                                                </select>
	                                                 </div>
	                                                
	                                                 <div class="col-sm-6">
		                                                <select id="BOOKING_WRITER" class=" form-control-input form-control default-select">
		                                                    <option selected value="n">== 직원 ==</option>
		                                                    <option class="text-white" value="1">박수간호사</option>
		                                                    <option class="text-white" value="2">김간호사</option>
		                                                    <option class="text-white" value="3">이치위생사</option>
		                                                </select>
	                                                 </div>
		                                        </div> 
		                                        
		                               
		                                      
	                               				<label class="text-white mt-3"><strong>예약일시</strong></label>	
	                            					 <div class="form-row">
		                                        	<div class="col-sm-6">
		                                                <input type="date"  id="BOOKING_DATE" class="form-control form-control-input">
	                                                 </div>
	                                                
	                                                 <div class="col-sm-6">
		                                                <select id="BOOKING_TIME" class=" form-control-input form-control default-select">
		                                                    <option selected value="n">예약시간</option>
		                                                    <option class="text-white" value="0900">09:00</option>
		                                                    <option class="text-white" value="0930">09:30</option>
		                                                    <option class="text-white" value="1000">10:00</option>
		                                                    <option class="text-white" value="1030">10:30</option>
		                                                    <option class="text-white" value="1100">11:00</option>
		                                                    <option class="text-white" value="1130">11:30</option>
		                                                    <option class="text-white" value="1300">13:00</option>
		                                                    <option class="text-white" value="1330">13:30</option>
		                                                    <option class="text-white" value="1400">14:00</option>
		                                                    <option class="text-white" value="1430">14:30</option>
		                                                    <option class="text-white" value="1500">15:00</option>
		                                                    <option class="text-white" value="1530">15:30</option>
		                                                    <option class="text-white" value="1600">16:00</option>
		                                                    <option class="text-white" value="1630">16:30</option>
		                                                    <option class="text-white" value="1700">17:00</option>
		                                                    <option class="text-white" value="1730">17:30</option>
		                                                    <option class="text-white" value="1800">18:00</option>
		                                                    <option class="text-white" value="1830">18:30</option>
		                                                    <option class="text-white" value="1900">19:00</option>
		                                                    <option class="text-white" value="1930">19:30</option>
		       
		                                                </select>
	                                                 </div>
		                                        </div> 
	                            				
	                                    	
	                                    	
	                                    	 
		                                        <div class="form-group mt-1">
		                                            <label class="text-white"><strong>증상 내용</strong></label>
		                                             <textarea style="resize: none;"  id="BOOKING_CC" class="textarea_editor form-control bg-transparent" rows="6" placeholder="증상 입력."></textarea>
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
          
                    <!-- BEGIN MODAL -->
                    <div class="modal fade none-border" id="event-modal">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="modal-title"><strong>Add New Event</strong></h4>
                                </div>
                                <div class="modal-body"></div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">Close</button>
                                    <button type="button" class="btn btn-success save-event waves-effect waves-light">Create
                                        event</button>

                                    <button type="button" class="btn btn-danger delete-event waves-effect waves-light" data-dismiss="modal">Delete</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Modal Add Category -->
                    <div class="modal fade none-border" id="add-category">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="modal-title"><strong>Add a category</strong></h4>
                                </div>
                                <div class="modal-body">
                                    <form>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label class="control-label">Category Name</label>
                                                <input class="form-control form-white" placeholder="Enter name" type="text" name="category-name">
                                            </div>
                                            <div class="col-md-6">
                                                <label class="control-label">Choose Category Color</label>
                                                <select class="form-control form-white" data-placeholder="Choose a color..." name="category-color">
                                                    <option value="success">Success</option>
                                                    <option value="danger">Danger</option>
                                                    <option value="info">Info</option>
                                                    <option value="pink">Pink</option>
                                                    <option value="primary">Primary</option>
                                                    <option value="warning">Warning</option>
                                                </select>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">Close</button>
                                    <button type="button" class="btn btn-danger waves-effect waves-light save-category" data-dismiss="modal">Save</button>
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
    {
      id: 'kim',
      name: '김닥터',
      backgroundColor: '#03bd9e',
    },
    {
      id: 'lee',
      name: '이닥터',
      backgroundColor: '#00a9ff',
    },
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
	  {
	    id: 'event1',
	    calendarId: 'kim',
	    title: '곽금규',
	    start: '2022-10-24T09:00:00',
	    end: '2022-10-24T10:00:00',
	  },
	  {
	    id: 'event2',
	    calendarId: 'lee',
	    title: '곽동석',
	    start: '2022-10-18T12:00:00',
	    end: '2022-10-18T13:00:00',
	  },
	  {
	    id: 'event3',
	    calendarId: 'kim',
	    title: '심재린',
	    start: '2022-10-18T12:00:00',
	    end: '2022-10-18T13:00:00',
	  },
	  {
		    id: 'event4',
		    calendarId: 'kim',
		    title: '조정현',
		    start: '2022-10-18T13:00:00',
		    end: '2022-10-18T14:00:00',
		  },
	]);
calendar.on('beforeCreateSchedule', scheduleData => {
	  const schedule = {
	    calendarId: scheduleData.calendarId,
	    id: String(Math.random() * 100000000000000000),
	    title: scheduleData.title,
	    isAllDay: scheduleData.isAllDay,
	    start: scheduleData.start,
	    end: scheduleData.end,
	    category: scheduleData.isAllDay ? 'allday' : 'time',
	    location: scheduleData.location             // 장소 정보도 입력할 수 있네요!
	  };

	  calendar.createSchedules([schedule]);

	  alert('일정 생성 완료');
	});	

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
	    return moment(start).format('YYYY-MM-DD') + ' ~ ' + moment(end).format('YYYY-MM-DD');
	  }
	  throw new Error('no view type');
	}
	
window.onload = function() {
	document.getElementById('getToDate').innerText = getNavbarRange(calendar.getDateRangeStart(), calendar.getDateRangeEnd(), calendar.getViewName());
};

</script>
 
 <script>

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
	    
	    
	    var form = $('form[role="form"]');
		form.attr({"method":"post",
		     	   "action":"regist"
		   		  });
		swal ( "성공" ,  "예약이 완료되었습니다." ,  "success" );
		form.submit();
		
		   
		
	}
</script> 
  