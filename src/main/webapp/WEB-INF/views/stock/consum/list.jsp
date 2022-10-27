<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
	
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" />
<c:set var="minfoList" value="${dataMap.minfoList }" />
<style>
.td_content {
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
}

#Detail_main_add{
	padding:10%; 
	background-color: #ced4da; 
	color: black;
	border: 1px solid black; 
	font-weight: bolder; 
	border-radius: 4px
}

#requestBtn{
	border-radius: 5px;
	font-size: 13px; 
	padding: 4% 7%; 
	font-weight: bolder; 
	margin-right: 2%
}

#requestBtnCancel{	
	border-radius: 5px;
	font-size: 13px; 
	padding: 4% 7%; 
	font-weight: bolder; 
	margin-right: 2%;
	background: #961E1E;
}


</style>
<div style="position: fixed; width: 100%; height: 100%">
	<div class="contaner-fluid" style="margin: 1.5em;">
		<div class="row">
			<div class="col-sm-6 justify-content-center" style="border-right: solid 1px;">
				<section class="content">
					<section class="content-header" >
						<div class="container-fluid" >
							<h2 style="text-align: center; font-weight: bolder; font-size: 27px;">소모품 재고 현황</h2>
						</div>
					</section>
					
					<div class="row" style="padding: 1% 0%">
						<div class="col-sm-3">
							<div style="float: left; border-radius: 5px; background: #333258; 
							            color: white; font-weight: bolder; border: solid 1px black;
							            font-size:14px; padding:5% 10%;" 
							     onclick="newAdd()">
								신규소모품추가
							</div>
						</div>
						<div class="col-sm-9" >
							
								<div id="keyword" class="card-tools"
								style="font-size: 12px; float: right;">
									<div class="input-group row">
										<select class="form-control " name="perPageNum"
											id="perPageNum" onchange="list_go(1);">
											<option value="10" ${cri.perPageNum eq 10 ? 'selected' : '' }>정렬개수</option>
											<option value="5" ${cri.perPageNum eq 5 ? 'selected' : '' }>5개씩</option>
											<option value="10" ${cri.perPageNum eq 10 ? 'selected' : '' }>10개씩</option>
											<option value="20" ${cri.perPageNum eq 20 ? 'selected' : '' }>20개씩</option>
										</select>


									<!-- search bar -->
										<select class="form-control " name="searchType"
											id="searchType">
											<option value="">검색구분</option>
	
											<option value="i" ${param.searchType=='i' ? "selected":"" }>비품코드</option>
											<option value="n" ${param.searchType=='n' ? "selected":"" }>품목명</option>
											<option value="p" ${param.searchType=='p' ? "selected":"" }>재고</option>
											<option value="e" ${param.searchType=='e' ? "selected":"" }>업체명</option>
	
										</select>
										<!-- keyword -->
										<input class="form-control" type="text" name="keyword"
											placeholder="검색어를 입력하세요." value="${cri.keyword }" /> 
										<div style="background: #333258; width: 5vw; height: 7%; text-align: center;
													color: white; font-weight: bolder;font-size:13px; padding:2% 4%">
											검색
										</div>
										<!-- end : search bar -->
									</div>
								</div>
						
							
						</div>
					</div>
					
					<div class="card" style="height: 70vh; overflow-y: scroll;" >
						

						<div class="card-body" style="text-align: center; font-size: 12px;">
							<div class="row">
								<div class="col-sm-12">
									<table  id="eqlist" class="table table-bordered" style="table-layout: fixed;">
										<tr bgcolor="#333258" style="color: white">
											<th width="14%">일련코드</th>
											<th >품목명</th>
											<th width="10%">단위</th>
											<th width="10%">재고</th>
											<th width="15%">업체명</th>
											<th width="15%">입고일</th>
											<th width="10%" ">추가</th>
											<!-- yyyy-MM-dd  -->
										</tr>
										<tr class="tr-select" >
											<td onclick="detail()">
												<span>
													EQ001
												</span>
											</td>
											<td onclick="detail()" class="td_content" >
												   대충품목명10자리넘는대충품목명10자리
											</td>
											<td onclick="detail()" >개</td>
											<td onclick="detail()">100</td>
											<td onclick="detail()" class="td_content">
												대덕제약
											</td>
											<td onclick="detail()">2023.9.23</td>
											<td onclick="addRow()">
											<div  id="Detail_main_add"  >
												추가
											</div>	
											</td>
										</tr>
										<tr class="tr-select" >
											<td onclick="detail()">EQ002</td>
											<td onclick="detail()" class="td_content">대충품목명10자리넘는</td>
											<td onclick="detail()">개</td>
											<td onclick="detail()">100</td>
											<td onclick="detail()" class="td_content">대덕제약</td>
											<td onclick="detail()">2023.9.23</td>
											<td onclick="addRow()">
											<div id="Detail_main_add" >
												추가
											</div>	
											</td>
										</tr>
										<tr class="tr-select" >
											<td onclick="detail()">EQ003</td>
											<td onclick="detail()" class="td_content">대충품목명10자리넘는</td>
											<td onclick="detail()">개</td>
											<td onclick="detail()">100</td>
											<td onclick="detail()" class="td_content">대덕제약</td>
											<td onclick="detail()">2023.9.23</td>
											<td onclick="addRow()">
											<div id="Detail_main_add" >
												추가
											</div>	
											</td>
										</tr>
										<tr class="tr-select" >
											<td onclick="detail()">EQ004</td>
											<td onclick="detail()" class="td_content">대충품목명10자리넘는</td>
											<td onclick="detail()">개</td>
											<td onclick="detail()">100</td>
											<td onclick="detail()" class="td_content">대덕제약</td>
											<td onclick="detail()">2023.9.23</td>
											<td onclick="addRow()">
											<div id="Detail_main_add">
												추가
											</div>	
											</td>
										</tr>
										<tr class="tr-select" >
											<td onclick="detail()">EQ005</td>
											<td onclick="detail()" class="td_content">대충품목명10자리넘는</td>
											<td onclick="detail()">개</td>
											<td onclick="detail()">100</td>
											<td onclick="detail()" class="td_content">대덕제약</td>
											<td onclick="detail()">2023.9.23</td>
											<td onclick="addRow()">
											<div id="Detail_main_add" >
												추가
											</div>	
											</td>
										</tr>
										<tr class="tr-select" >
											<td onclick="detail()">EQ006</td>
											<td onclick="detail()" class="td_content">대충품목명10자리넘는</td>
											<td onclick="detail()">개</td>
											<td onclick="detail()">100</td>
											<td onclick="detail()" class="td_content">대덕제약</td>
											<td onclick="detail()">2023.9.23</td>
											<td onclick="addRow()">
											<div id="Detail_main_add">
												추가
											</div>	
											</td>
									
										</tr>
										<tr class="tr-select" >
											<td onclick="detail()">EQ001</td>
											<td onclick="detail()" class="td_content">대충품목명10자리넘는</td>
											<td onclick="detail()">개</td>
											<td onclick="detail()">100</td>
											<td onclick="detail()" class="td_content">대덕제약</td>
											<td onclick="detail()">2023.9.23</td>
											<td onclick="addRow()">
											<div id="Detail_main_add" >
												추가
											</div>	
											</td>
										</tr>
										
										<%-- <c:if test="${!empty minfoList }">
											<c:forEach items="${minfoList}" var="minfo">
												<tr class="tr-select" >
													<td onclick="detail()">${minfo.minfoClass }</td>
													<td onclick="detail()">${minfo.minfoCode }</td>
													<td onclick="detail()">${minfo.minfoContent }
													<td onclick="detail()">${minfo.minfoWriter }</td>
													<td onclick="detail()">${minfo.minfoWriter }</td>
													<td onclick="detail()">${minfo.minfoWriter }</td>
													<td onclick="detail()">
													<div id="Detail_main_add" >
														추가
													</div>	
													</td>
												</tr>
											</c:forEach>
										</c:if>
										<c:if test="${empty minfoList }">
											<tr>
												<td colspan="7" class="text-center">해당내용이 없습니다.</td>
											</tr>
										</c:if> --%>
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
					<section class="content" style="height: 40vh; width: 95%;">
						<section class="content-header">
							<!-- <div style="float: left; border-radius: 5px; background: #ced4da; 
							            color: black; font-weight: bolder; border: solid 1px black;
							            font-size:14px; padding:3px 10px;" 
							     onclick="add()">
								추가
							</div> -->
							<div class="container-fluid" >
								<h2 style="text-align: center; font-weight: bolder; font-size: 27px;">소모품 발주 신청</h2>
							</div>
							
						</section>
						<div class="card" style="overflow-y: scroll;">
							<div class="card-body" style="text-align: center; font-size: 11px; ">
								<div class="row">
									<div class="col-sm-12">
										<table  id="requestList" class="table table-bordered">
											<tr bgcolor="#333258" style="color: white">
												<th width="8%">순번</th>
												<th width="12%">일련코드</th>
												<th>품목명</th>
												<th width="10%">단위</th>
												<th width="10%">수량</th>
												<th width="15%">업체명</th>
												<th width="15%">금액(만)</th>
												<th width="8%">취소</th>
												<!-- yyyy-MM-dd  -->
											</tr>
											
										</table>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-7"> 
							
							</div>
							<div class="col-5">
							
							<div id = "requestBtnCancel"class="btn btn-primary float-right"  onclick="deleteAll()">
								    전체취소
							</div>
							<div id = "requestBtn" class="btn btn-primary float-right" onclick="orderRQ()">
							            결제요청
							</div>
							
							</div>
						</div>
					
					</section>
					
				</div>
				
				<div class="row justify-content-center" style="padding-bottom: 8vh;">
					<section class="content" style="height: 40vh; width: 95%;" >
						<section class="content-header">
							<div class="container-fluid">
								<h2 style="text-align: center; font-weight: bolder; font-size: 27px;">소모품 발주목록</h2>
							</div>
						</section>
						<div class="card" style="overflow-y: scroll;">
							<div class="card-body" style="text-align: center; font-size: 12px;">
								<div class="row">
									<div class="col-sm-12">
										<table  class="table table-bordered">
											<tr  bgcolor="#333258" style="color: white">
												<th>주문코드</th>											
												<th>제목</th>
												<th>작성자</th>
												<th>요청일자</th>
												<th>정보</th>
												<!-- yyyy-MM-dd  -->
											</tr>
											<tr class="tr-select">
												<td>ORD04</td>
												<td>2022.09.27 발주요청서</td>
												<td>이금박</td>
												<td>2022/09/27</td>
												<td>
													<div id="Detail_main_add" onclick="orderdetail()">
														상세
													</div>
												</td>
											</tr>
											<c:if test="${!empty minfoList }">
												<c:forEach items="${minfoList}" var="minfo">
													<tr class="tr-select">

														<td>${minfo.minfoClass }</td>
														<td>${minfo.minfoCode }</td>
														<td>${minfo.minfoContent }
														<td>${minfo.minfoWriter }</td>
														<td>
														<div id="Detail_main_add" onclick="orderdetail()">
															상세
														</div>
												</td>
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


<script type="text/javascript">

	function detail() {
		
		var popupWidth = 600;
		var popupHeight = 800;

		var popupX = (document.body.offsetWidth / 2) - (600 / 2);
		// 만들 팝업창 좌우 크기의 1/2 만큼 보정값으로 빼주었음

		var popupY= (window.screen.height / 2) - (600 / 2);
		// 만들 팝업창 상하 크기의 1/2 만큼 보정값으로 빼주었음
		
		
		window.open('detail','detail','height=600, width=800, left='+ popupX + ', top='+ popupY);
	}
	
	function newAdd() {
		
		var popupWidth = 600;
		var popupHeight = 800;

		var popupX = (document.body.offsetWidth / 2) + (200 / 2);
		// 만들 팝업창 좌우 크기의 1/2 만큼 보정값으로 빼주었음

		var popupY= (window.screen.height / 2) - (600 / 2);
		// 만들 팝업창 상하 크기의 1/2 만큼 보정값으로 빼주었음
		
		
		window.open('newAdd','newAdd','height=600, width=800, left='+ popupX + ', top='+ popupY);
	}
	
	function orderdetail() {
		
		var popupWidth = 600;
		var popupHeight = 800;

		var popupX = (document.body.offsetWidth / 2) - (300 / 2);
		// 만들 팝업창 좌우 크기의 1/2 만큼 보정값으로 빼주었음

		var popupY= (window.screen.height / 2) - (800 / 2);
		// 만들 팝업창 상하 크기의 1/2 만큼 보정값으로 빼주었음
		
		
		window.open('orderdetail','orderdetail','height=800, width=600, left='+ popupX + ', top='+ popupY);
	}
	
 
var increseNum = 1;

	function addRow() {
	 
	  const table_requestList = document.getElementById('requestList');
	  
	  const table1 =document.getElementById('eqlist');
	  const rowList = table1.rows;
	  
	  for (i=1; i<rowList.length; i++) 
	  {
	      var addlist = rowList[i]
	      addlist.onclick = function (){ 
	    	  const newRow = table_requestList.insertRow();
	    	  
	          newRow.insertCell(0).innerText = increseNum++;
	          newRow.insertCell(1).innerHTML =this.cells[0].innerHTML; 
	          newRow.insertCell(2).innerHTML =this.cells[1].innerHTML; 
	          newRow.insertCell(3).innerHTML =this.cells[2].innerHTML; 
	          newRow.insertCell(4).innerHTML =this.cells[3].innerHTML;
	          newRow.insertCell(5).innerHTML =this.cells[4].innerHTML; 
	          newRow.insertCell(6).innerHTML =this.cells[5].innerHTML; 
	          newRow.insertCell(7).innerHTML = '<div id="Detail_main_add" onclick="deleteRow(-1)">X</div>';
	          
	      };
	  };
	 }; 
	    
	 
	
	
	function deleteRow(rownum) {
		  // table element 찾기
		  const requestList = document.getElementById('requestList');
		  
		  // 행(Row) 삭제
		  const newRow = requestList.deleteRow(rownum);
		   
		  increseNum -= 1;
		} 
	
	function deleteAll() {
		var tableHeaderRowCount = 1;
		var table = document.getElementById('requestList');
		var rowCount = table.rows.length;
		increseNum = 1;
		for (var i = tableHeaderRowCount; i < rowCount; i++) {
		    table.deleteRow(tableHeaderRowCount);
		}
	}
	
	function orderRQ() {
		if (!confirm("결제요청을 하시겠습니까?")) {
            alert("취소하셨습니다");
        } else {
            alert("결체요청하셨습니다.");
            location.reload();
        }
		
	}
	
</script>

