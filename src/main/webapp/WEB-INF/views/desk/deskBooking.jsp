<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
   <script src="https://cdn.ckeditor.com/ckeditor5/35.2.1/classic/ckeditor.js"></script>
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
			<div class="col-sm-6 justify-content-center" style="border-right: solid 1px;">
				<section class="content" style="hight 80%; wigth:100%">
					<section class="content-header" >
						<div class="container-fluid" >
								<div class="row">
							<h4 style="text-align: left; ">XX님의 오늘의 진료</h4>
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
                      
                                    <form>

                                        <div class="form-row">
                                            <div class="form-group col-md-2">
                                                <label>치아번호</label>
                                                <input type="text" class="form-control" placeholder="${patient.PName}">
                                            </div>
                                            <div class="form-group col-md-2">
                                                <label>구분자</label>
                                                <input type="email" class="form-control" placeholder="${patient.PSfx}">
                                            </div>
                                            <div class="form-group col-md-4">
                                                <label>주민등록번호</label>
                                                <input type="email" class="form-control" placeholder="${patient.PRnum}">
                                            </div>
                                            
                                            <div class="form-group col-md-3">
                                                <label>휴대전화</label>
                                                <input type="text" class="form-control" placeholder="${patient.PTel}">
                                            </div>
                                            <div class="form-group col-md-3">
                                                <label>차트번호</label>
                                                <input type="text" class="form-control" placeholder="${patient.PNo}">
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
                                            <div class="form-group col-md-7">
                                                <label>나머지주소</label>
                                                <input type="text" name="address" placeholder="${patient.PAddr1} ${patient.PAddr2}" class="form-control" />
                                            </div>
                                           			
                                        </div>
                                    </form>
                                    
								
										
									       <div id="editor">증상 내용</div>
									        <script>
							                        ClassicEditor
							                                .create( document.querySelector( '#editor' ) )
							                                .then( editor => {
							                                        console.log( editor );
							                                } )
							                                .catch( error => {
							                                        console.error( error );
							                                } );
							                </script>
                                </div>
                        		
              	<section class="content-header" >
						<div class="container-fluid" >
								<div class="row">
							<h4 style="text-align: left; ">XX님의 담당의사 / 담당직원</h4>
									  <div>
								담당의사&nbsp;
								<c:set var="nowYear" value="2022"></c:set>
								<select>
								  <c:forEach var="i" begin="1950" end="${nowYear}" step="1">
								    <option value="${nowYear - i + 1950}">${nowYear - i + 1950}년생</option>
								  </c:forEach>
								</select>
									 
									  
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;담당직원&nbsp;
								<c:set var="nowYear" value="2022"></c:set>
								<select>
								  <c:forEach var="i" begin="1950" end="${nowYear}" step="1">
								    <option value="${nowYear - i + 1950}">${nowYear - i + 1950}년생</option>
								  </c:forEach>
								</select>
									  </div>
			
							</div>
							</div>
							</section>
						
				
								
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
							<h4 style="text-align: left; ">xx님의 전신병력 및 체크사항</h4>
							</div>
					<section class="content" style="height: 30vh; width: 95%;" >
						<div class="card">
							<div class="card-body" style="text-align: center; font-size: 13px; margin-top: -30px; margin-right: -30px; margin-left: -28px;">
								<div class="row">
								
									<div class="col-sm-12">
									   <div  class="form-row" >
                                       						<div class = "col-12 d-inline-block">
						<div class = "row pt-2">
							<div class="col-md-2 ">
								<div class="custom-control custom-checkbox mb-3">
									<input type="checkbox" class="custom-control-input" checked id="customCheckBox1" >
									<label class="custom-control-label col-form-label-sm" for="customCheckBox1">치석</label>
								</div>
							</div>
							<div class="col-md-2">
								<div class="custom-control custom-checkbox mb-3" style="margin-left:-5px;">
									<input type="checkbox" class="custom-control-input" checked id="customCheckBox2" >
									<label class="custom-control-label col-form-label-sm" for="customCheckBox2">교정&nbsp;&nbsp;</label>
								</div>
							</div>
							<div class="col-md-2">
								<div class="custom-control custom-checkbox mb-3">
									<input type="checkbox" class="custom-control-input" checked id="customCheckBox3" >
									<label class="custom-control-label col-form-label-sm" for="customCheckBox3">보철물</label>
								</div>
							</div>
							<div class="col-md-3">
								<div class="custom-control custom-checkbox mb-3" style="margin-left:-30px;">
									<input type="checkbox" class="custom-control-input" checked id="customCheckBox4" >
									<label class="custom-control-label col-form-label-sm" for="customCheckBox4">구강질환</label>
								</div>
							</div>
							<div class="col-md-3">
								<div class="custom-control custom-checkbox mb-3" style="margin-left:-80px;">
									<input type="checkbox" class="custom-control-input" checked id="customCheckBox5" >
									<label class="custom-control-label col-form-label-sm" for="customCheckBox5">치주질환</label>
								</div>
							</div>
						</div>
						<div class = "row">
							<div class="col-md-2">
								<div class="custom-control custom-checkbox mb-3">
									<input type="checkbox" class="custom-control-input" checked id="customCheckBox6" >
									<label class="custom-control-label col-form-label-sm" for="customCheckBox6">간염</label>
								</div>
							</div>
							<div class="col-md-2">
								<div class="custom-control custom-checkbox mb-3">
									<input type="checkbox" class="custom-control-input" checked id="customCheckBox7" >
									<label class="custom-control-label col-form-label-sm" for="customCheckBox7">임신중</label>
								</div>
							</div>
							<div class="col-md-2">
								<div class="custom-control custom-checkbox mb-3">
									<input type="checkbox" class="custom-control-input" checked id="customCheckBox8" >
									<label class="custom-control-label col-form-label-sm" for="customCheckBox8">고혈압</label>
								</div>
							</div>
							<div class="col-md-3">
								<div class="custom-control custom-checkbox mb-3" style="margin-left:-30px;">
									<input type="checkbox" class="custom-control-input" checked id="customCheckBox9" >
									<label class="custom-control-label col-form-label-sm" for="customCheckBox9">신부전증</label>
								</div>
							</div>
							<div class="col-md-3">
								<div class="custom-control custom-checkbox mb-3" style="margin-left:-80px;">
									<input type="checkbox" class="custom-control-input" checked id="customCheckBox10" >
									<label class="custom-control-label col-form-label-sm" for="customCheckBox10">항우울증</label>
								</div>
							</div>
			
						</div>
						<div class = "row ">
							<div class="col-md-2">
								<div class="custom-control custom-checkbox mb-3">
									<input type="checkbox" class="custom-control-input" checked id="customCheckBox14" >
									<label class="custom-control-label col-form-label-sm" for="customCheckBox14">기타</label>
								</div>
							</div>
							<div class="col-md-2">
								<div class="custom-control custom-checkbox mb-3">
									<input type="checkbox" class="custom-control-input" checked id="customCheckBox15" >
									<label class="custom-control-label col-form-label-sm" for="customCheckBox15">이갈이</label>
								</div>
							</div>
									<div class="col-md-2">
								<div class="custom-control custom-checkbox mb-3">
									<input type="checkbox" class="custom-control-input" checked id="customCheckBox11" >
									<label class="custom-control-label col-form-label-sm" for="customCheckBox11">뇌경색</label>
								</div>
							</div>
							<div class="col-md-3">
								<div class="custom-control custom-checkbox mb-3" style="margin-left:-30px;">
									<input type="checkbox" class="custom-control-input" checked id="customCheckBox12" >
									<label class="custom-control-label col-form-label-sm" for="customCheckBox12">아스피린</label>
								</div>
							</div>
							<div class="col-md-3">
								<div class="custom-control custom-checkbox mb-3" style="margin-left:-80px;">
									<input type="checkbox" class="custom-control-input" checked id="customCheckBox16" >
									<label class="custom-control-label col-form-label-sm" for="customCheckBox16">신장투석</label>
								</div>
							</div>
						</div>
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
				</div>
			</div>
			<div class="col-sm-6">
				<div class="row justify-content-center" style="padding-bottom: 3vh;">
					<section class="content" style="height: 50vh; width: 95%;">
						<section class="content-header">
							<div class="container-fluid" style="">
							<h4 style="text-align: left; ">최근 진료목록</h4>
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
								<h4 style="text-align: left; margin-top: 1px; ">최근예약목록</h4>
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
			</div>
		</div>


		<div class="row">
			<div style="width: 47%; margin-left: 1.5em;">


				<div style="max-height: 39%; overflow-y: scroll;"></div>
			</div>
		</div>
	</div>
</div>
<script src="<%=request.getContextPath()%>/resources/vendor/jquery/jquery.min.js" ></script>


