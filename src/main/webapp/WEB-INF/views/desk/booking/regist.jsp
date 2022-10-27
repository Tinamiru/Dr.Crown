<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약등록</title>
</head>

<body class="h-100">
    <div class="h-100 loginFormBackground">
        <div class="container h-100">
            <div class="row justify-content-center h-100 align-items-center">
			
			
			
                <div class="col-md-12">
					<div class="mb-1">
					
					     <a><img src="<%=request.getContextPath()%>/resources/images/logo-full.png" alt="" width= "20%" height=" 20%" ></a>
						
					</div>

                    <div class="authincation-content">
                        <div class="row no-gutters">
                            <div class="col-xl-12">
                            
                                <div class="auth-form loginBoxBackground">
									<div style="border-bottom: 2px solid;">
									<h2 style="font-weight: bold;">예약등록</h2>
                                    </div>
                                   <form>
                                    
                                    <div class="row mt-1">
                                    	
                                    	<div class="col-sm-6">
                                    	 	<div class="form-row">
		                                        <div class="col-sm-5">
		                                    		  <label class="text-white"><strong>환자 성함</strong></label>
				                                         <div class="input-group mb-1">
				                                            <input type="text" id="P_NAME" class="form-control form-control-input" >
		                                    		 </div>
		                                         </div>
		                                        <div class="col-sm-5">
		                                    		  <label class="text-white"><strong>환자 번호</strong></label>
				                                         <div class="input-group mb-1">
				                                            <input type="text" class="form-control form-control-input" >

		                                    		 </div>
		                                         </div>
		                                         <div class="col-sm-2">
		                                    		  <label class="text-white"><strong>성별</strong></label>
				                                         <div class="input-group mb-1">
				                                            <input type="text" id="P_" class="form-control form-control-input" >
		                                    		 </div>
		                                           </div>
	                                         </div>   
	                                         
	                                         
	                                         <div class="form-row">
		                                        <div class="col-sm-6">
		                                    		  <label class="text-white"><strong>생년 월일</strong></label>
				                                         <div class="input-group mb-1">
				                                            <input type="text" id="P_BIR" class="form-control form-control-input"  disabled >
		                                    		 </div>
		                                         </div>
		                                        <div class="col-sm-6">
		                                    		  <label class="text-white"><strong>최종방문일</strong></label>
				                                         <div class="input-group mb-1">
				                                            <input type="text" id="P_LASTDATE" class="form-control form-control-input" placeholder="최종방문일" disabled >
				                                            
		                                    		 </div>
		                                         </div>
	                                         </div>   
	                                         
	                                           
	                                             <label class="text-white"><strong>전화 번호</strong></label>
	                                         <div class="input-group mb-3">
	                                            <input type="text" class="form-control form-control-input" placeholder="전화번호" disabled >
	                                            <div class="input-group-append ">
	                                                <button class="loginBtn btn btn-block"  id="P_TEL" type="button">문자전송</button>
	                                            </div> 
	                                        </div>
	                                        
	                                        
	                                         <label class="text-white"><strong>보험 정보</strong></label>
	                                         <div class="input-group mb-3">
	                                            <input type="text" class="form-control form-control-input" id="P_INSURANCE" placeholder="보험정보"   disabled >
	                                        </div>
	                                        
	                                        
                            			
                            					
	                                    </div>  
	                                    
	 
	                                 
                                    	<div class="col-sm-6">   
                                    		
		                                       <label class="text-white"><strong>예약담당의사/직원</strong></label>
	                                        <div class="form-row">
	                                        	<div class="col-sm-6">
	                                                <select id="BOOKING_DOC" class=" form-control-input form-control default-select">
	                                                    <option selected value="n">== 담당의 ==</option>
	                                                    <option class="text-white" value="1">곽닥터</option>
	                                                    <option class="text-white" value="2">김닥터</option>
	                                                    <option class="text-white" value="3">이닥터</option>
	                                                </select>
                                                 </div>
                                                
                                                 <div class="col-sm-6">
	                                                <select id="BOOKING_WRITER" class=" form-control-input form-control default-select">
	                                                    <option selected value="n">== 직원 ==</option>
	                                                    <option class="text-white" value="1">박수간호사</option>
	                                                    <option class="text-white" value="2">김간호사</option>
	                                                    <option class="text-white" value="3">이치위생사</option>
	                                                </select>
                                                 </div>
	                                        </div> 
	                                        
	                               
	                                      
                               				<label class="text-white mt-3"><strong>예약일시</strong></label>	
                            					 <div class="form-row">
	                                        	<div class="col-sm-6">
	                                                <input type="date"  id="BOOKING_DATE" class="form-control form-control-input">
                                                 </div>
                                                
                                                 <div class="col-sm-6">
	                                                <select id="BOOKING_TIME" class=" form-control-input form-control default-select">
	                                                    <option selected value="n">예약시간</option>
	                                                    <option class="text-white" value="0900">09:00</option>
	                                                    <option class="text-white" value="0930">09:30</option>
	                                                    <option class="text-white" value="1000">10:00</option>
	                                                    <option class="text-white" value="1030">10:30</option>
	                                                    <option class="text-white" value="1100">11:00</option>
	                                                    <option class="text-white" value="1130">11:30</option>
	                                                    <option class="text-white" value="1300">13:00</option>
	                                                    <option class="text-white" value="1330">13:30</option>
	                                                    <option class="text-white" value="1400">14:00</option>
	                                                    <option class="text-white" value="1430">14:30</option>
	                                                    <option class="text-white" value="1500">15:00</option>
	                                                    <option class="text-white" value="1530">15:30</option>
	                                                    <option class="text-white" value="1600">16:00</option>
	                                                    <option class="text-white" value="1630">16:30</option>
	                                                    <option class="text-white" value="1700">17:00</option>
	                                                    <option class="text-white" value="1730">17:30</option>
	                                                    <option class="text-white" value="1800">18:00</option>
	                                                    <option class="text-white" value="1830">18:30</option>
	                                                    <option class="text-white" value="1900">19:00</option>
	                                                    <option class="text-white" value="1930">19:30</option>
	       
	                                                </select>
                                                 </div>
	                                        </div> 
                            				
                                    	
                                    	
                                    	 
	                                        <div class="form-group mt-1">
	                                            <label class="text-white"><strong>증상 내용</strong></label>
	                                             <textarea style="resize: none;"  id="BOOKING_CC" class="textarea_editor form-control bg-transparent" rows="6" placeholder="증상 입력."></textarea>
	                                        </div>
	                                        
	                                      
	                                        
	                                       
	                                       
	                                       
	                                      
	                                       
	                                         </div>
	                                       
	                                       
	                                       
	                                    
	                                        
	                                        
	                                        
	                                        
                                      
                                    </div>
                                    </form>
                                        
	                                        <div class="row no-gutters justify-content-right" style="float: right;">
						                        <div class="text-center">
						                            <button type="button" id="registBtn" onclick="regist_go();" class="loginBtn btn btn-block">예약 등록</button>
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
            
        </div>
        
        
    </div>


<script>

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
	    
	    
	    var form = $('form[role="form"]');
		form.attr({"method":"post",
		     	   "action":"regist"
		   		  });
		swal ( "성공" ,  "예약이 완료되었습니다." ,  "success" );
		form.submit();
		
		   
		
	}
</script>

</body>
</html>