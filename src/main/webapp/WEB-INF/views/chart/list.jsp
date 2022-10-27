<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" />
<c:set var="minfoList" value="${dataMap.minfoList }" />

<div style="position: fixed; width: 100%; height: 100%">
	<div class="contaner-fluid" style="margin: 1.5em;">
		<div class="row">
			<div class="col-sm-4 justify-content-center" style="border-right: solid 1px;">
				<section class="content" style="hight: 50vh; wigth:95%">
					<section class="content-header" >
						<div class="container-fluid" >
							<h3>▶ 진료내역</h3>
						</div>
						<div class="container-fluid" >
							<h3>▶ 처치내역</h3>
						</div>
						</section>
						<div class="card" style="overflow-y: scroll;">
							<div class="card-body" style="text-align: center; font-size: 13px;;">
								<div class="row">
									<div class="col-sm-12">
						<table class="table table-bordered" id="userListTable">
											<tr bgcolor="#333258" style="color: white; cursor: default;">
												<th>진료일자</th>
												<th>진료의사</th>
												<th>치식</th>
												<th>진료내역</th>
												<!-- yyyy-MM-dd  -->
											</tr>
											<tr>
												<td>1</td>
												<td>2022.09.27 발주요청서</td>
												<td>비품</td>
												<td>1</td>
											</tr>
											<tr>
												<td>1</td>
												<td>2022.09.27 발주요청서</td>
												<td>비품</td>
												<td>1</td>
											</tr>
											<tr>
												<td>1</td>
												<td>2022.09.27 발주요청서</td>
												<td>비품</td>
												<td>1</td>
											</tr>
											<tr>
												<td>1</td>
												<td>2022.09.27 발주요청서</td>
												<td>비품</td>
												<td>1</td>
											</tr>
											<tr>
												<td>2</td>
												<td>2022.09.27 발주요청서</td>
												<td>비품</td>
												<td>1</td>	
											</tr>
											<tr>
												<td>3</td>
												<td>2022.09.27 발주요청서</td>
												<td>비품</td>
												<td>1</td>				
											</tr>
											<tr>
												<td>4</td>
												<td>2022.09.27 발주요청서</td>
												<td>비품</td>
												<td>1</td>				
											</tr>
											<tr>
												<td>1</td>
												<td>2022.09.27 발주요청서</td>
												<td>비품</td>
												<td>1</td>					
											</tr>
											<tr>
												<td>1</td>
												<td>2022.09.27 발주요청서</td>
												<td>비품</td>
												<td>1</td>					
											</tr>
											<tr>
												<td>1</td>
												<td>2022.09.27 발주요청서</td>
												<td>비품</td>
												<td>1</td>					
											</tr>
											<tr>
												<td>1</td>
												<td>2022.09.27 발주요청서</td>
												<td>비품</td>
												<td>1</td>					
											</tr>
											<tr>
												<td>1</td>
												<td>2022.09.27 발주요청서</td>
												<td>비품</td>
												<td>1</td>					
											</tr>
											<tr>
												<td>1</td>
												<td>2022.09.27 발주요청서</td>
												<td>비품</td>
												<td>1</td>					
											</tr>
											<tr>
												<td>1</td>
												<td>2022.09.27 발주요청서</td>
												<td>비품</td>
												<td>1</td>					
											</tr>
											<tr>
												<td>1</td>
												<td>2022.09.27 발주요청서</td>
												<td>비품</td>
												<td>1</td>					
											</tr>
											<tr>
												<td>1</td>
												<td>2022.09.27 발주요청서</td>
												<td>비품</td>
												<td>1</td>					
											</tr>
											<tr>
												<td>1</td>
												<td>2022.09.27 발주요청서</td>
												<td>비품</td>
												<td>1</td>					
											</tr>
											<tr>
												<td>1</td>
												<td>2022.09.27 발주요청서</td>
												<td>비품</td>
												<td>1</td>					
											</tr>
											<tr>
												<td>1</td>
												<td>2022.09.27 발주요청서</td>
												<td>비품</td>
												<td>1</td>					
											</tr>
											<tr>
												<td>1</td>
												<td>2022.09.27 발주요청서</td>
												<td>비품</td>
												<td>1</td>					
											</tr>
											<tr>
												<td>1</td>
												<td>2022.09.27 발주요청서</td>
												<td>비품</td>
												<td>1</td>					
											</tr>
											<tr>
												<td>1</td>
												<td>2022.09.27 발주요청서</td>
												<td>비품</td>
												<td>1</td>					
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
										</div>>
										</div>
										</div>
					</section>
						
					
				
						


			</div>
			<div class="col-sm-6 justify-content-center" style="border-right: solid 1px;">
				<div class="row justify-content-center" style="padding-bottom: 8vh;">
					<section class="content" style="height: 40vh; width: 95%;">
						<section class="content-header">
							
							<div class="container-fluid" style="">
							<h3>▶자주하는 진료</h3>
							
							</div>
							
							<div class="container-fluid" style="">
							<h3>▶진료메모</h3>
							<textarea class="form-control"></textarea>
							</div>
							<button type="button" class="btn btn-primary btn-xl" style="float: right; border-radius: 10px; margin-right: 5px;">처방전 등록</button>
						
									<!-- col-sm-12 -->
								<!-- row -->
							
						</section>
					</section>
				</div>
			</div>
		<div class="col-sm-2">
			<h3>▶환자정보</h3>
			<table class="table-sm">
			<tr>
				<td>곽진기(10333)</td>
				<td>22/남</td>															
			</tr>
			<tr>
				<td>보험구분:</td>
				<td>건강보험</td>															
			</tr>
			<tr>
				<td>내원경로:</td>
				<td>소개직원</td>															
			</tr>
			<tr>
				<td>소개자:</td>
				<td></td>															
			</tr>
			<tr>
				<td>구분:</td>
				<td></td>															
			</tr>
			<tr>
				<td>리콜구분:</td>
				<td></td>															
			</tr>
			<tr>
				<td>담당:</td>
				<td>김의사</td>															
			</tr>
			<tr>
				<td>전화:</td>
				<td>01011111111</td>															
			</tr>
			</table>
			
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
		 </div>
		</div>


		<div class="row">
			<div style="width: 47%; margin-left: 1.5em;">


				<div style="max-height: 39%; overflow-y: scroll;"></div>
			</div>
		</div>
	</div>
</div>
