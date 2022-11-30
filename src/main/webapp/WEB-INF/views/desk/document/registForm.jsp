<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" />


<body class="h-50">
    <div class="h-100 loginFormBackground">
        <div class="container h-50">
            <div class="row justify-content-center h-100 align-items-center">
			
			
			<div class="row no-gutters">
	                            <div class="col-xl-12">
	                              
	                                	<c:set  var="name" value="${param.kind}" />
		                                	<%-- 진단서 --%>
											<c:if test="${name eq '0'}">
											  <div class="auth-form loginBoxBackground">
	                                	<div class="form-row">
											<div style="border-bottom: 2px solid;" class="col-sm-12">
												<h2 style="font-weight: bold;">문서등록</h2>
	                                   		 </div>
	                                	</div> 
					                          		<div class="pdf_wrap p-1 " id="printArea" style="width:600px; height:500px;  border:1px lightgray solid; background-color:#FFFFFF;">
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
																	</tr>
															
																	<tr>
														
																		<td id="tablePno"  style="text-align:center;" vlaue="${param.pNo}">${param.pNo}</td>
																		<td id="tableName"   colspan="2" style="text-align:center;" value="${patient.PName}">${patient.PName}</td>
																		<td id="tableRegNo"   align="center" ></td>
																		
							 											<td align="center"  id="tableRDate" ></td>
																		<td align="center" id="tableDoc"  value="${loginUser.memName}">${loginUser.memName}</td>
													
																	</tr>
																	<tr height="10">
																	</tr>
														
																	<tr>
										
														
																	<th width="10%" bgcolor="D5D5D5" style="text-align:center;">용도</th>
																			<td colspan="6">
																				 <select id="tableUse" class=" form-control-input"  style="width: 100%;">
																						 <option selected value="0"></option>
																						 <option class="text-white" value="1">보험회사 제출용</option>
																						 <option class="text-white" value="2">직장(회사) 제출용</option>
																						 <option class="text-white" value="3">학교 제출용</option>
																						 <option class="text-white" value="4">군부대 제출용</option>
																						 <option class="text-white" value="5">경찰서 제출용</option>
																						 <option class="text-white" value="6">법원 제출용</option>
																						 <option class="text-white" value="7">진료 의뢰용</option>
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
																		<td colspan="2" align="center"><input id="sickness1"  style= "border: 0px; width: 100%;  height:100%;"></td>
																		<td colspan="2" align="center"><input id="part1"  style= "border: 0px; width: 100%;  height:100%;"></td>
																	</tr>
																	<tr>
																		<td colspan="2" align="center"><input  id="sickness2"  style= "border: 0px; width: 100%;  height:100%;"></td>
																		<td colspan="2" align="center"><input id="part2"  style= "border: 0px; width: 100%;  height:100%;"></td>
																	</tr>
																	<tr>
																		<td colspan="2" align="center"><input  id="sickness3"  style= "border: 0px; width: 100%;  height:100%;"></td>	
																		<td colspan="2" align="center"><input id="part3"  style= "border: 0px; width: 100%;  height:100%;"></td>
																	</tr>
																	<tr>
																		<td colspan="2" align="center"><input id="sickness4"   style= "border: 0px; width: 100%;  height:100%;"></td>
																		<td colspan="2" align="center"><input id="part4"  style= "border: 0px; width: 100%;  height:100%;"></td>
																	</tr>
															
																	<tr height="10">
																	</tr>
															
																	<tr>
																		<th width="10%" bgcolor="D5D5D5" style="text-align:center;">치료내용<br>및<br>향후치료에<br>대한 소견</th>
																	
																		<td colspan="8">
															
													                	<textarea rows="8" cols="33"  class="form-control" id="textArea_byteLimit" 
													                  	  onkeyup="fn_checkByte(this)" style="padding:0; margin:0; resize: none; width: 100%;  border:1px; lightgray solid;"></textarea>
													            		<sup style="float:right;">(<span id="nowByte">0</span>/300bytes)</sup>	
																		</td>
																	</tr>
															</table>
											       </div>	 	
			                <div class="row no-gutters justify-content-right" style="float: right;">
							                        <div class="text-center">
							                            <button type="button" id="registBtn" onclick="regist_go();" class="loginBtn btn btn-block">문서 등록</button>
							                        </div>
							                       
						                         	<div class="text-center mr-1">
							                             <button type="button" onclick="javascript:window.close()" class="loginBtn btn bg-white text-primary btn-block">&nbsp;취&nbsp;&nbsp;&nbsp;&nbsp;소&nbsp;</button>
							                        </div>
				                        		</div>
				                        		</div>
		                                    </c:if>   
		                                    
	                                       <%-- 소견서 --%>
											<c:if test="${name eq '1'}">
											  <div class="auth-form loginBoxBackground">
	                                	<div class="form-row">
											<div style="border-bottom: 2px solid;" class="col-sm-12">
												<h2 style="font-weight: bold;">문서등록</h2>
	                                   		 </div>
	                                	</div> 
					                          		<div class="pdf_wrap p-1 " id="printArea" style="width:600px; height:500px;  border:1px lightgray solid; background-color:#FFFFFF;">
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
																	</tr>
															
																	<tr>
														
																		<td id="tablePno"  style="text-align:center;" vlaue="${param.pNo}">${param.pNo}</td>
																		<td id="tableName"   colspan="2" style="text-align:center;" value="${patient.PName}">${patient.PName}</td>
																		<td id="tableRegNo"   align="center" ></td>
																		
							 											<td align="center"  id="tableRDate" ></td>
																		<td align="center" id="tableDoc"  value="${loginUser.memName}">${loginUser.memName}</td>
													
																	</tr>
																	<tr height="10">
																	</tr>
														
																	<tr>
										
														
																	<th width="10%" bgcolor="D5D5D5" style="text-align:center;">용도</th>
																			<td colspan="6">
																				 <select id="tableUse" class=" form-control-input"  style="width: 100%;">
																						 <option selected value="0"></option>
																						 <option class="text-white" value="1">보험회사 제출용</option>
																						 <option class="text-white" value="2">직장(회사) 제출용</option>
																						 <option class="text-white" value="3">학교 제출용</option>
																						 <option class="text-white" value="4">군부대 제출용</option>
																						 <option class="text-white" value="5">경찰서 제출용</option>
																						 <option class="text-white" value="6">법원 제출용</option>
																						 <option class="text-white" value="7">진료 의뢰용</option>
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
																		<td colspan="2" align="center"><input id="sickness1"  style= "border: 0px; width: 100%;  height:100%;"></td>
																		<td colspan="2" align="center"><input id="part1"  style= "border: 0px; width: 100%;  height:100%;"></td>
																	</tr>
																	<tr>
																		<td colspan="2" align="center"><input  id="sickness2"  style= "border: 0px; width: 100%;  height:100%;"></td>
																		<td colspan="2" align="center"><input id="part2"  style= "border: 0px; width: 100%;  height:100%;"></td>
																	</tr>
																	<tr>
																		<td colspan="2" align="center"><input  id="sickness3"  style= "border: 0px; width: 100%;  height:100%;"></td>	
																		<td colspan="2" align="center"><input id="part3"  style= "border: 0px; width: 100%;  height:100%;"></td>
																	</tr>
																	<tr>
																		<td colspan="2" align="center"><input id="sickness4"   style= "border: 0px; width: 100%;  height:100%;"></td>
																		<td colspan="2" align="center"><input id="part4"  style= "border: 0px; width: 100%;  height:100%;"></td>
																	</tr>
															
																	<tr height="10">
																	</tr>
															
																	<tr>
																		<th width="10%" bgcolor="D5D5D5" style="text-align:center;">치료내용<br>및<br>향후치료에<br>대한 소견</th>
																	
																		<td colspan="8">
															
													                	<textarea rows="8" cols="33"  class="form-control" id="textArea_byteLimit" 
													                  	  onkeyup="fn_checkByte(this)" style="padding:0; margin:0; resize: none; width: 100%;  border:1px; lightgray solid;"></textarea>
													            		<sup style="float:right;">(<span id="nowByte">0</span>/300bytes)</sup>	
																		</td>
																	</tr>
															</table>
											       </div>	 	
			                <div class="row no-gutters justify-content-right" style="float: right;">
							                        <div class="text-center">
							                            <button type="button" id="registBtn" onclick="regist_go();" class="loginBtn btn btn-block">문서 등록</button>
							                        </div>
							                       
						                         	<div class="text-center mr-1">
							                             <button type="button" onclick="javascript:window.close()" class="loginBtn btn bg-white text-primary btn-block">&nbsp;취&nbsp;&nbsp;&nbsp;&nbsp;소&nbsp;</button>
							                        </div>
				                        		</div>
				                        		</div>
		                                    </c:if>   
		                                    
		                                    <%-- 치료 계획서 --%>
											<c:if test="${name eq '2'}">
											  <div class="auth-form loginBoxBackground">
	                                	<div class="form-row">
											<div style="border-bottom: 2px solid;" class="col-sm-12">
												<h2 style="font-weight: bold;">문서등록</h2>
	                                   		 </div>
	                                	</div> 
					                          		<div class="pdf_wrap p-1 " id="printArea" style="width:600px; height:500px;  border:1px lightgray solid; background-color:#FFFFFF;">
															<table border="1" width="100%">
																	<tr>
																		<th colspan="9" height="50" style="text-align:center;"><font size="5">치료 계획서</font></th>
																	</tr>
															
																	<tr>
																		<th bgcolor="D5D5D5" style="text-align:center;">차트번호</th>
																		<th colspan="2" bgcolor="D5D5D5" style="text-align:center;">이 름</th>
																		<th bgcolor="D5D5D5" style="text-align:center;">주민번호</th>
																		<th bgcolor="D5D5D5" style="text-align:center;">발행일자</th>
																		<th bgcolor="D5D5D5" style="text-align:center;">발급의사</th>
																	</tr>
															
																	<tr>
														
																		<td id="tablePno"  style="text-align:center;" vlaue="${param.pNo}">${param.pNo}</td>
																		<td id="tableName"   colspan="2" style="text-align:center;" value="${patient.PName}">${patient.PName}</td>
																		<td id="tableRegNo"   align="center" ></td>
																		
							 											<td align="center"  id="tableRDate" ></td>
																		<td align="center" id="tableDoc"  value="${loginUser.memName}">${loginUser.memName}</td>
													
																	</tr>
																	<tr height="10">
																	</tr>
														
																	<tr>
										
														
																	<th width="10%" bgcolor="D5D5D5" style="text-align:center;">용도</th>
																			<td colspan="6">
																				 <select id="tableUse" class=" form-control-input"  style="width: 100%;">
																						 <option selected value="0"></option>
																						 <option class="text-white" value="1">보험회사 제출용</option>
																						 <option class="text-white" value="2">직장(회사) 제출용</option>
																						 <option class="text-white" value="3">학교 제출용</option>
																						 <option class="text-white" value="4">군부대 제출용</option>
																						 <option class="text-white" value="5">경찰서 제출용</option>
																						 <option class="text-white" value="6">법원 제출용</option>
																						 <option class="text-white" value="7">진료 의뢰용</option>
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
																		<td colspan="2" align="center"><input id="sickness1"  style= "border: 0px; width: 100%;  height:100%;"></td>
																		<td colspan="2" align="center"><input id="part1"  style= "border: 0px; width: 100%;  height:100%;"></td>
																	</tr>
																	<tr>
																		<td colspan="2" align="center"><input  id="sickness2"  style= "border: 0px; width: 100%;  height:100%;"></td>
																		<td colspan="2" align="center"><input id="part2"  style= "border: 0px; width: 100%;  height:100%;"></td>
																	</tr>
																	<tr>
																		<td colspan="2" align="center"><input  id="sickness3"  style= "border: 0px; width: 100%;  height:100%;"></td>	
																		<td colspan="2" align="center"><input id="part3"  style= "border: 0px; width: 100%;  height:100%;"></td>
																	</tr>
																	<tr>
																		<td colspan="2" align="center"><input id="sickness4"   style= "border: 0px; width: 100%;  height:100%;"></td>
																		<td colspan="2" align="center"><input id="part4"  style= "border: 0px; width: 100%;  height:100%;"></td>
																	</tr>
															
																	<tr height="10">
																	</tr>
															
																	<tr>
																		<th width="10%" bgcolor="D5D5D5" style="text-align:center;">치료내용<br>및<br>향후치료에<br>대한 소견</th>
																	
																		<td colspan="8">
															
													                	<textarea rows="8" cols="33"  class="form-control" id="textArea_byteLimit" 
													                  	  onkeyup="fn_checkByte(this)" style="padding:0; margin:0; resize: none; width: 100%;  border:1px; lightgray solid;"></textarea>
													            		<sup style="float:right;">(<span id="nowByte">0</span>/300bytes)</sup>	
																		</td>
																	</tr>
															</table>
											       </div>	 	 	
													                <div class="row no-gutters justify-content-right" style="float: right;">
							                        <div class="text-center">
							                            <button type="button" id="registBtn" onclick="regist_go();" class="loginBtn btn btn-block">문서 등록</button>
							                        </div>
							                       
						                         	<div class="text-center mr-1">
							                             <button type="button" onclick="javascript:window.close()" class="loginBtn btn bg-white text-primary btn-block">&nbsp;취&nbsp;&nbsp;&nbsp;&nbsp;소&nbsp;</button>
							                        </div>
				                        		</div>
				                        		</div>
		                                    </c:if>   
		                                    
		                                    <%-- 진료/수술확인서 --%>
											<c:if test="${name eq '3'}">
											  <div class="auth-form loginBoxBackground">
	                                	<div class="form-row">
											<div style="border-bottom: 2px solid;" class="col-sm-12">
												<h2 style="font-weight: bold;">문서등록</h2>
	                                   		 </div>
	                                	</div> 
					                          		<div class="pdf_wrap p-1 " id="printArea" style="width:600px; height:500px;  border:1px lightgray solid; background-color:#FFFFFF;">
															<table border="1" width="100%">
																	<tr>
																		<th colspan="9" height="50" style="text-align:center;"><font size="5">진료/수술확인서</font></th>
																	</tr>
															
																	<tr>
																		<th bgcolor="D5D5D5" style="text-align:center;">차트번호</th>
																		<th colspan="2" bgcolor="D5D5D5" style="text-align:center;">이 름</th>
																		<th bgcolor="D5D5D5" style="text-align:center;">주민번호</th>
																		<th bgcolor="D5D5D5" style="text-align:center;">발행일자</th>
																		<th bgcolor="D5D5D5" style="text-align:center;">발급의사</th>
																	</tr>
															
																	<tr>
														
																		<td id="tablePno"  style="text-align:center;" vlaue="${param.pNo}">${param.pNo}</td>
																		<td id="tableName"   colspan="2" style="text-align:center;" value="${patient.PName}">${patient.PName}</td>
																		<td id="tableRegNo"   align="center" ></td>
																		
							 											<td align="center"  id="tableRDate" ></td>
																		<td align="center" id="tableDoc"  value="${loginUser.memName}">${loginUser.memName}</td>
													
																	</tr>
																	<tr height="10">
																	</tr>
														
																	<tr>
										
														
																	<th width="10%" bgcolor="D5D5D5" style="text-align:center;">용도</th>
																			<td colspan="6">
																				 <select id="tableUse" class=" form-control-input"  style="width: 100%;">
																						 <option selected value="0"></option>
																						 <option class="text-white" value="1">보험회사 제출용</option>
																						 <option class="text-white" value="2">직장(회사) 제출용</option>
																						 <option class="text-white" value="3">학교 제출용</option>
																						 <option class="text-white" value="4">군부대 제출용</option>
																						 <option class="text-white" value="5">경찰서 제출용</option>
																						 <option class="text-white" value="6">법원 제출용</option>
																						 <option class="text-white" value="7">진료 의뢰용</option>
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
																		<td colspan="2" align="center"><input id="sickness1"  style= "border: 0px; width: 100%;  height:100%;"></td>
																		<td colspan="2" align="center"><input id="part1"  style= "border: 0px; width: 100%;  height:100%;"></td>
																	</tr>
																	<tr>
																		<td colspan="2" align="center"><input  id="sickness2"  style= "border: 0px; width: 100%;  height:100%;"></td>
																		<td colspan="2" align="center"><input id="part2"  style= "border: 0px; width: 100%;  height:100%;"></td>
																	</tr>
																	<tr>
																		<td colspan="2" align="center"><input  id="sickness3"  style= "border: 0px; width: 100%;  height:100%;"></td>	
																		<td colspan="2" align="center"><input id="part3"  style= "border: 0px; width: 100%;  height:100%;"></td>
																	</tr>
																	<tr>
																		<td colspan="2" align="center"><input id="sickness4"   style= "border: 0px; width: 100%;  height:100%;"></td>
																		<td colspan="2" align="center"><input id="part4"  style= "border: 0px; width: 100%;  height:100%;"></td>
																	</tr>
															
																	<tr height="10">
																	</tr>
															
																	<tr>
																		<th width="10%" bgcolor="D5D5D5" style="text-align:center;">치료내용<br>및<br>향후치료에<br>대한 소견</th>
																	
																		<td colspan="8">
															
													                	<textarea rows="8" cols="33"  class="form-control" id="textArea_byteLimit" 
													                  	  onkeyup="fn_checkByte(this)" style="padding:0; margin:0; resize: none; width: 100%;  border:1px; lightgray solid;"></textarea>
													            		<sup style="float:right;">(<span id="nowByte">0</span>/300bytes)</sup>	
																		</td>
																	</tr>
															</table>
											       </div>	 	
													                <div class="row no-gutters justify-content-right" style="float: right;">
							                        <div class="text-center">
							                            <button type="button" id="registBtn" onclick="regist_go();" class="loginBtn btn btn-block">문서 등록</button>
							                        </div>
							                       
						                         	<div class="text-center mr-1">
							                             <button type="button" onclick="javascript:window.close()" class="loginBtn btn bg-white text-primary btn-block">&nbsp;취&nbsp;&nbsp;&nbsp;&nbsp;소&nbsp;</button>
							                        </div>
				                        		</div>
				                        		</div>
		                                    </c:if>   
	                                 
											
											
	                                      
	                                      
	                                     		 <form role="form" class="form-horizontal" action="regist" method="post">
					                                      
					                                      <input name="docKind"  hidden="hidden"  value="${param.kind}" >
					                                      <input name="docUse"  id="dUse"    hidden="hidden"  value="" >
					                                      <input name="docContent"  id="content"  hidden="hidden"  value="" >
					                                      <input name="docWriter"  hidden="hidden"  value="${loginUser.memName}" >
					                                      <input name="docSym"   id="docSym" hidden="hidden"  value="" >
					                                      <input name="docRegNo"  hidden="hidden"  value="${patient.PRnum}" >
					                                      <input name="docName"  hidden="hidden"  value="${patient.PName}" >
					                                      <input name="docPno"  hidden="hidden"  value="${param.pNo}" >
				                                    </form>
				                                    
		                        
		                                         
	                                    </div>
		                                        
	                                </div>
            </div>
            
        </div>
        
        
    </div>
 
 
 <!-- 주민번호 마스킹--> 
<script>
var PRnum = '${patient.PRnum}';
PRnum = PRnum.replace(/(?<=.{8})./gi, "*");
document.getElementById("tableRegNo").innerText =PRnum;

</script>
<!-- 발행날짜 지정 -->
<script>
var today = new Date();  
var year = today.getFullYear(); // 년도
var month = today.getMonth() + 1;  // 월
var date = today.getDate();  // 날짜

document.getElementById("tableRDate").innerText = (year+'-'+month+'-'+date);
</script>

<script> /** textarea 및 글자수 제한*/

function fn_checkByte(obj){
    const maxByte = 300; //최대 300바이트
    const text_val = obj.value; //입력한 문자
    const text_len = text_val.length; //입력한 문자수
    
    let totalByte=0;
    for(let i=0; i<text_len; i++){
    	const each_char = text_val.charAt(i);
        const uni_char = escape(each_char); //유니코드 형식으로 변환
        if(uni_char.length>4){
        	// 한글 : 2Byte
            totalByte += 2;
        }else{
        	// 영문,숫자,특수문자 : 1Byte
            totalByte += 1;
        }
    }
    
    if(totalByte>maxByte){
    	swal ( "경고" ,  "최대 300Byte까지만 입력가능합니다." ,  "warning" );
        	document.getElementById("nowByte").innerText = totalByte;
            document.getElementById("nowByte").style.color = "red";
        }else{
        	document.getElementById("nowByte").innerText = totalByte;
            document.getElementById("nowByte").style.color = "green";
        }
}

</script>

<script>


	function regist_go(){
		
	var sickness1 = document.getElementById("sickness1").value
	var sickness2 = document.getElementById("sickness2").value
	var sickness3 = document.getElementById("sickness3").value
	var sickness4 = document.getElementById("sickness4").value
	var part1 = document.getElementById("part1").value
	var part2 = document.getElementById("part2").value
	var part3 = document.getElementById("part3").value
	var part4 = document.getElementById("part4").value
	var kUse = document.getElementById("tableUse").value
	var num = part1+"§"+sickness1+"§"+part2+"§"+sickness2+"§"+part3+"§"+sickness3+"§"+part4+"§"+sickness4
   
	<%-- 문서내용 엔터 처리 --%>
	var set = $('#textArea_byteLimit').val().replace(/\n/g, "<br>")

	
	document.getElementById("dUse").value = kUse
	document.getElementById("docSym").value = num
	document.getElementById("content").value = set

	
	
		   if($("#tableUse option:selected").val() == '0'){
			  swal ( "실패" ,  "사용 용도 선택은 필수입니다." ,  "error" );
			  return;
			}
		   
	    
	    var form = $('form[role="form"]');
		form.attr({"method":"post",
		     	   "action":"regist"
		   		  });
	form.submit();
		


	}

</script>

<c:if test="${from eq 'regist'}" >
	<script>
		window.onload = function(){
			swal({
				  title: "성공",
				  text: "문서등록이 완료되었습니다.",
				  icon: "success",
				  button: "확인",
			})
			.then((willDelete) => {
			  if (willDelete) {
				  opener.list();	   
 			  window.close();
/*  			  opener.parent.location.reload(); */
			 
			  }
			});
			
		}
	</script>
</c:if>
