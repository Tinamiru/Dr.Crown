<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ include file="/WEB-INF/views/common/preloader_js.jsp"%>

<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<c:set var="equipList" value="${dataMap.equipList }" />
<c:set var="preOrderList" value="${dataMap2.preOrderList }" />
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
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
#Detail_main_add_1{
	background-color: #ced4da; 
	color: black;
	border: 1px solid black; 
	font-weight: bolder; 
	border-radius: 4px
}

.Detail_main_equip{
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
									<input id="checklist_consume" type="checkbox" checked="checked">
									소모품
								</div>
								<div style="padding: 0.7% 2%;">
									<input id="checklist_medi" type="checkbox" checked="checked">
									기자재
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
										 <select class="form-control " id="equipSearchType" name="equipSearchType">
											<option value="m"  ${cri.searchType eq 'm' ? 'selected':'' }>업체명</option>
											<option value="n"  ${cri.searchType eq 'n' ? 'selected':'' }>품목명</option>
										</select>
										<!-- keyword -->
										<input class="form-control" type="text" name="keyword" id="searchKeyword"
											placeholder="검색어를 입력하세요." value="" /> 
										<span class="input-group-append">
											<button class="btn btn-primary" type="button" id="searchBtn" data-card-widget="search" 
													onclick="setSearchList()" style="padding: 3% 5%;width: 3vw;">
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
										<tbody id="eqlistTbody">	
										 <c:if test="${!empty equipList }">
											<c:forEach items="${equipList}" var="stock">
												<tr class="equip_tr" >
													<td >
														<div >
															<a id="category" class="Detail_main_equip">
															${stock.equipCategory }
															</a>
														</div>	
													</td>
													<td class="td_content">
														<input style="display: none;" name = "equipCode" value="${stock.equipCode}">
														<input style="display: none;" name = "equipName" value="${stock.equipName}">
														<input style="display: none;" name = "equipMaker" value="${stock.equipMaker}">
														
														<a href="javascript:OpenWindow('equipDetail?from=list&equipCode=${stock.equipCode }','상세보기',800,600);">
															${stock.equipName }
														</a>
													</td>
													<td class="td_content_stock">
															${stock.equipStock }
													<td class="td_content_suggest">
															${stock.equipSuggest }
													</td>
													<td class="td_content_min">
															${stock.equipMin }
													</td>
													<td class="td_content">
														<a href="javascript:OpenWindow('equipDetail?from=list&equipCode=${stock.equipCode }','상세보기',800,600);"
														   class="makerNameRequest">
															${stock.equipMaker }
														</a>
													</td>
													<td >
														<a href="javascript:OpenWindow('equipDetail?from=list&equipCode=${stock.equipCode }','상세보기',800,600);">
															<fmt:formatDate value="${stock.equipDate }" pattern="yyyy-MM-dd"/>
														</a>
														</td>
													<td style="display: none;">
														<a href="javascript:OpenWindow('equipDetail?from=list&equipCode=${stock.equipCode }','상세보기',800,600);">
															${stock.equipPrice }
														
														</a>
														<input style="display: none;" name="equipPrice" value="${stock.equipPrice }"/>
													</td>
													<td class="makerName" style="display: none;">
														${stock.equipMaker }
													</td>
													
													<td onclick="addRow()">
														<div id="Detail_main_add">
															추가
														</div>	
													</td>
												</tr>
											</c:forEach>
											
										 </c:if>
										 </tbody>
										 <c:if test="${empty equipList }">
											<tr>
												<td colspan="7" class="text-center">비품목록이 없습니다.</td>
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
					<section class="content" style="height: 44vh; width: 95%;">
						<section class="content-header">
							<!-- <div style="float: left; border-radius: 5px; background: #ced4da; 
							            color: black; font-weight: bolder; border: solid 1px black;
							            font-size:14px; padding:3px 10px;" 
							     onclick="add()">
								추가
							</div> -->
							<div class="container-fluid" >
								<h2 style="text-align : center; font-weight: bolder; font-size: 27px;">비품 주문 신청</h2>
							</div>
							
						</section>
						<div class="card" style="overflow-y: scroll;">
							 
							<div class="card-body" style="text-align: center; font-size: 11px; ">
								<div class="row" >
									<!-- <a style="font-size: 15px;">
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;업체명 :
									</a> -->
									<div class="col-sm-12">
										
										<form id="form" role="form" class="form-horizontal" >
											<!--action="/equip/listSuccess" method="post"  -->
											<table  id="requestList" class="table table-bordered">
												<tr bgcolor="#333258" style="color: white">
													<th width="20%">업체명</th>
													<th>품목명</th>
													<th width="13%">권장수량</th>
													<th width="13%">재고(개)</th>
													<th width="13%">신청수량</th>
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
											
												<th>요청날짜</th>											
												<th>기업명</th>
												<th width="15%">정보</th>
												<!-- yyyy-MM-dd  -->
											</tr>
										
											<c:if test="${!empty preOrderList }">
												<c:forEach items="${preOrderList}" var="preOrder">
													<tr class="tr-select">
		
														<td><fmt:formatDate value="${preOrder.reoDate }" pattern="yyyy-MM-dd"/></td>
														<td>${preOrder.reoMaker}</td>
														<td>
														<div id="Detail_main_add_1" onclick="orderdetail()">
															상세정보
														</div>
														</td>
													</tr>

												</c:forEach>
											</c:if>
											<c:if test="${empty preOrderList }">
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

$(document).ready(function () {
	var table =document.getElementById("eqlist");
	var rowList = table.rows;
	
	for(i=0; i<rowList.length; i++)
	{
		if( document.getElementsByClassName('Detail_main_equip')[i].innerText == "1")
		{
			document.getElementsByClassName('Detail_main_equip')[i].innerHTML = "비품";
			document.getElementsByClassName('Detail_main_equip')[i].style.background='#C6D9FF';
		}
		if (document.getElementsByClassName('Detail_main_equip')[i].innerText == "2")
		{
			document.getElementsByClassName('Detail_main_equip')[i].innerHTML = "소모품";
			document.getElementsByClassName('Detail_main_equip')[i].style.background='#D1FFDC';
		}
		if (document.getElementsByClassName('Detail_main_equip')[i].innerText == "3")
		{									
			document.getElementsByClassName('Detail_main_equip')[i].innerHTML = "기자재";
			document.getElementsByClassName('Detail_main_equip')[i].style.background='#E6BDA3';
		}
	}	
});


	


</script>

<script>

	function setSearchList(){
		var keyword = document.getElementById('searchKeyword').value;
		var searchType = document.getElementById('equipSearchType').value;
		
		if(keyword == ''){
	  		swal ( "실패" ,  "검색어를 입력하세요." ,  "error" );
	  		return;
	  	}
		
		$(".equip_tr").css("display","none")
		
		$.ajax
		({
			url : "getSearchEquListByKeyword",
			type : "post",
			data : {"keyword" : keyword,"searchType":searchType},
			success : function(data) 
			{
				var s = '';
				$("#eqlistTbody").html(s);
				 if(data < 1){
						s = `<tr><td colspan="8">검색된내용이없습니다.</td></tr>`;
						$("#eqlistTbody").html(s);
						return;
					}
				else
					{ 
						$.each(data, function(index,item) 
							{
								s += '<tr>';
								s += '<td><div><a id="category" class="Detail_main_equip">'+item.equipCategory+'</a></div></td>';
								s += '<td class="td_content" onclick="detail()" value="'+item.equipCode+'"><a class="chk_id" >'+item.equipName+'</a></td>';
								s += '<td class="td_content">'+item.equipStock
								s += '<input style="display: none;" name = "equipName" value="'+item.equipName+'">'
								s += '<input style="display: none;" name = "equipMaker" value="'+item.equipMaker+'"> </a></td>';
								s += '<td class="td_content">'+item.equipSuggest+'</a></td>';
								s += '<td class="td_content">'+item.equipMin+'</a></td>';
								s += '<td class="td_content"><a class="chk_id" value="'+item.equipCode+'">'+item.equipMaker+'</a></td>';
								s += '<td class="td_content"><a class="dateview1">'+item.equipDate+'</a></td>';
								s += '<td onclick="addRow()"><div id="Detail_main_add">추가</div></td>'
								s += '</tr>';
							})
							$("#eqlistTbody").html(s);
					}
				// 날짜 포맷
				var date = ${stock.equipDate}
			    $('.dateview1').html(moment(date).format('YYYY-MM-DD'));
				
			    
			    // 구분 분류
				var table =document.getElementById("eqlist");
				var rowList = table.rows;
				
				for(i=0; i<rowList.length; i++)
				{
					var onelist = rowList[i]
					var stockNum = parseInt(onelist.cells[2].innerText);
				    var suggestNum = parseInt(onelist.cells[3].innerText);
				    var minNum = parseInt(onelist.cells[4].innerText);
				    /* var date = parseDate(onlist.cells[6].innerText);
				    
				    $('.dateview1').html(moment(date).format('YYYY-MM-DD')); */
				    
				    if(stockNum >= suggestNum){
				    	  /* console.log(onelist.cells[2].style); */
				    	  onelist.cells[2].style.fontWeight = "700"
				    	  onelist.cells[2].style.color = "blue";
				      } 
					if(stockNum < suggestNum && stockNum >= minNum){
				    	  onelist.cells[2].style.fontWeight = "700"
				          onelist.cells[2].style.color = "orange";
				      }
				    if(stockNum < minNum){
				    	  onelist.cells[2].style.fontWeight = "700"
				          onelist.cells[2].style.color = "red";
				      }    
				    
					if( document.getElementsByClassName('Detail_main_equip')[i].innerText == "1")
					{
						document.getElementsByClassName('Detail_main_equip')[i].innerHTML = '비품';
						document.getElementsByClassName('Detail_main_equip')[i].style.background='#C6D9FF';
					}
					if (document.getElementsByClassName('Detail_main_equip')[i].innerText == "2")
					{
						document.getElementsByClassName('Detail_main_equip')[i].innerHTML = '소모품';
						document.getElementsByClassName('Detail_main_equip')[i].style.background='#D1FFDC';
					}
					if (document.getElementsByClassName('Detail_main_equip')[i].innerText == "3")
					{									
						document.getElementsByClassName('Detail_main_equip')[i].innerHTML = '기자재';
						document.getElementsByClassName('Detail_main_equip')[i].style.background='#E6BDA3';
					}
				}	
				
			},
			error : function (jqXHR, textStatus, errorThrown){
			alert("에러코드 : "+textStatus); 
			
			}
		})
		
		
		
	};



</script>

<script type="text/javascript">

function detail() 
 	{
	
	var popupWidth = 600;
	var popupHeight = 800;

	var popupX = (document.body.offsetWidth / 2) - (600 / 2);
	var popupY= (window.screen.height / 2) - (600 / 2);
	
	window.open('detail?from=list&equipCode='+hi,'detail','height=600, width=800, left='+ popupX + ', top='+ popupY);
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
		var rowList = table.rows;
		var requestList = document.getElementById("requestList");
		var rowLisReq = requestList.rows;
		
		
	  for (i=1; i<rowList.length; i++) 
	  {
	      var addlist = rowList[i]
	      var newlist = rowLisReq[i]
	      
	      addlist.onclick = function ()
	      { 
				const newRow = requestList.insertRow();
				newRow.insertCell(0).innerHTML =this.cells[5].innerHTML; 
				newRow.insertCell(1).innerHTML =this.cells[1].innerHTML; 
				newRow.insertCell(2).innerHTML =this.cells[3].innerHTML; 
				newRow.insertCell(3).innerHTML =this.cells[2].innerHTML; 
				newRow.insertCell(4).innerHTML = '<input style="width: 2vw;"name="equipStock">'
				newRow.insertCell(5).innerHTML = '<div id="Detail_main_add" onclick="deleteRow(this)">X</div>';
	      };
	      
	      /* var check = newlist.cells[i].innerText
	      	for(j=0; j<rowLisReq.length; j++)
				if(check == addlist.cells[j].innerText)
				{
					alert("중복된 제품입니다.")
					requestList.deleteRow(requestList.rows.length-1);
				} */
	  };
	  
	  
	 }; 
	    
	 
	
	
	function deleteRow(This) {
		  /* const requestList = document.getElementById('requestList');
		  const newRow = requestList.deleteRow(rownum); */
		    //closet:현재 엘리멘트에서 가장 가까운 조상을 반환
		  if(This.closest('tbody').childElementCount == 1)
		    {
		        alert("삭제할 수 없습니다.");
		    }else{
		        This.closest('tr').remove();//삭제
		    }
		  
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
	
	
</script>

<script type="text/javascript">


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
	var table =document.getElementById("eqlist");
	var rowList = table.rows;
	
  for (i=0; i<rowList.length; i++) 
  {
      var onelist = rowList[i]
	  var stockNum = parseInt(onelist.cells[2].innerText);
      var suggestNum = parseInt(onelist.cells[3].innerText);
      var minNum = parseInt(onelist.cells[4].innerText);
      
      if(stockNum >= suggestNum){
    	  /* console.log(onelist.cells[2].style); */
    	  onelist.cells[2].style.fontWeight = "700"
    	  onelist.cells[2].style.color = "blue";
      } 
	  if(stockNum < suggestNum && stockNum >= minNum){
    	  onelist.cells[2].style.fontWeight = "700"
          onelist.cells[2].style.color = "orange";
      }
      if(stockNum < minNum){
    	  onelist.cells[2].style.fontWeight = "700"
              onelist.cells[2].style.color = "red";
      }    
	  
	 
  };
});



</script>

<script type="text/javascript">
$(document).ready(function(){
	$("#checklist_equip").on('change',function()
	{
		var table =document.getElementById("eqlist");
		var rowList = table.rows;
				
		if(!$("#checklist_equip").is(":checked"))
		{
			for (i=1; i<rowList.length; i++) 
			{
				var onelist = rowList[i]
				var categoryNum = onelist.cells[0].innerText;
				if(categoryNum == "비품")
				{
					onelist.style.display = "none";
				} 
			}
		} 
		else 
		{
			for (i=1; i<rowList.length; i++) 
			{
				var onelist = rowList[i]
				var categoryNum = onelist.cells[0].innerText;
				console.log(categoryNum)
				if(!(categoryNum == "소모품" && categoryNum == "기자재"))
				{
					onelist.style.display = "";
		    	}
			}
		} 
	});
});
 
$(document).ready(function(){
	$("#checklist_consume").on('change',function()
	{
		var table =document.getElementById("eqlist");
		var rowList = table.rows;
				
		if(!$("#checklist_consume").is(":checked"))
		{
			for (i=1; i<rowList.length; i++) 
			{
				var onelist = rowList[i]
				var categoryNum = onelist.cells[0].innerText;
				if(categoryNum == "소모품")
				{
					onelist.style.display = "none";
				} 
			}
		} 
		else 
		{
			for (i=1; i<rowList.length; i++) 
			{
				var onelist = rowList[i]
				var categoryNum = onelist.cells[0].innerText;
				console.log(categoryNum)
				if(!(categoryNum == "비품" && categoryNum == "기자재"))
				{
					onelist.style.display = "";
		    	}
			}
		} 
	});
});

$(document).ready(function(){
	$("#checklist_medi").on('change',function()
	{
		var table =document.getElementById("eqlist");
		var rowList = table.rows;
				
		if(!$("#checklist_medi").is(":checked"))
		{
			for (i=1; i<rowList.length; i++) 
			{
				var onelist = rowList[i]
				var categoryNum = onelist.cells[0].innerText;
				if(categoryNum == "기자재")
				{
					onelist.style.display = "none";
				} 
			}
		} 
		else 
		{
			for (i=1; i<rowList.length; i++) 
			{
				var onelist = rowList[i]
				var categoryNum = onelist.cells[0].innerText;
				console.log(categoryNum)
				if(!(categoryNum == "비품" && categoryNum == "소모품"))
				{
					onelist.style.display = "";
		    	}
			}
		} 
	});
});
</script>

<script type="text/javascript">

function orderRQ() {
	
	swal({title: "신청되었습니다.", type: "success"}).then(function(){ 
	   location.reload();
	   }
	);
};
</script>
