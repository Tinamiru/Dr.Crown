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
	                              		
	                                	<c:set  var="name" value="${document.docKind}" />
		                                	<%-- 진단서 --%>
											<c:if test="${name eq '0'}">
												  <div class="auth-form loginBoxBackground">
						                                	<div class="form-row">
																<div style="border-bottom: 2px solid;" class="col-sm-12">
																	<h2 style="font-weight: bold;">문서상세</h2>
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
																		<th bgcolor="D5D5D5" style="text-align:center;">문서번호</th>
																	</tr>
															
																	<tr>
														
																		<td id="tablePno"  style="text-align:center;" vlaue="${document.docPno}">${document.docPno}</td>
																		<td id="tableName"   colspan="2" style="text-align:center;" value="${document.docName}">${document.docName}</td>
																		<td id="tableRegNo"   align="center" ></td>
																		
							 											<td align="center"  id="tableRDate"  value="<fmt:formatDate value="${document.docRegDate}" pattern="yyyy-MM-dd" />"><fmt:formatDate value="${document.docRegDate}" pattern="yyyy-MM-dd" /></td>
																		<td align="center" id="tableDoc"  value="${document.docWriter}">${document.docWriter}</td>
																		<td id="tablePno"  style="text-align:center;" vlaue="${document.docCode}">${document.docCode}</td>
																	</tr>
																	<tr height="10">
																	</tr>
														
																	<tr>
										
														
																	<th width="10%" bgcolor="D5D5D5" style="text-align:center;">용도</th>
																			<td colspan="6">
																				 <select id="tableUse" class=" form-control-input"  style="width: 100%;">
																						 <option id="use0"  value="0"></option>
																						 <option id="use1" class="text-white" value="1">보험회사 제출용</option>
																						 <option id="use2"  class="text-white" value="2">직장(회사) 제출용</option>
																						 <option id="use3"  class="text-white" value="3">학교 제출용</option>
																						 <option id="use4"  class="text-white" value="4">군부대 제출용</option>
																						 <option id="use5"  class="text-white" value="5">경찰서 제출용</option>
																						 <option id="use6"  class="text-white" value="6">법원 제출용</option>
																						 <option id="use7"  class="text-white" value="7">진료 의뢰용</option>
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
							                       
							                          <c:set  var="state" value="${document.docState}" />
					                                	<%-- 문서발급 상태에 따라 수정 삭제 가능 여부 --%>
														<c:if test="${state eq '0'}">
					                                	<%--docState(발급상태)가 0(발급전)일경우  --%>
					                                	   <%-- 작성자와 로그인계정(전문의)가 같은지 체크 --%>
								                        <c:set  var="Writer" value="${document.docWriter}" />
									                        <c:choose>
	    														<c:when test="${Writer eq loginUser.memName}">
										                        <%--작성자와 로그인계정이 같을 경우  --%>
									                                	<div class="text-center">
											                            <button type="button" id="registBtn" onclick="modify_go();" class="loginBtn btn btn-block mr-2">문서 수정</button>
											                        </div>
											                        
											                         <div class="text-center">
											                            <button type="button" id="registdBtn" onclick="remove_go();" class="loginBtn btn btn-block mr-2"  style="background-color:#C90000;">문서 삭제</button>
											                        </div>
											                       
										                         	<div class="text-center mr-1">
											                             <button type="button" onclick="javascript:window.close()" class="loginBtn btn bg-white text-primary btn-block">&nbsp;닫&nbsp;&nbsp;&nbsp;&nbsp;기&nbsp;</button>
											                        </div>
											                        </c:when>
								                      	  	<c:otherwise>
										                      	   <%--작성자와 로그인계정이 다를 경우  --%>
										                      	   
										                      	   	 <div class="text-center" id="disabledSet" >
									                         		<h6 style="color: #FF6347; font-size: 13px; margin-right: 225px">※ 본문서는 작성자가 다르므로 열람만 가능합니다.</h6>
									                         		 </div>
									                         		 	<div class="text-center mr-1">
											                             <button type="button" onclick="javascript:window.close()" class="loginBtn btn bg-white text-primary btn-block">&nbsp;닫&nbsp;&nbsp;&nbsp;&nbsp;기&nbsp;</button>
											                        </div>
							                      			   </c:otherwise>
							                      			  </c:choose>
							                      			  
							                      		</c:if>	  
							                      			  	<%--docState(발급상태)가 1(발급)일경우  --%>
							                        		<c:if test="${state eq '1'}">
							                        		 <div class="text-center" id="disabledSet" >
							                        			 <h6 style="color: #FF6347; font-size: 13px; margin-right: 225px">※ 본문서는 발급된 상태이므로 열람만 가능합니다.</h6>
							                               </div>
							                               	<div class="text-center mr-1">
											                             <button type="button" onclick="javascript:window.close()" class="loginBtn btn bg-white text-primary btn-block">&nbsp;닫&nbsp;&nbsp;&nbsp;&nbsp;기&nbsp;</button>
											                        </div>
					                                	</c:if>
					                                </div>
					                              </div>
					                                	</c:if>
					                   
					                   
							                       
							                      
		                                    
	                                       <%-- 소견서 --%>
											<c:if test="${name eq '1'}">
											   <div class="auth-form loginBoxBackground">
						                                	<div class="form-row">
																<div style="border-bottom: 2px solid;" class="col-sm-12">
																	<h2 style="font-weight: bold;">문서상세</h2>
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
																		<th bgcolor="D5D5D5" style="text-align:center;">문서번호</th>
																	</tr>
															
																	<tr>
														
																		<td id="tablePno"  style="text-align:center;" vlaue="${document.docPno}">${document.docPno}</td>
																		<td id="tableName"   colspan="2" style="text-align:center;" value="${document.docName}">${document.docName}</td>
																		<td id="tableRegNo"   align="center" ></td>
																		
							 											<td align="center"  id="tableRDate"  value="<fmt:formatDate value="${document.docRegDate}" pattern="yyyy-MM-dd" />"><fmt:formatDate value="${document.docRegDate}" pattern="yyyy-MM-dd" /></td>
																		<td align="center" id="tableDoc"  value="${document.docWriter}">${document.docWriter}</td>
																		<td id="tablePno"  style="text-align:center;" vlaue="${document.docCode}">${document.docCode}</td>
																	</tr>
																	<tr height="10">
																	</tr>
														
																	<tr>
										
														
																	<th width="10%" bgcolor="D5D5D5" style="text-align:center;">용도</th>
																			<td colspan="6">
																				 <select id="tableUse" class=" form-control-input"  style="width: 100%;">
																						 <option id="use0"  value="0"></option>
																						 <option id="use1" class="text-white" value="1">보험회사 제출용</option>
																						 <option id="use2"  class="text-white" value="2">직장(회사) 제출용</option>
																						 <option id="use3"  class="text-white" value="3">학교 제출용</option>
																						 <option id="use4"  class="text-white" value="4">군부대 제출용</option>
																						 <option id="use5"  class="text-white" value="5">경찰서 제출용</option>
																						 <option id="use6"  class="text-white" value="6">법원 제출용</option>
																						 <option id="use7"  class="text-white" value="7">진료 의뢰용</option>
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
							                       
							                          <c:set  var="state" value="${document.docState}" />
					                                	<%-- 문서발급 상태에 따라 수정 삭제 가능 여부 --%>
														<c:if test="${state eq '0'}">
					                                	<%--docState(발급상태)가 0(발급전)일경우  --%>
					                                	   <%-- 작성자와 로그인계정(전문의)가 같은지 체크 --%>
								                        <c:set  var="Writer" value="${document.docWriter}" />
									                        <c:choose>
	    														<c:when test="${Writer eq loginUser.memName}">
										                        <%--작성자와 로그인계정이 같을 경우  --%>
									                                	<div class="text-center">
											                            <button type="button" id="registBtn" onclick="modify_go();" class="loginBtn btn btn-block mr-2">문서 수정</button>
											                        </div>
											                        
											                         <div class="text-center">
											                            <button type="button" id="registdBtn" onclick="remove_go();" class="loginBtn btn btn-block mr-2"  style="background-color:#C90000;">문서 삭제</button>
											                        </div>
											                       
										                         	<div class="text-center mr-1">
											                             <button type="button" onclick="javascript:window.close()" class="loginBtn btn bg-white text-primary btn-block">&nbsp;닫&nbsp;&nbsp;&nbsp;&nbsp;기&nbsp;</button>
											                        </div>
											                        </c:when>
								                      	  	<c:otherwise>
										                      	   <%--작성자와 로그인계정이 다를 경우  --%>
										                      	   
										                      	   	 <div class="text-center" id="disabledSet" >
									                         		<h6 style="color: #FF6347; font-size: 13px; margin-right: 225px">※ 본문서는 작성자가 다르므로 열람만 가능합니다.</h6>
									                         		 </div>
									                         		 	<div class="text-center mr-1">
											                             <button type="button" onclick="javascript:window.close()" class="loginBtn btn bg-white text-primary btn-block">&nbsp;닫&nbsp;&nbsp;&nbsp;&nbsp;기&nbsp;</button>
											                        </div>
							                      			   </c:otherwise>
							                      			  </c:choose>
							                      			  
							                      		</c:if>	  
							                      			  	<%--docState(발급상태)가 1(발급)일경우  --%>
							                        		<c:if test="${state eq '1'}">
							                        		 <div class="text-center" id="disabledSet" >
							                        			 <h6 style="color: #FF6347; font-size: 13px; margin-right: 225px">※ 본문서는 발급된 상태이므로 열람만 가능합니다.</h6>
							                               </div>
							                               	<div class="text-center mr-1">
											                             <button type="button" onclick="javascript:window.close()" class="loginBtn btn bg-white text-primary btn-block">&nbsp;닫&nbsp;&nbsp;&nbsp;&nbsp;기&nbsp;</button>
											                        </div>
					                                	</c:if>
					                                </div>
					                              </div>
					                                	</c:if>
					                 
		                                    
		                                    <%-- 치료 계획서 --%>
											<c:if test="${name eq '2'}">
											    <div class="auth-form loginBoxBackground">
						                                	<div class="form-row">
																<div style="border-bottom: 2px solid;" class="col-sm-12">
																	<h2 style="font-weight: bold;">문서상세</h2>
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
																		<th bgcolor="D5D5D5" style="text-align:center;">문서번호</th>
																	</tr>
															
																	<tr>
														
																		<td id="tablePno"  style="text-align:center;" vlaue="${document.docPno}">${document.docPno}</td>
																		<td id="tableName"   colspan="2" style="text-align:center;" value="${document.docName}">${document.docName}</td>
																		<td id="tableRegNo"   align="center" ></td>
																		
							 											<td align="center"  id="tableRDate"  value="<fmt:formatDate value="${document.docRegDate}" pattern="yyyy-MM-dd" />"><fmt:formatDate value="${document.docRegDate}" pattern="yyyy-MM-dd" /></td>
																		<td align="center" id="tableDoc"  value="${document.docWriter}">${document.docWriter}</td>
																		<td id="tablePno"  style="text-align:center;" vlaue="${document.docCode}">${document.docCode}</td>
																	</tr>
																	<tr height="10">
																	</tr>
														
																	<tr>
										
														
																	<th width="10%" bgcolor="D5D5D5" style="text-align:center;">용도</th>
																			<td colspan="6">
																				 <select id="tableUse" class=" form-control-input"  style="width: 100%;">
																						 <option id="use0"  value="0"></option>
																						 <option id="use1" class="text-white" value="1">보험회사 제출용</option>
																						 <option id="use2"  class="text-white" value="2">직장(회사) 제출용</option>
																						 <option id="use3"  class="text-white" value="3">학교 제출용</option>
																						 <option id="use4"  class="text-white" value="4">군부대 제출용</option>
																						 <option id="use5"  class="text-white" value="5">경찰서 제출용</option>
																						 <option id="use6"  class="text-white" value="6">법원 제출용</option>
																						 <option id="use7"  class="text-white" value="7">진료 의뢰용</option>
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
							                       
							                          <c:set  var="state" value="${document.docState}" />
					                                	<%-- 문서발급 상태에 따라 수정 삭제 가능 여부 --%>
														<c:if test="${state eq '0'}">
					                                	<%--docState(발급상태)가 0(발급전)일경우  --%>
					                                	   <%-- 작성자와 로그인계정(전문의)가 같은지 체크 --%>
								                        <c:set  var="Writer" value="${document.docWriter}" />
									                        <c:choose>
	    														<c:when test="${Writer eq loginUser.memName}">
										                        <%--작성자와 로그인계정이 같을 경우  --%>
									                                	<div class="text-center">
											                            <button type="button" id="registBtn" onclick="modify_go();" class="loginBtn btn btn-block mr-2">문서 수정</button>
											                        </div>
											                        
											                         <div class="text-center">
											                            <button type="button" id="registdBtn" onclick="remove_go();" class="loginBtn btn btn-block mr-2"  style="background-color:#C90000;">문서 삭제</button>
											                        </div>
											                       
										                         	<div class="text-center mr-1">
											                             <button type="button" onclick="javascript:window.close()" class="loginBtn btn bg-white text-primary btn-block">&nbsp;닫&nbsp;&nbsp;&nbsp;&nbsp;기&nbsp;</button>
											                        </div>
											                        </c:when>
								                      	  	<c:otherwise>
										                      	   <%--작성자와 로그인계정이 다를 경우  --%>
										                      	   
										                      	   	 <div class="text-center" id="disabledSet" >
									                         		<h6 style="color: #FF6347; font-size: 13px; margin-right: 225px">※ 본문서는 작성자가 다르므로 열람만 가능합니다.</h6>
									                         		 </div>
									                         		 	<div class="text-center mr-1">
											                             <button type="button" onclick="javascript:window.close()" class="loginBtn btn bg-white text-primary btn-block">&nbsp;닫&nbsp;&nbsp;&nbsp;&nbsp;기&nbsp;</button>
											                        </div>
							                      			   </c:otherwise>
							                      			  </c:choose>
							                      			  
							                      		</c:if>	  
							                      			  	<%--docState(발급상태)가 1(발급)일경우  --%>
							                        		<c:if test="${state eq '1'}">
							                        		 <div class="text-center" id="disabledSet" >
							                        			 <h6 style="color: #FF6347; font-size: 13px; margin-right: 225px">※ 본문서는 발급된 상태이므로 열람만 가능합니다.</h6>
							                               </div>
							                               	<div class="text-center mr-1">
											                             <button type="button" onclick="javascript:window.close()" class="loginBtn btn bg-white text-primary btn-block">&nbsp;닫&nbsp;&nbsp;&nbsp;&nbsp;기&nbsp;</button>
											                        </div>
					                                	</c:if>
					                                </div>
					                              </div>
					                                	</c:if>
					                            
		                                    
		                                    <%-- 진료/수술확인서 --%>
											<c:if test="${name eq '3'}">
											        <div class="auth-form loginBoxBackground">
						                                	<div class="form-row">
																<div style="border-bottom: 2px solid;" class="col-sm-12">
																	<h2 style="font-weight: bold;">문서상세</h2>
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
																		<th bgcolor="D5D5D5" style="text-align:center;">문서번호</th>
																	</tr>
															
																	<tr>
														
																		<td id="tablePno"  style="text-align:center;" vlaue="${document.docPno}">${document.docPno}</td>
																		<td id="tableName"   colspan="2" style="text-align:center;" value="${document.docName}">${document.docName}</td>
																		<td id="tableRegNo"   align="center" ></td>
																		
							 											<td align="center"  id="tableRDate"  value="<fmt:formatDate value="${document.docRegDate}" pattern="yyyy-MM-dd" />"><fmt:formatDate value="${document.docRegDate}" pattern="yyyy-MM-dd" /></td>
																		<td align="center" id="tableDoc"  value="${document.docWriter}">${document.docWriter}</td>
																		<td id="tablePno"  style="text-align:center;" vlaue="${document.docCode}">${document.docCode}</td>
																	</tr>
																	<tr height="10">
																	</tr>
														
																	<tr>
										
														
																	<th width="10%" bgcolor="D5D5D5" style="text-align:center;">용도</th>
																			<td colspan="6">
																				 <select id="tableUse" class=" form-control-input"  style="width: 100%;">
																						 <option id="use0"  value="0"></option>
																						 <option id="use1" class="text-white" value="1">보험회사 제출용</option>
																						 <option id="use2"  class="text-white" value="2">직장(회사) 제출용</option>
																						 <option id="use3"  class="text-white" value="3">학교 제출용</option>
																						 <option id="use4"  class="text-white" value="4">군부대 제출용</option>
																						 <option id="use5"  class="text-white" value="5">경찰서 제출용</option>
																						 <option id="use6"  class="text-white" value="6">법원 제출용</option>
																						 <option id="use7"  class="text-white" value="7">진료 의뢰용</option>
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
							                       
							                          <c:set  var="state" value="${document.docState}" />
					                                	<%-- 문서발급 상태에 따라 수정 삭제 가능 여부 --%>
														<c:if test="${state eq '0'}">
					                                	<%--docState(발급상태)가 0(발급전)일경우  --%>
					                                	   <%-- 작성자와 로그인계정(전문의)가 같은지 체크 --%>
								                        <c:set  var="Writer" value="${document.docWriter}" />
									                        <c:choose>
	    														<c:when test="${Writer eq loginUser.memName}">
										                        <%--작성자와 로그인계정이 같을 경우  --%>
									                                	<div class="text-center">
											                            <button type="button" id="registBtn" onclick="modify_go();" class="loginBtn btn btn-block mr-2">문서 수정</button>
											                        </div>
											                        
											                         <div class="text-center">
											                            <button type="button" id="registdBtn" onclick="remove_go();" class="loginBtn btn btn-block mr-2"  style="background-color:#C90000;">문서 삭제</button>
											                        </div>
											                       
										                         	<div class="text-center mr-1">
											                             <button type="button" onclick="javascript:window.close()" class="loginBtn btn bg-white text-primary btn-block">&nbsp;닫&nbsp;&nbsp;&nbsp;&nbsp;기&nbsp;</button>
											                        </div>
											                        </c:when>
								                      	  	<c:otherwise>
										                      	   <%--작성자와 로그인계정이 다를 경우  --%>
										                      	   
										                      	   	 <div class="text-center" id="disabledSet" >
									                         		<h6 style="color: #FF6347; font-size: 13px; margin-right: 225px">※ 본문서는 작성자가 다르므로 열람만 가능합니다.</h6>
									                         		 </div>
									                         		 	<div class="text-center mr-1">
											                             <button type="button" onclick="javascript:window.close()" class="loginBtn btn bg-white text-primary btn-block">&nbsp;닫&nbsp;&nbsp;&nbsp;&nbsp;기&nbsp;</button>
											                        </div>
							                      			   </c:otherwise>
							                      			  </c:choose>
							                      			  
							                      		</c:if>	  
							                      			  	<%--docState(발급상태)가 1(발급)일경우  --%>
							                        		<c:if test="${state eq '1'}">
							                        		 <div class="text-center" id="disabledSet" >
							                        			 <h6 style="color: #FF6347; font-size: 13px; margin-right: 225px">※ 본문서는 발급된 상태이므로 열람만 가능합니다.</h6>
							                               </div>
							                               	<div class="text-center mr-1">
											                             <button type="button" onclick="javascript:window.close()" class="loginBtn btn bg-white text-primary btn-block">&nbsp;닫&nbsp;&nbsp;&nbsp;&nbsp;기&nbsp;</button>
											                        </div>
					                                	</c:if>
					                                </div>
					                              </div>
					                                	</c:if>
					                              </div>
					                     
	                                 
											
											
	                                      
	                                      
	                                     		 <form role="form" class="form-horizontal" action="modify" method="post">
					                                      
					                                      <input name="docCode"  id="docCode"    hidden="hidden"  value="${document.docCode}" >
					                                      <input name="docUse"  id="dUse"    hidden="hidden"  value="" >
					                                      <input name="docContent"  id="content"  hidden="hidden"  value="" >
					                                      <input name="docSym"   id="docSym" hidden="hidden"  value="" >
					                                       
				                                    </form>
				                                    
		                        
		                                         
	                                    </div>
		                           </div>      
		                              </div>            
    </div>
 
 
 <!-- 주민번호 마스킹--> 
<script>
var PRnum = '${document.docRegNo}';
PRnum = PRnum.replace(/(?<=.{8})./gi, "*");
document.getElementById("tableRegNo").innerText =PRnum;

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
<%-- 용도 자동 선택 --%>
var use = '${document.docUse}'
if(use == '0'){
	document.getElementById('use0').setAttribute('selected',true);
}else if(use == '1'){
	document.getElementById('use1').setAttribute('selected',true);
}else if(use == '2'){
	document.getElementById('use2').setAttribute('selected',true);
}else if(use == '3'){
	document.getElementById('use3').setAttribute('selected',true);
}else if(use == '4'){
	document.getElementById('use4').setAttribute('selected',true);
}else if(use == '5'){
	document.getElementById('use5').setAttribute('selected',true);
}else if(use == '6'){
	document.getElementById('use6').setAttribute('selected',true);
}else if(use == '7'){
	document.getElementById('use7').setAttribute('selected',true);
}

</script>
<%-- 상명 부위 자르기 --%>
<script>
var str = '${document.docSym}';
var content = '${document.docContent}';
<%-- 문서내용 <br> -> /n  처리 --%>
content = content.replaceAll("<br>", "\r\n");
var words = str.split('§');

document.getElementById("part1").value = words[0] 
document.getElementById("sickness1").value = words[1] 
document.getElementById("part2").value = words[2] 
document.getElementById("sickness2").value = words[3] 
document.getElementById("part3").value = words[4] 
document.getElementById("sickness3").value = words[5] 
document.getElementById("part4").value = words[6] 
document.getElementById("sickness4").value = words[7] 
document.getElementById("textArea_byteLimit").value = content

</script>
<script>
<%-- 수정 안되게 만들기 --%>
if (document.getElementById('disabledSet')){
	document.getElementById('sickness1').setAttribute('disabled',true);
	document.getElementById('sickness2').setAttribute('disabled',true);
	document.getElementById('sickness3').setAttribute('disabled',true);
	document.getElementById('sickness4').setAttribute('disabled',true);
	document.getElementById('part1').setAttribute('disabled',true);
	document.getElementById('part2').setAttribute('disabled',true);
	document.getElementById('part3').setAttribute('disabled',true);
	document.getElementById('part4').setAttribute('disabled',true);
	document.getElementById('textArea_byteLimit').setAttribute('disabled',true);
	document.getElementById('tableUse').setAttribute('disabled',true);
}

</script>
<script>


	function modify_go(){
		
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
		     	   "action":"modify"
		   		  });
	form.submit();
		


	}
	
	
	function remove_go(){
		swal({
			  title: "문서삭제",
			  text: "정말로 문서삭제 하시겠습니까?",
			  icon: "warning",
			  buttons: ['취소','문서삭제'],
			})
			.then((willDelete) => {
			  if (willDelete) {
				  location.href='remove?docCode=${document.docCode}';
				 
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
				  text: "문서수정이 완료되었습니다.",
				  icon: "success",
				  button: "확인",
			})
			.then((willDelete) => {
			  if (willDelete) {
				  opener.list();	   
 			  window.close();
			 
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
				  text: "문서삭제가 완료되었습니다.",
				  icon: "success",
				  button: "확인",
			})
			.then((willDelete) => {
			  if (willDelete) {
				  opener.list();	  
 			  window.close();

			  }
			});
			
		}
	</script>
</c:if>
