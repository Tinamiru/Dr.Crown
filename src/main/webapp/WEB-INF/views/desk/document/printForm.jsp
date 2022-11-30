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
        <div class="container h-50">
            <div class="row justify-content-center h-100 align-items-center">
			
			
			<div class="row no-gutters">
	                            <div class="col-xl-12">
												
	                              		
	                                	<c:set  var="name" value="${document.docKind}" />
		                                	<%-- 진단서 --%>
											<c:if test="${name eq '0'}">
												
						                                	<div class="form-row">
																<div style="border-bottom: 2px solid;" class="col-sm-12">
																	<h2 style="font-weight: bold;">문서출력</h2>
						                                   		 </div>
						                                	</div> 
					                          		<div class=" p-1 "  id="pdfDiv" style="width:600px; height:890px;  border:1px lightgray solid; background-color:#FFFFFF;">
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
																			<c:set var="docUse" value="${document.docUse}"/>
											                                          <c:if test="${docUse eq '1'}">
											                                           <input readonly value=" 보험회사 제출용" style= "border: 0px; width: 95%;  height:95%;" >
											                                          </c:if > 
											                                          <c:if test="${docUse eq '2'}">
											                                           <input readonly value=" 직장(회사) 제출용" style= "border: 0px; width: 95%;  height:95%;" >
											                                          </c:if > 
											                                          <c:if test="${docUse eq '3'}">
											                                           <input readonly value=" 학교 제출용" style= "border: 0px; width: 95%;  height:95%;" >
											                                          </c:if > 
											                                          <c:if test="${docUse eq '4'}">
											                                           <input readonly value=" 군부대 제출용" style= "border: 0px; width: 95%;  height:95%;" >
											                                          </c:if > 
											                                          <c:if test="${docUse eq '5'}">
											                                           <input readonly value=" 경찰서 제출용" style= "border: 0px; width: 95%;  height:95%;" >
											                                          </c:if > 
											                                          <c:if test="${docUse eq '6'}">
											                                           <input readonly value=" 법원 제출용" style= "border: 0px; width: 95%;  height:95%;" >
											                                          </c:if > 
											                                          <c:if test="${docUse eq '7'}">
											                                           <input readonly value=" 진료 의뢰용" style= "border: 0px; width: 95%;  height:95%;" >
											                                          </c:if > 
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
																		<td colspan="2" align="center"><input id="sickness1" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="2" align="center"><input id="part1"   readonly style= "border: 0px; width: 95%;  height:95%;"></td>
																	</tr>
																	<tr>
																		<td colspan="2" align="center"><input  id="sickness2"  readonly style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="2" align="center"><input id="part2"  readonly style= "border: 0px; width: 95%;  height:95%;"></td>
																	</tr>
																	<tr>
																		<td colspan="2" align="center"><input  id="sickness3"   readonly style= "border: 0px; width: 95%;  height:95%;"></td>	
																		<td colspan="2" align="center"><input id="part3"  readonly style= "border: 0px; width: 95%;  height:95%;"></td>
																	</tr>
																	<tr>
																		<td colspan="2" align="center"><input id="sickness4"  readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="2" align="center"><input id="part4"  readonly style= "border: 0px; width: 95%;  height:95%;"></td>
																	</tr>
															
																	<tr height="10">
																	</tr>
															
																	<tr>
																		<th width="10%" bgcolor="D5D5D5" style="text-align:center;">치료내용<br>및<br>향후치료에<br>대한 소견</th>
																	
																		<td colspan="8">
																			
																			<pre  class="form-control" id="textArea_byteLimit"  
													                  	  style="padding:0; margin:0; resize: none; width: 100%;  height: 280px;  border:1px; lightgray solid;"> </pre>
													                
																		</td>
																	</tr>
															</table>
															       
						                                    <table border="1" width="100%">
							                                    <tr>
			                                    <td colspan="6"><br>
			                                 
					                                    <p style = "text-align:center" >위 기재 사항은 사실과 틀림이 없습니다. </p> 
					                                
					                                    <p style = "text-align:center ;" id="dateP"></p>
					                                    <p style = "text-align:center; margin-top:-10px;" >의료기관 명칭 : 대덕치과의원 </p>
					                                    <p style = "text-align:center; margin-top:-10px;" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;주소 : 대전광역시 중구 계룡로 846</p>
					                                    <p style = "text-align:center; margin-top:-10px;" >전화번호 : 042)283-1111 </p>
					                                    <p style = "text-align:center; margin-top:-10px;" >출력인:${loginUser.memName}</p>
					                                    <p style = "text-align:right" >대덕치과의원 (인)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
					                                    <img style="margin-left:525px; margin-top:-70px;" src="<%=request.getContextPath()%>/resources/images/stamp.png"  width="50" height="50" alt="모나리자" >
					                                    <br>
			                                    </td>
		                                    </tr>
						                                    </table>
																  </div>
																     </c:if>  
			               						
										  
		                                	<%-- 소견서 --%>
											<c:if test="${name eq '1'}">
												
						                                	<div class="form-row">
																<div style="border-bottom: 2px solid;" class="col-sm-12">
																	<h2 style="font-weight: bold;">문서출력</h2>
						                                   		 </div>
						                                	</div> 
					                          		<div class=" p-1 "  id="pdfDiv" style="width:600px; height:890px;  border:1px lightgray solid; background-color:#FFFFFF;">
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
																			<c:set var="docUse" value="${document.docUse}"/>
											                                          <c:if test="${docUse eq '1'}">
											                                           <input readonly value=" 보험회사 제출용" style= "border: 0px; width: 95%;  height:95%;" >
											                                          </c:if > 
											                                          <c:if test="${docUse eq '2'}">
											                                           <input readonly value=" 직장(회사) 제출용" style= "border: 0px; width: 95%;  height:95%;" >
											                                          </c:if > 
											                                          <c:if test="${docUse eq '3'}">
											                                           <input readonly value=" 학교 제출용" style= "border: 0px; width: 95%;  height:95%;" >
											                                          </c:if > 
											                                          <c:if test="${docUse eq '4'}">
											                                           <input readonly value=" 군부대 제출용" style= "border: 0px; width: 95%;  height:95%;" >
											                                          </c:if > 
											                                          <c:if test="${docUse eq '5'}">
											                                           <input readonly value=" 경찰서 제출용" style= "border: 0px; width: 95%;  height:95%;" >
											                                          </c:if > 
											                                          <c:if test="${docUse eq '6'}">
											                                           <input readonly value=" 법원 제출용" style= "border: 0px; width: 95%;  height:95%;" >
											                                          </c:if > 
											                                          <c:if test="${docUse eq '7'}">
											                                           <input readonly value=" 진료 의뢰용" style= "border: 0px; width: 95%;  height:95%;" >
											                                          </c:if > 
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
																		<td colspan="2" align="center"><input id="sickness1" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="2" align="center"><input id="part1"   readonly style= "border: 0px; width: 95%;  height:95%;"></td>
																	</tr>
																	<tr>
																		<td colspan="2" align="center"><input  id="sickness2"  readonly style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="2" align="center"><input id="part2"  readonly style= "border: 0px; width: 95%;  height:95%;"></td>
																	</tr>
																	<tr>
																		<td colspan="2" align="center"><input  id="sickness3"   readonly style= "border: 0px; width: 95%;  height:95%;"></td>	
																		<td colspan="2" align="center"><input id="part3"  readonly style= "border: 0px; width: 95%;  height:95%;"></td>
																	</tr>
																	<tr>
																		<td colspan="2" align="center"><input id="sickness4"  readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="2" align="center"><input id="part4"  readonly style= "border: 0px; width: 95%;  height:95%;"></td>
																	</tr>
															
																	<tr height="10">
																	</tr>
															
																	<tr>
																		<th width="10%" bgcolor="D5D5D5" style="text-align:center;">치료내용<br>및<br>향후치료에<br>대한 소견</th>
																	
																		<td colspan="8">
															
													                	<textarea rows="13" cols="33"  class="form-control" id="textArea_byteLimit"  readonly
													                  	  style="padding:0; margin:0; resize: none; width: 100%;  border:1px; lightgray solid;"></textarea>
																		</td>
																	</tr>
															</table>
															       
						                                    <table border="1" width="100%">
							                                    <tr>
			                                    <td colspan="6"><br>
			                                 
					                                    <p style = "text-align:center" >위 기재 사항은 사실과 틀림이 없습니다. </p> 
					                                
					                                    <p style = "text-align:center ;" id="dateP"></p>
					                                    <p style = "text-align:center; margin-top:-10px;" >의료기관 명칭 : 대덕치과의원 </p>
					                                    <p style = "text-align:center; margin-top:-10px;" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;주소 : 대전광역시 중구 계룡로 846</p>
					                                    <p style = "text-align:center; margin-top:-10px;" >전화번호 : 042)283-1111 </p>
					                                    <p style = "text-align:center; margin-top:-10px;" >출력인:${loginUser.memName}</p>
					                                    <p style = "text-align:right" >대덕치과의원 (인)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
					                                    <img style="margin-left:525px; margin-top:-70px;" src="<%=request.getContextPath()%>/resources/images/stamp.png"  width="50" height="50" alt="모나리자" >
					                                    <br>
			                                    </td>
		                                    </tr>
						                                    </table>
																  </div>
																     </c:if>  
																                  
					                     
		                                	<%-- 치료 계획서 --%>
											<c:if test="${name eq '2'}">
												
						                                	<div class="form-row">
																<div style="border-bottom: 2px solid;" class="col-sm-12">
																	<h2 style="font-weight: bold;">문서출력</h2>
						                                   		 </div>
						                                	</div> 
					                          		<div class=" p-1 "  id="pdfDiv" style="width:600px; height:890px;  border:1px lightgray solid; background-color:#FFFFFF;">
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
																			<c:set var="docUse" value="${document.docUse}"/>
											                                          <c:if test="${docUse eq '1'}">
											                                           <input readonly value=" 보험회사 제출용" style= "border: 0px; width: 95%;  height:95%;" >
											                                          </c:if > 
											                                          <c:if test="${docUse eq '2'}">
											                                           <input readonly value=" 직장(회사) 제출용" style= "border: 0px; width: 95%;  height:95%;" >
											                                          </c:if > 
											                                          <c:if test="${docUse eq '3'}">
											                                           <input readonly value=" 학교 제출용" style= "border: 0px; width: 95%;  height:95%;" >
											                                          </c:if > 
											                                          <c:if test="${docUse eq '4'}">
											                                           <input readonly value=" 군부대 제출용" style= "border: 0px; width: 95%;  height:95%;" >
											                                          </c:if > 
											                                          <c:if test="${docUse eq '5'}">
											                                           <input readonly value=" 경찰서 제출용" style= "border: 0px; width: 95%;  height:95%;" >
											                                          </c:if > 
											                                          <c:if test="${docUse eq '6'}">
											                                           <input readonly value=" 법원 제출용" style= "border: 0px; width: 95%;  height:95%;" >
											                                          </c:if > 
											                                          <c:if test="${docUse eq '7'}">
											                                           <input readonly value=" 진료 의뢰용" style= "border: 0px; width: 95%;  height:95%;" >
											                                          </c:if > 
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
																		<td colspan="2" align="center"><input id="sickness1" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="2" align="center"><input id="part1"   readonly style= "border: 0px; width: 95%;  height:95%;"></td>
																	</tr>
																	<tr>
																		<td colspan="2" align="center"><input  id="sickness2"  readonly style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="2" align="center"><input id="part2"  readonly style= "border: 0px; width: 95%;  height:95%;"></td>
																	</tr>
																	<tr>
																		<td colspan="2" align="center"><input  id="sickness3"   readonly style= "border: 0px; width: 95%;  height:95%;"></td>	
																		<td colspan="2" align="center"><input id="part3"  readonly style= "border: 0px; width: 95%;  height:95%;"></td>
																	</tr>
																	<tr>
																		<td colspan="2" align="center"><input id="sickness4"  readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="2" align="center"><input id="part4"  readonly style= "border: 0px; width: 95%;  height:95%;"></td>
																	</tr>
															
																	<tr height="10">
																	</tr>
															
																	<tr>
																		<th width="10%" bgcolor="D5D5D5" style="text-align:center;">치료내용<br>및<br>향후치료에<br>대한 소견</th>
																	
																		<td colspan="8">
															
													                	<textarea rows="13" cols="33"  class="form-control" id="textArea_byteLimit"  readonly
													                  	  style="padding:0; margin:0; resize: none; width: 100%;  border:1px; lightgray solid;"></textarea>
																		</td>
																	</tr>
															</table>
															       
						                                    <table border="1" width="100%">
							                                    <tr>
			                                    <td colspan="6"><br>
			                                 
					                                  <p style = "text-align:center" >위 기재 사항은 사실과 틀림이 없습니다. </p> 
					                                
					                                    <p style = "text-align:center ;" id="dateP"></p>
					                                    <p style = "text-align:center; margin-top:-10px;" >의료기관 명칭 : 대덕치과의원 </p>
					                                    <p style = "text-align:center; margin-top:-10px;" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;주소 : 대전광역시 중구 계룡로 846</p>
					                                    <p style = "text-align:center; margin-top:-10px;" >전화번호 : 042)283-1111 </p>
					                                    <p style = "text-align:center; margin-top:-10px;" >출력인:${loginUser.memName}</p>
					                                    <p style = "text-align:right" >대덕치과의원 (인)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
					                                    <img style="margin-left:525px; margin-top:-70px;" src="<%=request.getContextPath()%>/resources/images/stamp.png"  width="50" height="50" alt="모나리자" >
					                                    <br>
			                                    </td>
		                                    </tr>
						                                    </table>
																  </div>
																     </c:if>  
												
											
		                                	<%-- 진료/수술 확인서 --%>
											<c:if test="${name eq '3'}">
												
						                                	<div class="form-row">
																<div style="border-bottom: 2px solid;" class="col-sm-12">
																	<h2 style="font-weight: bold;">문서출력</h2>
						                                   		 </div>
						                                	</div> 
					                          		<div class=" p-1 "  id="pdfDiv" style="width:600px; height:890px;  border:1px lightgray solid; background-color:#FFFFFF;">
															<table border="1" width="100%">
																	<tr>
																		<th colspan="9" height="50" style="text-align:center;"><font size="5">진료/수술 확인서</font></th>
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
																			<c:set var="docUse" value="${document.docUse}"/>
											                                          <c:if test="${docUse eq '1'}">
											                                           <input readonly value=" 보험회사 제출용" style= "border: 0px; width: 95%;  height:95%;" >
											                                          </c:if > 
											                                          <c:if test="${docUse eq '2'}">
											                                           <input readonly value=" 직장(회사) 제출용" style= "border: 0px; width: 95%;  height:95%;" >
											                                          </c:if > 
											                                          <c:if test="${docUse eq '3'}">
											                                           <input readonly value=" 학교 제출용" style= "border: 0px; width: 95%;  height:95%;" >
											                                          </c:if > 
											                                          <c:if test="${docUse eq '4'}">
											                                           <input readonly value=" 군부대 제출용" style= "border: 0px; width: 95%;  height:95%;" >
											                                          </c:if > 
											                                          <c:if test="${docUse eq '5'}">
											                                           <input readonly value=" 경찰서 제출용" style= "border: 0px; width: 95%;  height:95%;" >
											                                          </c:if > 
											                                          <c:if test="${docUse eq '6'}">
											                                           <input readonly value=" 법원 제출용" style= "border: 0px; width: 95%;  height:95%;" >
											                                          </c:if > 
											                                          <c:if test="${docUse eq '7'}">
											                                           <input readonly value=" 진료 의뢰용" style= "border: 0px; width: 95%;  height:95%;" >
											                                          </c:if > 
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
																		<td colspan="2" align="center"><input id="sickness1" readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="2" align="center"><input id="part1"   readonly style= "border: 0px; width: 95%;  height:95%;"></td>
																	</tr>
																	<tr>
																		<td colspan="2" align="center"><input  id="sickness2"  readonly style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="2" align="center"><input id="part2"  readonly style= "border: 0px; width: 95%;  height:95%;"></td>
																	</tr>
																	<tr>
																		<td colspan="2" align="center"><input  id="sickness3"   readonly style= "border: 0px; width: 95%;  height:95%;"></td>	
																		<td colspan="2" align="center"><input id="part3"  readonly style= "border: 0px; width: 95%;  height:95%;"></td>
																	</tr>
																	<tr>
																		<td colspan="2" align="center"><input id="sickness4"  readonly  style= "border: 0px; width: 95%;  height:95%;"></td>
																		<td colspan="2" align="center"><input id="part4"  readonly style= "border: 0px; width: 95%;  height:95%;"></td>
																	</tr>
															
																	<tr height="10">
																	</tr>
															
																	<tr>
																		<th width="10%" bgcolor="D5D5D5" style="text-align:center;">치료내용<br>및<br>향후치료에<br>대한 소견</th>
																	
																		<td colspan="8">
															
													                	<textarea rows="13" cols="33"  class="form-control" id="textArea_byteLimit"  readonly
													                  	  style="padding:0; margin:0; resize: none; width: 100%;  border:1px; lightgray solid;"></textarea>
																		</td>
																	</tr>
															</table>
															       
						                                    <table border="1" width="100%">
							                                    <tr>
			                                    <td colspan="6"><br>
			                                 
					                                   <p style = "text-align:center" >위 기재 사항은 사실과 틀림이 없습니다. </p> 
					                                
					                                    <p style = "text-align:center ;" id="dateP"></p>
					                                    <p style = "text-align:center; margin-top:-10px;" >의료기관 명칭 : 대덕치과의원 </p>
					                                    <p style = "text-align:center; margin-top:-10px;" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;주소 : 대전광역시 중구 계룡로 846</p>
					                                    <p style = "text-align:center; margin-top:-10px;" >전화번호 : 042)283-1111 </p>
					                                    <p style = "text-align:center; margin-top:-10px;" >출력인:${loginUser.memName}</p>
					                                    <p style = "text-align:right" >대덕치과의원 (인)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
					                                    <img style="margin-left:525px; margin-top:-70px;" src="<%=request.getContextPath()%>/resources/images/stamp.png"  width="50" height="50" alt="모나리자" >
					                                    <br>
			                                    </td>
		                                    </tr>
						                                    </table>
																  </div>
																     </c:if>  					             
					              
											 <div class="row no-gutters justify-content-right" style="float: right;">
							                      			<div class="text-center">
											                            <button type="button" id="savePdfBtn" class="loginBtn btn btn-block mr-2">PDF 저장</button>
											                        </div>
											                        <div class="text-center mr-1">
											                             <button type="button" onclick="javascript:window.close()" class="loginBtn btn bg-white text-primary btn-block">&nbsp;닫&nbsp;&nbsp;&nbsp;&nbsp;기&nbsp;</button>
											                        </div>
											                        
							                      		 </div>
							                 
	                                      
	                                      
	                                     		 <form role="form" class="form-horizontal" action="print" method="post">
					                                      
					                                 <input name="docCode"  id="docCode"    hidden="hidden"  value="${document.docCode}" >     
					                                 <input name="docPno"  id="docPno"    hidden="hidden"  value="${document.docPno}" >     
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
<%-- 당일 날짜 입력 --%>
var today = new Date();  
var year = today.getFullYear(); // 년도
var month = today.getMonth() + 1;  // 월
var date = today.getDate();  // 일

var dateP = year+'년 '+month+ '월 '+date+'일';
document.getElementById("dateP").innerText=dateP;


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
document.getElementById("textArea_byteLimit").innerHTML = content;

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
<script type = "text/javascript" src = "http://code.jquery.com/jquery-latest.min.js"></script>
<script type = "text/javascript" src = "https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.min.js"></script>
<script type = "text/javascript" src = "https://html2canvas.hertzen.com/dist/html2canvas.min.js"></script>
<script>
$('#savePdfBtn').click(function() {
	swal({
		  title: "문서발급",
		  text: "문서발급은 1회만 가능합니다.",
		  icon: "info",
		  buttons: ['취소','문서발급'],
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
					   		  });
					
				form.submit();
					
			    });
			 
		  } else {
		      
		  }
		});
});
</script>


<c:if test="${from eq 'print'}" >
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
			 opener.printAjax('22015');	// 나중에 수정 필요   
 			  window.close();
 			
			  }
			});
			
		}
	</script>
</c:if>



