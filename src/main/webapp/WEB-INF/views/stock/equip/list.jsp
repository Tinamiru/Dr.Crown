<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
	
<script src="https://unpkg.com/ag-grid-community/dist/ag-grid-community.min.noStyle.js"></script>
 <link rel="stylesheet" href="https://unpkg.com/ag-grid-community/styles/ag-grid.css"/>
 <link rel="stylesheet" href="https://unpkg.com/ag-grid-community/styles/ag-theme-alpine.css"/>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<c:set var="equipList" value="${dataMap.equipList }" />
<c:set var="mediList" value="${dataMap.mediList }" />
<c:set var="consumeList" value="${dataMap.consumeList }" />
<%-- <c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" /> --%>

<style>
/* .ag-theme-alpine{ */
/* 	--ag-header-background-color: #333258; */
/* 	--ag-header-foreground-color: white; */
/* 	--ag-font-size: 11px; */
/* } */

/* .ag-theme-alpine .ag-icon-menu {
	color : white;
}

.ag-header-icon.ag-header-cell-menu-button {
  opacity: 1 !important;
}
.ag-center-cols-container div button{
	border: none;
	background: none;
	color : #333258;
	width: 80%;
	height: 80%;
	font-weight: bolder;
	font-size: 13px;
	text-align: center;
	border-radius: 5px;
}
*/
.td_content {
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
}
.td_content_stock {
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
}
.td_content_suggest {
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
}
.td_content_min {
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

#Detail_main_equip{
	padding:10%; 
	background-color: #C6D9FF; 
	color: black;
	font-weight: bolder; 
	border-radius: 4px;
	font-size: 11px;
}

#Detail_main_medi{
	padding:10%; 
	background-color: #FED4E6; 
	color: black;
	font-weight: bolder; 
	border-radius: 4px;
	font-size: 11px;
}

#Detail_main_consume{
	padding:10%; 
	background-color: #E3FFE0; 
	color: black;
	font-weight: bolder; 
	border-radius: 4px;
	font-size: 11px;
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
#number_textalign{
	text-align: right;
}

</style>
<div style="position: fixed; width: 100%; height: 100%">
	<div class="contaner-fluid" style="margin: 1.5em;">
		<div class="row">
			<div class="col-sm-7 justify-content-center" style="border-right: solid 1px; padding: 5px;">
				<section class="content">
					<section class="content-header" >
						<div class="container-fluid" >
							<h2 style="text-align: center; font-weight: bolder; font-size: 30px;">비품 재고 현황</h2>
						</div>
					</section>
					
					<div class="row" style="padding: 0.7% 0%">
						<!-- <div class="col-sm-2">
							<div style="float: left; border-radius: 5px; background: #333258; 
							            color: white; font-weight: bolder; border: solid 1px black;
							            font-size:14px; padding:5% 10%;" 
							     onclick="newAdd()">
								신규비품추가
							</div>
							
						</div> -->
						<div class="col-sm-4" style="padding: 0.5%;">
							<div class="row">
								<div style="padding: 0.7% 2% 0.7% 10%;">
									<input id="checklist_equip" type="checkbox" checked="checked" >
									비품
								</div>
								<div style="padding: 0.7% 2%;">
									<input id="checklist_medi" type="checkbox" checked="checked">
									기자재
								</div>
								<div style="padding: 0.7% 2%;">
									<input id="checklist_consume" type="checkbox" checked="checked">
									소모품
								</div>
							</div>
						</div>
						<div class="col-sm-8" >
							
								<div id="keyword" class="card-tools" style="font-size: 12px; float: right;">
									<div class="input-group row">
										<%-- <select class="form-control " name="perPageNum"
											id="perPageNum" onchange="list_go(1);">
											<option value="10" ${cri.perPageNum eq 10 ? 'selected' : '' }>정렬개수</option>
											<option value="5" ${cri.perPageNum eq 5 ? 'selected' : '' }>5개씩</option>
											<option value="10" ${cri.perPageNum eq 10 ? 'selected' : '' }>10개씩</option>
											<option value="20" ${cri.perPageNum eq 20 ? 'selected' : '' }>20개씩</option>
										</select> --%>


									<!-- search bar -->
										 <select class="form-control " name="searchType"
											id="searchType">
											<option value="">검색구분</option>
	
											<option value="n" ${param.searchType=='n' ? "selected":"" }>품목명</option>
											<option value="m" ${param.searchType=='m' ? "selected":"" }>업체명</option>
	
										</select>
										<!-- keyword -->
										<input class="form-control" type="text" name="keyword"
											placeholder="검색어를 입력하세요." value="${cri.keyword }" /> 
										<span class="input-group-append">
											<button class="btn btn-primary" type="button" id="searchBtn"
												data-card-widget="search" onclick="list_go(1);" style="padding: 3% 5%;width: 3vw;">
												<i class="fa fa-fw fa-search"></i>
											</button>
										</span>
										<!-- end : search bar -->
									</div>
								</div>
						
							
						</div>
					</div>
					
					<div class="card" style="height: 80vh; overflow-y: scroll; overflow-x: hidden;">
						

						<div class="card-body" style=" font-size: 12px; padding: 15px 10px 0px 10px; ">
							<div class="row">
								<div class="col-sm-12" style="width: 52vw; height: 76vh";>
									<div id="" class="ag-theme-alpine" >
									<table  id="eqlist" class="table table-bordered" style="text-align: center;">
										<tr bgcolor="#333258" style="color: white">
											<th class="sortTh" width="8%">구분</th>
											<th class="sortTh" >품목명</th>
											<th class="sortTh" width="12%">재고(개)</th>
											<th class="sortTh" width="12%">권장수량</th>
											<th class="sortTh" width="12%">최소수량</th>
											<th class="sortTh" width="15%">업체명</th>
											<th class="sortTh" width="12%">입고일</th>
											<th width="7%">추가</th>
											<!-- yyyy-MM-dd  -->
										</tr>	
										 <c:if test="${!empty equipList }">
											<c:forEach items="${equipList}" var="stock">
												<tr class="equip_tr" >
													<td >
														<div id="Detail_main_equip">
															비품
														</div>	
													</td>
													
													<%-- <td>
														<a href="javascript:OpenWindow('detail?from=list&equCode=${stock.equCode }','상세보기',800,600);">
															${stock.equCode }
														</a>
														<input style="display: none;" name="equCode" value="${stock.equCode }"/>
													</td> --%>
													<td class="td_content">
														<a href="javascript:OpenWindow('equipDetail?from=list&equCode=${stock.equCode }','상세보기',800,600);">
															${stock.equName }
														</a>
													</td>
													<td class="td_content_stock">
														<a href="javascript:OpenWindow('equipDetail?from=list&equCode=${stock.equCode }','상세보기',800,600);"
														   class="equipStcok">
															${stock.equStock }
														</a>
													<td class="td_content_suggest">
														<a href="javascript:OpenWindow('equipDetail?from=list&equCode=${stock.equCode }','상세보기',800,600);">
															${stock.equSuggest }
														</a>
													</td>
													<td class="td_content_min">
														<a href="javascript:OpenWindow('equipDetail?from=list&equCode=${stock.equCode }','상세보기',800,600);">
															${stock.equMin }
														</a>
													</td>
													<td class="td_content">
														<a href="javascript:OpenWindow('equipDetail?from=list&equCode=${stock.equCode }','상세보기',800,600);">
															${stock.equMaker }
														</a>
													</td>
													<td >
														<a href="javascript:OpenWindow('equipDetail?from=list&equCode=${stock.equCode }','상세보기',800,600);">
															<fmt:formatDate value="${stock.equDate }" pattern="yyyy-MM-dd"/>
														</a>
														</td>
													<td style="display: none;">
														<a href="javascript:OpenWindow('equipDetail?from=list&equCode=${stock.equCode }','상세보기',800,600);">
															${stock.equPrice }
														
														</a>
														<input style="display: none;" name="equPrice" value="${stock.equPrice }"/>
													</td>
													<td style="display: none;">
														<input type="text" style="width: 2vw;" name="equStock"
															   placeholder="" value="" >
													</td>
													
													<td onclick="addRow()">
														<div id="Detail_main_add">
															추가
														</div>	
													</td>
												</tr>
											</c:forEach>
											
											<c:forEach items="${mediList}" var="stock">
												<tr class="medi_tr" >
 													<td >
														<div id="Detail_main_medi">
															기자재
														</div>	
													</td>
 													<td class="td_content">
														<a href="javascript:OpenWindow('mediDetail?from=list&mediCode=${stock.mediCode }','상세보기',800,600);">
															${stock.mediName }
														</a>
													</td>
													<td class="td_content">
														<a href="javascript:OpenWindow('mediDetail?from=list&mediCode=${stock.mediCode }','상세보기',800,600);">
															${stock.mediStock }
														</a>
													<td class="td_content">
														<a href="javascript:OpenWindow('mediDetail?from=list&mediCode=${stock.mediCode }','상세보기',800,600);">
															${stock.mediSuggest }
														</a>
													</td>
													<td class="td_content">
														<a href="javascript:OpenWindow('mediDetail?from=list&mediCode=${stock.mediCode }','상세보기',800,600);">
															${stock.mediMin }
														</a>
													</td>
													<td class="td_content">
														<a href="javascript:OpenWindow('mediDetail?from=list&mediCode=${stock.mediCode }','상세보기',800,600);">
															${stock.mediMaker }
														</a>
													</td>
													<td >
														<a href="javascript:OpenWindow('mediDetail?from=list&mediCode=${stock.mediCode }','상세보기',800,600);">
															<fmt:formatDate value="${stock.mediDate }" pattern="yyyy-MM-dd"/>
														</a>
														</td>
													<td style="display: none;">
														<a href="javascript:OpenWindow('mediDetail?from=list&mediCode=${stock.mediCode }','상세보기',800,600);">
															${stock.mediPrice }
														
														</a>
														<input style="display: none;" name="mediPrice" value="${stock.mediPrice }"/>
													</td>
													<td style="display: none;">
														<input type="text" style="width: 2vw;" name="mediStock"
															   placeholder="" value="" >
													</td>
													
													<td onclick="addRow()">
														<div id="Detail_main_add">
															추가
														</div>	
													</td>
												</tr>
											</c:forEach>
											
											<c:forEach items="${consumeList}" var="stock">
												<tr class="consume_tr">
 													<td >
														<div id="Detail_main_consume">
															소모품
														</div>	
													</td>
 													
 													<td class="td_content">
														<a href="javascript:OpenWindow('consumDetail?from=list&conCode=${stock.conCode }','상세보기',800,600);">
															${stock.conName }                            
														</a>                                             
													</td>                                                
													<td class="td_content">                                                 
														<a href="javascript:OpenWindow('consumDetail?from=list&conCode=${stock.conCode }','상세보기',800,600);">
															${stock.conStock }                           
														</a>                                             
													<td class="td_content">                              
														<a href="javascript:OpenWindow('consumDetail?from=list&conCode=${stock.conCode }','상세보기',800,600);">
															${stock.conSuggest }                         
														</a>                                             
													</td>                                                
													<td class="td_content">                              
														<a href="javascript:OpenWindow('consumDetail?from=list&conCode=${stock.conCode }','상세보기',800,600);">
															${stock.conMin }                             
														</a>                                             
													</td>                                                
													<td class="td_content">                              
														<a href="javascript:OpenWindow('consumDetail?from=list&conCode=${stock.conCode }','상세보기',800,600);">
															${stock.conMaker }                           
														</a>                                             
													</td>                                                
													<td >                                                
														<a href="javascript:OpenWindow('consumDetail?from=list&conCode=${stock.conCode }','상세보기',800,600);">
															<fmt:formatDate value="${stock.conDate }" pattern="yyyy-MM-dd"/>
														</a>
														</td>
													<td style="display: none;">
														<a href="javascript:OpenWindow('consumDetail?from=list&conCode=${stock.conCode }','상세보기',800,600);">
															${stock.conPrice }
														
														</a>
														<input style="display: " name="conPrice" value="${stock.conPrice }"/>
													</td>
													<td style="display: none;">
														<input type="text" style="width: 2vw;" name="conStock"
															   placeholder="" value="" >
													</td>
													
													<td onclick="addRow()">
														<div id="Detail_main_add">
															추가
														</div>	
													</td>
												</tr>
											</c:forEach>
										 </c:if>
										 <c:if test="${empty equipList }">
											<tr>
												<td colspan="7" class="text-center">비품목록이 없습니다.</td>
											</tr>
										</c:if>
										<c:if test="${empty mediList }">
											<tr>
												<td colspan="7" class="text-center">기자재목록이 없습니다.</td>
											</tr>
										</c:if>
										<c:if test="${empty consumeList }">
											<tr>
												<td colspan="7" class="text-center">소모품목록이 없습니다.</td>
											</tr>
										</c:if>
									</table>
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
			<div class="col-sm-5">
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
								<h2 style="text-align: center; font-weight: bolder; font-size: 27px;">비품 주문 신청</h2>
							</div>
							
						</section>
						<div class="card" style="overflow-y: scroll;">
							 
							<div class="card-body" style="text-align: center; font-size: 11px; ">
								<div class="row" >
									<a style="font-size: 15px;">
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;업체명 :
									</a>
									<div class="col-sm-12">
										
										<form name="" role="form" class="form-horizontal" action="/equip/listSuccess" method="post">
											<table  id="requestList" class="table table-bordered">
												<tr bgcolor="#333258" style="color: white">
													<th width="12%">구분</th>
													<th>품목명</th>
													<th width="15%">재고(개)</th>
													<th width="15%">신청수량</th>
													<th width="10%">취소</th>
													<!-- yyyy-MM-dd  -->
												</tr>
												
											</table>
										</form>
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
								<h2 style="text-align: center; font-weight: bolder; font-size: 27px;">비품 주문 목록</h2>
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
<!-- <script>
class BtnCellRenderer {
  init(params) {
    this.params = params;
	
    //----------------
    console.log("params", params);
	
    this.eGui = document.createElement('button');
    this.eGui.innerHTML = '추가';

    this.btnClickedHandler = this.btnClickedHandler.bind(this);
    this.eGui.addEventListener('click', this.btnClickedHandler);
  }

  getGui() {
    return this.eGui;
  }

  btnClickedHandler(event) {
    //this.params.onClick(this.params.value);
    //console.log("test", this.params);
    onBtnClick1( this.params) 
  }

  destroy() {
    this.eGui.removeEventListener('click', this.btnClickedHandler);
  }
  
}
</script> -->
<!-- <script>
class BtnCellRenderer2 {
  init(params) {
    this.params = params;
	
    //----------------
    console.log("params", params);
	
    this.eGui = document.createElement('button');
    this.eGui.innerHTML = '정보';

    this.btnClickedHandler = this.btnClickedHandler.bind(this);
    this.eGui.addEventListener('click', this.btnClickedHandler);
  }

  getGui() {
    return this.eGui;
  }

  btnClickedHandler(event) {
    //this.params.onClick(this.params.value);
    //console.log("test", this.params);
    detail( this.params) 
  }

  destroy() {
    this.eGui.removeEventListener('click', this.btnClickedHandler);
  }
  
}
</script> -->
<script type="text/javascript">

//컬럼 정의

// var columnDefs = [
// 		{ headerName:"일련코드", field: "code", sortable : true, filter : true, width : 120},
// 		{ headerName:"품목명", field: "name" , sortable : true, filter : true, width : 182},
// 		{ headerName:"수량", field: "stock" , sortable : true, /* filter : true ,*/ width : 80, type: 'rightAligned'},
// 		{ headerName:"단위", field: "unit" , /* sortable : true,  */filter : true, width : 80},
// 		{ headerName:"업체명", field: "maker" , sortable : true, filter : true, width : 150},
// 		{ headerName:"입고일", field: "date" , sortable : true, filter : true,  width : 120},
// 		{ headerName:"추가",
// 		      cellRenderer: BtnCellRenderer, width : 80, 
// // 		      cellRendererParams: {
// // 		    	  onClick: this.onBtnClick1.bind(this ),
// // 		    	  label: 'Click me2!'
// // 		        },
// 		      },
// 		{ headerName:"상세정보", cellRenderer: BtnCellRenderer2,width : 80}
// ];

// // 데이타 정의
// var rowData = [
// 	<c:forEach items="${equipList}" var="stock">
// 		{ 
// 		  code: "${stock.equCode}",
// 		  name: "${stock.equName}", 
// 		  stock: ${stock.equStock}, 
// 		  maker: "${stock.equMaker}", 
// 		  date: "<fmt:formatDate value='${stock.equDate }' pattern='yyyy-MM-dd'/>",
// 		},
// 	</c:forEach>

// ];

// // 그리드 옵션 지정
// var gridOptions = {
// 	columnDefs: columnDefs,
//     rowData: rowData,
//     rowSelection: 'single',
//     getSelectedRows: 'getSelectedRows'
// }

// var eGridDiv = document.querySelector('#myGrid');

// new agGrid.Grid(eGridDiv, gridOptions); 
 

// function onBtnClick1(clickData) 
// {
// // 	console.log("obj", this);
// // 	var rowDataClicked1 = this.rowData		
// // 	console.log(rowDataClicked1[3].code);
// 	increseNum++;
// 	console.log(clickData.data.code);
// 	$.ajax({
// 		url: "/stock/equip/listJson",
// 		method : "GET",
// 		data : {"equCode" : clickData.data.code},
		
// 		success:function(data)
// 		{
// 			var userList = data;
// 			var tr = ""
// 			//console.log(data)
// 				tr += 
// 				  "<tr><td>"+increseNum+
// 				  "</td><td>"+data.equCode + 
// 				  "</td><td>"+data.equName +
// 				  "</td><td>"+'<input type="text" style="width: 2vw;" name="equStock" placeholder="'+data.equUnit+'" value="" >'+
// 				  "</td><td>"+data.equMaker +
// 				  "</td><td>"+'<div id="number_textalign">'+data.equPrice +'</div>'+
// 				  "</td><td>"+'<div id="Detail_main_add" onclick="deleteRow(-1)">X</div>'+
// 				  "</td></tr>";
			
// 			$("#requestList").append(tr);
// 		},
// 	});
//   } 


	/* function detail(data) {
		var hi = data.data.code
		
		var popupWidth = 600;
		var popupHeight = 800;

		var popupX = (document.body.offsetWidth / 2) - (600 / 2);
		// 만들 팝업창 좌우 크기의 1/2 만큼 보정값으로 빼주었음

		var popupY= (window.screen.height / 2) - (600 / 2);
		// 만들 팝업창 상하 크기의 1/2 만큼 보정값으로 빼주었음
		window.open('detail?from=list&equCode='+data.data.code,'detail','height=600, width=800, left='+ popupX + ', top='+ popupY);
	} */
	
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
	
 
/* var increseNum = 1; */
	function addRow(){	
		
		var table =document.getElementById("eqlist");
		var table_requestList =document.getElementById("requestList");
		var rowList = table.rows;
		
	  for (i=1; i<rowList.length; i++) 
	  {
	      var addlist = rowList[i]
	      addlist.onclick = function (){ 
	    	  
	    	  const newRow = table_requestList.insertRow();
	          /* newRow.insertCell(0).innerText = increseNum++; */
	          newRow.insertCell(0).innerHTML =this.cells[0].innerHTML; 
	          newRow.insertCell(1).innerHTML =this.cells[1].innerHTML; 
	          newRow.insertCell(2).innerHTML =this.cells[2].innerHTML; 
	          newRow.insertCell(3).innerHTML =this.cells[8].innerHTML;
	          newRow.insertCell(4).innerHTML = '<div id="Detail_main_add" onclick="deleteRow(-1)">X</div>';
	    	  
	    	  if (this.cells[5]==table.cells[5]){
	    		  alert("다른 업체입니다")
	    		  table_requestList.deleteRow();
	    	  }
	    	  
	          
	      };
	  };
	 }; 
	    
	 
	
	
	function deleteRow(rownum) {
		  // table element 찾기
		  const requestList = document.getElementById('requestList');
		  
		  // 행(Row) 삭제
		  const newRow = requestList.deleteRow(rownum);
		   
		  /* increseNum -= 1; */
		} 
	
	function deleteAll() {
		var tableHeaderRowCount = 1;
		var table = document.getElementById('requestList');
		var rowCount = table.rows.length;
		/* increseNum = 1; */
		for (var i = tableHeaderRowCount; i < rowCount; i++) {
		    table.deleteRow(tableHeaderRowCount);
		}
	}
	
	function orderRQ(){
		if(!$('input[name="equCode"]').val()){
			swal ( "실패" ,  "신청비품은 1개 이상이어야합니다." ,  "error" );  	
		  return;
		}
		
	    
		//if($('input[name="id"]').val()!=checkedID){
	    //  alert("사번 생성 여부 확인이 필요합니다.");
	    //  return;
	    //}
	    
	    var form = $('form[role="form"]');
		form.attr({"method":"post",
		     	   "action":"listSucces"
		   		  });	
		
		form.submit();
		alert('신청이 완료되었습니다.')
		
		
	}
	
</script>

<script type="text/javascript">
/* $('.sortTh').click(function(){
    var table = $(this).parents('table').eq(0)
    var rows = table.find('tr:gt(0)').toArray().sort(comparer($(this).index()))
    this.asc = !this.asc
    if (!this.asc){rows = rows.reverse()}
    for (var i = 0; i < rows.length; i++){table.append(rows[i])}
})
function comparer(index) {
    return function(a, b) {
        var valA = getCellValue(a, index), valB = getCellValue(b, index)
        return $.isNumeric(valA) && $.isNumeric(valB) ? valA - valB : valA.toString().localeCompare(valB)
    }
}
function getCellValue(row, index){ return $(row).children('td').eq(index).text() }
 */
 

 function table_sort() {
   const styleSheet = document.createElement('style')
   styleSheet.innerHTML = `
         .order-inactive span {
             visibility:hidden;
         }
         .order-inactive:hover span {
             visibility:visible;
         }
         .order-active span {
             visibility: visible;
         }
     `
   document.head.appendChild(styleSheet)

   document.querySelectorAll('th.sortTh').forEach(th_elem => {
     let asc = true
     const span_elem = document.createElement('span')
     span_elem.style = "font-size:0.8rem; margin-left:0.5rem"
     span_elem.innerHTML = "▼"
     th_elem.appendChild(span_elem)
     th_elem.classList.add('order-inactive')

     const index = Array.from(th_elem.parentNode.children).indexOf(th_elem)
     th_elem.addEventListener('click', (e) => {
       document.querySelectorAll('th.order').forEach(elem => {
         elem.classList.remove('order-active')
         elem.classList.add('order-inactive')
       })
       th_elem.classList.remove('order-inactive')
       th_elem.classList.add('order-active')

       if (!asc) {
         th_elem.querySelector('span').innerHTML = ''
       } else {
         th_elem.querySelector('span').innerHTML = '▼'
       }
       const arr = Array.from(th_elem.closest("table").querySelectorAll('tbody tr')).slice(1)
       arr.sort((a, b) => {
         const a_val = a.children[index].innerText
         const b_val = b.children[index].innerText
         return (asc) ? a_val.localeCompare(b_val) : b_val.localeCompare(a_val)
       })
       arr.forEach(elem => {
         th_elem.closest("table").querySelector("tbody").appendChild(elem)
       })
       asc = !asc
     })
   })
 }

 table_sort()
 
 
</script>

<script type="text/javascript">

$(document).ready(function(){
    $("#checklist_equip").change(function(){
        if($("#checklist_equip").is(":checked")){
        	$(".equip_tr").css("display","")
        }else{
            $(".equip_tr").css("display","none")
        }
    });
});

$(document).ready(function(){
    $("#checklist_medi").change(function(){
        if($("#checklist_medi").is(":checked")){
        	$(".medi_tr").css("display","")
        }else{
            $(".medi_tr").css("display","none")
        }
    });
});

$(document).ready(function(){
    $("#checklist_consume").change(function(){
        if($("#checklist_consume").is(":checked")){
        	$(".consume_tr").css("display","")
        }else{
            $(".consume_tr").css("display","none")
        }
    });
});


$(document).ready(function(){
	var table =document.getElementById("eqlist");
	var rowList = table.rows;
	var hi = document.querySelector(".equipStcok");
	
	console.log(hi[2])
	
  for (i=1; i<rowList.length; i++) 
  {
      var onelist = rowList[i]
	  var stockNum = parseInt(onelist.cells[2].innerText);
    
      if(stockNum > 10){
    	  
      }
          
  };
});



</script>