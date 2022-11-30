<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" />
<c:set var="memberDoctorList" value="${dataMap.memberDoctorList }" />

<body class="h-100">
    <div class="h-100 loginFormBackground">
        <div class="container h-100">
            <div class="row justify-content-center h-100 align-items-center">
			
			
			<div class="row no-gutters">
	                            <div class="col-xl-12">
	                            
	                                <div class="auth-form loginBoxBackground">
	                                <div class="form-row">
										<div style="border-bottom: 2px solid;" class="col-sm-7">
										<h2 style="font-weight: bold;">예약상세</h2>
	                                    </div>
	                                
	                                    <div style="border-bottom: 2px solid;" class="col-sm-5">
										<h6 style="font-weight: bold; margin-top:10px;">예약번호:${booking.bookingCode}</h6>
	                                    </div>
	                                   </div> 
	                                    <form role="form" class="form-horizontal" action="modify" method="post">
	                                    
	                                    	 	<div class="form-row">
			                                        <div class="col-sm-5">
			                                    		  <label class="text-white" ><strong>환자 성함</strong></label>
					                                         <div class="input-group mb-1"  data-toggle="modal" data-target=".bd-exampl2e-modal-lg" >
					                                            <input type="text" id="P_NAME" class="form-control form-control-input  " value="${booking.PName}" disabled>
			                                    		 </div>
			                                         </div>
			                                        <div class="col-sm-5">
			                                    		  <label class="text-white"><strong>차트 번호</strong></label>
					                                         <div class="input-group mb-1">
					                                            <input type="text"  id="pNo" name="pNo" class="form-control form-control-input" value="${booking.PNo}" disabled>
	
			                                    		 </div>
			                                         </div>
			                             
			                                         <div class="col-sm-2">
			                                    		  <label class="text-white"><strong>성별</strong></label>
					                                         <div class="input-group mb-1">
					       
					                                         <c:set var="gender" value="${fn:substring(booking.PRnum,7,8)}"/>
					                                         <c:choose>
					                                          <c:when test="${(gender eq '1') or (gender eq '3') }">
					                                            <input type="text" id="P_gender" class="form-control form-control-input" value="남" disabled >
					                                          </c:when > 
					                                          <c:when test="${(gender eq '2') or (gender eq '4') }">
																<input type="text" id="P_gender" class="form-control form-control-input" value="여" disabled >
															</c:when >
																<c:otherwise>
																	<input type="text" id="P_gender" class="form-control form-control-input" value="" disabled >		
																</c:otherwise>
															</c:choose>
															
			                                    		 </div>
			                                           </div>
		                                         </div>   
		                                        
																				
		                                         
		                                         <div class="form-row">
			                                        <div class="col-sm-6">
			                                    		  <label class="text-white"><strong>생년 월일</strong></label>
					                                         <div class="input-group mb-1">
					                                            <input type="text" id="P_BIR" class="form-control form-control-input"   value="<fmt:formatDate value="${booking.PBir}" pattern="yyyy-MM-dd" />" disabled  >
			                                    		 </div>
			                                         </div>
			                                        <div class="col-sm-6">
			                                    		  <label class="text-white"><strong>최종내원일</strong></label>
					                                         <div class="input-group mb-1">
					                                            <input type="text" id="P_LASTDATE" class="form-control form-control-input"  value="<fmt:formatDate value="${booking.PLastdate}" pattern="yyyy-MM-dd" />" disabled  >
					                                            
			                                    		 </div>
			                                         </div>
		                                         </div>   
		                                         
		                                           <div class="form-row">
			                                        <div class="col-sm-4">
		                                         <label class="text-white"><strong>보험 정보</strong></label>
		                                         <div class="input-group mb-3">
		                                            <input type="text" class="form-control form-control-input" id="P_INSURANCE" value="${booking.PInsurance}" disabled  >
		                                     
		                                        </div>
			                                   </div>     
			                                   <div class="col-sm-8">
		                                             <label class="text-white"><strong>전화 번호</strong></label>
		                                         <div class="input-group mb-3">
		                                            <input type="text" class="form-control form-control-input" id="P_TEL"  value="${booking.PTel}" disabled  >
		                                            <div class="input-group-append ">
		                                                <button class="loginBtn btn btn-block"  type="button">문자전송</button>
		                                            </div> 
		                                        </div>
		                                          </div>
			                                   </div>
		                                        
		                                        
		                                        
		                                        
		               
		                            
		                                 
			                                       <label class="text-white"><strong>예약담당의사/직원</strong></label>
		                                        <div class="form-row">
		                                        	<div class="col-sm-6">
		                                                <select id="bookingDoc" name="bookingDoc" class=" form-control-input form-control default-select">
		                                                     <c:forEach items="${memberDoctorList}" var="doc">
		                                                     <c:choose>
					                                          <c:when test="${booking.bookingDoc eq doc.memId }">
					                                              <option class="text-white" value="${doc.memId}" selected>${doc.memName}</option>
					                                          </c:when > 
					                                          <c:when test="${booking.bookingDoc ne doc.memId }">
																<option class="text-white" value="${doc.memId}">${doc.memName}</option>
															</c:when >
																<c:otherwise>
																	<option class="text-white" value=""></option>	
																</c:otherwise>
															</c:choose>
		                                               
		                                                    </c:forEach>
		                                                </select>
	                                                 </div>
	                                                
	                                                 <div class="col-sm-6">
		                                                <input type="text"  id="MEMname" name="bookingWriter" class="form-control form-control-input"  value="${loginUser.memName}" readonly>
		                                                <input type="hidden"  id="hiddenmemid" name="memNo" class="form-control form-control-input"  value="${loginUser.memId}">
		                                                
		                                                   
	                                                 </div>
		                                        </div> 
		                                        
		                               
		                                      
	                               				<label class="text-white mt-3"><strong>예약일시</strong></label>	
	                            					 <div class="form-row">
		                                        	<div class="col-sm-6">
		                                                <input type="date"  id="BOOKING_DATE" class="form-control form-control-input"  pattern="yyyy-mm-dd" value="<fmt:formatDate value="${booking.bookingRdate}" pattern="yyyy-MM-dd" />">
		                                                
	                                                 </div>
	                                                
	                                                 <div class="col-sm-6">
		                                                <select id="BOOKING_TIME" class=" form-control-input form-control default-select">
		                                                    <c:set var="time_val1" value="${booking.bookingRdate}"/>
		                                                        
					                                          <c:if test="${fn:substring(time_val1,11,16) eq '09:00'}">
					                                            <option class="text-white" value="09:00" selected>09:00</option>
					                                          </c:if > 
					                                          <c:if test="${fn:substring(time_val1,11,16) ne '09:00'}">
					                                            <option class="text-white" value="09:00">09:00</option>
					                                          </c:if > 
					                                          
					                                           <c:if test="${fn:substring(time_val1,11,16) eq '10:00'}">
					                                            <option class="text-white" value="10:00" selected>10:00</option>
					                                          </c:if > 
					                                          <c:if test="${fn:substring(time_val1,11,16) ne '10:00'}">
					                                            <option class="text-white" value="10:00">10:00</option>
					                                          </c:if > 
					                                          
					                                              <c:if test="${fn:substring(time_val1,11,16) eq '11:00'}">
					                                            <option class="text-white" value="11:00" selected>11:00</option>
					                                          </c:if > 
					                                          <c:if test="${fn:substring(time_val1,11,16) ne '11:00'}">
					                                            <option class="text-white" value="11:00">11:00</option>
					                                          </c:if > 
					                                          
					                                           <c:if test="${fn:substring(time_val1,11,16) eq '13:00'}">
					                                            <option class="text-white" value="13:00" selected>13:00</option>
					                                          </c:if > 
					                                          <c:if test="${fn:substring(time_val1,11,16) ne '13:00'}">
					                                            <option class="text-white" value="13:00">13:00</option>
					                                          </c:if > 
					                                          
					                                              <c:if test="${fn:substring(time_val1,11,16) eq '14:00'}">
					                                            <option class="text-white" value="14:00" selected>14:00</option>
					                                          </c:if > 
					                                          <c:if test="${fn:substring(time_val1,11,16) ne '14:00'}">
					                                            <option class="text-white" value="14:00">14:00</option>
					                                          </c:if > 
					                                          
					                                           <c:if test="${fn:substring(time_val1,11,16) eq '15:00'}">
					                                            <option class="text-white" value="15:00" selected>15:00</option>
					                                          </c:if > 
					                                          <c:if test="${fn:substring(time_val1,11,16) ne '15:00'}">
					                                            <option class="text-white" value="15:00">15:00</option>
					                                          </c:if > 
					                                          
					                                              <c:if test="${fn:substring(time_val1,11,16) eq '16:00'}">
					                                            <option class="text-white" value="16:00" selected>16:00</option>
					                                          </c:if > 
					                                          <c:if test="${fn:substring(time_val1,11,16) ne '16:00'}">
					                                            <option class="text-white" value="16:00">16:00</option>
					                                          </c:if > 
					                                          
					                                              <c:if test="${fn:substring(time_val1,11,16) eq '17:00'}">
					                                            <option class="text-white" value="17:00" selected>17:00</option>
					                                          </c:if > 
					                                          <c:if test="${fn:substring(time_val1,11,16) ne '17:00'}">
					                                            <option class="text-white" value="17:00">17:00</option>
					                                          </c:if > 
					                                          
					                                           <c:if test="${fn:substring(time_val1,11,16) eq '18:00'}">
					                                            <option class="text-white" value="18:00" selected>18:00</option>
					                                          </c:if > 
					                                          <c:if test="${fn:substring(time_val1,11,16) ne '18:00'}">
					                                            <option class="text-white" value="18:00">18:00</option>
					                                          </c:if > 
					                                          
					                                              <c:if test="${fn:substring(time_val1,11,16) eq '19:00'}">
					                                            <option class="text-white" value="19:00" selected>19:00</option>
					                                          </c:if > 
					                                          <c:if test="${fn:substring(time_val1,11,16) ne '19:00'}">
					                                            <option class="text-white" value="19:00">19:00</option>
					                                          </c:if > 
					                                          
					                                       
		       
		                                                </select>
	                                                 </div>
		                                        </div> 
	                            			  <input type="hidden"  id="hiddenTime" name="bookingRdate" class="form-control form-control-input"  value=" ">
	                            			  <input type="hidden"  name="bookingCode" class="form-control form-control-input"  value="${booking.bookingCode}">
	                                    	
	                                    	
	                                    	 
		                                        <div class="form-group mt-1">
		                                            <label class="text-white"><strong>증상 내용</strong></label>
		                                             <textarea style="resize: none;"  id="BOOKING_CC"  name="bookingCc" class="textarea_editor form-control bg-transparent" rows="6" >${booking.bookingCc}</textarea>
		                                        </div>
		                                        
		      
		                                        
		                                        
	                                      
	                                    </form>
	                                        
		                                        <div class="row no-gutters justify-content-right" style="float: right;">
							                        <div class="text-center">
							                            <button type="button" id="registBtn" onclick="regist_go();" class="loginBtn btn btn-block">예약 수정</button>
							                        </div>
							                        
							                         <div class="text-center">
							                            <button type="button" id="registBtn"  onclick="remove_go()" class="loginBtn btn btn-block">예약 취소</button>
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
