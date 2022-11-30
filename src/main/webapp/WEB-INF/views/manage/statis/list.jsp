<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>


<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.css" rel="stylesheet" type="text/css" />
<style>
#table10 {
	overflow: auto !important;
  }
#table10::-webkit-scrollbar {
	width: 50px !important;
}
#table10::-webkit-scrollbar-thumb {
	background-color: #2f3542 !important;
}
#table10::-webkit-scrollbar-track {
	background-color: grey !important;
}
  label{margin-left: 20px;}
		#calldatePicker{width:100px; margin: 0 20px 20px 20px;}
		#calldatePicker > span:hover{cursor: pointer;}
</style>



<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" />
<c:set var="noticeList" value="${dataMap.noticeList }" />

<body>

<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.6.0/css/bootstrap.min.css"> -->
<!-- <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.0/css/bootstrap.min.css" rel="stylesheet" type="text/css" /> -->


<div id="chartWrap"></div>
	
	<div class="container-fluid">
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
		<div class="row pt-3">
			<div class="row w-100 justify-content-around ">
				<div class = "row col-6 bg-white">
					<div class="col-2 align-self-center text-center" style="color:white; font-size:25px; background-color:#333258;">
                         	일반<br>통계<br>선택<br>옵션
                    </div>
					<div class = " col-10 d-inline-block ">
						<div class = "row pt-3">
							<div class = "col-2 d-flex justify-content-start">
								    <div><label >날짜 선택 : </label></div>
					   		</div>
							<div class = "col-5 p-0 d-flex justify-content-start">
								    <div><label>시작날짜&nbsp;</label></div>
								    <div><input type="text" class="input" name="strDate" id="calldatePicker" ></div>
								    <div>&nbsp;부터</div>
					   		</div>
					   		<div class = "col-5 p-0 d-flex justify-content-start">
								    <div><label>종료날짜&nbsp;</label></div>
								    <div><input type="text" class="input" name="endDate" id="calldatePicker2" ></div>
								    <div>&nbsp;까지</div>
					   		</div>
				   		</div>
				   		<div class = "row pt-3">
					   		<div class = "col-2 d-flex justify-content-start">
								    <label >나이 선택 : </label>
							</div>
					   		<div class = "col-5 p-0 d-flex justify-content-start" >
								시작나이&nbsp;
								<c:set var="nowYear" value="2022"></c:set>
								<select>
								  <c:forEach var="i" begin="1950" end="${nowYear}" step="1">
								    <option value="${nowYear - i + 1950}">${nowYear - i + 1950}년생</option>
								  </c:forEach>
								</select><label for="nowYear">&nbsp;부터</label>
							</div>
					   		<div class = "col-5 p-0 d-flex justify-content-start">
								끝&nbsp;&nbsp;나이&nbsp;&nbsp;&nbsp;
								<c:set var="nowYear" value="2022"></c:set>
								<select>
								  <c:forEach var="i" begin="1950" end="${nowYear}" step="1">
								    <option value="${nowYear - i + 1950}">${nowYear - i + 1950}년생</option>
								  </c:forEach>
								</select><label for="nowYear">&nbsp;까지</label>
							</div>
	
			   			</div>
			   			
			   			<div class = "row pt-3">
			                    <div class= "col-2 d-flex justify-content-start">
			                    	<label> 방문 유형 : </label>
		                    	</div>
		                    	<select name="searchType"  onchange="search(this.value)" >
		                    		<option value="0" >전체</option>
		                    		<option value="1" >방문</option>
		                    		<option value="2" >예약</option>
		                    	</select>
			   			</div>
					</div>	
				</div>
				<div class="row col-6 bg-white p-0">
					<div class="col-2 align-self-center text-center" style="color:white; font-size:25px; background-color:#333258;">
                         	처치<br>통계<br>선택<br>옵션
                    </div>
					
					<div class = "col-10 d-inline-block">
						<div class = "row pt-3">
							<div class="col-md-2 ">
								<div class="custom-control custom-checkbox mb-3">
									<input type="checkbox" class="custom-control-input"  checked id="customCheckBox1" >
									<label class="custom-control-label col-form-label-sm" for="customCheckBox1">기본진료</label>
								</div>
							</div>
							<div class="col-md-2">
								<div class="custom-control custom-checkbox mb-3">
									<input type="checkbox" class="custom-control-input" checked  id="customCheckBox2" >
									<label class="custom-control-label col-form-label-sm" for="customCheckBox2">X-ray</label>
								</div>
							</div>
							<div class="col-md-2">
								<div class="custom-control custom-checkbox mb-3">
									<input type="checkbox" class="custom-control-input"  checked id="customCheckBox3" >
									<label class="custom-control-label col-form-label-sm" for="customCheckBox3">마취</label>
								</div>
							</div>
							<div class="col-md-2">
								<div class="custom-control custom-checkbox mb-3">
									<input type="checkbox" class="custom-control-input"  checked id="customCheckBox4" >
									<label class="custom-control-label col-form-label-sm" for="customCheckBox4">보존</label>
								</div>
							</div>
							<div class="col-md-2">
								<div class="custom-control custom-checkbox mb-3">
									<input type="checkbox" class="custom-control-input" checked  id="customCheckBox5" >
									<label class="custom-control-label col-form-label-sm" for="customCheckBox5">GI즉처</label>
								</div>
							</div>
							<div class="col-md-2">
								<div class="custom-control custom-checkbox mb-3">
									<input type="checkbox" class="custom-control-input" checked  id="customCheckBox6" >
									<label class="custom-control-label col-form-label-sm" for="customCheckBox6">GI충전</label>
								</div>
							</div>
						</div>
						<div class = "row">
							<div class="col-md-2">
								<div class="custom-control custom-checkbox mb-3">
									<input type="checkbox" class="custom-control-input"  checked id="customCheckBox7" >
									<label class="custom-control-label col-form-label-sm" for="customCheckBox7">근관치료</label>
								</div>
							</div>
							<div class="col-md-2">
								<div class="custom-control custom-checkbox mb-3">
									<input type="checkbox" class="custom-control-input" checked  id="customCheckBox8" >
									<label class="custom-control-label col-form-label-sm" for="customCheckBox8">발치/외과</label>
								</div>
							</div>
							<div class="col-md-2">
								<div class="custom-control custom-checkbox mb-3">
									<input type="checkbox" class="custom-control-input"  checked id="customCheckBox9" >
									<label class="custom-control-label col-form-label-sm" for="customCheckBox9">교정</label>
								</div>
							</div>
							<div class="col-md-2">
								<div class="custom-control custom-checkbox mb-3">
									<input type="checkbox" class="custom-control-input"  checked id="customCheckBox10" >
									<label class="custom-control-label col-form-label-sm" for="customCheckBox10">치주치료</label>
								</div>
							</div>
							<div class="col-md-2">
								<div class="custom-control custom-checkbox mb-3">
									<input type="checkbox" class="custom-control-input"  checked id="customCheckBox11" >
									<label class="custom-control-label col-form-label-sm" for="customCheckBox11">치관확장</label>
								</div>
							</div>
							<div class="col-md-2">
								<div class="custom-control custom-checkbox mb-3">
									<input type="checkbox" class="custom-control-input" checked id="customCheckBox12" >
									<label class="custom-control-label col-form-label-sm" for="customCheckBox12">제거</label>
								</div>
							</div>
						</div>
						<div class = "row ">
							<div class="col-md-2">
								<div class="custom-control custom-checkbox mb-3">
									<input type="checkbox" class="custom-control-input"  checked id="customCheckBox14" >
									<label class="custom-control-label col-form-label-sm" for="customCheckBox14">급여</label>
								</div>
							</div>
							<div class="col-md-2">
								<div class="custom-control custom-checkbox mb-3">
									<input type="checkbox" class="custom-control-input"  checked id="customCheckBox15" >
									<label class="custom-control-label col-form-label-sm" for="customCheckBox15">비급여</label>
								</div>
							</div>
							<div class="col-md-2">
								<div class="custom-control custom-checkbox mb-3">
									<input type="checkbox" class="custom-control-input" checked  id="customCheckBox16" >
									<label class="custom-control-label col-form-label-sm" for="customCheckBox16">기타</label>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div  class="row pt-3">
			<div class="col-6 bg-white ">
				<canvas id="myChart"></canvas>
			</div>
			<div class="col-6 bg-white ">
				<canvas id="myChart2"></canvas>
			</div>
		</div>
			<div class="row pt-3">
                   <div class="col-xl-6 col-lg-6">
                       <div class="card">
                           <div class="card-header">
                               <h4 class="card-title">진료별 환자 통계 표</h4>
                           </div>
                           <div class="row justify-content-between pr-4 pt-3 pl-4">
							<div class="col-3 pl-4">
								<select class="form-control " name="perPageNum" id="perPageNum" onchange="list_go(1);">					  		  		
							 		<option value="5" ${cri.perPageNum eq 5 ? 'selected' : '' } >5개씩</option>
							 		<option value="10" ${cri.perPageNum eq 10 ? 'selected' : '' }>10개씩</option>
							 		<option value="20" ${cri.perPageNum eq 20 ? 'selected' : '' }>20개씩</option>
							 		<option value="30" ${cri.perPageNum eq 30 ? 'selected' : '' }>30개씩</option>
							 	</select>
							</div>
							<div class="col-9 pr-2">
								<div class="row justify-content-end">
									<div class="col-5 p-0">
										<input  class="form-control" type="text" name="keyword" placeholder="검색어를 입력하세요." value="${param.keyword }"/>
									</div>
									<div class="col-3 p-0">
										<span class="input-group-append">
											<button class="btn btn-primary" type="button">검색</button>
										</span>
									</div>
								</div>
							</div>
						</div>
                           <div id="patientGraph" class="card-body">
                               <div class="table-responsive">
                                   <div id="example_wrapper" class="dataTables_wrapper">
						       		<div class="row justify-content-center" >
						               <section class="content" style="height: 60vh; width: 95%;" >
                                	<div id="chart_div"><table class="table table-bordered border-white display min-w850" role="grid" 
                                					style="margin: auto; text-align: center; height: 18vh; overflow-y:scroll;">
	                                        <thead>
	                                            <tr role="row" bgcolor="#333258" style="color: white">
	                                            	<th class="sorting_asc" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 10px;">순번</th>
	                                            	<th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending" style="width: 10px;">날짜</th>
	                                            	<th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Office: activate to sort column ascending" style="width: 10px;">기본진료</th>
	                                            	<th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Age: activate to sort column ascending" style="width: 10px;">마취</th>
	                                            	<th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Start date: activate to sort column ascending" style="width: 10px;">급여처치</th>
	                                            	<th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Salary: activate to sort column ascending" style="width: 10px;">Salary</th></tr>
	                                        </thead>
	                                        <tbody>
	                                        	<tr class="odd" role="row">
	                                                <th bgcolor="#333258" style="color: white">31</th>
	                                                <td>Accountant</td>
	                                                <td>Tokyo</td>
	                                                <td>33</td>
	                                                <td>2008/11/28</td>
	                                                <td>$162,700</td>
                                            	</tr>
	                                        	<tr class="odd" role="row">
	                                                <th bgcolor="#333258" style="color: white">30</th>
	                                                <td>Accountant</td>
	                                                <td>Tokyo</td>
	                                                <td>33</td>
	                                                <td>2008/11/28</td>
	                                                <td>$162,700</td>
                                            	</tr>
	                                        	<tr class="odd" role="row">
	                                                <th bgcolor="#333258" style="color: white">29</th>
	                                                <td>Accountant</td>
	                                                <td>Tokyo</td>
	                                                <td>33</td>
	                                                <td>2008/11/28</td>
	                                                <td>$162,700</td>
                                            	</tr>
	                                        	<tr class="odd" role="row">
	                                                <th bgcolor="#333258" style="color: white">28</th>
	                                                <td>Accountant</td>
	                                                <td>Tokyo</td>
	                                                <td>33</td>
	                                                <td>2008/11/28</td>
	                                                <td>$162,700</td>
                                            	</tr>
	                                        	<tr class="odd" role="row">
	                                                <th bgcolor="#333258" style="color: white">27</th>
	                                                <td>Accountant</td>
	                                                <td>Tokyo</td>
	                                                <td>33</td>
	                                                <td>2008/11/28</td>
	                                                <td>$162,700</td>
                                            	</tr>
	                                        	<tr class="odd" role="row">
	                                                <th bgcolor="#333258" style="color: white">26</th>
	                                                <td>Accountant</td>
	                                                <td>Tokyo</td>
	                                                <td>33</td>
	                                                <td>2008/11/28</td>
	                                                <td>$162,700</td>
                                            	</tr>
	                                        	<tr class="odd" role="row">
	                                                <th bgcolor="#333258" style="color: white">25</th>
	                                                <td>Accountant</td>
	                                                <td>Tokyo</td>
	                                                <td>33</td>
	                                                <td>2008/11/28</td>
	                                                <td>$162,700</td>
                                            	</tr>
	                                        	<tr class="odd" role="row">
	                                                <th bgcolor="#333258" style="color: white">24</th>
	                                                <td>Accountant</td>
	                                                <td>Tokyo</td>
	                                                <td>33</td>
	                                                <td>2008/11/28</td>
	                                                <td>$162,700</td>
                                            	</tr>
	                                        	<tr class="odd" role="row">
	                                                <th bgcolor="#333258" style="color: white">22</th>
	                                                <td>Accountant</td>
	                                                <td>Tokyo</td>
	                                                <td>33</td>
	                                                <td>2008/11/28</td>
	                                                <td>$162,700</td>
                                            	</tr>
	                                        	<tr class="odd" role="row">
	                                                <th bgcolor="#333258" style="color: white">21</th>
	                                                <td>Accountant</td>
	                                                <td>Tokyo</td>
	                                                <td>33</td>
	                                                <td>2008/11/28</td>
	                                                <td>$162,700</td>
                                            	</tr>
	                                        	<tr class="odd" role="row">
	                                                <th bgcolor="#333258" style="color: white">20</th>
	                                                <td>Accountant</td>
	                                                <td>Tokyo</td>
	                                                <td>33</td>
	                                                <td>2008/11/28</td>
	                                                <td>$162,700</td>
                                            	</tr>
	                                        	<tr class="odd" role="row">
	                                                <th bgcolor="#333258" style="color: white">19</th>
	                                                <td>Accountant</td>
	                                                <td>Tokyo</td>
	                                                <td>33</td>
	                                                <td>2008/11/28</td>
	                                                <td>$162,700</td>
                                            	</tr>
                                            </tbody>
	                                        <tfoot>
	                                            <tr>
		                                            <th rowspan="1" colspan="1">순번</th>
		                                            <th rowspan="1" colspan="1">날짜</th>
		                                            <th rowspan="1" colspan="1">기본진료</th>
		                                            <th rowspan="1" colspan="1">마취</th>
		                                            <th rowspan="1" colspan="1">급여처치</th>
		                                            <th rowspan="1" colspan="1">Salary</th>
	                                            </tr>
	                                        </tfoot>
                                  	 	</table></div>
                                   <div class="dataTables_info" id="example_info" role="status" aria-live="polite">Showing 1 to 10 of 57 entries</div>
                 				 </section>
                               </div>
                           </div>
                       </div>
                       <%@ include file="/WEB-INF/views/include/pagination.jsp" %>
             		  </div>
					</div>
					
				</div>
                   <div class="col-xl-6 col-lg-6">
                       <div class="card">
                           <div class="card-header">
                               <h4 class="card-title">종합 재무통계 표</h4>
                           </div>
                           <div class="row justify-content-between pr-4 pt-3 pl-4">
							<div class="col-3 pl-4">
								<select class="form-control " name="perPageNum" id="perPageNum" onchange="list_go(1);">					  		  		
							 		<option value="5" ${cri.perPageNum eq 5 ? 'selected' : '' } >5개씩</option>
							 		<option value="10" ${cri.perPageNum eq 10 ? 'selected' : '' }>10개씩</option>
							 		<option value="20" ${cri.perPageNum eq 20 ? 'selected' : '' }>20개씩</option>
							 		<option value="30" ${cri.perPageNum eq 30 ? 'selected' : '' }>30개씩</option>
							 	</select>
							</div>
							<div class="col-9 pr-2">
								<div class="row justify-content-end">
									<div class="col-5 p-0">
										<input  class="form-control" type="text" name="keyword" placeholder="검색어를 입력하세요." value="${param.keyword }"/>
									</div>
									<div class="col-3 p-0">
										<span class="input-group-append">
											<button class="btn btn-primary" type="button">검색</button>
										</span>
									</div>
								</div>
							</div>
						</div>
                           <div class="card-body">
                               <div class="table-responsive">
                                   <div id="example_wrapper" class="dataTables_wrapper">
						       		<div class="row justify-content-center" >
						               <section class="content" style="height: 60vh; width: 95%;" >
                                			<table id="table10" class="table table-bordered border-white display min-w850" role="grid" 
                                					style="margin: auto; text-align: center; height: 18vh; overflow-y:scroll;" >
	                                        <thead>
	                                            <tr role="row" bgcolor="#333258" style="color: white">
	                                            	<th class="sorting_asc" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 10px;">순번</th>
	                                            	<th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending" style="width: 10px;">날짜</th>
	                                            	<th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Office: activate to sort column ascending" style="width: 10px;">기본진료</th>
	                                            	<th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Age: activate to sort column ascending" style="width: 10px;">마취</th>
	                                            	<th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Start date: activate to sort column ascending" style="width: 10px;">급여처치</th>
	                                            	<th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Salary: activate to sort column ascending" style="width: 10px;">Salary</th></tr>
	                                        </thead>
	                                        <tbody>
	                                        	<tr class="odd" role="row">
	                                                <th bgcolor="#333258" style="color: white">31</th>
	                                                <td>Accountant</td>
	                                                <td>Tokyo</td>
	                                                <td>33</td>
	                                                <td>2008/11/28</td>
	                                                <td>$162,700</td>
                                            	</tr>
	                                        	<tr class="odd" role="row">
	                                                <th bgcolor="#333258" style="color: white">30</th>
	                                                <td>Accountant</td>
	                                                <td>Tokyo</td>
	                                                <td>33</td>
	                                                <td>2008/11/28</td>
	                                                <td>$162,700</td>
                                            	</tr>
	                                        	<tr class="odd" role="row">
	                                                <th bgcolor="#333258" style="color: white">29</th>
	                                                <td>Accountant</td>
	                                                <td>Tokyo</td>
	                                                <td>33</td>
	                                                <td>2008/11/28</td>
	                                                <td>$162,700</td>
                                            	</tr>
	                                        	<tr class="odd" role="row">
	                                                <th bgcolor="#333258" style="color: white">28</th>
	                                                <td>Accountant</td>
	                                                <td>Tokyo</td>
	                                                <td>33</td>
	                                                <td>2008/11/28</td>
	                                                <td>$162,700</td>
                                            	</tr>
	                                        	<tr class="odd" role="row">
	                                                <th bgcolor="#333258" style="color: white">27</th>
	                                                <td>Accountant</td>
	                                                <td>Tokyo</td>
	                                                <td>33</td>
	                                                <td>2008/11/28</td>
	                                                <td>$162,700</td>
                                            	</tr>
	                                        	<tr class="odd" role="row">
	                                                <th bgcolor="#333258" style="color: white">26</th>
	                                                <td>Accountant</td>
	                                                <td>Tokyo</td>
	                                                <td>33</td>
	                                                <td>2008/11/28</td>
	                                                <td>$162,700</td>
                                            	</tr>
	                                        	<tr class="odd" role="row">
	                                                <th bgcolor="#333258" style="color: white">25</th>
	                                                <td>Accountant</td>
	                                                <td>Tokyo</td>
	                                                <td>33</td>
	                                                <td>2008/11/28</td>
	                                                <td>$162,700</td>
                                            	</tr>
	                                        	<tr class="odd" role="row">
	                                                <th bgcolor="#333258" style="color: white">24</th>
	                                                <td>Accountant</td>
	                                                <td>Tokyo</td>
	                                                <td>33</td>
	                                                <td>2008/11/28</td>
	                                                <td>$162,700</td>
                                            	</tr>
	                                        	<tr class="odd" role="row">
	                                                <th bgcolor="#333258" style="color: white">22</th>
	                                                <td>Accountant</td>
	                                                <td>Tokyo</td>
	                                                <td>33</td>
	                                                <td>2008/11/28</td>
	                                                <td>$162,700</td>
                                            	</tr>
	                                        	<tr class="odd" role="row">
	                                                <th bgcolor="#333258" style="color: white">21</th>
	                                                <td>Accountant</td>
	                                                <td>Tokyo</td>
	                                                <td>33</td>
	                                                <td>2008/11/28</td>
	                                                <td>$162,700</td>
                                            	</tr>
	                                        	<tr class="odd" role="row">
	                                                <th bgcolor="#333258" style="color: white">20</th>
	                                                <td>Accountant</td>
	                                                <td>Tokyo</td>
	                                                <td>33</td>
	                                                <td>2008/11/28</td>
	                                                <td>$162,700</td>
                                            	</tr>
	                                        	<tr class="odd" role="row">
	                                                <th bgcolor="#333258" style="color: white">19</th>
	                                                <td>Accountant</td>
	                                                <td>Tokyo</td>
	                                                <td>33</td>
	                                                <td>2008/11/28</td>
	                                                <td>$162,700</td>
                                            	</tr>
                                            </tbody>
	                                        <tfoot>
	                                            <tr>
		                                            <th rowspan="1" colspan="1">순번</th>
		                                            <th rowspan="1" colspan="1">날짜</th>
		                                            <th rowspan="1" colspan="1">기본진료</th>
		                                            <th rowspan="1" colspan="1">마취</th>
		                                            <th rowspan="1" colspan="1">급여처치</th>
		                                            <th rowspan="1" colspan="1">Salary</th>
	                                            </tr>
	                                        </tfoot>
                                  	 	</table>
                                   <div class="dataTables_info" id="example_info" role="status" aria-live="polite">Showing 1 to 10 of 57 entries</div>
                 				 </section>
                               </div>
                           </div>
                       </div>
                       <%@ include file="/WEB-INF/views/include/pagination.jsp" %>
             		  </div>
					</div>
				</div>
			
                   
			</div>
		</div>
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  
  
  
  
  
  
<%-- <div class="row">  
	<div class="col-6 bg-white">
	  <canvas id="myChart"></canvas>
	</div>
</div>   --%>

<script>
$( cbcal = function () {
	  $("#calldatePicker, #calldatePicker2").datepicker({ 
		  	format: 'yyyy-mm-dd',
	        autoclose: true, 
	        todayHighlight: true,
	      
	  }).on('changeDate', function (e) {
		  
		  window.myChart2.destroy();
		  window.myChart.destroy();
		  strDate = moment(document.getElementById('calldatePicker').value).format("YYYYMMDD");
		   endDate = moment(document.getElementById('calldatePicker2').value).format("YYYYMMDD");
		   curelist(strDate,endDate)
		   curelist2(strDate,endDate)
	    })
	    $("#calldatePicker2").datepicker('update', new Date());
	    $("#calldatePicker").datepicker('update', new Date(new Date().setDate(new Date().getDate() - 7)));
	  strDate = moment(document.getElementById('calldatePicker').value).format("YYYYMMDD");
	   endDate = moment(document.getElementById('calldatePicker2').value).format("YYYYMMDD");
		curelist(strDate,endDate)
		curelist2(strDate,endDate)
});

function search(c){
	window.myChart2.destroy();
	  window.myChart.destroy();
	curelist(strDate,endDate,c)
	curelist2(strDate,endDate,c)
} 

</script>

<script>

function curelist(c,d,e){  
	$.ajax({
		url:"<%=request.getContextPath()%>/manage/patStats",
		type:"post",
		data: {
			   strDate: c,
			   endDate: d,
		 	   searchType: e
		
		}, 
		dataType:"json",
		success: ajaxHtmlCure,
		error:function(){alert("관리자에게 문의해주시요");
		console.log(data)}
	});
var arr3 = ["전체", "방문자", "예약자"];
result2 = arr3[e]
}

function ajaxHtmlCure(data){
 	var arr = [];
 	var arr2 = [];
 $.each(data, (index, obj)=>{
	 arr.push(obj.VITDATE)
	 arr2.push(obj.CNT)
				  
	})
				console.log(arr)
 	 var labels = arr;
				 if (result2==undefined) {
						result2 ="전체"
					}
				  var data = {
				    labels: labels,
				    datasets: [
					   	{
					      label: result2,
					      backgroundColor: 'rgb(255, 99, 132)',
					      borderColor: 'rgb(255, 99, 132)',
					      data: arr2,
					    }
		
				    
				    
				    ]
				  };
				var config = {
					type: 'bar',
					data: data,
					options: {
				    	plugins: {
				        	title: {
				            	display: true,
				                text: 'Custom Chart Title',
				                padding: {
				                	top: 10,
				                	bottom: 30,
				                }
				            }
				        },
				        scales: {
				        	x: {
				        		title: {
				        			display: true,
				        			text: 'date'
				        		}
				        	},
				        	y: {
				        		title: {
				        			display: true,
				        			text: 'value'
				        		}
				        	}
				        }
				    }
				};
				  
				  window.myChart = new Chart(
			
				    document.getElementById('myChart'),
				    config
				  );
			
	}



</script>

  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  
  
<!--  <script>
				  var labels = [
				    '2018년 11월',
				    '2018년 12월',
				    '2019년 1월',
				    '2019년 2월',
				    '2019년 3월',
				    '2019년 4월',
				    '2019년 5월'
				  ];
				
				  var data = {
				    labels: labels,
				    datasets: [
					   	{
					      label: 'My First dataset',
					      backgroundColor: 'rgb(255, 99, 132)',
					      borderColor: 'rgb(255, 99, 132)',
					      data: [0, 10, 5, 2, 20, 30, 45],
					    },
					   	{
					      label: 'My second dataset',
					      backgroundColor: 'rgb(155, 99, 132)',
					      borderColor: 'rgb(155, 99, 132)',
					      data: [10, 30, 15, 12, 20, 13, 41],
					    },
					   	{
					      label: 'My third dataset',
					      backgroundColor: 'rgb(55, 99, 132)',
					      borderColor: 'rgb(55, 99, 132)',
					      data: [20, 40, 25, 32, 40, 33, 21],
					    }
				    
				    
				    ]
				  };
				
				var config = {
					type: 'line',
					data: data,
					options: {
				    	plugins: {
				        	title: {
				            	display: true,
				                text: 'Custom Chart Title',
				                padding: {
				                	top: 10,
				                	bottom: 30,
				                }
				            }
				        },
				        scales: {
				        	x: {
				        		title: {
				        			display: true,
				        			text: 'date'
				        		}
				        	},
				        	y: {
				        		title: {
				        			display: true,
				        			text: 'value'
				        		}
				        	}
				        }
				    }
				};
				  
				  var myChart = new Chart(
				    document.getElementById('myChart'),
				    config
				  );
</script> -->

<script>

function curelist2(c,d,e){  
	$.ajax({
		url:"<%=request.getContextPath()%>/manage/patStatsmon",
		type:"post",
		data: {
			   strDate: c,
			   endDate: d,
		 	   searchType: e
		
		}, 
		dataType:"json",
		success: ajaxHtmlCure2,
		error:function(){alert("관리자에게 문의해주시요");
		console.log(data)}
	});
	var arr3 = ["전체", "방문자", "예약자"];
	result = arr3[e]
}

function ajaxHtmlCure2(data){
 	var arr = [];
 	var arr2 = [];
 $.each(data, (index, obj)=>{
	 arr.push(obj.VITDATE)
	 arr2.push(obj.CNT)
				  
	})
				console.log(arr)
 	 var labels = arr;
				if (result==undefined) {
					result="전체"
				}
				  var data = {
				    labels: labels,
				    datasets: [
					   	{
					      label: result,
					      backgroundColor: 'rgb(132, 99, 132)',
					      borderColor: 'rgb(132, 99, 132)',
					      data: arr2,
					    }
		
				    
				    
				    ]
				  };
				var config = {
					type: 'bar',
					data: data,
					options: {
				    	plugins: {
				        	title: {
				            	display: true,
				                text: 'Custom Chart Title',
				                padding: {
				                	top: 10,
				                	bottom: 30,
				                }
				            }
				        },
				        scales: {
				        	x: {
				        		title: {
				        			display: true,
				        			text: 'date'
				        		}
				        	},
				        	y: {
				        		title: {
				        			display: true,
				        			text: 'value'
				        		}
				        	}
				        }
				    }
				};
				  
				window.myChart2 = new Chart(
						    document.getElementById('myChart2'),
						    config
						  );
			
	}



</script>
 <!-- <script>
				 var labels = [
					    '2018년 11월',
					    '2018년 12월',
					    '2019년 1월',
					    '2019년 2월',
					    '2019년 3월',
					    '2019년 4월',
					    '2019년 5월'
					  ];
 
 				var DATA_COUNT = 7;
				 var NUMBER_CFG = {count: DATA_COUNT, min: -100, max: 100};
				
				 var data = {
				   labels: labels,
				   datasets: [
				     {
				       label: 'Dataset 1',
				       data: [1,2,3,4,5,6,7],
				       borderColor: 'rgb(155, 99, 132)',
				       backgroundColor: 'rgb(155, 99, 132)',
				       type:'bar',
				       order: 1
				     },
				     {
				       label: 'Dataset 2',
				       data: [3,4,5,6,7,8,9],
				       borderColor: 'rgb(55, 9, 32)',
				       backgroundColor: 'rgb(55, 9, 32)',
				       type: 'line',
				       order: 0
				     },
				     {
				       label: 'Dataset 3',
				       data: [3,4,5,6,7,8,9],
				       borderColor: 'rgb(255, 29, 232)',
				       backgroundColor: 'rgb(255, 29, 232)',
				       type: 'bar',
				       order: 0
				     }
				   ]
				 };
						 
						 
				  var config = {
						  type: 'bar',
						  data: data,
						  options: {
						    responsive: true,
						    plugins: {
						      legend: {
						        position: 'top',
						      },
						      title: {
						        display: true,
						        text: 'Chart.js Combined Line/Bar Chart'
						      }
						    }
						  },
						};
				  
				  var myChart2 = new Chart(
				    document.getElementById('myChart2'),
				    config
				  );
</script> -->
				  
				  
<script>
	window.onload = function(){ subMenu_go('M080000')
		preloaderCustom.style.display = "none";
	}
</script>		  
<%@ include file="/WEB-INF/views/common/preloader_js.jsp"%>
<%@ include file="../../common/index_js.jsp"%>




