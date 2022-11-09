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
<c:set var="dstList" value="${dataMap.dstList }" />

<style>
.ag-theme-alpine{
	--ag-header-background-color: #333258;
	--ag-header-foreground-color: white;
	--ag-font-size: 11px;
}

.ag-theme-alpine .ag-icon-menu {
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
							<h2 style="text-align: center; font-weight: bolder; font-size: 27px;">의약품 재고 현황</h2>
						</div>
					</section>
					
					<div class="row" style="padding: 1% 0%">
						<div class="col-sm-3">
							<div style="float: left; border-radius: 5px; background: #333258; 
							            color: white; font-weight: bolder; border: solid 1px black;
							            font-size:14px; padding:5% 10%;" 
							     onclick="newAdd()">
								신규의약품 추가
							</div>
						</div>
						<div class="col-sm-9" >
							
								<div id="keyword" class="card-tools"
								style="font-size: 12px; float: right;">
									<div class="input-group row">
										<%-- <select class="form-control " name="perPageNum"
											id="perPageNum" onchange="list_go(1);">
											<option value="10" ${cri.perPageNum eq 10 ? 'selected' : '' }>정렬개수</option>
											<option value="5" ${cri.perPageNum eq 5 ? 'selected' : '' }>5개씩</option>
											<option value="10" ${cri.perPageNum eq 10 ? 'selected' : '' }>10개씩</option>
											<option value="20" ${cri.perPageNum eq 20 ? 'selected' : '' }>20개씩</option>
										</select> --%>


									<!-- search bar -->
										<%-- <select class="form-control " name="searchType"
											id="searchType">
											<option value="">검색구분</option>
	
											<option value="n" ${param.searchType=='n' ? "selected":"" }>품목명</option>
											<option value="c" ${param.searchType=='c' ? "selected":"" }>일련코드</option>
											<option value="m" ${param.searchType=='m' ? "selected":"" }>업체명</option>
	
										</select>
										<!-- keyword -->
										<input class="form-control" type="text" name="keyword"
											placeholder="검색어를 입력하세요." value="${cri.keyword }" /> 
										<span
											class="input-group-append">
											<button class="btn btn-primary" type="button" id="searchBtn"
												data-card-widget="search" onclick="list_go(1);">
												<i class="fa fa-fw fa-search"></i>
											</button> 
										</span>--%>
										<!-- end : search bar -->
									</div>
								</div>
						
							
						</div>
					</div>
					
					<div class="card" style="height: 80vh;" >
						

						<div class="card-body" style=" font-size: 12px; padding: 15px 10px 0px 10px;">
							<div class="row">
								<div class="col-sm-12">
									<div id="myGrid" class="ag-theme-alpine" style="width: 56vw; height: 76vh;">
										
									<%-- <table  id="eqlist" class=" style="">
										<tr bgcolor="#333258" style="color: white">
											<th width="14%">일련코드</th>
											<th >품목명</th>
											<th width="10%">재고</th>
											<th width="10%">단위</th>
											<th width="15%">업체명</th>
											<th width="15%">입고일</th>
											<th width="10%">추가</th>
											<!-- yyyy-MM-dd  -->
										</tr>
										 <c:if test="${!empty equipList }">
											<c:forEach items="${equipList}" var="stock">
												<tr class="tr-select" >
													<td>
														<a href="javascript:OpenWindow('detail?from=list&equCode=${stock.equCode }','상세보기',800,600);">
															${stock.equCode }
														</a>
														<input style="display: none;" name="equCode" value="${stock.equCode }"/>
													</td>
														<td class="td_content">
														<a href="javascript:OpenWindow('detail?from=list&equCode=${stock.equCode }','상세보기',800,600);">
															${stock.equName }
														</a>
													</td>
													<td>
														<a href="javascript:OpenWindow('detail?from=list&equCode=${stock.equCode }','상세보기',800,600);">
															${stock.equStock }
														</a>
													<td>
														<a href="javascript:OpenWindow('detail?from=list&equCode=${stock.equCode }','상세보기',800,600);">
															${stock.equUnit }
														</a>
														<input style="display: none;" name="equUnit" value="${stock.equUnit }"/>
													</td>
														<td class="td_content">
														<a href="javascript:OpenWindow('detail?from=list&equCode=${stock.equCode }','상세보기',800,600);">
															${stock.equMaker }
														</a>
													</td>
													<td >
														<a href="javascript:OpenWindow('detail?from=list&equCode=${stock.equCode }','상세보기',800,600);">
															<fmt:formatDate value="${stock.equDate }" pattern="yyyy-MM-dd"/>
														</a>
														</td>
													<td style="display: none;">
														<a href="javascript:OpenWindow('detail?from=list&equCode=${stock.equCode }','상세보기',800,600);">
															${stock.equPrice }
														
														</a>
														<input style="display: none;" name="equPrice" value="${stock.equPrice }"/>
													</td>
													<td style="display: none;">
														<input type="text" style="width: 2vw;" name="equStock"
															   placeholder="${stock.equStock }" value="" >
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
												<td colspan="7" class="text-center">해당내용이 없습니다.</td>
											</tr>
										</c:if>
									</table> --%>
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
								<h2 style="text-align: center; font-weight: bolder; font-size: 27px;">의약품 주문 신청</h2>
							</div>
							
						</section>
						<div class="card" style="overflow-y: scroll;">
							<div class="card-body" style="text-align: center; font-size: 11px; ">
								<div class="row">
									<div class="col-sm-12">
										<form name="" role="form" class="form-horizontal" action="drugstock/listSuccess" method="post">
											<table  id="requestList" class="table table-bordered">
												<tr bgcolor="#333258" style="color: white">
													<th width="10%">순번</th>
													<th width="15%">일련코드</th>
													<th>품목명</th>
													<th width="10%">수량</th>
													<th width="15%">업체명</th>
													<th width="15%">단가(원)</th>
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
								<h2 style="text-align: center; font-weight: bolder; font-size: 27px;">의약품 주문 목록</h2>
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
<script>
var increseNum = 0;

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
</script>
<script>
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
</script>
<script type="text/javascript">

//컬럼 정의

var columnDefs = [
		{ headerName:"일련코드", field: "code", sortable : true, filter : true, width : 120},
		{ headerName:"약번호", field: "drugNo", sortable : true, filter : true, width : 120},
		{ headerName:"허가번호", field: "dstNo", sortable : true, filter : true, width : 120},
		{ headerName:"품목명", field: "name" , sortable : true, filter : true, width : 182},
		{ headerName:"주성분", field: "element" , sortable : true, filter : true, width : 120},
		{ headerName:"수량", field: "stock" , sortable : true, /* filter : true ,*/ width : 80, type: 'rightAligned'},
		{ headerName:"단위", field: "unit" , /* sortable : true, */ filter : true , width : 80},
		{ headerName:"업체명", field: "maker" , sortable : true, filter : true, width : 150},
		{ headerName:"입고일", field: "date" , sortable : true, filter : true,  width : 120},
		{ headerName:"추가",
		      cellRenderer: BtnCellRenderer, width : 80, 
// 		      cellRendererParams: {
// 		    	  onClick: this.onBtnClick1.bind(this ),
// 		    	  label: 'Click me2!'
// 		        },
		      },
		{ headerName:"상세정보", cellRenderer: BtnCellRenderer2,width : 80}
];

// 데이타 정의
var rowData = [
	<c:forEach items="${dstList}" var="stock">
		{ 
		  code: "${stock.dstCode}",
		  drugNo: "${stock.drugNo}",
		  dstNo: "${stock.dstNo}",
		  name: "${stock.dstName}",
		  element: "${stock.dstElement}",
		  stock: "${stock.dstStock}", 
		  unit: "${stock.dstUnit}", 
		  maker: "${stock.dstMaker}", 
		  date: "<fmt:formatDate value='${stock.dstDate }' pattern='yyyy-MM-dd'/>",
		},
	</c:forEach>

];

// 그리드 옵션 지정
var gridOptions = {
	columnDefs: columnDefs,
    rowData: rowData,
    rowSelection: 'single',
    getSelectedRows: 'getSelectedRows'
}

var eGridDiv = document.querySelector('#myGrid');

new agGrid.Grid(eGridDiv, gridOptions);


function onBtnClick1(clickData) 
{
// 	console.log("obj", this);
// 	var rowDataClicked1 = this.rowData		
// 	console.log(rowDataClicked1[3].code);
	increseNum++;
	console.log(clickData.data.code);
	$.ajax({
		url: "/stock/drug/listJson",
		method : "GET",
		data : {"dstCode" : clickData.data.code},
		
		success:function(data)
		{
			var userList = data;
			var tr = ""
			//console.log(data)
				tr += 
				  "<tr><td>"+increseNum+
				  "</td><td>"+data.dstCode + 
				  "</td><td>"+data.dstName +
				  "</td><td>"+'<input type="text" style="width: 2vw;" name="dstStock" placeholder="'+data.dstUnit+'" value="" >'+
				  "</td><td>"+data.dstMaker +
				  "</td><td>"+'<div id="number_textalign">'+data.dstPrice +'</div>'+
				  "</td><td>"+'<div id="Detail_main_add" onclick="deleteRow(-1)">X</div>'+
				  "</td></tr>";
			
			$("#requestList").append(tr);
		},
	});
  } 


	function detail(data) {
		var hi = data.data.code
		
		var popupWidth = 600;
		var popupHeight = 800;

		var popupX = (document.body.offsetWidth / 2) - (600 / 2);
		// 만들 팝업창 좌우 크기의 1/2 만큼 보정값으로 빼주었음

		var popupY= (window.screen.height / 2) - (600 / 2);
		// 만들 팝업창 상하 크기의 1/2 만큼 보정값으로 빼주었음
		window.open('detail?from=list&mediCode='+data.data.code,'detail','height=600, width=800, left='+ popupX + ', top='+ popupY);
	}
	
	function newAdd() {
		
		var popupWidth = 600;
		var popupHeight = 800;

		var popupX = (document.body.offsetWidth / 2) + (200 / 2);
		var popupY= (window.screen.height / 2) - (600 / 2);
		
		window.open('newAdd','newAdd','height=600, width=1200, left='+ popupX + ', top='+ popupY);
	}
	
	function orderdetail() {
		
		var popupWidth = 600;
		var popupHeight = 800;

		var popupX = (document.body.offsetWidth / 2) - (300 / 2);
		var popupY= (window.screen.height / 2) - (800 / 2);
		
		window.open('orderdetail','orderdetail','height=800, width=600, left='+ popupX + ', top='+ popupY);
	}
	
 
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
		increseNum = 0;
		for (var i = tableHeaderRowCount; i < rowCount; i++) {
		    table.deleteRow(tableHeaderRowCount);
		}
	}
	
	function orderRQ(){
		if(!$('input[name="equCode"]').val()){
			swal ( "실패" ,  "신청비품은 1개 이상이어야합니다." ,  "error" );  	
		  return;
		}

		var form = $('form[role="form"]');
		form.attr({"method":"post",
		     	   "action":"listSucces"
		   		  });	
		
		form.submit();
		alert('신청이 완료되었습니다.')
		
		
	}
	
	
	
	/* function addRow() {
	 
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
	          newRow.insertCell(3).innerHTML =this.cells[7].innerHTML; 
	          newRow.insertCell(4).innerHTML =this.cells[3].innerHTML;
	          newRow.insertCell(5).innerHTML =this.cells[4].innerHTML; 
	          newRow.insertCell(6).innerHTML =this.cells[6].innerHTML;
	          newRow.insertCell(7).innerHTML = '<div id="Detail_main_add" onclick="deleteRow(-1)">X</div>';
	          
	      };
	  };
	 };  */
	
</script>

