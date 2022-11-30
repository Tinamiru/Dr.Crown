<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<link href="<%=request.getContextPath()%>/resources/css/ChartStyle.css"
	rel="stylesheet">
	<link href="<%=request.getContextPath()%>/resources/css/customcss.css"
	rel="stylesheet">


<style>
		.card-body {
			margin-top: -30px;
		}
        * {
            box-sizing: border-box;
        }

        .tableWrapper {
            width: 400px;
            height: 300px;
            background-color: lightgreen;
            overflow: auto;
        }

        #userListTable,
        #userListTable1
        #userListTable2
         {
            width: 730px;
            border: 0px;
            border-collapse: collapse;
        }

        #userListTable th,
        #userListTable1 th,
        #userListTable2 th,
        #userListTable1 td,
        #userListTable2 td,
        #userListTable td{
            width: 10%;
            border-right: 1px solid lightgray;
        }

        #userListTable th:last-child,
        #userListTable1 th:last-child,
        #userListTable2 th:last-child,
        #userListTable1 td:last-child,
        #userListTable2 td:last-child,
        #userListTable td:last-child{
            border-right: 0px !important;
        }

        #userListTable tr:first-child,
        #userListTable2 tr:first-child,
        #userListTable1 tr:first-child{
            background-color: #333258 !important;
            color: white !important;
            font-weight: bold !important;
        }


        #userListTable th, 
        #userListTable2 th, 
        #userListTable1 th {
            position: sticky;
            top: 0px;
            background-color: #333258 !important;
        }
        
      label{margin-left: 20px;}
		#datePicker{width:150px; margin: 0 20px 20px 20px;}
		#datePicker > span:hover{cursor: pointer;}



</style>
	<div style="margin-left: 310px" >
		<h4  class="patName" style="float:left;"></h4><h4 style="float:left;" >님의 수납정보</h4>
	</div>
<div>
						<table class="table table-bordered" id="userListTable" style="text-align: center; margin-left: 30px">
											<tr bgcolor="#333258" style="color: white; cursor: default;">
												<th>진료날짜</th>
												<th>담당의사</th>
											
											</tr>
											<tr>
												<td class="dayName"></td>
												<td class="docName"></td>
												
											</tr>
										
											
				</table>


	</div>					
	
										
	 <div class="card" style="overflow-y: scroll; height:33vh">
							<div class="card-body" style="text-align: center; font-size: 13px;">
								<div class="row">
									<div class="col-sm-12">
									<div id="ajaxPtpayList"><table class="table table-bordered" id="userListTable">
											<tr bgcolor="#333258" style="color: white; cursor: default;">
												<th>진료일자</th>
												<th>미수납액</th>
												<th>수납여부</th>
											</tr>
											<tr>
												<td colspan="4">환자를선택해주세요</td>
												
											</tr>
										
											
										</table>
										</div>
										
									</div>
									<!-- col-sm-12 -->
								</div>
								<!-- row -->
							</div>
							<!-- card-body -->
								</div>
							<h4 style="text-align: left margin-left: 10px;" >결제정보 입력</h4>
							<div class="card" style="overflow-y: scroll; height:30vh">
							<div class="card-body" style="text-align: center; font-size: 13px;">
									<div style="float:center; width: 80%;margin-top: 30px" >
									<form id="frm" method="post">
              						<table class="table table-bordered" id="userListTable">
										  <thead>
										    <tr bgcolor="#333258" style="color: white; cursor: default;">
										    <th>수납할금액</th>
										    <th>카드</th>
										    <th>현금</th>
										    <th>기타</th>
										  </tr></thead>
										  <tbody>
										    <tr>
										       <td id="td1" style="text-align: right;"></td>
										      <td style="text-align: right;"> <input type="text" name="ppayCard" value="0" style="width:100%;"></td>
										      <td style="text-align: right;"> <input type="text" name="ppayCash" value="0" style="width:100%;"></td>
										      <td style="text-align: right;"> <input type="text" name="ppayNonpay" value="0" style="width:100%;"></td>
										    </tr>
										  </tbody>
										</table>
										</form>
										</div>
											<div style="float:right">
                                         			<button type="button" class="btn btn-primary" name="deskbooking"  id="add" >수납저장</button>
                                           	</div>
										</div>
										</div>                                        

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script>
const url = new URL(window.location.href)
const urlParams = url.searchParams;
var a=urlParams.get('cdCode')
ptpaylist(a)

function ptpaylist(a){  
		$.ajax({
			url:"<%=request.getContextPath()%>/desk/ptpaylist",
			type:"post",
			data: {cdCode: a},
			dataType:"json",
			success:ajaxHtml2,
			error:function(){alert("error");
			console.log(data)}
		});
	};

	function ajaxHtml2(data){
		console.log(data)
			var html="<table class='table table-bordered' id='userListTable'>";
			html+="<tr bgcolor='#333258' style='color: white; cursor: default;'>";
			html+="<th style='width:35%;'>진료/투여명</th>";
			html+="<th>진료비</th>";  				
			html+="</tr>";
		$.each(data, (index, obj)=>{
			
			html+="<tr>";
	  		html+="<td>"+obj.TL_NAME+"</td>";
	  		html+="<td style='text-align: right;'>"+obj.TL_PRICE.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ',')+"</td>";
	    	html+="</tr>";
		});
		html+="<tr>";
  		html+="<td>기본진료비</td>";
  		html+="<td style='text-align: right;'>6,000</td>";
    	html+="</tr>";
		html+="</table>";
		
		
		$("#ajaxPtpayList").html(html);
		


		var g= data[0].CD_REGDATE;
		const sel = document.querySelectorAll('.patName')
		sel[0].innerHTML = data[0].P_NAME
		const sel2 = document.querySelectorAll('.docName')
		sel2[0].innerHTML = data[0].MEM_NAME
		const sel3 = document.querySelectorAll('.dayName')
		sel3[0].innerHTML = moment(data[0].CD_REGDATE).format("YYYY-MM-DD")
		document.getElementById('td1').innerHTML = data[0].CD_TOTALPAY.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ',');
		c = data[0].P_NO
		console.log(c)
	}

var a=urlParams.get('cdCode')
$(document).ready(function(){
	$('#add').on('click', function(){
		var memberData = $('#frm').serialize();
		memberData += "&cdCode="+a;
        $.ajax({
            url: "<%=request.getContextPath()%>/desk/ptpayReg",
            type: "POST",
            data: memberData,
            success: function(data){
        		swal({
  				  title: "성공",
  				  text: "수납이 완료되었습니다.",
  				  icon: "success",
  				  button: "확인",
  			})	.then((willDelete) => {
            	console.log(data)
            	goAction(c)
			});
            
            },
            error: function(){  alert("접수 error");  }
        });
    });
});	
</script>


<script>
function goAction(a) {
opener.bookingCclist2(a);

window.close();
}
</script>