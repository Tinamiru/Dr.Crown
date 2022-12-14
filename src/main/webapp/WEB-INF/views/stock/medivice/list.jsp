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
<c:set var="mediList" value="${dataMap.mediList }" />
<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" />

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
							<h2 style="text-align: center; font-weight: bolder; font-size: 27px;">????????? ?????? ??????</h2>
						</div>
					</section>
					
					<div class="row" style="padding: 1% 0%">
						<div class="col-sm-3">
							<div style="float: left; border-radius: 5px; background: #333258; 
							            color: white; font-weight: bolder; border: solid 1px black;
							            font-size:14px; padding:5% 10%;" 
							     onclick="newAdd()">
								?????????????????????
							</div>
						</div>
						<div class="col-sm-9" >
							
								<div id="keyword" class="card-tools"
								style="font-size: 12px; float: right;">
									<div class="input-group row">
										<%-- <select class="form-control " name="perPageNum"
											id="perPageNum" onchange="list_go(1);">
											<option value="10" ${cri.perPageNum eq 10 ? 'selected' : '' }>????????????</option>
											<option value="5" ${cri.perPageNum eq 5 ? 'selected' : '' }>5??????</option>
											<option value="10" ${cri.perPageNum eq 10 ? 'selected' : '' }>10??????</option>
											<option value="20" ${cri.perPageNum eq 20 ? 'selected' : '' }>20??????</option>
										</select> --%>


									<!-- search bar -->
										<%-- <select class="form-control " name="searchType"
											id="searchType">
											<option value="">????????????</option>
	
											<option value="n" ${param.searchType=='n' ? "selected":"" }>?????????</option>
											<option value="c" ${param.searchType=='c' ? "selected":"" }>????????????</option>
											<option value="m" ${param.searchType=='m' ? "selected":"" }>?????????</option>
	
										</select>
										<!-- keyword -->
										<input class="form-control" type="text" name="keyword"
											placeholder="???????????? ???????????????." value="${cri.keyword }" /> 
										<span
											class="input-group-append">
											<button class="btn btn-primary" type="button" id="searchBtn"
												data-card-widget="search" onclick="list_go(1);">
												<i class="fa fa-fw fa-search"></i>
											</button> --%>
										</span>
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
											<th width="14%">????????????</th>
											<th >?????????</th>
											<th width="10%">??????</th>
											<th width="10%">??????</th>
											<th width="15%">?????????</th>
											<th width="15%">?????????</th>
											<th width="10%">??????</th>
											<!-- yyyy-MM-dd  -->
										</tr>
										 <c:if test="${!empty equipList }">
											<c:forEach items="${equipList}" var="stock">
												<tr class="tr-select" >
													<td>
														<a href="javascript:OpenWindow('detail?from=list&equCode=${stock.equCode }','????????????',800,600);">
															${stock.equCode }
														</a>
														<input style="display: none;" name="equCode" value="${stock.equCode }"/>
													</td>
														<td class="td_content">
														<a href="javascript:OpenWindow('detail?from=list&equCode=${stock.equCode }','????????????',800,600);">
															${stock.equName }
														</a>
													</td>
													<td>
														<a href="javascript:OpenWindow('detail?from=list&equCode=${stock.equCode }','????????????',800,600);">
															${stock.equStock }
														</a>
													<td>
														<a href="javascript:OpenWindow('detail?from=list&equCode=${stock.equCode }','????????????',800,600);">
															${stock.equUnit }
														</a>
														<input style="display: none;" name="equUnit" value="${stock.equUnit }"/>
													</td>
														<td class="td_content">
														<a href="javascript:OpenWindow('detail?from=list&equCode=${stock.equCode }','????????????',800,600);">
															${stock.equMaker }
														</a>
													</td>
													<td >
														<a href="javascript:OpenWindow('detail?from=list&equCode=${stock.equCode }','????????????',800,600);">
															<fmt:formatDate value="${stock.equDate }" pattern="yyyy-MM-dd"/>
														</a>
														</td>
													<td style="display: none;">
														<a href="javascript:OpenWindow('detail?from=list&equCode=${stock.equCode }','????????????',800,600);">
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
															??????
														</div>	
													</td>
												</tr>
											</c:forEach>
										 </c:if>
										<c:if test="${empty equipList }">
											<tr>
												<td colspan="7" class="text-center">??????????????? ????????????.</td>
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
								??????
							</div> -->
							<div class="container-fluid" >
								<h2 style="text-align: center; font-weight: bolder; font-size: 27px;">????????? ?????? ??????</h2>
							</div>
							
						</section>
						<div class="card" style="overflow-y: scroll;">
							<div class="card-body" style="text-align: center; font-size: 11px; ">
								<div class="row">
									<div class="col-sm-12">
										<form name="" role="form" class="form-horizontal" action="/medivice/listSuccess" method="post">
											<table  id="requestList" class="table table-bordered">
												<tr bgcolor="#333258" style="color: white">
													<th width="10%">??????</th>
													<th width="15%">????????????</th>
													<th>?????????</th>
													<th width="10%">??????</th>
													<th width="15%">?????????</th>
													<th width="15%">??????(???)</th>
													<th width="10%">??????</th>
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
								    ????????????
							</div>
							<div id = "requestBtn" class="btn btn-primary float-right" onclick="orderRQ()">
							            ????????????
							</div>
							
							</div>
						</div>
					
					</section>
					
				</div>
				
				<div class="row justify-content-center" style="padding-bottom: 8vh;">
					<section class="content" style="height: 40vh; width: 95%;" >
						<section class="content-header">
							<div class="container-fluid">
								<h2 style="text-align: center; font-weight: bolder; font-size: 27px;">????????? ?????? ??????</h2>
							</div>
						</section>
						<div class="card" style="overflow-y: scroll;">
							<div class="card-body" style="text-align: center; font-size: 12px;">
								<div class="row">
									<div class="col-sm-12">
										<table  class="table table-bordered">
											<tr  bgcolor="#333258" style="color: white">
												<th>????????????</th>											
												<th>??????</th>
												<th>?????????</th>
												<th>????????????</th>
												<th>??????</th>
												<!-- yyyy-MM-dd  -->
											</tr>
											<tr class="tr-select">
												<td>ORD04</td>
												<td>2022.09.27 ???????????????</td>
												<td>?????????</td>
												<td>2022/09/27</td>
												<td>
													<div id="Detail_main_add" onclick="orderdetail()">
														??????
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
															??????
														</div>
												</td>
													</tr>

												</c:forEach>
											</c:if>
											<c:if test="${empty minfoList }">
												<tr>
													<td colspan="7" class="text-center">??????????????? ????????????.</td>
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
class BtnCellRenderer {
  init(params) {
    this.params = params;
	
    //----------------
    console.log("params", params);
	
    this.eGui = document.createElement('button');
    this.eGui.innerHTML = '??????';

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
    this.eGui.innerHTML = '??????';

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

//?????? ??????

var columnDefs = [
		{ headerName:"????????????", field: "code", sortable : true, filter : true, width : 120},
		{ headerName:"?????????", field: "name" , sortable : true, filter : true, width : 220},
		{ headerName:"??????", field: "stock" , sortable : true, /* filter : true ,*/ width : 80, type: 'rightAligned'},
		{ headerName:"?????????", field: "maker" , sortable : true, filter : true, width : 170},
		{ headerName:"?????????", field: "date" , sortable : true, filter : true,  width : 120},
		{ headerName:"??????",
		      cellRenderer: BtnCellRenderer, width : 80, 
// 		      cellRendererParams: {
// 		    	  onClick: this.onBtnClick1.bind(this ),
// 		    	  label: 'Click me2!'
// 		        },
		      },
		{ headerName:"????????????", cellRenderer: BtnCellRenderer2,width : 80}
];

// ????????? ??????
var rowData = [
	<c:forEach items="${mediList}" var="stock">
		{ 
		  code: "${stock.mediCode}",
		  name: "${stock.mediName}", 
		  stock: "${stock.mediStock}", 
		  maker: "${stock.mediMaker}", 
		  date: "<fmt:formatDate value='${stock.mediDate }' pattern='yyyy-MM-dd'/>",
		},
	</c:forEach>

];

// ????????? ?????? ??????
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
		url: "/stock/medivice/listJson",
		method : "GET",
		data : {"mediCode" : clickData.data.code},
		
		success:function(data)
		{
			var userList = data;
			var tr = ""
			//console.log(data)
				tr += 
				  "<tr><td>"+increseNum+
				  "</td><td>"+data.mediCode + 
				  "</td><td>"+data.mediName +
				  "</td><td>"+'<input type="text" style="width: 2vw;" name="mediStock" placeholder="'+data.mediStock+'" value="" >'+
				  "</td><td>"+data.mediMaker +
				  "</td><td>"+'<div id="number_textalign">'+data.mediPrice +'</div>'+
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
		// ?????? ????????? ?????? ????????? 1/2 ?????? ??????????????? ????????????

		var popupY= (window.screen.height / 2) - (600 / 2);
		// ?????? ????????? ?????? ????????? 1/2 ?????? ??????????????? ????????????
		window.open('detail?from=list&mediCode='+data.data.code,'detail','height=600, width=800, left='+ popupX + ', top='+ popupY);
	}
	
	function newAdd() {
		
		var popupWidth = 600;
		var popupHeight = 800;

		var popupX = (document.body.offsetWidth / 2) + (200 / 2);
		var popupY= (window.screen.height / 2) - (600 / 2);
		
		window.open('newAdd','newAdd','height=600, width=800, left='+ popupX + ', top='+ popupY);
	}
	
	function orderdetail() {
		
		var popupWidth = 600;
		var popupHeight = 800;

		var popupX = (document.body.offsetWidth / 2) - (300 / 2);
		var popupY= (window.screen.height / 2) - (800 / 2);
		
		window.open('orderdetail','orderdetail','height=800, width=600, left='+ popupX + ', top='+ popupY);
	}
	
 
var increseNum = 0;
	/* function addRow(	
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
	    
	 
	
	
	function deleteRow(rownum) {
		  // table element ??????
		  const requestList = document.getElementById('requestList');
		  
		  // ???(Row) ??????
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
			swal ( "??????" ,  "??????????????? 1??? ????????????????????????." ,  "error" );  	
		  return;
		}
		
	    
		//if($('input[name="id"]').val()!=checkedID){
	    //  alert("?????? ?????? ?????? ????????? ???????????????.");
	    //  return;
	    //}
	    
	    var form = $('form[role="form"]');
		form.attr({"method":"post",
		     	   "action":"listSucces"
		   		  });	
		
		form.submit();
		alert('????????? ?????????????????????.')
		
		
	}
	
</script>

