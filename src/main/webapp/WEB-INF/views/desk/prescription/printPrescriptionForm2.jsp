`<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" />



<body class="h-50">
        <div class="container h-50">
            <div class="row justify-content-center h-100 align-items-center">
			
			
			<div class="row no-gutters">
	                            <div class="col-xl-12">
												
	                              		
	                            
						                                	<div class="form-row ">
																<div style="border-bottom: 2px solid;" class="col-sm-12">
																	<h2 style="font-weight: bold;">문서출력</h2>
						                                   		 </div>
						                                	</div> 
					                          		<div class=" p-1 "  id="pdfDiv" style="width:600px; height:890px;  border:1px lightgray solid; background-color:#FFFFFF;">
															<table border="1" width="100%">
															
																	<tr>
																		<th colspan="9" height="50" style="text-align:center;"><font size="5">처&nbsp;&nbsp;&nbsp;&nbsp;방&nbsp;&nbsp;&nbsp;&nbsp;전</font></th>
																	</tr>
															
																	<tr>
																		<th bgcolor="D5D5D5" style="text-align:center;">교부번호</th>
																		<th colspan="2"  style="text-align:center;" id="pDate"></th>
																	    <th rowspan="3"  width="10%"  bgcolor="D5D5D5" style="text-align:center;">의<br>료<br>기<br>관</th>
																	    <th bgcolor="D5D5D5" style="text-align:center;">기관명</th>
																	    <th style="text-align:center;">대덕치과의원</th>
																	<tr>
																		<th rowspan="2"   bgcolor="D5D5D5" style="text-align:center;">환<br>자</th>
																		<th bgcolor="D5D5D5" style="text-align:center;">성명</th>
																		<th id="tableName"   style="text-align:center;" value="${patient.PName}">${patient.PName}</th>
																		<th bgcolor="D5D5D5" style="text-align:center;">전화번호</th>
																		<th style="text-align:center;">042)283-1111</th>
																	</tr>
																	<tr>
																		<th bgcolor="D5D5D5" style="text-align:center;">주민등록번호</th>
																		<th id="tableRegNo"  style="text-align:center;" value=""></th>
																		<th bgcolor="D5D5D5" style="text-align:center;">Fax번호</th>
																		<th style="text-align:center;">042)283-8282</th>
																	</tr>
																	</tr>
														
														   	</table>
														   	<table border="1" width="100%">
														   	<tr>
														   	<th rowspan="2" width="40px" bgcolor="D5D5D5" style="text-align:center;">질병<br>분류<br>기호</th>
														   	<th style="text-align:center; ">K</th>
														   	<th style="text-align:center;" >0</th>
														   	<th style="text-align:center;" >5</th>
														   	<th style="text-align:center;" >&nbsp;&nbsp;&nbsp;</th>
														   	<th style="text-align:center;" >&nbsp;&nbsp;&nbsp;</th>
														   	<th rowspan="2" bgcolor="D5D5D5" width="50px"  style="text-align:center;">처방<br>의료인<br>성명</th>
														   	<th rowspan="2"    style="text-align:center;" id="docName"></th>
														   	<th style="text-align:center;" width="70px"  bgcolor="D5D5D5">면허종빌</th>
														   	<th style="text-align:center;">치과의사</th>
														   	</tr>
														   	<tr>
														   	<th style="text-align:center;" >&nbsp;&nbsp;&nbsp;</th>
														   	<th style="text-align:center;" >&nbsp;&nbsp;&nbsp;</th>
														   	<th style="text-align:center;" >&nbsp;&nbsp;&nbsp;</th>
														   	<th style="text-align:center;" >&nbsp;&nbsp;&nbsp;</th>
														   	<th style="text-align:center;" >&nbsp;&nbsp;&nbsp;</th>
														   	<th style="text-align:center;" width="70px" bgcolor="D5D5D5">면허번호</th>
														   	<th style="text-align:center;"></th>
														   	</tr>
														   	</table>
															<table border="1" width="100%">
															 <th>&nbsp;&nbsp;※환자의 요구가 있을 때에는 질병 분류기호를 기제하지 아니합니다.</th>
															</table>
															<table border="1" width="100%">
																<tr>
																<th colspan="1"  height="30px"  width="50%"  bgcolor="D5D5D5" style="text-align:center;">처&nbsp;&nbsp;방&nbsp;&nbsp;의&nbsp;&nbsp;약&nbsp;&nbsp;품&nbsp;&nbsp;의&nbsp;&nbsp;명&nbsp;&nbsp;칭</th>
																<th colspan="1"  height="30px"  width="10%"   bgcolor="D5D5D5" style="text-align:center;">1회<br>투약량</th>
																<th colspan="1"  height="30px"  width="10%"   bgcolor="D5D5D5" style="text-align:center;">1회<br>투여횟수</th>
																<th colspan="1"  height="30px"  width="10%"   bgcolor="D5D5D5" style="text-align:center;">1회<br>투약일수</th>
																<th colspan="1"  height="30px"  bgcolor="D5D5D5" style="text-align:center;">용&nbsp;&nbsp;&nbsp;&nbsp;법</th>
																
																</tr>
																
																	<tr>
																		<td colspan="1" align="center"><input id="drugName0" readonly  style= "border: 0px; width: 95%;  height:95%; font-size:7px"></td>
																		<td colspan="1" align="center"><input id="perTime0" readonly  style= "border: 0px; width: 95%;  height:95%; text-align:right"></td>
																		<td colspan="1" align="center"><input id="perReDate0" readonly  style= "border: 0px; width: 95%;  height:95%;text-align:right"></td>
																		<td colspan="1" align="center"><input id="perTotal0" readonly  style= "border: 0px; width: 95%;  height:95%;text-align:right"></td>
																		<td colspan="1" align="center" style= "border: 0px;"><input id="mediCation0" readonly  style= "border: 0px; width: 95%;  height:95%;font-size:7px"></td>
																	</tr>
																	<tr>
																		<td colspan="1" align="center"><input id="drugName1" readonly  style= "border: 0px; width: 95%;  height:95%;font-size:7px"></td>
																		<td colspan="1" align="center"><input id="perTime1" readonly  style= "border: 0px; width: 95%;  height:95%;text-align:right"></td>
																		<td colspan="1" align="center"><input id="perReDate1" readonly  style= "border: 0px; width: 95%;  height:95%;text-align:right"></td>
																		<td colspan="1" align="center"><input id="perTotal1" readonly  style= "border: 0px; width: 95%;  height:95%;text-align:right"></td>
																		<td colspan="1" align="center" style= "border: 0px;"><input id="mediCation1" readonly  style= "border: 0px; width: 95%;  height:95%;font-size:7px"></td>
																	</tr>
																	<tr>
																		<td colspan="1" align="center"><input id="drugName2" readonly  style= "border: 0px; width: 95%;  height:95%;font-size:7px"></td>
																		<td colspan="1" align="center"><input id="perTime2" readonly  style= "border: 0px; width: 95%;  height:95%;text-align:right"></td>
																		<td colspan="1" align="center"><input id="perReDate2" readonly  style= "border: 0px; width: 95%;  height:95%;text-align:right"></td>
																		<td colspan="1" align="center"><input id="perTotal2" readonly  style= "border: 0px; width: 95%;  height:95%;text-align:right"></td>
																		<td colspan="1" align="center" style= "border: 0px;"><input id="mediCation2" readonly  style= "border: 0px; width: 95%;  height:95%;font-size:7px"></td>
																	</tr>
																	<tr>
																		<td colspan="1" align="center"><input id="drugName3" readonly  style= "border: 0px; width: 95%;  height:95%;font-size:7px"></td>
																		<td colspan="1" align="center"><input id="perTime3" readonly  style= "border: 0px; width: 95%;  height:95%;text-align:right"></td>
																		<td colspan="1" align="center"><input id="perReDate3" readonly  style= "border: 0px; width: 95%;  height:95%;text-align:right"></td>
																		<td colspan="1" align="center"><input id="perTotal3" readonly  style= "border: 0px; width: 95%;  height:95%;text-align:right"></td>
																		<td colspan="1" align="center" style= "border: 0px;"><input id="mediCation3" readonly  style= "border: 0px; width: 95%;  height:95%;font-size:7px"></td>
																	</tr>
																	<tr>
																		<td colspan="1" align="center"><input id="drugName4" readonly  style= "border: 0px; width: 95%;  height:95%;font-size:7px"></td>
																		<td colspan="1" align="center"><input id="perTime4" readonly  style= "border: 0px; width: 95%;  height:95%;text-align:right"></td>
																		<td colspan="1" align="center"><input id="perReDate4" readonly  style= "border: 0px; width: 95%;  height:95%;text-align:right"></td>
																		<td colspan="1" align="center"><input id="perTotal4" readonly  style= "border: 0px; width: 95%;  height:95%;text-align:right"></td>
																		<td colspan="1" align="center" style= "border: 0px;"><input id="mediCation4" readonly  style= "border: 0px; width: 95%;  height:95%;font-size:7px"></td>
																	</tr>
																	<tr>
																		<td colspan="1" align="center"><input id="drugName5" readonly  style= "border: 0px; width: 95%;  height:95%;font-size:7px"></td>
																		<td colspan="1" align="center"><input id="perTime5" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="1" align="center"><input id="perReDate5" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="1" align="center"><input id="perTotal5" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="1" align="center" style= "border: 0px;"><input id="mediCation5" readonly  style= "border: 0px; width: 95%;  height:95%;font-size:7px"></td>
																	</tr>
																	<tr>
																		<td colspan="1" align="center"><input id="drugName6" readonly  style= "border: 0px; width: 95%;  height:95%;font-size:7px"></td>
																		<td colspan="1" align="center"><input id="perTime6" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="1" align="center"><input id="perReDate6" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="1" align="center"><input id="perTotal6" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="1" align="center" style= "border: 0px;"><input id="mediCation6" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																	</tr>
																	<tr>
																		<td colspan="1" align="center"><input id="drugName7" readonly  style= "border: 0px; width: 95%;  height:95%;font-size:7px"></td>
																		<td colspan="1" align="center"><input id="perTime7" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="1" align="center"><input id="perReDate7" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="1" align="center"><input id="perTotal7" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="1" align="center" style= "border: 0px;"><input id="mediCation7" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																	</tr>
																	<tr>
																		<td colspan="1" align="center"><input id="drugName8" readonly  style= "border: 0px; width: 95%;  height:95%;font-size:7px"></td>
																		<td colspan="1" align="center"><input id="perTime8" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="1" align="center"><input id="perReDate8" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="1" align="center"><input id="perTotal8" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="1" align="center" style= "border: 0px;"><input id="mediCation8" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																	</tr>
																	<tr>
																		<td colspan="1" align="center"><input id="drugName9" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="1" align="center"><input id="perTime9" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="1" align="center"><input id="perReDate9" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="1" align="center"><input id="perTotal9" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="1" align="center" style= "border: 0px;"><input id="mediCation9" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																	</tr>
																	<tr>
																		<td colspan="1" align="center"><input id="drugName10" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="1" align="center"><input id="perTime10" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="1" align="center"><input id="perReDate10" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="1" align="center"><input id="perTotal10" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="1" align="center" style= "border: 0px;"><input id="mediCation10" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																	</tr>
																	<tr>
																		<td colspan="1" align="center"><input id="drugName11" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="1" align="center"><input id="perTime11" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="1" align="center"><input id="perReDate11" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="1" align="center"><input id="perTotal11" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="1" align="center" style= "border: 0px;"><input id="mediCation11" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																	</tr>
																	<tr>
																		<td colspan="1" align="center"><input id="drugName12" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="1" align="center"><input id="perTime12" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="1" align="center"><input id="perReDate12" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="1" align="center"><input id="perTotal12" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="1" align="center" style= "border: 0px;"><input id="mediCation12" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																	</tr>
																	<tr>
																		<td colspan="1" align="center"><input id="drugName13" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="1" align="center"><input id="perTime13" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="1" align="center"><input id="perReDate13" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="1" align="center"><input id="perTotal13" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="1" align="center" style= "border: 0px;"><input id="mediCation13" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																	</tr>
																	<tr>
																		<td colspan="1" align="center"><input id="drugName14" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="1" align="center"><input id="perTime14" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="1" align="center"><input id="perReDate14" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="1" align="center"><input id="perTotal14" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="1" align="center" style= "border: 0px;"><input id="mediCation14" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																	</tr>
																	<tr>
																		<td colspan="1" align="center"><input id="drugName15" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="1" align="center"><input id="perTime15" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="1" align="center"><input id="perReDate15" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="1" align="center"><input id="perTotal15" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td rowspan="6" align="center" style= "border: 0px;">
																	<div id="qrcode" style="width:100px; height:100px;"></div>
																	</tr>
																	<tr>
																		<td colspan="1" align="center"><input id="drugName16" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="1" align="center"><input id="perTime16" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="1" align="center"><input id="perReDate16" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="1" align="center"><input id="perTotal16" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
														
																	</tr>
																	<tr>
																		<td colspan="1" align="center"><input id="drugName17" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="1" align="center"><input id="perTime17" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="1" align="center"><input id="perReDate17" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="1" align="center"><input id="perTotal17" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																	
																	</tr>
																	<tr>
																		<td colspan="1" align="center"><input id="drugName18" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="1" align="center"><input id="perTime18" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="1" align="center"><input id="perReDate18" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="1" align="center"><input id="perTotal18" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																
																	</tr>
																	<tr>
																		<td colspan="1" align="center"><input id="drugName19" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="1" align="center"><input id="perTime19" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="1" align="center"><input id="perReDate19" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="1" align="center"><input id="perTotal19" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		
																	</tr>
																	<tr>
																		<td colspan="1" align="center"><input id="drugName20" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="1" align="center"><input id="perTime20" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="1" align="center"><input id="perReDate20" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="1" align="center"><input id="perTotal20" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																	
																	</tr>
																	
															</table> 
						                                    <table border="1" width="100%">
						                                    	<tr>
																<th colspan="1"   style="text-align:center;">사용기간</th>
																<th colspan="1"  width="228px"  style="text-align:center;">교부일로부터 (&nbsp;&nbsp;7&nbsp;&nbsp;)일간</th>
																<th colspan="1"   style="text-align:center;">※ 사용기간내에 약국에 제출해야 합니다.</th>
						                                 		</tr>
						                                  </table> 
						                                    <table border="1" width="100%">
						                                    <tr>
						                                      	<th bgcolor="D5D5D5"  style="text-align:center;">의&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;약&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;품&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;조&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;제&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;내&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;역</th>
							                                 </tr>
							                                 </table> 
						                                    <table border="1" width="100%">
						                                      <tr>
							                                      	<th rowspan="4"    width="5%"  bgcolor="D5D5D5" style="text-align:center;">조<br>제<br>내<br>역</th>
							                                      	<th colspan="1"  width="18%"  style="text-align:center;">조제기관의명칭</th>
							                                      	<th colspan="2"   width="30%"  style="text-align:center;"></th>
							                                      	<th colspan="1"   style="text-align:center;">처방의 변경·수정·확인 대체시 그 내용 등</th>
						                                      </tr>
						                                      <tr>
							                                      	<th colspan="1"   width="18%"  style="text-align:center;">조&nbsp;&nbsp;&nbsp;&nbsp;제&nbsp;&nbsp;&nbsp;&nbsp;약&nbsp;&nbsp;&nbsp;&nbsp;사</th>
							                                      	<th colspan="1"   width="6%"  style="text-align:center;">성명</th>
							                                      	<th colspan="1"   style="text-align:right; font-size: 2pt;">(서명 또는 날인)</th>
							                                      	<th rowspan="3"  style="text-align:center;"></th>
						                                      </tr>
						                                      <tr>
							                                      	<th colspan="1"   width="18%"  style="text-align:center;">조&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;제&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;량</th>
							                                      	<th colspan="2"   style="text-align:right; font-size: 4pt;"></th>	
						                                      </tr>
						                                      <tr>
							                                      	<th colspan="1"  width="18%"   style="text-align:center;">조&nbsp;&nbsp;제&nbsp;&nbsp;년&nbsp;&nbsp;윌&nbsp;&nbsp;일</th>
							                                      	<th colspan="2"   style="text-align:right; font-size: 4pt;"></th>	
						                                      </tr>
						                                      
							                                 </table> 
																<img style="margin-left:325px; margin-top:-1390px;" src="<%=request.getContextPath()%>/resources/images/stamp.png"  width="30" height="30" alt="모나리자" >
																 
																  </div>
																   
										  
		                                			             
					              
											 <div class="row no-gutters justify-content-right" style="float: right;">
							                      			<div class="text-center">
											                            <button type="button" id="savePdfBtn" class="loginBtn btn btn-block mr-2">PDF 저장</button>
											                        </div>
											                        <div class="text-center mr-1">
											                             <button type="button" onclick="javascript:window.close()" class="loginBtn btn bg-white text-primary btn-block">&nbsp;닫&nbsp;&nbsp;&nbsp;&nbsp;기&nbsp;</button>
											                        </div>
											                        
							                      		 </div>
							                 
	                                      
	                                      
	                                     		
				                                    
		                        
		                                         
	                                    </div>
		                           </div>      
		                              </div>            
    </div>
    
    
	                                     		 <form role="form" class="form-horizontal" action="printPrescription" method="post">
					                                      
					                                 <input name="cdCode"  id="docCode"    hidden="hidden"  value="${param.cdCode}" >     
					                                 
				                                    </form>
 
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 <script type = "text/javascript" src = "http://code.jquery.com/jquery-latest.min.js"></script>
<script type = "text/javascript" src = "https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.min.js"></script>
<script type = "text/javascript" src = "https://html2canvas.hertzen.com/dist/html2canvas.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/qrcode.min.js"></script>
 <!-- 주민번호 마스킹--> 
<script>
var PRnum = '${patient.PRnum}';
PRnum = PRnum.replace(/(?<=.{8})./gi, "*");
document.getElementById("tableRegNo").innerText =PRnum;





$( function(){
	$.ajax({
	url:"getPrescriptionListByCdCode.do",
	type:"post",
	data: {cdCode:'${cdCode}'},
	dataType:"json",
	success:ajaxHtml2,
	
	error:function(){alert("error");
	console.log(data)
	}
})
});


<%-- 당일 날짜 입력 --%>
var today = new Date();  
var year = today.getFullYear(); // 년도
var month = today.getMonth() + 1;  // 월
var date = today.getDate();  // 일
var dateP = year+'년 '+month+ '월 '+date+'일 ~ 제';


function ajaxHtml2(data){
	console.log(data)
		dateP+= moment(data.prescription[0].ppRegDate).format("YYYYMMDD")+data.prescription[0].cdCode+"호"; 
	<%--구글 qr 코드 생성기 --%>	
	
	/* 	// input에 입력하는 값들을 뽑아서 변수에 저장
	var text = dateP
	// encodeURIComponent로 인코딩 합시당. 
	// 이걸로 인코딩하는 이유는 배웠었는데 까먹었다.. 검색해봐야지.
	// 이유는 한글로 말해야 알아듣듯이 컴퓨터도 알아들을 수 있도록 인코딩해줘야 하니까.
	text = encodeURIComponent(text);
	// 뒤에 코드가 길어지니까 그냥 한번 변수에 주소를 저장
	googleQRUrl = "https://chart.googleapis.com/chart?chs=100x100&cht=qr&chl=";
	// 이미지가 나타날 영역에 원하는 내용을 넣은 QR code의 이미지를 출력합니다.
	// 여기 주소 부분을 변경해주면 원하는 값을 언제든 맘대로
		$('#qrcode').attr('src', googleQRUrl + text +'&choe=UTF-8'); */
	
	    document.getElementById("pDate").innerText=dateP;	
		document.getElementById("docName").innerText=data.prescription[0].memName;	
	
		 document.getElementById("drugName0").value = data.prescription[0].drugName;	
		 document.getElementById("drugName1").value =data.prescription[1].drugName;	
		 document.getElementById("drugName2").value =data.prescription[2].drugName;	
		 
		 document.getElementById("perTime0").value= data.prescription[0].ppPertime;	
		 document.getElementById("perTime1").value= data.prescription[1].ppPertime;	
		 document.getElementById("perTime2").value= data.prescription[2].ppPertime;	
		 
		 document.getElementById("perReDate0").value= data.prescription[0].ppPerDate;	
		 document.getElementById("perReDate1").value=data.prescription[1].ppPerDate;	
		 document.getElementById("perReDate2").value=data.prescription[2].ppPerDate;	
		 
		 document.getElementById("perTotal0").value=data.prescription[0].ppTotalCount;	
		 document.getElementById("perTotal1").value=data.prescription[1].ppTotalCount;	
		 document.getElementById("perTotal2").value=data.prescription[2].ppTotalCount;	
		 
		 document.getElementById("mediCation0").value=data.prescription[0].ppMediCation;	
		 document.getElementById("mediCation1").value=data.prescription[1].ppMediCation;	
		 document.getElementById("mediCation2").value=data.prescription[2].ppMediCation;	
		 
		 
		/* for (var i = 0; i < 20; i++) {
		alert( "dfdfd"+i )
		var html='<tr>';
		html+='<td colspan="1" align="center"><input id="drugName'+i+'" readonly  style= "border: 0px; width: 95%;  height:95%; font-size:7px;">'+data.prescription[i].drugName+'</td>';
		html+='<td colspan="1" align="center"><input id="perTime'+i+'" readonly  style= "border: 0px; width: 95%;  height:95%;">'+data.prescription[i].ppPertime+'</td>';
		html+='<td colspan="1" align="center"><input id="perReDate'+i+'" readonly  style= "border: 0px; width: 95%;  height:95%;">'+data.prescription[i].ppPerDate+'</td>';
		html+='<td colspan="1" align="center"><input id="perTotal'+i+'" readonly  style= "border: 0px; width: 95%;  height:95%;">'+data.prescription[i].ppTotalCount+'</td>';
		html+='<td colspan="1" align="center" style= "border: 0px;"><input id="mediCation'+i+'" readonly  style= "border: 0px; width: 95%;  height:95%;">'+data.prescription[i].ppMediCation+'</td>';
		html+='</tr>'
	}
		$("#ajaxList").html(html); */
};

</script>

<script src="https://ajax.googleapis.com/ajax/libs/cesiumjs/1.78/Build/Cesium/Cesium.js"></script>



<script>
$('#savePdfBtn').click(function() {
	swal({
		  title: "처방전발급",
		  text: "처방전발급은 1회만 가능합니다.",
		  icon: "info",
		  buttons: ['취소','처방전발급'],
		})
		.then((willDelete) => {
		  if (willDelete) {
			  html2canvas($('#pdfDiv')[0]).then(function(canvas) {
			        // 캔버스를 이미지로 변환
			        let imgData = canvas.toDataURL('image/png');

			        let margin = 10; // 출력 페이지 여백설정
			        let imgWidth = 210 - (10 * 2); // 이미지 가로 길이(mm) A4 기준
			        let pageHeight = imgWidth * 1.414;  // 출력 페이지 세로 길이 계산 A4 기준
			        let imgHeight = canvas.height * imgWidth / canvas.width;
			        let heightLeft = imgHeight;

			        let doc = new jsPDF('p', 'mm');
			        let position = margin;

			        // 첫 페이지 출력
			        doc.addImage(imgData, 'PNG', margin, position, imgWidth, imgHeight);
			        heightLeft -= pageHeight;

			        // 한 페이지 이상일 경우 루프 돌면서 출력
			        while (heightLeft >= 20) {
			            position = heightLeft - imgHeight;
			            doc.addImage(imgData, 'PNG', 0, position, imgWidth, imgHeight);
			            doc.addPage();
			            heightLeft -= pageHeight;
			        }

			        // 파일 저장
			        doc.save('sample.pdf');
			        
			        var form = $('form[role="form"]');
					form.attr({"method":"post",
					     	   "action":"printPrescription"
					   		  });
					
				form.submit();
					
			    });
			 
		  } else {
		      
		  }
		});
});
</script>


<c:if test="${from eq 'printPrescription'}" >
	<script>
		window.onload = function(){
			swal({
				  title: "성공",
				  text: "문서출력이 완료되었습니다.",
				  icon: "success",
				  button: "확인",
			})
			.then((willDelete) => {
			  if (willDelete) {
			  window.opener.prescriptionAjax('22015');	// 나중에 수정 필요   
 			  window.close();
			 
			  }
			});
			
		}
	</script>
</c:if>



