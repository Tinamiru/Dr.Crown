<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<link rel="stylesheet" href="https://uicdn.toast.com/calendar/latest/toastui-calendar.min.css" />
<link rel="stylesheet" href="https://uicdn.toast.com/tui.time-picker/latest/tui-time-picker.css">
<link rel="stylesheet" href="https://uicdn.toast.com/tui.date-picker/latest/tui-date-picker.css" />
            <div class="container-fluid">
              
                <!-- row -->


                <div class="row">
                	
                	<div class="col-sm-10 ">
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
			                    <span class="m-2" id="getToDate"></span>  
			               </div>
			                    
		                   <div class="col-sm-4" align="right">
		                   	
			                   <button id="nextBtn" type="button" class="btn btn-primary btn-rounded mt-2 mb-2" >
				               예약등록
				               </button>
		                   </div>
	                    </div>
                 
                            
                    	<div id="calendar" style="height: 750px;"></div>
                            
                            
                          
                       
                    </div>
                    
                    <div class="col-sm-2">
                       
      
                                    <!-- checkbox -->
					<h3>▶접수목록</h3>
					<div style="height:450px; overflow:auto">
						<table class="table table-striped table-responsive-sm2 ">
								 <tr>
								<td>검진대기</td>
								<td>곽금규(95)</td>															
									</tr>	
								 <tr>
								<td>검진대기</td>
								<td>곽금규(95)</td>															
									</tr>	
								 <tr>
								<td>검진대기</td>
								<td>곽금규(95)</td>															
									</tr>	
								 <tr>
								<td>검진대기</td>
								<td>곽금규(95)</td>															
									</tr>	
								 <tr>
								<td>검진대기</td>
								<td>곽금규(95)</td>															
									</tr>	
								 <tr>
								<td>검진대기</td>
								<td>곽금규(95)</td>											
									</tr>	
								<tr>
								<td>검진대기</td>
								<td>곽금규(95)</td>															
									</tr>	
								 <tr>
								<td>검진대기</td>
								<td>곽금규(95)</td>											
									</tr>	
									<tr>
								<td>검진대기</td>
								<td>곽금규(95)</td>											
									</tr>	
								<tr>
								<td>검진대기</td>
								<td>곽금규(95)</td>															
									</tr>	
								 <tr>
								<td>검진대기</td>
								<td>곽금규(95)</td>											
									</tr>		
									<tr>
								<td>검진대기</td>
								<td>곽금규(95)</td>											
									</tr>	
								<tr>
								<td>검진대기</td>
								<td>곽금규(95)</td>															
									</tr>	
								 <tr>
								<td>검진대기</td>
								<td>곽금규(95)</td>											
									</tr>							
						 </table>	
                        
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
            
<script src="https://uicdn.toast.com/calendar/latest/toastui-calendar.min.js"></script>
<script src="https://uicdn.toast.com/tui.time-picker/latest/tui-time-picker.js"></script>
<script src="https://uicdn.toast.com/tui.date-picker/latest/tui-date-picker.js"></script>
  

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
	 // useFormPopup: true,
	  useDetailPopup: true,
	});
	
calendar.setTheme({
	  common: {
	    saturday: {
	      color: 'rgba(64, 64, 255, 0.5)',
	    },
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
	
document.getElementById('getToDate').innerText = calendar.getDateRangeStart();

const todayBtn = document.getElementById('todayBtn');
const prevBtn = document.getElementById('prevBtn');
const nextBtn = document.getElementById('nextBtn');
const dayViewBtn = document.getElementById('dayViewBtn');
const weekViewBtn = document.getElementById('weekViewBtn');
const monthViewBtn = document.getElementById('monthViewBtn');

todayBtn.addEventListener('click', () => {
	  calendar.today();     
	  document.getElementById('getToDate').innerText = calendar.getDateRangeStart();
	});

nextBtn.addEventListener('click', () => {
  calendar.next();     
  document.getElementById('getToDate').innerText = calendar.getDateRangeStart();
});

prevBtn.addEventListener('click', () => {
  calendar.prev();                          // 현재 뷰 기준으로 이전 뷰로 이동
  document.getElementById('getToDate').innerText = calendar.getDateRangeStart();
});

dayViewBtn.addEventListener('click', () => {
  calendar.changeView('day', true);         // 일간 뷰 보기
  document.getElementById('getToDate').innerText = calendar.getDateRangeStart();
});

weekViewBtn.addEventListener('click', () => {
  calendar.changeView('week', true);        // 주간 뷰 보기
  document.getElementById('getToDate').innerText = calendar.getDateRangeStart();
});

monthViewBtn.addEventListener('click', () => {
  calendar.changeView('month', true);       // 월간 뷰 보기
  document.getElementById('getToDate').innerText = calendar.getDateRangeStart("yyyy-DD");
});
	
	
</script>
 
  
  