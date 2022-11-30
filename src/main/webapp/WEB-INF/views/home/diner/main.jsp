<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/fullcalendar-scheduler@5.11.0/main.css"/>


    
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/fullcalendar-scheduler@5.11.0/main.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  

<style>
	.strong {font-weight:700;color:blue}
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
		  				<th style="height:35px; vertical-align:center;"><div style="color:blue;">월</div><div style="color:blue;">11/28</div></th>
		  				<th><div>화</div><div>11/29</div></th>
		  				<th><div>수</div><div>11/30</div></th>
		  				<th><div>목</div><div>12/1</div></th>
		  				<th><div>금</div><div>12/2</div></th>
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
		  						*김치찌개
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
	                                        <a class="nav-link active" data-toggle="tab" href="#message1" style="font-size:14px;">기타메뉴/식당식권</a>
	                                    </li>
	                                </ul>
	                                <div class="tab-content">
	                                    <div class="tab-pane fade" id="home1" role="tabpanel">
	                                        <div class="pt-3">한식메뉴</div>
	                                        <div class="row pl-4 pt-4 justify-content-around">
	                                            <div class="row col-md-3 ">
													<div class="row custom-control custom-checkbox mb-3">
														<input type="checkbox" class="custom-control-input" name="foodCheckBox" id="foodCheckBox1" value="김치찌개" onclick="menuCheckBox('1')">
														<label class="custom-control-label col-form-label-sm" for="foodCheckBox1">김치찌개</label><br><label style="font-size:12px;"><span id="menuPrice1">4500</span>원</label>               
													</div>
												</div>
	                                            <div class="row col-md-3 ">
													<div class="row custom-control custom-checkbox mb-3">
														<input type="checkbox" class="custom-control-input" name="foodCheckBox" id="foodCheckBox2" onclick="menuCheckBox('2')">
														<label class="custom-control-label col-form-label-sm" for="foodCheckBox2">된장찌개</label><br><label style="font-size:12px;"><span id="menuPrice2">4500</span>원</label>
													</div>
												</div>
	                                            <div class="row col-md-3 ">
													<div class="row custom-control custom-checkbox mb-3">
														<input type="checkbox" class="custom-control-input" name="foodCheckBox" id="foodCheckBox3" onclick="menuCheckBox('3')">
														<label class="custom-control-label col-form-label-sm" for="foodCheckBox3">고등어정식</label><br><label style="font-size:12px;"><span id="menuPrice3">6500</span>원</label>
													</div>
												</div>
	                                            <div class="row col-md-3 ">
													<div class="row custom-control custom-checkbox mb-3">
														<input type="checkbox" class="custom-control-input" name="foodCheckBox" id="foodCheckBox4" onclick="menuCheckBox('4')">
														<label class="custom-control-label col-form-label-sm" for="foodCheckBox4">보쌈</label><br><label style="font-size:12px;"><span id="menuPrice4">7500</span>원</label>
													</div>
												</div>
	                                        </div>
	                                    </div>
	                                    <div class="tab-pane fade" id="profile1">
	                                        <div class="pt-3">중식메뉴</div>
	                                        <div class="row pl-3 pt-4 justify-content-around">
	                                            <div class="row col-md-3 ">
													<div class="row custom-control custom-checkbox mb-3">
														<input type="checkbox" class="custom-control-input" name="foodCheckBox" id="foodCheckBox5" onclick="menuCheckBox('5')">
														<label class="custom-control-label col-form-label-sm" for="foodCheckBox5">짜장면</label><br><label style="font-size:12px;"><span id="menuPrice5">5000</span>원</label> 
													</div>
												</div>
	                                            <div class="row col-md-3 ">
													<div class="row custom-control custom-checkbox mb-3">
														<input type="checkbox" class="custom-control-input" name="foodCheckBox" id="foodCheckBox6" onclick="menuCheckBox('6')">
														<label class="custom-control-label col-form-label-sm" for="foodCheckBox6">짬뽕</label><br><label style="font-size:12px;"><span id="menuPrice6">6000</span>원</label>
													</div>
												</div>
	                                            <div class="row col-md-3 ">
													<div class="row custom-control custom-checkbox mb-3">
														<input type="checkbox" class="custom-control-input" name="foodCheckBox" id="foodCheckBox7" onclick="menuCheckBox('7')">
														<label class="custom-control-label col-form-label-sm" for="foodCheckBox7">볶음밥</label><br><label style="font-size:12px;"><span id="menuPrice7">5500</span>원</label>
													</div>
												</div>
	                                            <div class="row col-md-3 ">
													<div class="row custom-control custom-checkbox mb-3">
														<input type="checkbox" class="custom-control-input" name="foodCheckBox" id="foodCheckBox8" onclick="menuCheckBox('8')">
														<label class="custom-control-label col-form-label-sm" for="foodCheckBox8">탕수육</label><br><label style="font-size:12px;"><span id="menuPrice8">14500</span>원</label>
													</div>
												</div>
	                                        </div>
	                                    </div>
	                                    <div class="tab-pane fade" id="contact1">
	                                        <div class="pt-3">분식메뉴</div>
	                                        <div class="row pl-3  pt-4 justify-content-around">
	                                            <div class="row col-md-3 ">
													<div class="row custom-control custom-checkbox mb-3">
														<input type="checkbox" class="custom-control-input" name="foodCheckBox" id="foodCheckBox9" onclick="menuCheckBox('9')">
														<label class="custom-control-label col-form-label-sm" for="foodCheckBox9">라면</label><br><label style="font-size:12px;"><span id="menuPrice9">3500</span>원</label>> 
													</div>
												</div>
	                                            <div class="row col-md-3 ">
													<div class="row custom-control custom-checkbox mb-3">
														<input type="checkbox" class="custom-control-input" name="foodCheckBox" id="foodCheckBox10" onclick="menuCheckBox('10')">
														<label class="custom-control-label col-form-label-sm" for="foodCheckBox10">김밥</label><br><label style="font-size:12px;"><span id="menuPrice10">2000</span>원</label> 
													</div>
												</div>
	                                            <div class="row col-md-3 ">
													<div class="row custom-control custom-checkbox mb-3">
														<input type="checkbox" class="custom-control-input" name="foodCheckBox" id="foodCheckBox11" onclick="menuCheckBox('11')">
														<label class="custom-control-label col-form-label-sm" for="foodCheckBox11">만두</label><br><label style="font-size:12px;"><span id="menuPrice11">3000</span>원</label>
													</div>
												</div>
	                                            <div class="row col-md-3 ">
													<div class="row custom-control custom-checkbox mb-3">
														<input type="checkbox" class="custom-control-input" name="foodCheckBox" id="foodCheckBox12" onclick="menuCheckBox('12')">
														<label class="custom-control-label col-form-label-sm" for="foodCheckBox12">순대</label><br><label style="font-size:12px;"><span id="menuPrice12">4500</span>원</label> 
													</div>
												</div>
	                                        </div>
	                                    </div>
	                                    <div class="tab-pane fade active show" id="message1">
	                                        <div class="pt-3">기타메뉴/식당식권</div>
	                                        <div class="row pt-4 justify-content-around">
	                                            <div class="row col-md-3 ">
													<div class="row custom-control custom-checkbox mb-3">
														<input type="checkbox" class="custom-control-input" name="foodCheckBox" id="foodCheckBox13" onclick="menuCheckBox('13')">
														<label class="custom-control-label col-form-label-sm" for="foodCheckBox13">패스트푸드</label><br><label style="font-size:12px;"><span id="menuPrice13">4500</span>원</label> 
													</div>
												</div>
	                                            <div class="row col-md-3 ">
													<div class="row custom-control custom-checkbox mb-3 ">
														<input type="checkbox" class="custom-control-input" name="foodCheckBox" id="foodCheckBox14" onclick="menuCheckBox('14')">
														<label class="custom-control-label col-form-label-sm" for="foodCheckBox14">돈까스</label><br><label style="font-size:12px;"><span id="menuPrice14">6500</span>원</label> 
													</div>
												</div>
	                                            <div class="row col-md-3 ">
													<div class="row custom-control custom-checkbox mb-3 ">
														<input type="checkbox" class="custom-control-input" name="foodCheckBox" id="foodCheckBox15" onclick="menuCheckBox('15')">
														<label class="custom-control-label col-form-label-sm" for="foodCheckBox15">식당식권</label><br><label style="font-size:12px;"><span id="menuPrice15">7000</span>원</label> 
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
			  					<div class="row justify-content-center p-2" id="menu1" style="display:none; font-size:12px;">
			  						<div class="row col-4 align-self-center">김치찌개</div>
			  						<div class="row number col-4 align-self-center"><span id="priceUpDown1">4500</span>원</div>
			  						<div class="row number col-3 align-self-center"><span id="quantityUpDown1" >1</span>개</div>
			  						<button onclick="menuCountAddAndDiscount('1','plus')" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray; margin-right:5px; border-radius:5px; color:white;"> + </button>
			  						<button onclick="menuCountAddAndDiscount('1','minus')" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px; color:white;"> - </button>
			  						<button onclick="clickToExit('1')" name="menuDel" id="menuDel1"  style="font-size:20px;  width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px;"> x </button>
			  					</div>
			  					<div class="row justify-content-center p-2" id="menu2" style="display:none; font-size:12px;">
			  						<div class="row col-4 align-self-center">된장찌개</div>
			  						<div class="row number col-4 align-self-center"><span id="priceUpDown2">4500</span>원</div>
			  						<div class="row number col-3 align-self-center"><span id="quantityUpDown2" >1</span>개</div>
			  						<button onclick="menuCountAddAndDiscount('2','plus')" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray; margin-right:5px; border-radius:5px; color:white;"> + </button>
			  						<button onclick="menuCountAddAndDiscount('2','minus')" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px; color:white;"> - </button>
			  						<button onclick="clickToExit('2')" name="menuDel" id="menuDel2"  style="font-size:20px;  width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px;"> x </button>
			  					</div>
			  					<div class="row justify-content-center p-2" id="menu3" style="display:none; font-size:12px;">
			  						<div class="row col-4 align-self-center">고등어정식</div>
			  						<div class="row number col-4 align-self-center"><span id="priceUpDown3">6500</span>원</div>
			  						<div class="row number col-3 align-self-center"><span id="quantityUpDown3" >1</span>개</div>
			  						<button onclick="menuCountAddAndDiscount('3','plus')" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray; margin-right:5px; border-radius:5px; color:white;"> + </button>
			  						<button onclick="menuCountAddAndDiscount('3','minus')" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px; color:white;"> - </button>
			  						<button onclick="clickToExit('3')" name="menuDel" id="menuDel3"  style="font-size:20px;  width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px;"> x </button>
			  					</div>
			  					<div class="row justify-content-center p-2" id="menu4" style="display:none; font-size:12px;">
			  						<div class="row col-4 align-self-center">보쌈</div>
			  						<div class="row number col-4 align-self-center"><span id="priceUpDown4">7500</span>원</div>
			  						<div class="row number col-3 align-self-center"><span id="quantityUpDown4" >1</span>개</div>
			  						<button onclick="menuCountAddAndDiscount('4','plus')" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray; margin-right:5px; border-radius:5px; color:white;"> + </button>
			  						<button onclick="menuCountAddAndDiscount('4','minus')" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px; color:white;"> - </button>
			  						<button onclick="clickToExit('4')" name="menuDel" id="menuDel4"  style="font-size:20px;  width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px;"> x </button>
			  					</div>
			  					<div class="row justify-content-center p-2" id="menu5" style="display:none; font-size:12px;">
			  						<div class="row col-4 align-self-center">짜장면</div>
			  						<div class="row number col-4 align-self-center"><span id="priceUpDown5">5000</span>원</div>
			  						<div class="row number col-3 align-self-center"><span id="quantityUpDown5" >1</span>개</div>
			  						<button onclick="menuCountAddAndDiscount('5','plus')" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray; margin-right:5px; border-radius:5px; color:white;"> + </button>
			  						<button onclick="menuCountAddAndDiscount('5','minus')" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px; color:white;"> - </button>
			  						<button onclick="clickToExit('5')"  name="menuDel" id="menuDel5"  style="font-size:20px;  width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px;"> x </button>
			  					</div>
			  					<div class="row justify-content-center p-2" id="menu6" style="display:none; font-size:12px;">
			  						<div class="row col-4 align-self-center">짬뽕</div>
			  						<div class="row number col-4 align-self-center"><span id="priceUpDown6">6000</span>원</div>
			  						<div class="row number col-3 align-self-center"><span id="quantityUpDown6" >1</span>개</div>
			  						<button onclick="menuCountAddAndDiscount('6','plus')" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray; margin-right:5px; border-radius:5px; color:white;"> + </button>
			  						<button onclick="menuCountAddAndDiscount('6','minus')" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px; color:white;"> - </button>
			  						<button onclick="clickToExit('6')" name="menuDel" id="menuDel6"  style="font-size:20px;  width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px;"> x </button>
			  					</div>
			  					<div class="row justify-content-center p-2" id="menu7" style="display:none; font-size:12px;">
			  						<div class="row col-4 align-self-center">볶음밥</div>
			  						<div class="row number col-4 align-self-center"><span id="priceUpDown7">5500</span>원</div>
			  						<div class="row number col-3 align-self-center"><span id="quantityUpDown7" >1</span>개</div>
			  						<button onclick="menuCountAddAndDiscount('7','plus')" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray; margin-right:5px; border-radius:5px; color:white;"> + </button>
			  						<button onclick="menuCountAddAndDiscount('7','minus')" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px; color:white;"> - </button>
			  						<button onclick="clickToExit('7')" name="menuDel" id="menuDel7"  style="font-size:20px;  width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px;"> x </button>
			  					</div>
			  					<div class="row justify-content-center p-2" id="menu8" style="display:none; font-size:12px;">
			  						<div class="row col-4 align-self-center">탕수육</div>
			  						<div class="row number col-4 align-self-center"><span id="priceUpDown8">14500</span>원</div>
			  						<div class="row number col-3 align-self-center"><span id="quantityUpDown8" >1</span>개</div>
			  						<button onclick="menuCountAddAndDiscount('8','plus')" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray; margin-right:5px; border-radius:5px; color:white;"> + </button>
			  						<button onclick="menuCountAddAndDiscount('8','minus')" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px; color:white;"> - </button>
			  						<button onclick="clickToExit('8')" name="menuDel" id="menuDel8"  style="font-size:20px;  width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px;"> x </button>
			  					</div>
			  					<div class="row justify-content-center p-2" id="menu9" style="display:none; font-size:12px;">
			  						<div class="row col-4 align-self-center">라면</div>
			  						<div class="row number col-4 align-self-center"><span id="priceUpDown9">3500</span>원</div>
			  						<div class="row number col-3 align-self-center"><span id="quantityUpDown9" >1</span>개</div>
			  						<button onclick="menuCountAddAndDiscount('9','plus')" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray; margin-right:5px; border-radius:5px; color:white;"> + </button>
			  						<button onclick="menuCountAddAndDiscount('9','minus')" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px; color:white;"> - </button>
			  						<button onclick="clickToExit('9')" name="menuDel" id="menuDel9"  style="font-size:20px;  width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px;"> x </button>
			  					</div>
			  					<div class="row justify-content-center p-2" id="menu10" style="display:none; font-size:12px;">
			  						<div class="row col-4 align-self-center">김밥</div>
			  						<div class="row number col-4 align-self-center"><span id="priceUpDown10">2000</span>원</div>
			  						<div class="row number col-3 align-self-center"><span id="quantityUpDown10" >1</span>개</div>
			  						<button onclick="menuCountAddAndDiscount('10','plus')" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray; margin-right:5px; border-radius:5px; color:white;"> + </button>
			  						<button onclick="menuCountAddAndDiscount('10','minus')" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px; color:white;"> - </button>
			  						<button onclick="clickToExit('10')" name="menuDel" id="menuDel10" style="font-size:20px;  width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px;"> x </button>
			  					</div>
			  					<div class="row justify-content-center p-2" id="menu11" style="display:none; font-size:12px;">
			  						<div class="row col-4 align-self-center">만두</div>
			  						<div class="row number col-4 align-self-center"><span id="priceUpDown11">3000</span>원</div>
			  						<div class="row number col-3 align-self-center"><span id="quantityUpDown11" >1</span>개</div>
			  						<button onclick="menuCountAddAndDiscount('11','plus')" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray; margin-right:5px; border-radius:5px; color:white;"> + </button>
			  						<button onclick="menuCountAddAndDiscount('11','minus')" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px; color:white;"> - </button>
			  						<button onclick="clickToExit('11')" name="menuDel" id="menuDel11" style="font-size:20px;  width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px;"> x </button>
			  					</div>
			  					<div class="row justify-content-center p-2" id="menu12" style="display:none; font-size:12px;">
			  						<div class="row col-4 align-self-center">순대</div>
			  						<div class="row number col-4 align-self-center"><span id="priceUpDown12">4500</span>원</div>
			  						<div class="row number col-3 align-self-center"><span id="quantityUpDown12" >1</span>개</div>
			  						<button onclick="menuCountAddAndDiscount('12','plus')" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray; margin-right:5px; border-radius:5px; color:white;"> + </button>
			  						<button onclick="menuCountAddAndDiscount('12','minus')" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px; color:white;"> - </button>
			  						<button onclick="clickToExit('12')" name="menuDel" id="menuDel12" style="font-size:20px;  width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px;"> x </button>
			  					</div>
			  					<div class="row justify-content-center p-2" id="menu13" style="display:none; font-size:12px;">
			  						<div class="row col-4 align-self-center">패스트푸드</div>
			  						<div class="row number col-4 align-self-center"><span id="priceUpDown13">4500</span>원</div>
			  						<div class="row number col-3 align-self-center"><span id="quantityUpDown13" >1</span>개</div>
			  						<button onclick="menuCountAddAndDiscount('13','plus')" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray; margin-right:5px; border-radius:5px; color:white;"> + </button>
			  						<button onclick="menuCountAddAndDiscount('13','minus')" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px; color:white;"> - </button>
			  						<button onclick="clickToExit('13')" name="menuDel" id="menuDel13" style="font-size:20px;  width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px;"> x </button>
			  					</div>
			  					<div class="row justify-content-center p-2" id="menu14" style="display:none; font-size:12px;">
			  						<div class="row col-4 align-self-center">돈까스</div>
			  						<div class="row number col-4 align-self-center"><span id="priceUpDown14">6500</span>원</div>
			  						<div class="row number col-3 align-self-center"><span id="quantityUpDown14" >1</span>개</div>
			  						<button onclick="menuCountAddAndDiscount('14','plus')" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray; margin-right:5px; border-radius:5px; color:white;"> + </button>
			  						<button onclick="menuCountAddAndDiscount('14','minus')" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px; color:white;"> - </button>
			  						<button onclick="clickToExit('14')" name="menuDel" id="menuDel14" style="font-size:20px;  width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px;"> x </button>
			  					</div>
			  					<div class="row justify-content-center p-2" id="menu15" style="display:none; font-size:12px;">
			  						<div class="row col-4 align-self-center">식당식권</div>
			  						<div class="row number col-4 align-self-center"><span id="priceUpDown15">7000</span>원</div>
			  						<div class="row number col-3 align-self-center"><span id="quantityUpDown15" >1</span>개</div>
			  						<button onclick="menuCountAddAndDiscount('15','plus')" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray; margin-right:5px; border-radius:5px; color:white;"> + </button>
			  						<button onclick="menuCountAddAndDiscount('15','minus')" style="font-size:20px; background-color:#333258; width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px; color:white;"> - </button>
			  						<button onclick="clickToExit('15')" name="menuDel" id="menuDel15" style="font-size:20px;  width:30px; height:30px; vertical-align:middle; border-color:darkgray;  margin-right:5px; border-radius:5px;"> x </button>
			  					</div>
		  					</div>
		  				</td>
		  			</tr>
		  			<tr style="border-top:1px solid lightgray;">
		  				<td style="height:15vh; "><div class="align-self-center"><button  style="border-radius:5px; border-color:darkgray;">결제하기</button></div></td>
		  				<td><div class="align-self-center"><span id=totalPaymentPrice onclick=" sumPrice()">0</span>원</div></td>
		  			</tr>
		  			<tr style="border-top:1px solid lightgray;  display:none;">
		  				<td style="height:25vh; "><div class="align-self-center" style="border-radius:5px; border-color:darkgray;">합계구하기</div></td>
		  				<td>
		  					<div class="align-self-center " style= "overflow-y:scroll; height:15vh;">
 		  						<span id ="resultPrice1" >0</span><br>
		  						<span id ="resultPrice2" >0</span><br>
		  						<span id ="resultPrice3" >0</span><br>
		  						<span id ="resultPrice4" >0</span><br>
		  						<span id ="resultPrice5" >0</span><br>
		  						<span id ="resultPrice6" >0</span><br>
		  						<span id ="resultPrice7" >0</span><br>
		  						<span id ="resultPrice8" >0</span><br>
		  						<span id ="resultPrice9" >0</span><br>
		  						<span id ="resultPrice10" >0</span><br>
		  						<span id ="resultPrice11" >0</span><br>
		  						<span id ="resultPrice12" >0</span><br>
		  						<span id ="resultPrice13" >0</span><br>
		  						<span id ="resultPrice14" >0</span><br>
		  						<span id ="resultPrice15" >0</span>
		  					</div>
	  					</td>
		  			</tr>
		  		</table>
		  	</div>
	  	</div>
 	</div>
 	<div class="row justify-content-center">
	  	<div class="row col-7 justify-content-center table table-bordered border-primary border-2" style="margin:10px; overflow-y:scroll; height:150px; ">
	  		<table class="text-center" style="width:90%; height: 30vh;">
	  			<tr>
	  				<th colspan="11">
	  					<span>월간 식단 </span>&nbsp;&nbsp;
	  					<span style="display:none;">오늘날짜 = </span>&nbsp;&nbsp;
	  					<span id="todate"></span>
  					</th>
	  			</tr>
	  			<tr>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div id="squeceDateInput1" style="font-size:12px;">8/1</div><div style="font-size:12px;">김치찌개</div></td>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div id="squeceDateInput2" style="font-size:12px;">8/2</div><div style="font-size:12px;">두루치기</div></td>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div id="squeceDateInput3" style="font-size:12px;">8/3</div><div style="font-size:12px;">된장찌개</div></td>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div id="squeceDateInput4" style="font-size:12px;">8/4</div><div style="font-size:12px;">김밥,떡볶이</div></td>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div id="squeceDateInput5" style="font-size:12px;">8/5</div><div style="font-size:12px;">순대</div></td>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div id="squeceDateInput6" style="font-size:12px;">8/6</div><div style="font-size:12px;">라면</div></td>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div id="squeceDateInput7" style="font-size:12px;">8/7</div><div style="font-size:12px;">짜장면</div></td>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div id="squeceDateInput8" style="font-size:12px;">8/8</div><div style="font-size:12px;">탕수육</div></td>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div id="squeceDateInput9" style="font-size:12px;">8/9</div><div style="font-size:12px;">된장찌개</div></td>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div id="squeceDateInput10" style="font-size:12px;">8/10</div><div style="font-size:12px;">짬뽕</div></td>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div id="squeceDateInput11" style="font-size:12px;">8/11</div><div style="font-size:12px;">볶음밥</div></td>
	  			</tr>
	  			<tr>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div id="squeceDateInput12" style="font-size:12px;">8/12</div><div style="font-size:12px;">패스트푸드</div></td>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div id="squeceDateInput13" style="font-size:12px;">8/13</div><div style="font-size:12px;">김치찌개</div></td>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div id="squeceDateInput14" style="font-size:12px;">8/14</div><div style="font-size:12px;">두루치기</div></td>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div id="squeceDateInput15" style="font-size:12px;">8/15</div><div style="font-size:12px;">쌈밥</div></td>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div id="squeceDateInput16" style="font-size:12px;">8/16</div><div style="font-size:12px;">우렁된장밥</div></td>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div id="squeceDateInput17" style="font-size:12px;">8/17</div><div style="font-size:12px;">짜장면</div></td>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div id="squeceDateInput18" style="font-size:12px;">8/18</div><div style="font-size:12px;">라면</div></td>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div id="squeceDateInput19" style="font-size:12px;">8/19</div><div style="font-size:12px;">떡국</div></td>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div id="squeceDateInput20" style="font-size:12px;">8/20</div><div style="font-size:12px;">순대</div></td>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div id="squeceDateInput21" style="font-size:12px;">8/21</div><div style="font-size:12px;">김밥,떡볶이</div></td>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div id="squeceDateInput22" style="font-size:12px;">8/22</div><div style="font-size:12px;">짬뽕</div></td>
	  			</tr>
	  			<tr>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div id="squeceDateInput23" style="font-size:12px;">8/23</div><div style="font-size:12px;">라면</div></td>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div id="squeceDateInput24" style="font-size:12px;">8/24</div><div style="font-size:12px;">탕수육</div></td>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div id="squeceDateInput25" style="font-size:12px;">8/25</div><div style="font-size:12px;">된장찌개</div></td>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div id="squeceDateInput26" style="font-size:12px;">8/26</div><div style="font-size:12px;">김치찌개</div></td>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div id="squeceDateInput27" style="font-size:12px;">8/27</div><div style="font-size:12px;">김치찌개</div></td>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div id="squeceDateInput28" style="font-size:12px;">8/28</div><div style="font-size:12px;">김치찌개</div></td>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div id="squeceDateInput29" style="font-size:12px;">8/29</div><div style="font-size:12px;">김치찌개</div></td>
	  				<td style="height:35px; width:120px; vertical-align:center;"><div id="squeceDateInput30" style="font-size:12px;">8/30</div><div style="font-size:12px;">김치찌개</div></td>
	  				<!-- <td style="height:35px; width:120px; vertical-align:center;"><div id="squeceDateInput31" style="font-size:12px;">8/31</div><div style="font-size:12px;">김치찌개</div></td> -->
	  			</tr>
	  		</table>
 		</div>
	  	<div class="row p-1 col-4 justify-content-center table table-bordered border-primary border-2"  style="margin:10px; overflow-y:scroll; height:150px; ">
	  		<table class="text-center" style="width:90%; height: 15vh;">
	  			<tr>
	  				<th colspan="5" style="height:10px;"> AI 선정 오늘의 추천메뉴 </th>
	  			</tr>
	  			<tr>
	  				<td><h4><span id="todayMenu"></span></h4></td>
	  			</tr>
	  		</table>
	  		<!-- <div><h4><span id="todayMenu"></span></h4></div> -->
	  	</div>
 	</div>
 
 
 
</div>
  


<script>
var data1 = {"id":"${loginUser.memId}"};

$.ajax({
//    url: "http://localhost:5012/getMenu", 
   url: "http://192.168.141.26:5012/getMenu", 
   type: 'POST',
   data : data1,
   dataType: 'JSON',
   success:function(menu){
      /* alert(data1); */
      document.getElementById('todayMenu').innerText = menu;
   }
});
</script>
  

<script>
//체크박스 글자 강조 펑션 
$(document).ready(function() {
	$("input:checkbox").on('click', function() {
	      if ( $(this).prop('checked') ) {
	        $(this).parent().addClass("strong");
	      } else {
	        $(this).parent().removeClass("strong");
	      }
	});
});
</script>

<script>
//체크박스 펑션
function menuCheckBox(menu_id){
    if ($('#foodCheckBox'+menu_id).is(":checked")) {
        $("#menu"+menu_id).show();
       
        var dongas = parseInt($('#priceUpDown'+menu_id).text(), 10);
		$('#resultPrice'+menu_id).text(dongas);
		sumPrice();
        
        
    } else {
        $("#menu"+menu_id).hide();
        
        $('#resultPrice'+menu_id).text('0'); 
		sumPrice();
		menuReset(menu_id);
        
    }
}
</script>

<script>
// 메뉴 비활성시 초기화
	function menuReset(menu_id){
        $('#quantityUpDown'+menu_id).text('1');
    	$('#priceUpDown'+menu_id).text($('#menuPrice'+menu_id).text());
	}
</script>

<script>
// 활성화 메뉴 X버튼 클릭 펑션
function clickToExit(menu_id){
	var menu = document.getElementById('priceUpDown'+menu_id);
	$("#menu"+menu_id).hide();
	$("#foodCheckBox"+menu_id).prop("checked", false);
	$("#foodCheckBox"+menu_id).parent().removeClass("strong");
	menuReset(menu_id);
    $('#resultPrice'+menu_id).text('0'); 
	sumPrice();
}
</script>



<script>
// 메뉴 갯수 설정 버튼 펑션
	function menuCountAddAndDiscount(menu_id,seperator){
		var q_id = '#quantityUpDown'+menu_id;
		var p_total_id = '#priceUpDown'+menu_id;
		var price_id = '#menuPrice'+menu_id;
		//var result_price = '#resultPrice';
		
		var stat = $(q_id).text();
		
		const menuPrice = parseInt($(price_id).text(),10);
		var countNum = parseInt(stat, 10);

		if (countNum <= 1 && seperator == "minus") {
			alert('더이상 줄일 수 없습니다.');
		} else {
			if (seperator == "plus") {
				countNum++;
			} else if (seperator == "minus"){
				countNum--;
			}
		}
		$(q_id).text(countNum);
		$(p_total_id).text(menuPrice * countNum);
		
		
		totalPriceShow(menu_id);
		sumPrice();
		
		/* var arr = [];
		var lol = parseInt($(wow).text(),10);
		
		
		return lol; */
	}
		
</script>





<script> // 각 가격 합계구하는 장소로 보내는 펑션
	function totalPriceShow(menu_id){
		var p_total_id = '#priceUpDown'+menu_id;
		var result_price = '#resultPrice'+menu_id;
		
		var dongas = parseInt($(p_total_id).text(), 10);
		$(result_price).text(dongas);
		
	}
</script>


<script>//각 음식 결제 합계 계산하기 펑션
	
	function sumPrice(){
		
 		var lastDongas1 = parseInt($('#resultPrice1').text(), 10);
		var lastDongas2 = parseInt($('#resultPrice2').text(), 10);
		var lastDongas3 = parseInt($('#resultPrice3').text(), 10);
		var lastDongas4 = parseInt($('#resultPrice4').text(), 10);
		var lastDongas5 = parseInt($('#resultPrice5').text(), 10);
		var lastDongas6 = parseInt($('#resultPrice6').text(), 10);
		var lastDongas7 = parseInt($('#resultPrice7').text(), 10);
		var lastDongas8 = parseInt($('#resultPrice8').text(), 10);
		var lastDongas9 = parseInt($('#resultPrice9').text(), 10);
		var lastDongas10 = parseInt($('#resultPrice10').text(), 10);
		var lastDongas11 = parseInt($('#resultPrice11').text(), 10);
		var lastDongas12 = parseInt($('#resultPrice12').text(), 10);
		var lastDongas13 = parseInt($('#resultPrice13').text(), 10);
		var lastDongas14 = parseInt($('#resultPrice14').text(), 10);
		var lastDongas15 = parseInt($('#resultPrice15').text(), 10);
		
		//console.log(lastDongas14);
		
		var totalPaymentPrice = (
				
				lastDongas1 +
				lastDongas2 +
				lastDongas3 +
				lastDongas4 +
				lastDongas5 +
				lastDongas6 +
				lastDongas7 +
				lastDongas8 +
				lastDongas9 +
				lastDongas10 +
				lastDongas11 + 
				lastDongas12 +
				lastDongas13 +
				lastDongas14 +
				lastDongas15
				
		);
		$('#totalPaymentPrice').text(totalPaymentPrice);  
		
	}
	
//totalPriceShow()
</script>	


<script> //날짜 구하는 평션

	function thisMonth(){
		const date = new Date();
		
		
		const year = date.getFullYear();
		const month = ('0' + (date.getMonth() + 1)).slice(-2);
		const day = ('0' + date.getDate()).slice(-2);
		const dateStr = year + '-' + month + '-' + day;
		
		//console.log(dateStr);
		
		$('#todate').text(dateStr);

		
		
		//const monthDay = month + '-' + day;
		
		
	}
	
thisMonth();

</script> 

<script> //오늘날짜 가져와서 이번달 모든날짜 만들기 펑션

	function squeceDateInput(date_index) {
		
		var getTextDate = $('#todate').text();
	
		var arrSplitMonth = getTextDate.split('-');
		//console.log(arrSplitMonth);
		
		var getMonthOfIndex = arrSplitMonth[1];
		//console.log(getMonthOfIndex);
		
		var lastDateOfThisMonth = new Date(0, getMonthOfIndex, 0).getDate()
	    //console.log(new Date(0, lastDateOfThisMonth, 0).getDate());
	    
		for (var i=1; i<=lastDateOfThisMonth; i++) {
			
			var getDate = (getMonthOfIndex + '/' + i);
			console.log(getDate)
		
			
			var dateInput = $('#squeceDateInput'+i).text(getDate);
			//console.log(dateInput);
		}
	}


</script>


<script> // 오늘날짜에 하이라이트 펑션

	function hilightToday(i) {
		
		squeceDateInput();
		
		var getTextDate = $('#todate').text();
		var arrSplitMonth = getTextDate.split('-');
		var getDayOfInt = parseInt(arrSplitMonth[2]);
		
		//console.log(getDayOfInt);
	
	
		const date = new Date();
		const day = ('0' + date.getDate()).slice(-2);
		const dateInt = parseInt(day);
		
		//console.log(dateInt);
		
		
		var getMonthOfIndex = arrSplitMonth[1];
		var lastDateOfThisMonth = new Date(0, getMonthOfIndex, 0).getDate()
		
		for (var i=1; i<=lastDateOfThisMonth; i++) {
			var letTo = $('#squeceDateInput'+i).text();
			var arrLetTo = letTo.split('/');
			var getLetToInt = parseInt(arrLetTo[1]);
		
			console.log(getLetToInt);
		
			if (dateInt == getDayOfInt) {
				console.log("wow");
				if (dateInt == getLetToInt) {
					console.log("jackPot!");
					$('#squeceDateInput' + i).parent().addClass("strong");
				}
			} else {
				return;
			}
		}
	}
	hilightToday()
</script>

<%@ include file="/WEB-INF/views/common/preloader_js.jsp"%>



