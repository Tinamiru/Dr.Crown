<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/fullcalendar-scheduler@5.11.0/main.css"/>


    
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/fullcalendar-scheduler@5.11.0/main.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  

<style>
	.selected{font-weight:700;color:blue}
</style>

  
  
<div class="container-fluid">
 	<div class="row justify-content-center">
	  	<div class="row col-7 justify-content-center table table-bordered border-primary border-2 rounded" style="margin:10px; background-color:#333258;">
		  	<div class="row col-12 justify-content-center table table-bordered border-primary border-2 rounded" style="margin:10px; background-color:white; margin:15px 0 0 0;">
		  		<table class="text-center" style="width:90%; height: 30vh;">
		  			<tr>
		  				<th colspan="3" class="vertical-center" style="height:25px;">식당 알림</th>
		  			</tr>
		  			<tr>
		  				<th style="height:15px; vertical-align:center;"><div>이달의 식단</div></th>
		  				<th style="width:200px;"><div>식중독지수</div></th>
		  			</tr>
		  			<tr>
		  				<td style="height:100px;">
			  				<p style="font-size:15px;">
			  					벌써 8월입니다. 무더위가 찾와서 입맛과 기력이 떨어질 수 있어, 
			  					다음과 같이 단백질이 풍부한 식품과 과일 그리고 채소를 위주로
			  					식단을 편성하였습니다. 이번달도 건강하게 보내세요!
			  				</p>
		  				</td>
		  				<td>
			  				<div class="row justify-content-center">
			  					<div class="col row justify-content-end"><h3>관심</h3>&nbsp;&nbsp;&nbsp;</div>
			  					<div class="col row justify-content-start"><h3>(0_0)</h3></div>
			  				</div>
		  				</td>
		  			</tr>
		  		</table>
	 		</div>
		  	<div class="row col-12 justify-content-center table table-bordered border-primary border-2 rounded" style="margin:10px; background-color:white; margin: 15px 0 15px 0;">
		  		<table class="text-center" style="width:90%; height: 30vh;">
		  			<tr>
		  				<th colspan="5"> 주간 식당 식단 </th>
		  			</tr>
		  			<tr style="font-size:12px;">
		  				<th style="height:35px; vertical-align:center;"><div>월</div><div>8/1</div></th>
		  				<th><div>화</div><div>8/2</div></th>
		  				<th><div>수</div><div>8/3</div></th>
		  				<th><div>목</div><div>8/4</div></th>
		  				<th><div>금</div><div>8/5</div></th>
		  			</tr>
		  			<tr>
		  				<td style="height:180px;">
		  					<p style="font-size:12px;">
		  						*김치찌개
		  						<br>무말랭이
		  						<br>김치
		  						<br>양반김
		  						<br>소시지
		  						<br>현미밥
		  					</p>
		  				</td>
		  				<td>
		  					<p style="font-size:12px;">
		  						*두루치기
		  						<br>무말랭이
		  						<br>김치
		  						<br>양반김
		  						<br>소시지
		  						<br>현미밥
		  					</p>
		  				</td>
		  				<td>
		  					<p style="font-size:12px;">
		  						*두루치기
		  						<br>무말랭이
		  						<br>김치
		  						<br>양반김
		  						<br>소시지
		  						<br>현미밥
		  					</p>
		  				</td>
		  				<td>
		  					<p style="font-size:12px;">
		  						*두루치기
		  						<br>무말랭이
		  						<br>김치
		  						<br>양반김
		  						<br>소시지
		  						<br>현미밥
		  					</p>
		  				</td>
		  				<td>
		  					<p style="font-size:12px;">
		  						*두루치기
		  						<br>무말랭이
		  						<br>김치
		  						<br>양반김
		  						<br>소시지
		  						<br>현미밥
		  					</p>
		  				</td>
		  			</tr>
		  		</table>
	 		</div>
 		</div>
	  	<div class="row col-4 justify-content-center border-primary rounded" style="margin:5px; background-color:#333258;">
		  	<div class="row col-12 justify-content-center align-self-center border-primary border-2 rounded" style="margin:5px; padding:0; background-color:white; height:95%;">
		  		<table class="text-center" style="width:90%; height: 90%;">
		  			<tr>
		  				<th colspan="5" class="pt-2 pb-3"> 메뉴선택 및 결제 </th>
		  			</tr>
		  			<tr  style="border-bottom:0.5px solid lightgray;">
		  				<td colspan="4" style="height:35px; width:20vh; vertical-align:center;">
	                            <div class="custom-tab-1">
	                                <ul class="nav nav-tabs justify-content-center">
	                                    <li class="nav-item">
	                                        <a class="nav-link" data-toggle="tab" href="#home1" style="font-size:14px;">한식</a>
	                                    </li>
	                                    <li class="nav-item">
	                                        <a class="nav-link" data-toggle="tab" href="#profile1" style="font-size:14px;">중식</a>
	                                    </li>
	                                    <li class="nav-item">
	                                        <a class="nav-link" data-toggle="tab" href="#contact1" style="font-size:14px;">분식</a>
	                                    </li>
	                                    <li class="nav-item">
	                                        <a class="nav-link active" data-toggle="tab" href="#message1" style="font-size:14px;">경양식/패스트푸드</a>
	                                    </li>
	                                </ul>
	                                <div class="tab-content">
	                                    <div class="tab-pane fade" id="home1" role="tabpanel">
	                                        <div class="pt-3">한식메뉴</div>
	                                        <div class="row pl-4 pt-4 justify-content-around">
	                                            <div class="row col-md-3 ">
													<div class="row custom-control custom-checkbox mb-3">
														<input type="checkbox" class="custom-control-input" name="foodCheckBox" id="foodCheckBox01" value="김치찌개">
														<label class="custom-control-label col-form-label-sm" for="foodCheckBox1">김치찌개</label><br><label style="font-size:12px;">4500원</label>               
													</div>
												</div>
	                                            <div class="row col-md-3 ">
													<div class="row custom-control custom-checkbox mb-3">
														<input type="checkbox" class="custom-control-input" name="foodCheckBox" id="foodCheckBox02" >
														<label class="custom-control-label col-form-label-sm" for="foodCheckBox2">된장찌개</label><br><label style="font-size:12px;">4500원</label> 
													</div>
												</div>
	                                            <div class="row col-md-3 ">
													<div class="row custom-control custom-checkbox mb-3">
														<input type="checkbox" class="custom-control-input" name="foodCheckBox" id="foodCheckBox03" >
														<label class="custom-control-label col-form-label-sm" for="foodCheckBox3">고등어정식</label><br><label style="font-size:12px;">6500원</label> 
													</div>
												</div>
	                                            <div class="row col-md-3 ">
													<div class="row custom-control custom-checkbox mb-3">
														<input type="checkbox" class="custom-control-input" name="foodCheckBox" id="foodCheckBox04" >
														<label class="custom-control-label col-form-label-sm" for="foodCheckBox4">보쌈</label><br><label style="font-size:12px;">7500원</label> 
													</div>
												</div>
	                                        </div>
	                                    </div>
	                                    <div class="tab-pane fade" id="profile1">
	                                        <div class="pt-3">중식메뉴</div>
	                                        <div class="row pl-4 pt-4 justify-content-around">
	                                            <div class="row col-md-3 ">
													<div class="row custom-control custom-checkbox mb-3">
														<input type="checkbox" class="custom-control-input" name="foodCheckBox" id="foodCheckBox05" >
														<label class="custom-control-label col-form-label-sm" for="foodCheckBox5">짜장면</label><br><label style="font-size:12px;">5,000원</label> 
													</div>
												</div>
	                                            <div class="row col-md-3 ">
													<div class="row custom-control custom-checkbox mb-3">
														<input type="checkbox" class="custom-control-input" name="foodCheckBox" id="foodCheckBox06" >
														<label class="custom-control-label col-form-label-sm" for="foodCheckBox6">짬뽕</label><br><label style="font-size:12px;">6,000원</label> 
													</div>
												</div>
	                                            <div class="row col-md-3 ">
													<div class="row custom-control custom-checkbox mb-3">
														<input type="checkbox" class="custom-control-input" name="foodCheckBox" id="foodCheckBox07" >
														<label class="custom-control-label col-form-label-sm" for="foodCheckBox7">볶음밥</label><br><label style="font-size:12px;">5,500원</label> 
													</div>
												</div>
	                                            <div class="row col-md-3 ">
													<div class="row custom-control custom-checkbox mb-3">
														<input type="checkbox" class="custom-control-input" name="foodCheckBox" id="foodCheckBox08" >
														<label class="custom-control-label col-form-label-sm" for="foodCheckBox8">탕수육</label><br><label style="font-size:12px;">14,500원</label> 
													</div>
												</div>
	                                        </div>
	                                    </div>
	                                    <div class="tab-pane fade" id="contact1">
	                                        <div class="pt-3">분식메뉴</div>
	                                        <div class="row pl-3  pt-4 justify-content-around">
	                                            <div class="row col-md-3 ">
													<div class="row custom-control custom-checkbox mb-3">
														<input type="checkbox" class="custom-control-input" name="foodCheckBox" id="foodCheckBox09">
														<label class="custom-control-label col-form-label-sm" for="foodCheckBox9">라면</label><br><label style="font-size:12px;">3,500원</label> 
													</div>
												</div>
	                                            <div class="row col-md-3 ">
													<div class="row custom-control custom-checkbox mb-3">
														<input type="checkbox" class="custom-control-input" name="foodCheckBox" id="foodCheckBox10" >
														<label class="custom-control-label col-form-label-sm" for="foodCheckBox10">김밥</label><br><label style="font-size:12px;">2,000원</label> 
													</div>
												</div>
	                                            <div class="row col-md-3 ">
													<div class="row custom-control custom-checkbox mb-3">
														<input type="checkbox" class="custom-control-input" name="foodCheckBox" id="foodCheckBox11" >
														<label class="custom-control-label col-form-label-sm" for="foodCheckBox11">만두</label><br><label style="font-size:12px;">3,000원</label> 
													</div>
												</div>
	                                            <div class="row col-md-3 ">
													<div class="row custom-control custom-checkbox mb-3">
														<input type="checkbox" class="custom-control-input" name="foodCheckBox" id="foodCheckBox12" >
														<label class="custom-control-label col-form-label-sm" for="foodCheckBox12">순대</label><br><label style="font-size:12px;">4,500원</label> 
													</div>
												</div>
	                                        </div>
	                                    </div>
	                                    <div class="tab-pane fade active show" id="message1">
	                                        <div class="pt-3">경양식/패스트푸드 메뉴</div>
	                                        <div class="row pt-4 justify-content-around">
	                                            <div class="row col-md-3 ">
													<div class="row custom-control custom-checkbox mb-3">
														<input type="checkbox" class="custom-control-input" name="foodCheckBox" id="foodCheckBox13" >
														<label class="custom-control-label col-form-label-sm" for="foodCheckBox13">패스트푸드</label><br><label style="font-size:12px;">4,500원</label> 
													</div>
												</div>
	                                            <div class="row col-md-3 ">
													<div class="row custom-control custom-checkbox mb-3 ">
														<input type="checkbox" class="custom-control-input" name="foodCheckBox" id="foodCheckBox14" >
														<label class="custom-control-label col-form-label-sm" for="foodCheckBox14">돈까스</label><br><label style="font-size:12px;">6,500원</label> 
													</div>
												</div>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
	  					</td>
		  			</tr>
		  			<tr>
		  				<td style="width:20%; height:25vh;"><div style="width:100%;">선택된<br>메뉴</div></td>
		  				<td>
		  					<div class="pt-2 pb-2" style="width:100%; height:25vh; overflow-y:scroll; overflow-x:hidden;">
			  					<div class="row justify-content-center p-2" id="menu001" style="display:none; font-size:12px;">
			  						<div class="row col-4 align-self-center">김치찌개</div>
			  						<div class="row col-4 align-self-center">4,500원</div>
			  						<div class="row col-3 align-self-center">1개</div>
			  						<button id="menu014add" value="4500" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray; margin-right:5px; border-radius:5px; color:white;"> + </button>
			  						<button id="menu014sub" value="4500" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px; color:white;"> - </button>
			  						<button id="menu014del" style="font-size:20px;  width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px;"> x </button>
			  					</div>
			  					<div class="row justify-content-center p-2" id="menu002" style="display:none; font-size:12px;">
			  						<div class="row col-4 align-self-center">된장찌개</div>
			  						<div class="row col-4 align-self-center">4,500원</div>
			  						<div class="row col-3 align-self-center">1개</div>
			  						<button id="menu014add" value="4500" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray; margin-right:5px; border-radius:5px; color:white;"> + </button>
			  						<button id="menu014sub" value="4500" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px; color:white;"> - </button>
			  						<button id="menu014del" style="font-size:20px;  width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px;"> x </button>
			  					</div>
			  					<div class="row justify-content-center p-2" id="menu003" style="display:none; font-size:12px;">
			  						<div class="row col-4 align-self-center">고등어정식</div>
			  						<div class="row col-4 align-self-center">6,500원</div>
			  						<div class="row col-3 align-self-center">1개</div>
			  						<button id="menu014add" value="6500" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray; margin-right:5px; border-radius:5px; color:white;"> + </button>
			  						<button id="menu014sub" value="6500" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px; color:white;"> - </button>
			  						<button id="menu014del" style="font-size:20px;  width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px;"> x </button>
			  					</div>
			  					<div class="row justify-content-center p-2" id="menu004" style="display:none; font-size:12px;">
			  						<div class="row col-4 align-self-center">보쌈</div>
			  						<div class="row col-4 align-self-center">7,500원</div>
			  						<div class="row col-3 align-self-center">1개</div>
			  						<button id="menu014add" value="7500" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray; margin-right:5px; border-radius:5px; color:white;"> + </button>
			  						<button id="menu014sub" value="7500" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px; color:white;"> - </button>
			  						<button id="menu014del" style="font-size:20px;  width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px;"> x </button>
			  					</div>
			  					<div class="row justify-content-center p-2" id="menu005" style="display:none; font-size:12px;">
			  						<div class="row col-4 align-self-center">짜장면</div>
			  						<div class="row col-4 align-self-center">5,000원</div>
			  						<div class="row col-3 align-self-center">1개</div>
			  						<button id="menu014add" value="5000" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray; margin-right:5px; border-radius:5px; color:white;"> + </button>
			  						<button id="menu014sub" value="5000" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px; color:white;"> - </button>
			  						<button id="menu014del" style="font-size:20px;  width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px;"> x </button>
			  					</div>
			  					<div class="row justify-content-center p-2" id="menu006" style="display:none; font-size:12px;">
			  						<div class="row col-4 align-self-center">짬뽕</div>
			  						<div class="row col-4 align-self-center">6,000원</div>
			  						<div class="row col-3 align-self-center">1개</div>
			  						<button id="menu014add" value="6000" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray; margin-right:5px; border-radius:5px; color:white;"> + </button>
			  						<button id="menu014sub" value="6000" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px; color:white;"> - </button>
			  						<button id="menu014del" style="font-size:20px;  width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px;"> x </button>
			  					</div>
			  					<div class="row justify-content-center p-2" id="menu007" style="display:none; font-size:12px;">
			  						<div class="row col-4 align-self-center">볶음밥</div>
			  						<div class="row col-4 align-self-center">5,500원</div>
			  						<div class="row col-3 align-self-center">1개</div>
			  						<button id="menu014add" value="5500" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray; margin-right:5px; border-radius:5px; color:white;"> + </button>
			  						<button id="menu014sub" value="5500" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px; color:white;"> - </button>
			  						<button id="menu014del" style="font-size:20px;  width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px;"> x </button>
			  					</div>
			  					<div class="row justify-content-center p-2" id="menu008" style="display:none; font-size:12px;">
			  						<div class="row col-4 align-self-center">탕수육</div>
			  						<div class="row col-4 align-self-center">14,500원</div>
			  						<div class="row col-3 align-self-center">1개</div>
			  						<button id="menu014add" value="14500" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray; margin-right:5px; border-radius:5px; color:white;"> + </button>
			  						<button id="menu014sub" value="14500" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px; color:white;"> - </button>
			  						<button id="menu014del" style="font-size:20px;  width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px;"> x </button>
			  					</div>
			  					<div class="row justify-content-center p-2" id="menu009" style="display:none; font-size:12px;">
			  						<div class="row col-4 align-self-center">라면</div>
			  						<div class="row col-4 align-self-center">3,500원</div>
			  						<div class="row col-3 align-self-center">1개</div>
			  						<button id="menu014add" value="3500" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray; margin-right:5px; border-radius:5px; color:white;"> + </button>
			  						<button id="menu014sub" value="3500" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px; color:white;"> - </button>
			  						<button id="menu014del" style="font-size:20px;  width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px;"> x </button>
			  					</div>
			  					<div class="row justify-content-center p-2" id="menu010" style="display:none; font-size:12px;">
			  						<div class="row col-4 align-self-center">김밥</div>
			  						<div class="row col-4 align-self-center">2,000원</div>
			  						<div class="row col-3 align-self-center">1개</div>
			  						<button id="menu014add" value="2000" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray; margin-right:5px; border-radius:5px; color:white;"> + </button>
			  						<button id="menu014sub" value="2000" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px; color:white;"> - </button>
			  						<button id="menu014del" style="font-size:20px;  width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px;"> x </button>
			  					</div>
			  					<div class="row justify-content-center p-2" id="menu011" style="display:none; font-size:12px;">
			  						<div class="row col-4 align-self-center">만두</div>
			  						<div class="row col-4 align-self-center">3,000원</div>
			  						<div class="row col-3 align-self-center">1개</div>
			  						<button id="menu014add" value="3000" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray; margin-right:5px; border-radius:5px; color:white;"> + </button>
			  						<button id="menu014sub" value="3000" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px; color:white;"> - </button>
			  						<button id="menu014del" style="font-size:20px;  width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px;"> x </button>
			  					</div>
			  					<div class="row justify-content-center p-2" id="menu012" style="display:none; font-size:12px;">
			  						<div class="row col-4 align-self-center">순대</div>
			  						<div class="row col-4 align-self-center">4,500원</div>
			  						<div class="row col-3 align-self-center">1개</div>
			  						<button id="menu014add" value="4500" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray; margin-right:5px; border-radius:5px; color:white;"> + </button>
			  						<button id="menu014sub" value="4500" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px; color:white;"> - </button>
			  						<button id="menu014del" style="font-size:20px;  width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px;"> x </button>
			  					</div>
			  					<div class="row justify-content-center p-2" id="menu013" style="display:none; font-size:12px;">
			  						<div class="row col-4 align-self-center">패스트푸드</div>
			  						<div class="row number col-4 align-self-center"><span id="price13UpDown">4500</span>원</div>
			  						<div class="row number col-3 align-self-center"><span id="quantity13UpDown" >1</span>개</div>
			  						<button onclick="addOrDiscount('plus13')" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray; margin-right:5px; border-radius:5px; color:white;"> + </button>
			  						<button onclick="addOrDiscount('minus13')" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px; color:white;"> - </button>
			  						<button name="menuDel" id="menu013del" style="font-size:20px;  width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px;"> x </button>
			  					</div>
			  					<div class="row justify-content-center p-2" id="menu014" style="display:none; font-size:12px;">
			  						<div class="row col-4 align-self-center">돈까스</div>
			  						<div class="row number col-4 align-self-center"><span id="price14UpDown">6500</span>원</div>
			  						<div class="row number col-3 align-self-center"><span id="quantity14UpDown" >1</span>개</div>
			  						<button onclick="addOrDiscount('plus14')" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray; margin-right:5px; border-radius:5px; color:white;"> + </button>
			  						<button onclick="addOrDiscount('minus14')" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px; color:white;"> - </button>
			  						<button name="menuDel" id="menu14del" style="font-size:20px;  width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px;"> x </button>
			  					</div>
		  					</div>
		  				</td>
		  			</tr>
		  			<tr style="border-top:1px solid lightgray;">
		  				<td style="height:15vh; "><div class="align-self-center"><button  style="border-radius:5px; border-color:darkgray;">결제하기</button></div></td>
		  				<td><div class="align-self-center"><span id="resultPrice">0</span>원</div></td>
		  			</tr>
		  		</table>
		  	</div>
	  	</div>
 	</div>
 	<div class="row justify-content-center">
	  	<div class="row col-7 justify-content-center table table-bordered border-primary border-2 rounded" style="margin:10px;">
	  		<table class="text-center" style="width:90%; height: 30vh;">
	  			<tr>
	  				<th colspan="10"> 월간 식단 </th>
	  			</tr>
	  			<tr>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div style="font-size:12px;">8/1</div><div style="font-size:12px;">김치찌개</div></td>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div style="font-size:12px;">8/2</div><div style="font-size:12px;">두루치기</div></td>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div style="font-size:12px;">8/3</div><div style="font-size:12px;">된장찌개</div></td>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div style="font-size:12px;">8/4</div><div style="font-size:12px;">김밥,떡볶이</div></td>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div style="font-size:12px;">8/5</div><div style="font-size:12px;">순대</div></td>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div style="font-size:12px;">8/6</div><div style="font-size:12px;">라면</div></td>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div style="font-size:12px;">8/7</div><div style="font-size:12px;">짜장면</div></td>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div style="font-size:12px;">8/8</div><div style="font-size:12px;">탕수육</div></td>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div style="font-size:12px;">8/9</div><div style="font-size:12px;">된장찌개</div></td>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div style="font-size:12px;">8/10</div><div style="font-size:12px;">짬뽕</div></td>
	  			</tr>
	  			<tr>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div style="font-size:12px;">8/11</div><div style="font-size:12px;">볶음밥</div></td>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div style="font-size:12px;">8/12</div><div style="font-size:12px;">패스트푸드</div></td>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div style="font-size:12px;">8/13</div><div style="font-size:12px;">김치찌개</div></td>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div style="font-size:12px;">8/14</div><div style="font-size:12px;">두루치기</div></td>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div style="font-size:12px;">8/15</div><div style="font-size:12px;">쌈밥</div></td>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div style="font-size:12px;">8/16</div><div style="font-size:12px;">우렁된장밥</div></td>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div style="font-size:12px;">8/17</div><div style="font-size:12px;">짜장면</div></td>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div style="font-size:12px;">8/18</div><div style="font-size:12px;">라면</div></td>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div style="font-size:12px;">8/19</div><div style="font-size:12px;">떡국</div></td>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div style="font-size:12px;">8/20</div><div style="font-size:12px;">순대</div></td>
	  			</tr>
	  			<tr>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div style="font-size:12px;">8/21</div><div style="font-size:12px;">김밥,떡볶이</div></td>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div style="font-size:12px;">8/22</div><div style="font-size:12px;">짬뽕</div></td>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div style="font-size:12px;">8/23</div><div style="font-size:12px;">라면</div></td>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div style="font-size:12px;">8/24</div><div style="font-size:12px;">탕수육</div></td>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div style="font-size:12px;">8/25</div><div style="font-size:12px;">된장찌개</div></td>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div style="font-size:12px;">8/26</div><div style="font-size:12px;">김치찌개</div></td>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div style="font-size:12px;">8/27</div><div style="font-size:12px;">김치찌개</div></td>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div style="font-size:12px;">8/28</div><div style="font-size:12px;">김치찌개</div></td>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div style="font-size:12px;">8/29</div><div style="font-size:12px;">김치찌개</div></td>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div style="font-size:12px;">8/30</div><div style="font-size:12px;">김치찌개</div></td>
	  			</tr>
	  		</table>
 		</div>
	  	<div class="row p-1 col-4 justify-content-center table table-bordered border-primary border-2 rounded" style="margin:10px;">
	  		<table class="text-center" style="width:90%; height: 30vh;">
	  			<tr>
	  				<th colspan="5"> AI 선정 오늘의 추천메뉴 </th>
	  			</tr>
	  			<tr>
	  				<td><span id="todayMenu">피자, 떡볶이, 탕수육</span></td>
	  			</tr>
	  		</table>
	  		<div><h4><span id="todayMenu"></span></h4></div>
	  	</div>
 	</div>
 
 
 
</div>
  


<script>
var data1 = {"id":"${loginUser.memId}"};

$.ajax({
   url: "http://192.168.141.24:5002/getMenu", 
   type: 'POST',
   data : JSON.stringify(data1),
   dataType: 'JSON',
   contentType: "application/json",
   success:function(menu){
      /* alert(data1); */
      document.getElementById('todayMenu').innerText = menu;
   }
});
</script>
  

<script>

$(document).ready(function() {
	$("input:checkbox").on('click', function() {
	      if ( $(this).prop('checked') ) {
	        $(this).parent().addClass("selected");
	      } else {
	        $(this).parent().removeClass("selected");
	      }
	});
});
</script>


<!-- 메뉴 선택 -->
<script>

$(function () {

	$("#customCheckBox1").click(function () {
        if ($(this).is(":checked")) {
            $("#menu001").show();
        } else {
            $("#menu001").hide();
        }
    });
	$("#customCheckBox2").click(function () {
        if ($(this).is(":checked")) {
            $("#menu002").show();
        } else {
            $("#menu002").hide();
        }
    });
	$("#customCheckBox3").click(function () {
        if ($(this).is(":checked")) {
            $("#menu003").show();
        } else {
            $("#menu003").hide();
        }
    });
	$("#customCheckBox4").click(function () {
        if ($(this).is(":checked")) {
            $("#menu004").show();
        } else {
            $("#menu004").hide();
        }
    });
	$("#customCheckBox5").click(function () {
        if ($(this).is(":checked")) {
            $("#menu005").show();
        } else {
            $("#menu005").hide();
        }
    });
	$("#customCheckBox6").click(function () {
        if ($(this).is(":checked")) {
            $("#menu006").show();
        } else {
            $("#menu006").hide();
        }
    });
	$("#customCheckBox7").click(function () {
        if ($(this).is(":checked")) {
            $("#menu007").show();
        } else {
            $("#menu007").hide();
        }
    });
	$("#customCheckBox8").click(function () {
        if ($(this).is(":checked")) {
            $("#menu008").show();
        } else {
            $("#menu008").hide();
        }
    });
	$("#customCheckBox9").click(function () {
        if ($(this).is(":checked")) {
            $("#menu009").show();
        } else {
            $("#menu009").hide();
        }
    });
	$("#customCheckBox10").click(function () {
        if ($(this).is(":checked")) {
            $("#menu010").show();
        } else {
            $("#menu010").hide();
        }
    });
	$("#customCheckBox11").click(function () {
        if ($(this).is(":checked")) {
            $("#menu011").show();
        } else {
            $("#menu011").hide();
        }
    });
	$("#customCheckBox12").click(function () {
        if ($(this).is(":checked")) {
            $("#menu012").show();
        } else {
            $("#menu012").hide();
        }
    });
    
});
	
	
		// 예시는 돈가스. 여러 메뉴가 같은 함수를 사용할 수 있게 변경이 필요함
		
		
	$("input[name=foodCheckBox]").change(function() {
	    	
		var foodCheckBox = $("input[name=foodCheckBox]").is(":checked");
			
		/* var foodCheckBox01 = $("#foodCheckBox01").is(":checked");
		var foodCheckBox02 = $("#foodCheckBox02").is(":checked");
		var foodCheckBox03 = $("#foodCheckBox03").is(":checked");
		var foodCheckBox04 = $("#foodCheckBox04").is(":checked");
		var foodCheckBox05 = $("#foodCheckBox05").is(":checked");
		var foodCheckBox06 = $("#foodCheckBox06").is(":checked");
		var foodCheckBox07 = $("#foodCheckBox07").is(":checked");
		var foodCheckBox08 = $("#foodCheckBox08").is(":checked");
		var foodCheckBox09 = $("#foodCheckBox09").is(":checked");
		var foodCheckBox10 = $("#foodCheckBox10").is(":checked");
		var foodCheckBox11 = $("#foodCheckBox11").is(":checked");
		var foodCheckBox12 = $("#foodCheckBox12").is(":checked");*/
		var foodCheckBox13 = $("#foodCheckBox13").is(":checked"); 
		var foodCheckBox14 = $("#foodCheckBox14").is(":checked");
	
		//console.log(foodCheckBox)
		//console.log(typeof foodCheckBox)
		
		
		switch (foodCheckBox == true || foodCheckBox == false) { 
		
			case ((foodCheckBox13==true) || (foodCheckBox13==false)) : 
				//console.log('enter13');
				var stat = $('#quantity13UpDown').text();
				var countNum = parseInt(stat, 10);

				if (foodCheckBox13 == true){
						//console.log('true13');
						$('#price13UpDown').text(4500 * countNum);
			            $("#menu013").show();
			        	//totalPriceShow();
				} else if (foodCheckBox13 == false){		
		        		//console.log('false13');	
		        		$('#price13UpDown').text('0');
			            $("#menu013").hide();
			            primalPrice13();
			            //totalPriceShow();
				} 
				
				
 			 case ((foodCheckBox14==true) || (foodCheckBox14==false)) : 
 				//console.log('enter14');
				var stat = $('#quantity14UpDown').text();
				var countNum = parseInt(stat, 10);
 			 
 			 	if (foodCheckBox14 == true){
        				//console.log('true14');
        				$('#price14UpDown').text(6500 * countNum);
			            $("#menu014").show();
			        	//totalPriceShow();
				} else if (foodCheckBox14 == false){		
	        			//console.log('false14');	
		        		$('#price14UpDown').text('0');
			            $("#menu014").hide();
			           	primalPrice14();
			            //totalPriceShow();
				}
 			 
			};

	});
		
		
		
		
		
		
		
		
	$("button[name=menuDel]").click(function() {
    	
		//var menuDel = $("button[name=menuDel]").click;
		
		
/* 		var menu01del = $("#menu01del").click;
		var menu02del = $("#menu02del").click;
		var menu03del = $("#menu03del").click;
		var menu04del = $("#menu04del").click;
		var menu05del = $("#menu05del").click;
		var menu06del = $("#menu06del").click;
		var menu07del = $("#menu07del").click;
		var menu08del = $("#menu08del").click;
		var menu09del = $("#menu09del").click;
		var menu10del = $("#menu10del").click;
		var menu11del = $("#menu11del").click;
		var menu12del = $("#menu12del").click; */
		//var menu13del = $("#menu13del").click;
		//var menu14del = $("#menu14del").click;
		
		//console.log(typeof menuDel)
		//console.log(typeof menu13del)
		//console.log(typeof menu14del)

		//console.log(menuDel)
		//console.log(menu13del)
		//console.log(menu14del)
		
 		
		
		// 케이스문
		/* switch (menuDel) { 
			case (menu13del): 
					console.log("menu13del-case")	 
					
					$("#foodCheckBox13").prop("checked", false);
		    		$("#menu013").hide();
		            $("#foodCheckBox13").parent().removeClass("selected");
		            $('#price13UpDown').text('0');
		            //primalPrice();
		            //totalPriceShow();
				
	            
	    	case (menu14del) :  
					console.log("menu14del-case")
	    	
		    		$("#foodCheckBox14").prop("checked", false);
		    		$("#menu014").hide();
		            $("#foodCheckBox14").parent().removeClass("selected");
		            $('#price14UpDown').text('0');
		            //primalPrice();
		            //totalPriceShow();  
	            
        };  */
        
        
        //이프문
 		 if ($("#menu13del").mouseup) { 
					console.log("menu13del-case")	 
					
					$("#foodCheckBox13").prop("checked", false);
		    		$("#menu013").hide();
		            $("#foodCheckBox13").parent().removeClass("selected");
		            $('#price13UpDown').text('0');
		            //primalPrice();
		            //totalPriceShow();
 		}		
 		else if ($("#menu14del").mouseup) {  
					console.log("menu14del-case")
	    	
		    		$("#foodCheckBox14").prop("checked", false);
		    		$("#menu014").hide();
		            $("#foodCheckBox14").parent().removeClass("selected");
		            $('#price14UpDown').text('0');
		            //primalPrice();
		            //totalPriceShow();  
	            
 		}  
    });

        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
/*  		switch (menuDel) {  
			case (menu13del): 
					console.log("menu13del-case")	 
	    			
				
				if (menu13del) {
					console.log("menu13del-if")	
					
					$("#foodCheckBox13").prop("checked", false);
		    		$("#menu013").hide();
		            $("#foodCheckBox13").parent().removeClass("selected");
		            $('#price13UpDown').text('0');
		            menuDel=false;
		            //primalPrice();
		            //totalPriceShow();
				} else if (menuDel != menu13del)
					return;  
				
	            
	    	case (menu14del) :  
					console.log("menu14del-case")
	    	
				if (menuDel == menu14del) {
	 	    		console.log("menu14del-if")
	 	    		
		    		$("#foodCheckBox14").prop("checked", false);
		    		$("#menu014").hide();
		            $("#foodCheckBox14").parent().removeClass("selected");
		            $('#price14UpDown').text('0');
		            menuDel=false;
		            //primalPrice();
		            //totalPriceShow();  
				} else if (menuDel != menu14del)
					return;    
	            
	            
        };  */
	


</script>





<!-- 메뉴 개수  -->
<script>

// 예시는 돈가스. 여러 메뉴가 같은 함수를 사용할 수 있게 변경이 필요함	
	
	
	function addOrDiscount(plusOrMinus) {
		
   		 {
			var stat = $('#quantity13UpDown').text();
	
			const menuPrice = parseInt($('#price13UpDown').text(),10);
			var countNum = parseInt(stat, 10);
	
			if (plusOrMinus != "plus13" && countNum <= 1) {
				/* alert('더이상 줄일 수 없습니다.'); */
	
			} else {
				if (plusOrMinus == "plus13") {
					countNum++;
				} else if (plusOrMinus == "minus13"){
					countNum--;
				}
			}
			$('#quantity13UpDown').text(countNum);
			$('#price13UpDown').text(4500 * countNum);
			
			
			/* totalPriceShow(); */
		 } 
		 
		 
 		  {
			var stat = $('#quantity14UpDown').text();
	
			const menuPrice = parseInt($('#price14UpDown').text(),10);
			var countNum = parseInt(stat, 10);
	
			if (plusOrMinus != "plus14" && countNum <= 1) {
				/* alert('더이상 줄일 수 없습니다.'); */
	
			} else {
				if (plusOrMinus == "plus14") {
					countNum++;
				} else if (plusOrMinus == "minus14"){
					countNum--;
				}
			}
			$('#quantity14UpDown').text(countNum);
			$('#price14UpDown').text(6500 * countNum);
			
			/* totalPriceShow(); */
 		 } 
		
	};
	
	
	
	
</script>


 
<script>
 	function primalPrice13(){ // 추후 아이디값을 받아와서 여러 메뉴를 받은 값에 따라 컨트롤 할 수 있게 코드 수정 필요  
		$('#quantity13UpDown').text('1');
	}
	function primalPrice14(){ // 추후 아이디값을 받아와서 여러 메뉴를 받은 값에 따라 컨트롤 할 수 있게 코드 수정 필요  
		$('#quantity14UpDown').text('1');
	} 

</script>


<script>
	function totalPriceShow(){
		var dongas = parseInt($('#price13UpDown').text(), 10);
		// 메뉴가 많을수록 더해지는 메뉴들이 많아짐

		var finalPrice = dongas; // ex. + 패스트푸드 + 치킨 + 짜장면;
		
		$('#resultPrice').text(finalPrice);
	}
</script>







