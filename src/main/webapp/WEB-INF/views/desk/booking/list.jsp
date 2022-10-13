<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

            <div class="container-fluid">
                <div class="page-titles">
				<h4>Calendar</h4>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="javascript:void(0)">App</a></li>
					<li class="breadcrumb-item active"><a href="javascript:void(0)">Calendar</a></li>
				</ol>
                </div>
                <!-- row -->


                <div class="row">
                    <div class="col-sm-3">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-intro-title">Calendar</h4>

                                <div class="">
                                    <div id="external-events" class="my-3">
                                        <p>Drag and drop your event or click in the calendar</p>
                                        <div class="external-event ui-draggable ui-draggable-handle" data-class="bg-primary" style="position: relative;"><i class="fa fa-move"></i>New Theme Release</div>
                                        <div class="external-event ui-draggable ui-draggable-handle" data-class="bg-success" style="position: relative;"><i class="fa fa-move"></i>My Event
                                        </div>
                                        <div class="external-event ui-draggable ui-draggable-handle" data-class="bg-warning" style="position: relative;"><i class="fa fa-move"></i>Meet manager</div>
                                        <div class="external-event ui-draggable ui-draggable-handle" data-class="bg-dark" style="position: relative;"><i class="fa fa-move"></i>Create New theme</div>
                                    </div>
                                    <!-- checkbox -->
									<div class="checkbox custom-control checkbox-event custom-checkbox pt-3 pb-5">
										<input type="checkbox" class="custom-control-input" id="drop-remove">
										<label class="custom-control-label" for="drop-remove">Remove After Drop</label>
									</div>
                                    <a href="javascript:void()" data-toggle="modal" data-target="#add-category" class="btn btn-primary btn-event w-100">
                                        <span class="align-middle"><i class="ti-plus"></i></span> Create New
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-9">
                        <div class="card">
                            <div class="card-body">
                                <div id="calendar" class="app-fullcalendar fc fc-unthemed fc-ltr"><div class="fc-toolbar fc-header-toolbar"><div class="fc-left"><div class="fc-button-group"><button type="button" class="fc-prev-button fc-button fc-state-default fc-corner-left" aria-label="prev"><span class="fc-icon fc-icon-left-single-arrow"></span></button><button type="button" class="fc-next-button fc-button fc-state-default fc-corner-right" aria-label="next"><span class="fc-icon fc-icon-right-single-arrow"></span></button></div><button type="button" class="fc-today-button fc-button fc-state-default fc-corner-left fc-corner-right fc-state-disabled" disabled="">today</button></div><div class="fc-right"><div class="fc-button-group"><button type="button" class="fc-month-button fc-button fc-state-default fc-corner-left fc-state-active">month</button><button type="button" class="fc-agendaWeek-button fc-button fc-state-default">week</button><button type="button" class="fc-agendaDay-button fc-button fc-state-default fc-corner-right">day</button></div></div><div class="fc-center"><h2>October 2022</h2></div><div class="fc-clear"></div></div><div class="fc-view-container" style=""><div class="fc-view fc-month-view fc-basic-view" style=""><table class=""><thead class="fc-head"><tr><td class="fc-head-container fc-widget-header"><div class="fc-row fc-widget-header"><table class=""><thead><tr><th class="fc-day-header fc-widget-header fc-sun"><span>Sun</span></th><th class="fc-day-header fc-widget-header fc-mon"><span>Mon</span></th><th class="fc-day-header fc-widget-header fc-tue"><span>Tue</span></th><th class="fc-day-header fc-widget-header fc-wed"><span>Wed</span></th><th class="fc-day-header fc-widget-header fc-thu"><span>Thu</span></th><th class="fc-day-header fc-widget-header fc-fri"><span>Fri</span></th><th class="fc-day-header fc-widget-header fc-sat"><span>Sat</span></th></tr></thead></table></div></td></tr></thead><tbody class="fc-body"><tr><td class="fc-widget-content"><div class="fc-scroller fc-day-grid-container" style="overflow: hidden; height: 520.6px;"><div class="fc-day-grid fc-unselectable"><div class="fc-row fc-week fc-widget-content fc-rigid" style="height: 86px;"><div class="fc-bg"><table class=""><tbody><tr><td class="fc-day fc-widget-content fc-sun fc-other-month fc-past" data-date="2022-09-25"></td><td class="fc-day fc-widget-content fc-mon fc-other-month fc-past" data-date="2022-09-26"></td><td class="fc-day fc-widget-content fc-tue fc-other-month fc-past" data-date="2022-09-27"></td><td class="fc-day fc-widget-content fc-wed fc-other-month fc-past" data-date="2022-09-28"></td><td class="fc-day fc-widget-content fc-thu fc-other-month fc-past" data-date="2022-09-29"></td><td class="fc-day fc-widget-content fc-fri fc-other-month fc-past" data-date="2022-09-30"></td><td class="fc-day fc-widget-content fc-sat fc-past" data-date="2022-10-01"></td></tr></tbody></table></div><div class="fc-content-skeleton"><table><thead><tr><td class="fc-day-top fc-sun fc-other-month fc-past" data-date="2022-09-25"><span class="fc-day-number">25</span></td><td class="fc-day-top fc-mon fc-other-month fc-past" data-date="2022-09-26"><span class="fc-day-number">26</span></td><td class="fc-day-top fc-tue fc-other-month fc-past" data-date="2022-09-27"><span class="fc-day-number">27</span></td><td class="fc-day-top fc-wed fc-other-month fc-past" data-date="2022-09-28"><span class="fc-day-number">28</span></td><td class="fc-day-top fc-thu fc-other-month fc-past" data-date="2022-09-29"><span class="fc-day-number">29</span></td><td class="fc-day-top fc-fri fc-other-month fc-past" data-date="2022-09-30"><span class="fc-day-number">30</span></td><td class="fc-day-top fc-sat fc-past" data-date="2022-10-01"><span class="fc-day-number">1</span></td></tr></thead><tbody><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></tbody></table></div></div><div class="fc-row fc-week fc-widget-content fc-rigid" style="height: 86px;"><div class="fc-bg"><table class=""><tbody><tr><td class="fc-day fc-widget-content fc-sun fc-past" data-date="2022-10-02"></td><td class="fc-day fc-widget-content fc-mon fc-past" data-date="2022-10-03"></td><td class="fc-day fc-widget-content fc-tue fc-past" data-date="2022-10-04"></td><td class="fc-day fc-widget-content fc-wed fc-past" data-date="2022-10-05"></td><td class="fc-day fc-widget-content fc-thu fc-past" data-date="2022-10-06"></td><td class="fc-day fc-widget-content fc-fri fc-today " data-date="2022-10-07"></td><td class="fc-day fc-widget-content fc-sat fc-future" data-date="2022-10-08"></td></tr></tbody></table></div><div class="fc-content-skeleton"><table><thead><tr><td class="fc-day-top fc-sun fc-past" data-date="2022-10-02"><span class="fc-day-number">2</span></td><td class="fc-day-top fc-mon fc-past" data-date="2022-10-03"><span class="fc-day-number">3</span></td><td class="fc-day-top fc-tue fc-past" data-date="2022-10-04"><span class="fc-day-number">4</span></td><td class="fc-day-top fc-wed fc-past" data-date="2022-10-05"><span class="fc-day-number">5</span></td><td class="fc-day-top fc-thu fc-past" data-date="2022-10-06"><span class="fc-day-number">6</span></td><td class="fc-day-top fc-fri fc-today " data-date="2022-10-07"><span class="fc-day-number">7</span></td><td class="fc-day-top fc-sat fc-future" data-date="2022-10-08"><span class="fc-day-number">8</span></td></tr></thead><tbody><tr><td></td><td></td><td></td><td></td><td></td><td class="fc-event-container"><a class="fc-day-grid-event fc-h-event fc-event fc-start fc-end bg-danger fc-draggable"><div class="fc-content"><span class="fc-time">8:53p</span> <span class="fc-title">Soft drinks</span></div></a></td><td></td></tr></tbody></table></div></div><div class="fc-row fc-week fc-widget-content fc-rigid" style="height: 86px;"><div class="fc-bg"><table class=""><tbody><tr><td class="fc-day fc-widget-content fc-sun fc-future" data-date="2022-10-09"></td><td class="fc-day fc-widget-content fc-mon fc-future" data-date="2022-10-10"></td><td class="fc-day fc-widget-content fc-tue fc-future" data-date="2022-10-11"></td><td class="fc-day fc-widget-content fc-wed fc-future" data-date="2022-10-12"></td><td class="fc-day fc-widget-content fc-thu fc-future" data-date="2022-10-13"></td><td class="fc-day fc-widget-content fc-fri fc-future" data-date="2022-10-14"></td><td class="fc-day fc-widget-content fc-sat fc-future" data-date="2022-10-15"></td></tr></tbody></table></div><div class="fc-content-skeleton"><table><thead><tr><td class="fc-day-top fc-sun fc-future" data-date="2022-10-09"><span class="fc-day-number">9</span></td><td class="fc-day-top fc-mon fc-future" data-date="2022-10-10"><span class="fc-day-number">10</span></td><td class="fc-day-top fc-tue fc-future" data-date="2022-10-11"><span class="fc-day-number">11</span></td><td class="fc-day-top fc-wed fc-future" data-date="2022-10-12"><span class="fc-day-number">12</span></td><td class="fc-day-top fc-thu fc-future" data-date="2022-10-13"><span class="fc-day-number">13</span></td><td class="fc-day-top fc-fri fc-future" data-date="2022-10-14"><span class="fc-day-number">14</span></td><td class="fc-day-top fc-sat fc-future" data-date="2022-10-15"><span class="fc-day-number">15</span></td></tr></thead><tbody><tr><td class="fc-event-container"><a class="fc-day-grid-event fc-h-event fc-event fc-start fc-end bg-dark fc-draggable"><div class="fc-content"><span class="fc-time">4:46p</span> <span class="fc-title">Chicken Burger</span></div></a></td><td></td><td class="fc-event-container"><a class="fc-day-grid-event fc-h-event fc-event fc-start fc-end bg-primary fc-draggable"><div class="fc-content"><span class="fc-time">6:46p</span> <span class="fc-title">Hot dog</span></div></a></td><td></td><td></td><td></td><td></td></tr></tbody></table></div></div><div class="fc-row fc-week fc-widget-content fc-rigid" style="height: 86px;"><div class="fc-bg"><table class=""><tbody><tr><td class="fc-day fc-widget-content fc-sun fc-future" data-date="2022-10-16"></td><td class="fc-day fc-widget-content fc-mon fc-future" data-date="2022-10-17"></td><td class="fc-day fc-widget-content fc-tue fc-future" data-date="2022-10-18"></td><td class="fc-day fc-widget-content fc-wed fc-future" data-date="2022-10-19"></td><td class="fc-day fc-widget-content fc-thu fc-future" data-date="2022-10-20"></td><td class="fc-day fc-widget-content fc-fri fc-future" data-date="2022-10-21"></td><td class="fc-day fc-widget-content fc-sat fc-future" data-date="2022-10-22"></td></tr></tbody></table></div><div class="fc-content-skeleton"><table><thead><tr><td class="fc-day-top fc-sun fc-future" data-date="2022-10-16"><span class="fc-day-number">16</span></td><td class="fc-day-top fc-mon fc-future" data-date="2022-10-17"><span class="fc-day-number">17</span></td><td class="fc-day-top fc-tue fc-future" data-date="2022-10-18"><span class="fc-day-number">18</span></td><td class="fc-day-top fc-wed fc-future" data-date="2022-10-19"><span class="fc-day-number">19</span></td><td class="fc-day-top fc-thu fc-future" data-date="2022-10-20"><span class="fc-day-number">20</span></td><td class="fc-day-top fc-fri fc-future" data-date="2022-10-21"><span class="fc-day-number">21</span></td><td class="fc-day-top fc-sat fc-future" data-date="2022-10-22"><span class="fc-day-number">22</span></td></tr></thead><tbody><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></tbody></table></div></div><div class="fc-row fc-week fc-widget-content fc-rigid" style="height: 86px;"><div class="fc-bg"><table class=""><tbody><tr><td class="fc-day fc-widget-content fc-sun fc-future" data-date="2022-10-23"></td><td class="fc-day fc-widget-content fc-mon fc-future" data-date="2022-10-24"></td><td class="fc-day fc-widget-content fc-tue fc-future" data-date="2022-10-25"></td><td class="fc-day fc-widget-content fc-wed fc-future" data-date="2022-10-26"></td><td class="fc-day fc-widget-content fc-thu fc-future" data-date="2022-10-27"></td><td class="fc-day fc-widget-content fc-fri fc-future" data-date="2022-10-28"></td><td class="fc-day fc-widget-content fc-sat fc-future" data-date="2022-10-29"></td></tr></tbody></table></div><div class="fc-content-skeleton"><table><thead><tr><td class="fc-day-top fc-sun fc-future" data-date="2022-10-23"><span class="fc-day-number">23</span></td><td class="fc-day-top fc-mon fc-future" data-date="2022-10-24"><span class="fc-day-number">24</span></td><td class="fc-day-top fc-tue fc-future" data-date="2022-10-25"><span class="fc-day-number">25</span></td><td class="fc-day-top fc-wed fc-future" data-date="2022-10-26"><span class="fc-day-number">26</span></td><td class="fc-day-top fc-thu fc-future" data-date="2022-10-27"><span class="fc-day-number">27</span></td><td class="fc-day-top fc-fri fc-future" data-date="2022-10-28"><span class="fc-day-number">28</span></td><td class="fc-day-top fc-sat fc-future" data-date="2022-10-29"><span class="fc-day-number">29</span></td></tr></thead><tbody><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></tbody></table></div></div><div class="fc-row fc-week fc-widget-content fc-rigid" style="height: 90px;"><div class="fc-bg"><table class=""><tbody><tr><td class="fc-day fc-widget-content fc-sun fc-future" data-date="2022-10-30"></td><td class="fc-day fc-widget-content fc-mon fc-future" data-date="2022-10-31"></td><td class="fc-day fc-widget-content fc-tue fc-other-month fc-future" data-date="2022-11-01"></td><td class="fc-day fc-widget-content fc-wed fc-other-month fc-future" data-date="2022-11-02"></td><td class="fc-day fc-widget-content fc-thu fc-other-month fc-future" data-date="2022-11-03"></td><td class="fc-day fc-widget-content fc-fri fc-other-month fc-future" data-date="2022-11-04"></td><td class="fc-day fc-widget-content fc-sat fc-other-month fc-future" data-date="2022-11-05"></td></tr></tbody></table></div><div class="fc-content-skeleton"><table><thead><tr><td class="fc-day-top fc-sun fc-future" data-date="2022-10-30"><span class="fc-day-number">30</span></td><td class="fc-day-top fc-mon fc-future" data-date="2022-10-31"><span class="fc-day-number">31</span></td><td class="fc-day-top fc-tue fc-other-month fc-future" data-date="2022-11-01"><span class="fc-day-number">1</span></td><td class="fc-day-top fc-wed fc-other-month fc-future" data-date="2022-11-02"><span class="fc-day-number">2</span></td><td class="fc-day-top fc-thu fc-other-month fc-future" data-date="2022-11-03"><span class="fc-day-number">3</span></td><td class="fc-day-top fc-fri fc-other-month fc-future" data-date="2022-11-04"><span class="fc-day-number">4</span></td><td class="fc-day-top fc-sat fc-other-month fc-future" data-date="2022-11-05"><span class="fc-day-number">5</span></td></tr></thead><tbody><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></tbody></table></div></div></div></div></td></tr></tbody></table></div></div></div>
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

	<script>
  document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');

    var calendar = new FullCalendar.Calendar(calendarEl, {
      height: '100%',
	  locale: "ko",
      expandRows: true,
      slotMinTime: '08:00',
      slotMaxTime: '20:00',
      headerToolbar: {
        left: 'prev,next today',
        center: 'title',
        right: 'dayGridMonth,timeGridWeek,timeGridDay,listWeek'
      },
      initialView: 'timeGridWeek',
      navLinks: true, // can click day/week names to navigate views
      editable: true,
      selectable: true,
      nowIndicator: true,
      dayMaxEvents: true, // allow "more" link when too many events
      events: []
    });
    

    calendar.render();
  });

</script>