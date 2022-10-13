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
			<div class="col-sm-6 justify-content-center" style="border-right: solid 1px;">
				<section class="content" style="hight 80%; wigth:95%">
					<section class="content-header" >
						<div class="container-fluid" >
							<h2 style="text-align: center;">결제 요청 목록</h2>
						</div>
					</section>
					
					<div class="row">
						<div class="col-sm-12">
							<div style="float: right;">
								<div id="keyword" class="card-tools"
								style="width: 450px; height: 60px; font-size: 13px; float: right;">
									<div class="input-group row">
									<!-- search bar -->
									<!-- sort num -->
										<select class="form-control col-md-3" name="perPageNum"
											id="perPageNum" onchange="list_go(1);">
											<option value="10" ${cri.perPageNum eq 10 ? 'selected' : '' }>정렬개수</option>
											<option value="5" ${cri.perPageNum eq 5 ? 'selected' : '' }>5개씩</option>
											<option value="10" ${cri.perPageNum eq 10 ? 'selected' : '' }>10개씩</option>
											<option value="20" ${cri.perPageNum eq 20 ? 'selected' : '' }>20개씩</option>
										</select>


									<!-- search bar -->
										<select class="form-control col-md-3" name="searchType"
											id="searchType">
											<option value="">검색구분</option>
	
											<option value="i" ${param.searchType=='i' ? "selected":"" }>제목</option>
											<option value="n" ${param.searchType=='n' ? "selected":"" }>구분</option>
											<option value="p" ${param.searchType=='p' ? "selected":"" }>작성자</option>
	
										</select>
										<!-- keyword -->
										<input class="form-control" type="text" name="keyword"
											placeholder="검색어를 입력하세요." value="${cri.keyword }" /> <span
											class="input-group-append">
											<button class="btn btn-primary" type="button" id="searchBtn"
												data-card-widget="search" onclick="list_go(1);">
												<i class="fa fa-fw fa-search"></i>
											</button>
										</span>
										<!-- end : search bar -->
									</div>
								</div>
						
							</div>
						</div>
					</div>
					
					<div class="card" style="height: 70vh; overflow-y: scroll;" >
						

						<div class="card-body" style="text-align: center; font-size: 13px;">
							<div class="row">
								<div class="col-sm-12">
									<table class="table table-bordered">
										<tr bgcolor="#333258" style="color: white">
											<th>순번</th>
											<th>결제상태</th>
											<th>제목</th>
											<th>구분</th>
											<th>수량</th>
											<th>작성자</th>
											<th>요청일자</th>
											<th>상세</th>
											<!-- yyyy-MM-dd  -->
										</tr>
										<tr>
											<td>1</td>
											<td>대기중</td>
											<td>2022.10.1 발주요청서</td>
											<td>비품</td>
											<td>10</td>
											<td>박재린</td>
											<td>2023.9.23</td>
											<td>
												<button type="button" class="btn btn-primary btn-xs" 
												style="border-radius: 10px; background: gray; ">상세</button>
											</td>
											<tr>
											<td>2</td>
											<td>대기중</td>
											<td>2022.10.2 발주요청서</td>
											<td>의약품</td>
											<td>5</td>
											<td>김금규</td>
											<td>2023.9.13</td>
											<td>
												<button type="button" class="btn btn-primary btn-xs" 
												style="border-radius: 10px; background: gray; ">상세</button>
											</td>
											<tr>
											<td>3</td>
											<td>승인</td>
											<td>2022.9.30 발주요청서</td>
											<td>의약품</td>
											<td>10</td>
											<td>곽민수</td>
											<td>2023.10.2</td>
											<td>
												<button type="button" class="btn btn-primary btn-xs" 
												style="border-radius: 10px; background: gray; ">상세</button>
											</td>
											<tr>
											<td>4</td>
											<td>대기중</td>
											<td>2022.10.2 발주요청서</td>
											<td>비품</td>
											<td>10</td>
											<td>조동석</td>
											<td>2023.9.23</td>
											<td>
												<button type="button" class="btn btn-primary btn-xs" 
												style="border-radius: 10px; background: gray; ">상세</button>
											</td>
											<tr>
											<td>5</td>
											<td>대기중</td>
											<td>2022.10.2 발주요청서</td>
											<td>비품</td>
											<td>10</td>
											<td>조동석</td>
											<td>2023.9.23</td>
											<td>
												<button type="button" class="btn btn-primary btn-xs" 
												style="border-radius: 10px; background: gray; ">상세</button>
											</td>
											<tr>
											<td>6</td>
											<td>대기중</td>
											<td>2022.10.2 발주요청서</td>
											<td>비품</td>
											<td>10</td>
											<td>조동석</td>
											<td>2023.9.23</td>
											<td>
												<button type="button" class="btn btn-primary btn-xs" 
												style="border-radius: 10px; background: gray; ">상세</button>
											</td>
										</tr>
										<tr>
											<td>7</td>
											<td>대기중</td>
											<td>2022.10.2 발주요청서</td>
											<td>비품</td>
											<td>10</td>
											<td>조동석</td>
											<td>2023.9.23</td>
											<td>
												<button type="button" class="btn btn-primary btn-xs" 
												style="border-radius: 10px; background: gray; ">상세</button>
											</td>
										</tr>
										<tr>
											<td>8</td>
											<td>대기중</td>
											<td>2022.10.2 발주요청서</td>
											<td>비품</td>
											<td>10</td>
											<td>조동석</td>
											<td>2023.9.23</td>
											<td>
												<button type="button" class="btn btn-primary btn-xs" 
												style="border-radius: 10px; background: gray; ">상세</button>
											</td>
										</tr>
										<tr>
											<td>9</td>
											<td>대기중</td>
											<td>2022.10.2 발주요청서</td>
											<td>비품</td>
											<td>10</td>
											<td>조동석</td>
											<td>2023.9.23</td>
											<td>
												<button type="button" class="btn btn-primary btn-xs" 
												style="border-radius: 10px; background: gray; ">상세</button>
											</td>
										</tr>
										<tr>
											<td>10</td>
											<td>대기중</td>
											<td>2022.10.2 발주요청서</td>
											<td>비품</td>
											<td>10</td>
											<td>심정현</td>
											<td>2023.9.23</td>
											<td>
												<button type="button" class="btn btn-primary btn-xs" 
												style="border-radius: 10px; background: gray; ">상세</button>
											</td>
										</tr>
										<tr>
											<td>11</td>
											<td>대기중</td>
											<td>2022.10.2 발주요청서</td>
											<td>비품</td>
											<td>10</td>
											<td>조동석</td>
											<td>2023.9.23</td>
											<td>
												<button type="button" class="btn btn-primary btn-xs" 
												style="border-radius: 10px; background: gray; ">상세</button>
											</td>
										</tr>
										<tr>
											<td>12</td>
											<td>대기중</td>
											<td>2022.10.2 발주요청서</td>
											<td>비품</td>
											<td>10</td>
											<td>조동석</td>
											<td>2023.9.23</td>
											<td>
												<button type="button" class="btn btn-primary btn-xs" 
												style="border-radius: 10px; background: gray; ">상세</button>
											</td>
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
				<div class="card-footer">
							<%@ include file="/WEB-INF/views/include/pagination.jsp"%>
				</div>

			</div>
			<div class="col-sm-6">
				<div class="row justify-content-center" style="padding-bottom: 8vh;">
					<section class="content" style="height: 20vh; width: 95%;">
						<section class="content-header">
							<h1 style="text-align: center; ">결재 요청 상세 목록</h1>
							<div class="container-fluid" style="">
								<h2 style="text-align: center; ">결재 상태</h2>
							</div>
							
						</section>
						<div class="card" style="overflow-y: scroll;">
							<div class="card-body" style="text-align: center; font-size: 13px; ">
								<div class="row">
									<div class="col-sm-12">
										<table class="table table-bordered">
											<tr bgcolor="#333258" style="color: white">
												<th>작성자</th>
												<th>결제등록일</th>
												<th>결제승인여부</th>
												<th>승인자</th>
												<th>결제 승인일</th>
												<th>반려사유</th>
												<!-- yyyy-MM-dd  -->
											</tr>
											
											<tr>
												<td>심금규</td>
												<td>2022.10.2 발주요청서</td>
												<td>대기중</td>
												<td></td>
												<td></td>
												<td></td>
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
						<div>
						
							
						</div>
					
					</section>
					
				</div>
				
				<div class="row justify-content-center" style="padding-bottom: 7vh;">
					<section class="content" style="height: 50vh; width: 95%;" >
						<section class="content-header">
							<div class="container-fluid">
								<h2 style="text-align: center; margin-top: 10px; ">비품 발주목록</h2>
							</div>
						</section>
						<div class="card" style="overflow-y: scroll;">
							<div class="card-body" style="text-align: center; font-size: 13px;;">
								<div class="row">
									<div class="col-sm-12">
										<table class="table table-bordered">
											<tr bgcolor="#333258" style="color: white">
												<th>순번</th>
												<th>제약코드</th>
												<th>구분</th>
												<th>품목명</th>
												<th>단위</th>
												<th>수량</th>
												<th>업체명</th>
												<th>금액</th>
												<!-- yyyy-MM-dd  -->
											</tr>
											<tr>
												<td>1</td>
												<td>MA01</td>
												<td>일반</td>
												<td>타이레놀(아세트아미노펜)</td>
												<td>정</td>
												<td>20</td>
												<td>(주)한국얀센</td>
												<td>1500</td>
												
											</tr>
											<tr>
												<td>2</td>
												<td>MA32</td>
												<td>일반</td>
												<td>탁센(나프록센)</td>
												<td>정</td>
												<td>10</td>
												<td>GC녹십자</td>
												<td>1400</td>
												
											</tr>
											<tr>
												<td>3</td>
												<td>MA11</td>
												<td>일반</td>
												<td>타이레놀(아세트아미노펜)</td>
												<td>정</td>
												<td>20</td>
												<td>(주)한국얀센</td>
												<td>1500</td>
												
											</tr>
											<tr>
												<td>1</td>
												<td>MA01</td>
												<td>일반</td>
												<td>타이레놀(아세트아미노펜)</td>
												<td>정</td>
												<td>20</td>
												<td>(주)한국얀센</td>
												<td>1500</td>
												
											</tr>
											<tr>
												<td>1</td>
												<td>MA01</td>
												<td>일반</td>
												<td>타이레놀(아세트아미노펜)</td>
												<td>정</td>
												<td>20</td>
												<td>(주)한국얀센</td>
												<td>1500</td>
												
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
							<button type="button" class="btn btn-primary btn-xs" style="float: right; background:gray; border-radius: 10px; ">취소</button>
							
							<button type="button" class="btn btn-primary btn-xs" style="float: right; background:red; border-radius: 10px; margin-right: 5px;">결제반려</button>
							
							<button type="button" class="btn btn-primary btn-xs" style="float: right; border-radius: 10px; margin-right: 5px;">결제요청</button>
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
