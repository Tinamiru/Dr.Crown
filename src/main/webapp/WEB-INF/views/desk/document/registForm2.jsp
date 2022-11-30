<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" />

<body class="h-100">
    <div class="h-100 loginFormBackground">
        <div class="container h-100">
            <div class="row justify-content-center h-100 align-items-center">
			
			
			<div class="row no-gutters">
	                            <div class="col-xl-12">
	                            
	                                <div class="auth-form loginBoxBackground">
	                                <div class="form-row">
										<div style="border-bottom: 2px solid;" class="col-sm-8">
										<h2 style="font-weight: bold;">문서등록</h2>
	                                    </div>
	                                </div> 
	                                <c:set id="setkind" var="name" value="" />
	                                <!-- 진단서 -->
									<c:if test="${name eq '0'}">
			                                    <form role="form" class="form-horizontal" action="modify" method="post">
			                                    
			                                    <div class="pdf_wrap p-1 " id="printArea" style="width:100%; height:600px; overflow-y:scroll; border:1px lightgray solid; background-color:#FFFFFF;">
											<table border="1" width="100%">
											<tr>
											<th colspan="9" height="50" style="text-align:center;"><font size="5">진  단  서</font></th>
											</tr>
											
											<tr>
											<th bgcolor="D5D5D5" style="text-align:center;">차트번호</th>
											<th colspan="2" bgcolor="D5D5D5" style="text-align:center;">이 름</th>
											<th bgcolor="D5D5D5" style="text-align:center;">주민번호</th>
											<th bgcolor="D5D5D5" style="text-align:center;">발행일자</th>
											<th bgcolor="D5D5D5" style="text-align:center;">발급의사</th>
											<th bgcolor="D5D5D5" style="text-align:center;">문서번호</th>
											
											</tr>
											<tr>
											<td id="tablePno" align="center"  title="${patient.PNo }">
													<c:if test="${not empty patient }">
														${patient.PNo }
													</c:if>	
											</td>		
											<td align="center"  id="tablePName"  colspan="2">
											<c:choose>
										<c:when test="${not empty patient}">
											${patient.PName}
											<c:if test="${not empty patient.PSfx}">
											ㅣ&nbsp;${patient.PSfx }
											</c:if>
										</c:when>
										<c:otherwise>
											&nbsp;
										</c:otherwise>
									</c:choose>
									</td>				
											
											<td id="tableRegNo" align="center" >970392-1******</td>
											<td align="center"  id="tableRDate" >
												 <input type="date"  id=""  pattern="yyyy-mm-dd" value="today">
											</td>
											<td align="center" id="tableDoc" >박의사</td>
											<td align="center" id="tableCode" >20221112-00001</td>
											</tr>
											<tr height="10">
											</tr>
											
											<tr>
							
											
											<th width="10%" bgcolor="D5D5D5" style="text-align:center;">용도</th>
											<td colspan="6">
											 <select id="tableUse" class=" form-control-input"  style="width: 100%;">
												 <option selected value="n"></option>
												 <option class="text-white" value="보험회사 제출용">보험회사 제출용</option>
												 <option class="text-white" value="직장(회사) 제출용">직장(회사) 제출용</option>
												 <option class="text-white" value="학교 제출용">학교 제출용</option>
												 <option class="text-white" value="군부대 제출용">군부대 제출용</option>
												 <option class="text-white" value="경찰서 제출용">경찰서 제출용</option>
												 <option class="text-white" value="법원 제출용">법원 제출용</option>
												 <option class="text-white" value="진료 의뢰용">진료 의뢰용</option>
											  </select>
											</td>
											</tr>
											
											<tr height="10">
											</tr>
											
											
											
											<tr height="10">
											</tr>
											
											</table>
											
											<table border="1" width="100%">
											<tr>
											<th rowspan="6" width = "16%"  height="150"  bgcolor="D5D5D5" style="text-align:center;">상명명<br><br>상명부위</th>
											</tr>
											<tr>
											<th colspan="2" width = "42%" height="30"  bgcolor="D5D5D5" style="text-align:center;">상명명</th>
											<th colspan="2" width = "42%" height="30"  bgcolor="D5D5D5" style="text-align:center;">부위</th>
											
											</tr>
											<tr>
											<td colspan="2" align="center"></td>
											<td colspan="2" align="center"></td>
											</tr>
											<tr>
											<td colspan="2" align="center"></td>
											<td colspan="2" align="center"></td>
											</tr>
											<tr>
											<td colspan="2" align="center"></td>
											<td colspan="2" align="center"></td>
											</tr>
											<tr>
											<td colspan="2" align="center"></td>
											<td colspan="2" align="center"></td>
											</tr>
											
											
											
											<tr height="10">
											</tr>
											
											<tr>
											<th width="10%" bgcolor="D5D5D5" style="text-align:center;">치료내용<br>및<br>향후치료에<br>대한 소견</th>
											
											<td colspan="4"><textarea id="tableContent" name="story" rows="5" cols="33"   style="resize: none; width: 100%;">
											
											</textarea>
											</td>
											</tr>
		
											
											</table>
										</div>	 	
			                                      
			                                    </form>
	                                    </c:if>   
	                                       <!-- 소견서 -->
									<c:if test="${name eq '1'}">
			                                    <form role="form" class="form-horizontal" action="modify" method="post">
			                                    
			                                    <div class="pdf_wrap p-1 " id="printArea" style="width:100%; height:600px; overflow-y:scroll; border:1px lightgray solid; background-color:#FFFFFF;">
											<table border="1" width="100%">
											<tr>
											<th colspan="9" height="50" style="text-align:center;"><font size="5">소  견  서</font></th>
											</tr>
											
											<tr>
											<th bgcolor="D5D5D5" style="text-align:center;">차트번호</th>
											<th colspan="2" bgcolor="D5D5D5" style="text-align:center;">이 름</th>
											<th bgcolor="D5D5D5" style="text-align:center;">주민번호</th>
											<th bgcolor="D5D5D5" style="text-align:center;">발행일자</th>
											<th bgcolor="D5D5D5" style="text-align:center;">발급의사</th>
											<th bgcolor="D5D5D5" style="text-align:center;">문서번호</th>
											
											</tr>
											<tr>
											<td id="tablePno" align="center"  title="${patient.PNo }">
													<c:if test="${not empty patient }">
														${patient.PNo }
													</c:if>	
											</td>		
											<td align="center"  id="tablePName"  colspan="2">
											<c:choose>
										<c:when test="${not empty patient}">
											${patient.PName}
											<c:if test="${not empty patient.PSfx}">
											ㅣ&nbsp;${patient.PSfx }
											</c:if>
										</c:when>
										<c:otherwise>
											&nbsp;
										</c:otherwise>
									</c:choose>
									</td>				
											
											<td id="tableRegNo" align="center" >970392-1******</td>
											<td align="center"  id="tableRDate" >
												 <input type="date"  id=""  pattern="yyyy-mm-dd" value="today">
											</td>
											<td align="center" id="tableDoc" >박의사</td>
											<td align="center" id="tableCode" >20221112-00001</td>
											</tr>
											<tr height="10">
											</tr>
											
											<tr>
							
											
											<th width="10%" bgcolor="D5D5D5" style="text-align:center;">용도</th>
											<td colspan="6">
											 <select id="tableUse" class=" form-control-input"  style="width: 100%;">
												 <option selected value="n"></option>
												 <option class="text-white" value="보험회사 제출용">보험회사 제출용</option>
												 <option class="text-white" value="직장(회사) 제출용">직장(회사) 제출용</option>
												 <option class="text-white" value="학교 제출용">학교 제출용</option>
												 <option class="text-white" value="군부대 제출용">군부대 제출용</option>
												 <option class="text-white" value="경찰서 제출용">경찰서 제출용</option>
												 <option class="text-white" value="법원 제출용">법원 제출용</option>
												 <option class="text-white" value="진료 의뢰용">진료 의뢰용</option>
											  </select>
											</td>
											</tr>
											
											<tr height="10">
											</tr>
											
											
											
											<tr height="10">
											</tr>
											
											</table>
											
											<table border="1" width="100%">
											<tr>
											<th rowspan="6" width = "16%"  height="150"  bgcolor="D5D5D5" style="text-align:center;">상명명<br><br>상명부위</th>
											</tr>
											<tr>
											<th colspan="2" width = "42%" height="30"  bgcolor="D5D5D5" style="text-align:center;">상명명</th>
											<th colspan="2" width = "42%" height="30"  bgcolor="D5D5D5" style="text-align:center;">부위</th>
											
											</tr>
											<tr>
											<td colspan="2" align="center"></td>
											<td colspan="2" align="center"></td>
											</tr>
											<tr>
											<td colspan="2" align="center"></td>
											<td colspan="2" align="center"></td>
											</tr>
											<tr>
											<td colspan="2" align="center"></td>
											<td colspan="2" align="center"></td>
											</tr>
											<tr>
											<td colspan="2" align="center"></td>
											<td colspan="2" align="center"></td>
											</tr>
											
											
											
											<tr height="10">
											</tr>
											
											<tr>
											<th width="10%" bgcolor="D5D5D5" style="text-align:center;">치료내용<br>및<br>향후치료에<br>대한 소견</th>
											
											<td colspan="4"><textarea id="tableContent" name="story" rows="5" cols="33"   style="resize: none; width: 100%;">
											
											</textarea>
											</td>
											</tr>
		
											
											</table>
										</div>	 	
			                                      
			                                    </form>
	                                    </c:if>   
	                                    <c:if test="${name eq '3}">
	                                    ㅇㄹㅇㄹㅇㄹ
	                                    </c:if>   
	                                    <c:if test="${name eq '4'}">
	                                    32321321312
	                                    </c:if>   
	                                      
		                                        <div class="row no-gutters justify-content-right" style="float: right;">
							                        <div class="text-center">
							                            <button type="button" id="registBtn" onclick="regist_go();" class="loginBtn btn btn-block">문서 등록</button>
							                        </div>
							                       
						                         	<div class="text-center mr-1">
							                             <button type="button" onclick="javascript:window.close()" class="loginBtn btn bg-white text-primary btn-block">&nbsp;취&nbsp;&nbsp;&nbsp;&nbsp;소&nbsp;</button>
							                        </div>
				                        		</div>
		                                         </div>
	                                    </div>
		                                        
	                                </div>
            </div>
            
        </div>
        
        
    </div>


<script>
	var query = window.location.search;
	var param = new URLSearchParams(query);
	var id = param.get('kind');
	 document.getElementById('setkind').value = id;
</script>
<script>


	function regist_go(){
		if(!$('input[id="P_NAME"]').val()){
		  swal ( "실패" ,  "환자이름 혹은 차트번호를 검색해주세요." ,  "error" );
		  return;
		}
	    
		   if($("#BOOKING_DOC option:selected").val() == 'n'){
			  swal ( "실패" ,  "전문의 선택은 필수입니다." ,  "error" );
			  return;
			}
		   
		if($("#BOOKING_WRITER option:selected").val() == 'n'){
		   	 swal ( "실패" ,  "직원 선택은 필수입니다." ,  "error" );
			  return;
			}
		
		if($("#BOOKING_DATE option:selected").val() == 'n'){
	    	swal ( "실패" ,  "예약날짜 선택은 필수입니다." ,  "error" );  
			  return;
		}
	    if($("#BOOKING_TIME option:selected").val() == 'n'){
	    	swal ( "실패" ,  "예약시간 선택은 필수입니다." ,  "error" );  
			  return;
		}
	    
	    if($("#BOOKING_CC").val() == ""){
	    	swal ( "실패" ,  "증상을 입력해주세요." ,  "error" );  
			  return;
		}
	    
	 
	   
	    var parse_date = new Date(document.getElementById('BOOKING_DATE').value+" "+ document.getElementById('BOOKING_TIME').value);
	    console.log(document.getElementById('hiddenTime').value)
	    document.getElementById('hiddenTime').value = parse_date;
	    
	    var form = $('form[role="form"]');
		form.attr({"method":"post",
		     	   "action":"bookingModify"
		   		  });
		form.submit();
		


	}

function remove_go(){
	swal({
		  title: "예약취소",
		  text: "정말로 예약취소 하겠습니까?",
		  icon: "warning",
		  buttons: ['취소','예약취소'],
		})
		.then((willDelete) => {
		  if (willDelete) {
			  location.href='remove?bookingCode=${booking.bookingCode}';
			 
		  } else {
		      
		  }
		});
}
	
</script>

<c:if test="${from eq 'modify'}" >
	<script>
		window.onload = function(){
			swal({
				  title: "성공",
				  text: "예약 수정이 완료되었습니다.",
				  icon: "success",
				  button: "확인",
			})
			.then((willDelete) => {
			  if (willDelete) {
 			  window.close();
 			  opener.parent.location.reload();
			 
			  }
			});
			
		}
	</script>
</c:if>
<c:if test="${from eq 'remove'}" >
	<script>
		window.onload = function(){
			swal({
				  title: "성공",
				  text: "예약 취소가 완료되었습니다.",
				  icon: "success",
				  button: "확인",
			})
			.then((willDelete) => {
			  if (willDelete) {
 			  window.close();
 			  opener.parent.location.reload();
			 
			  }
			});
			
		}
	</script>
</c:if>
