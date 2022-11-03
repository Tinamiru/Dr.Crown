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
<c:set var="equipList" value="${dataMap.equipList }" />
<c:set var="dstList" value="${dataMap.dstList }" />
<c:set var="consumeList" value="${dataMap.consumeList }" />

<style>
.ag-theme-alpine{
	--ag-header-background-color: #3F6373;
	--ag-header-foreground-color: white;
	--ag-font-size: 13px;
}

.ag-theme-alpine .ag-icon-menu {
	color : white;
}

#toptitle {
	text-align: center; 
	padding: 1vh 0; 
	font-weight: bolder; 
	font-size: 30px;
}
#bar {
	margin: 0px 20px 10px; 
	background: #CCCCCC;
}
#subtitle{
	text-align: center; 
	font-weight: bolder; 
	font-size: 25px;
	margin: 8px 0 0 0;
	color: white;
	
}
.gridcover{
	margin: 1vh 1.6vw 2vh;
}

#sectionstyle{
	border: 1px #3d4465 solid;
    border-radius: 15px;
    background: #3d4465;
    width: 23.5vw
}
</style>    
<h1 id="toptitle">재고관리</h1>
<hr id="bar">
<div>
	<div class="contaner-fluid" style="margin: 0vh 1vw 1vh;">
		<div class="row">
			<div class="col-sm-3">
			 	<section class="content" id="sectionstyle">
					<section class="content-header" >
						<div class="container-fluid" >
							<h2 id="subtitle">비품 재고 현황</h2>
						</div>
					</section>
					
					<div class="row" style="padding: 1% 0%;">
						<div class="gridcover">
							<div id="equipGrid"  class="ag-theme-alpine" style="width: 22vw;height: 80vh;"></div>
						</div>
					</div>
				</section>
			</div>
			
			
			<div class="col-sm-3">
				<section class="content" id="sectionstyle">
					<section class="content-header" >
						<div class="container-fluid" >
							<h2 id="subtitle">기자재 재고 현황</h2>
						</div>
					</section>
					
					<div class="row" style="padding: 1% 0%;">
						<div class="gridcover">
							<div id="mediGrid" class="ag-theme-alpine" style="width: 22vw;height: 80vh;"></div>
						</div>
					</div>
				</section>
			</div>
			
			
			<div class="col-sm-3">
				<section class="content" id="sectionstyle">
					<section class="content-header" >
						<div class="container-fluid" >
							<h2 id="subtitle">소모품 재고 현황</h2>
						</div>
					</section>
					
					<div class="row" style="padding: 1% 0%;">
						<div class="gridcover">
							<div id="consumeGrid" class="ag-theme-alpine" style="width: 22vw;height: 80vh;"></div>
						</div>
					</div>
				</section>
			</div>
			
			
			<div class="col-sm-3">
				<section class="content" id="sectionstyle">
					<section class="content-header" >
						<div class="container-fluid" >
							<h2 id="subtitle">의약품 재고 현황</h2>
						</div>
					</section>
					
					<div class="row" style="padding: 1% 0%;">
						<div class="gridcover">
							<div id="dstGrid" class="ag-theme-alpine" style="width: 22vw;height: 80vh;"></div>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
var columnDefs = [
	{ headerName:"비품코드", field: "code", sortable : true, width : 110, type: 'leftAligned'},
	{ headerName:"품목명", field: "name" , sortable : true, width : 140, type: 'leftAligned'},
	{ headerName:"수량", field: "stock" , sortable : true, width : 90, type: 'rightAligned'}
];

//데이타 정의
var rowData = [
<c:forEach items="${equipList}" var="stock">
	{ 
	  code: "${stock.equCode}",
	  name: "${stock.equName}", 
	  stock: "${stock.equStock}"
	},
</c:forEach>

];

//그리드 옵션 지정
var gridOptions = {
columnDefs: columnDefs,
rowData: rowData,
getSelectedRows: 'getSelectedRows'
}

var eGridDiv = document.querySelector('#equipGrid');

new agGrid.Grid(eGridDiv, gridOptions);

</script>

<script type="text/javascript">
var columnDefs = [
	{ headerName:"기자재코드", field: "code", sortable : true, width : 110, type: 'leftAligned'},
	{ headerName:"품목명", field: "name" , sortable : true, width : 140, type: 'leftAligned'},
	{ headerName:"수량", field: "stock" , sortable : true, width : 90, type: 'rightAligned'}
];

//데이타 정의
var rowData = [
<c:forEach items="${mediList}" var="stock">
	{ 
	  code: "${stock.mediCode}",
	  name: "${stock.mediName}", 
	  stock: "${stock.mediStock}"
	},
</c:forEach>

];

//그리드 옵션 지정
var gridOptions = {
columnDefs: columnDefs,
rowData: rowData,
getSelectedRows: 'getSelectedRows'
}

var eGridDiv = document.querySelector('#mediGrid');

new agGrid.Grid(eGridDiv, gridOptions);

</script>

<script type="text/javascript">
var columnDefs = [
	{ headerName:"소모품코드", field: "code", sortable : true, width : 110, type: 'leftAligned'},
	{ headerName:"품목명", field: "name" , sortable : true, width : 140, type: 'leftAligned'},
	{ headerName:"수량", field: "stock" , sortable : true, width : 90, type: 'rightAligned'}
];

//데이타 정의
var rowData = [
<c:forEach items="${consumeList}" var="stock">
	{ 
	  code: "${stock.conCode}",
	  name: "${stock.conName}", 
	  stock: "${stock.conStock}"
	},
</c:forEach>

];

//그리드 옵션 지정
var gridOptions = {
columnDefs: columnDefs,
rowData: rowData,
getSelectedRows: 'getSelectedRows'
}

var eGridDiv = document.querySelector('#consumeGrid');

new agGrid.Grid(eGridDiv, gridOptions);

</script>

<script type="text/javascript">
var columnDefs = [
	{ headerName:"의약품코드", field: "code", sortable : true, width : 110, type: 'leftAligned'},
	{ headerName:"품목명", field: "name" , sortable : true, width : 140, type: 'leftAligned'},
	{ headerName:"수량", field: "stock" , sortable : true, width : 90, type: 'rightAligned'}
];

//데이타 정의
var rowData = [
<c:forEach items="${dstList}" var="stock">
	{ 
	  code: "${stock.dstCode}",
	  name: "${stock.dstName}", 
	  stock: "${stock.dstStock}"
	},
</c:forEach>

];

//그리드 옵션 지정
var gridOptions = {
columnDefs: columnDefs,
rowData: rowData,
getSelectedRows: 'getSelectedRows'
}

var eGridDiv = document.querySelector('#dstGrid');

new agGrid.Grid(eGridDiv, gridOptions);

</script>