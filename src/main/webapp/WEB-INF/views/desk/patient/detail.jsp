<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" />
<c:set var="minfoList" value="${dataMap.minfoList }" />

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
            width: 830px;
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
			<div class="col-sm-12 justify-content-center" style="border-right: solid 1px;">
				<section class="content" style="hight 80%; wigth:100%">
					<section class="content-header" >
						<div class="container-fluid" >
								<div class="row">
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
                                                <label>이름</label>
                                                <input type="text" class="form-control" name="pName" placeholder="${patient.PName}">
                                            </div>
                                            <div class="form-group col-md-2">
                                                <label>구분자</label>
                                                <input type="email" class="form-control" placeholder="${patient.PSfx}">
                                            </div>
                                            <div class="form-group col-md-4">
                                                <label>주민등록번호</label>
                                                <input type="email" class="form-control" name="pRnum" placeholder="${patient.PRnum}">
                                            </div>
                                            
                                            <div class="form-group col-md-3">
                                                <label>휴대전화</label>
                                                <input type="text" class="form-control" placeholder="${patient.PTel}">
                                            </div>
                                            <div class="form-group col-md-3">
                                                <label>차트번호</label>
                                                <input type="text" class="form-control" name="pNo" value="${patient.PNo}">
                                            </div>
                                            <div class="form-group col-md-3">
                                                <label>생년월일</label>
                                                <input type="text" class="form-control" placeholder="<fmt:formatDate value="${patient.PBir}" pattern="yyyy-MM-dd" />">
                                            </div>
                                          <div class="form-group col-md-6">
                                                <label>환자메모</label>
                                                <input type="text" class="form-control">
                                            </div>
                                        </div>
                                       
                                        <div class="form-row">
                                            <div class="form-group col-md-2">
                                                <label>우편번호</label>
                                                <div class="dropdown bootstrap-select form-control default-select">
                                                <input type="text" name="zonecode" class="form-control" placeholder="${patient.PZipcode}" readonly/>
                                                </div>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label>나머지주소</label>
                                                <input type="text" name="address" placeholder="${patient.PAddr1} ${patient.PAddr2}" class="form-control" />
                                            </div>
                                            <div class="form-group text-center col-md-4">
                                           		<button type="button" class="btn btn-primary" name="" onclick="patDelete(${patient.PNo})" style="border-radius: 10px; margin-right: 5px;height: 70px">삭제</button>	
                                           		<button type="button" class="btn btn-primary" name="" onclick="patUpdate()" style="border-radius: 10px; margin-right: 5px; height: 70px">수정</button>	
                                        	</div>
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
					<div class="container-fluid" style="">
							<h4 style="text-align: left; ">Dr.AI의 추천</h4>
							</div>
					<section class="content" style="height: 30vh; width: 95%;" >
						<div class="card">
							<div class="card-body" style="text-align: center; font-size: 13px; margin-top: -30px; margin-right: -30px; margin-left: -28px;">
								<div class="row">
									<div class="col-sm-12">
									
										<table class="table table-bordered" id="userListTable" style=" width: 100%;">
											<tr bgcolor="#333258" style="color: white; cursor: default;">
												<th>칫솔법</th>
												<th>치약</th>
												<th>칫솔</th>
												<th>가글</th>
												<!-- yyyy-MM-dd  -->
											</tr>
											
											<tr>
												<td id="brushing"></td>
												<td id="paste"></td>
												<td id="brush"></td>
												<td id="galgel"></td>					
											</tr>
										</table>
										
									<h5> 본 추천은 환자의 진료데이터를 통한 Dr.AI의 추천입니다. </h5>
									<h6 style="color: #FF6347; font-size: 12px;">※ 전문의의 소견과 다를 수 있으니 참고용 으로 사용하시기 바랍니다. </h6>
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
			<%-- <div class="col-sm-6">
				<div class="row justify-content-center" style="padding-bottom: 3vh;">
					<section class="content" style="height: 50vh; width: 95%;">
						<section class="content-header">
							<div class="container-fluid" style="">
							<h4 style="text-align: left; ">진료목록</h4>
							</div>
							
						</section>
						<div class="card" style="overflow-y: scroll; overflow-x:hidden">
							<div class="card-body" style="text-align: center; font-size: 13px; margin-top: -30px; margin-right: -30px; margin-left: -28px;">
								<div class="row">
									<div class="col-sm-12">
										<table class="table table-bordered" id="userListTable" style=" width: 100%;">
											<tr bgcolor="#333258" style="color: white">
												<th style="width: 5%">진료일자</th>
												<th style="width: 5%">담당의</th>
												<th style="width: 5%">치식</th>
												<th style="width: 85%">진료내역</th>
											
												<!-- yyyy-MM-dd  -->
											</tr>
											
											<tr>
												<td>1</td>
												<td>EA001</td>
												<td>일반</td>
												<td>아세트아미노펜(타이레놀)</td>
											
												
											</tr>
											
												<tr>
												<td>1</td>
												<td>EA001</td>
												<td>일반</td>
												<td>아세트아미노펜(타이레놀)</td>
												
											
											</tr>
											
												<tr>
												<td>1</td>
												<td>EA001</td>
												<td>일반</td>
												<td>아세트아미노펜(타이레놀)</td>
												
											
											</tr>
											
												<tr>
												<td>1</td>
												<td>EA001</td>
												<td>일반</td>
												<td>아세트아미노펜(타이레놀)</td>
												
											
											</tr>
											
												<tr>
												<td>1</td>
												<td>EA001</td>
												<td>일반</td>
												<td>아세트아미노펜(타이레놀)</td>
												
										
											</tr>
											
											
											
											



											<c:if test="${!empty minfoList }">
												<c:forEach items="${minfoList}" var="minfo">
													<tr>

														<td>${minfo.minfoClass }</td>
														<td>${minfo.minfoCode }</td>
														<td>${minfo.minfoContent }
														<td>${minfo.minfoWriter }</td>
														<td>${minfo.minfoWriter }</td>
														<td>${minfo.minfoWriter }</td>
														<td><fmt:formatDate value="${minfo.minfoRegdate }"
																pattern="yyyy-MM-dd" /></td>
													</tr>

												</c:forEach>
											</c:if>
											<c:if test="${empty minfoList }">
												<tr>
													<td colspan="7" class="text-center">해당내용이 없습니다.</td>
												</tr>
											</c:if>
										</table>
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
							</div>
						</section>
						<div class="card" style="overflow-y: scroll; overflow-x: hidden;">
							<div class="card-body" style="text-align: center; font-size: 13px; margin-top: -30px; margin-right: -30px; margin-left: -28px;">
								<div class="row">
									<div class="col-sm-12">
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
											<tr>
												<td>1</td>
												<td>2022.09.27 발주요청서</td>
												<td>비품</td>
												<td>1</td>
												<td>이금박</td>
												<td>2022/09/27</td>
												
											</tr>
											<tr>
												<td>1</td>
												<td>2022.09.27 발주요청서</td>
												<td>비품</td>
												<td>1</td>
												<td>이금박</td>
												<td>2022/09/27</td>
												
											</tr>
											<tr>
												<td>1</td>
												<td>2022.09.27 발주요청서</td>
												<td>비품</td>
												<td>1</td>
												<td>이금박</td>
												<td>2022/09/27</td>
												
											</tr>
											<tr>
												<td>1</td>
												<td>2022.09.27 발주요청서</td>
												<td>비품</td>
												<td>1</td>
												<td>이금박</td>
												<td>2022/09/27</td>
												
											</tr>
											<tr>
												<td>2</td>
												<td>2022.09.27 발주요청서</td>
												<td>비품</td>
												<td>1</td>
												<td>이금박</td>
												<td>2022/09/27</td>
												
											</tr>
											<tr>
												<td>3</td>
												<td>2022.09.27 발주요청서</td>
												<td>비품</td>
												<td>1</td>
												<td>이금박</td>
												<td>2022/09/27</td>
												
											</tr>
											<tr>
												<td>4</td>
												<td>2022.09.27 발주요청서</td>
												<td>비품</td>
												<td>1</td>
												<td>이금박</td>
												<td>2022/09/27</td>
											
											</tr>
											<tr>
												<td>1</td>
												<td>2022.09.27 발주요청서</td>
												<td>비품</td>
												<td>1</td>
												<td>이금박</td>
												<td>2022/09/27</td>
												
											</tr>

											<c:if test="${!empty minfoList }">
												<c:forEach items="${minfoList}" var="minfo">
													<tr>

														<td>${minfo.minfoClass }</td>
														<td>${minfo.minfoCode }</td>
														<td>${minfo.minfoContent }
														<td>${minfo.minfoWriter }</td>
														<td>${minfo.minfoWriter }</td>
														<td>${minfo.minfoWriter }</td>
														<td><fmt:formatDate value="${minfo.minfoRegdate }"
																pattern="yyyy-MM-dd" /></td>
													</tr>

												</c:forEach>
											</c:if>
											<c:if test="${empty minfoList }">
												<tr>
													<td colspan="7" class="text-center">해당내용이 없습니다.</td>
												</tr>
											</c:if>
										</table>
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

function patDelete(a){
	$.ajax({
		url:"detail/patientDelete",
		type:"post",
		data: {pNo: a},
		dataType:"json",
		success:alert("삭제완료") ,

		error: function(){	}
		
	});
	 opener.location.reload();
		  window.close() 

}

function patUpdate(a){
	$.ajax({
		url:"<%=request.getContextPath()%>/desk/patientModify",
		type:"post",
		data: $('#frm').serialize(),
		success:alert("수정완료") ,

		error: function(){ alert("신규등록 error"); }
		
	});
	 opener.location.reload();
/* 		  window.close() 
 */
}
	
</script>

<script>
	$.ajax({
	    method: "GET",
	    url: "http://192.168.141.26:5012/recommend?PNo="+${patient.PNo},
// 	    url: "http://localhost:5012/recommend?PNo="+${patient.PNo},
	    dataType: "json",
	    success: function (p_result) {
	        document.getElementById('brushing').innerText = p_result[0];
	        document.getElementById('paste').innerText = p_result[1];
	        document.getElementById('brush').innerText = p_result[2];
	        document.getElementById('galgel').innerText = p_result[3];
	    },
	    error: function(){
	        document.getElementById('brushing').innerText = "데이터 없음";
	        document.getElementById('paste').innerText = "데이터 없음";
	        document.getElementById('brush').innerText = "데이터 없음";
	        document.getElementById('galgel').innerText = "데이터 없음";
	    }
	})
</script>


