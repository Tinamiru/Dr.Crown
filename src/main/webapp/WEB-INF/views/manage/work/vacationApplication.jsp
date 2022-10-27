<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" />
<c:set var="minfoList" value="${dataMap.minfoList }" />

<script src="https://kit.fontawesome.com/9e1d56064a.js" crossorigin="anonymous"></script>


<body>
<div class="content-fluid ">
	<div style="background-color: #333258; height: 100px; align-items:center; 
				display: flex; justify-content:center;">
		<img src="<%=request.getContextPath()%>/resources/images/logo-full.png" 
			 style="width: 300px; height: 75px;">
	</div>
	<div style="margin-top: 15px; margin-bottom: 15px;">
		<h1 style="font-weight:bold; ; text-align: center;">휴가 신청</h1>
	</div>
	
	<div class="justify-content-center">
		<hr style="margin: 5px; background: black; width:100%;">
	</div>	
			
			
			
			<!-- <div class="row"> -->
	<div class="col-12 pt-4">
		<h2 class="pl-5" style="font-weight: bolder; padding-top: 10px">결재상태</h2>
	</div>
	<div class="col-12" style="text-align: center;  padding:5px 30px; ">
		<div class="row">
			<div class="col-sm-12"  style="height: 250px; overflow-y:scroll;">
				<table class="table table-bordered">
					<tr bgcolor="#333258" style="color: white; font-size: 15px; position:sticky; top:0px;">
						<th>작성자</th>
						<th>신청일</th>
						<th>결제승인여부</th>
						<th>승인자</th>
						<th>결제승인일</th>
						<th>반려사유</th>
					</tr>
					<tr style="font-size: 15px;">
						<td>나의사</td>
						<td>2022/09/28</td>
						<td><span class="badge light badge-dark badge">대기중</span></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr style="font-size: 15px;">
						<td>곽금규</td>
						<td>2022/09/25</td>
						<td><span class="badge light badge-success badge">승인완료</span></td>
						<td>곽금규</td>
						<td>2022/09/25</td>
						<td>-</td>
					</tr>
					<tr style="font-size: 15px;">
						<td>심재린</td>
						<td>2022/09/23</td>
						<td><span class="badge light badge-danger badge">반려</span></td>
						<td>곽금규</td>
						<td>-</td>
						<td>너무 잦은 연가사용</td>
					</tr>
					<tr style="font-size: 15px;">
						<td>심재린</td>
						<td>2022/09/23</td>
						<td><span class="badge light badge-danger badge">반려</span></td>
						<td>곽금규</td>
						<td>-</td>
						<td>너무 잦은 연가사용</td>
					</tr>
					<tr style="font-size: 15px;">
						<td>심재린</td>
						<td>2022/09/23</td>
						<td><span class="badge light badge-danger badge">반려</span></td>
						<td>곽금규</td>
						<td>-</td>
						<td>너무 잦은 연가사용</td>
					</tr>
					<c:if test="${!empty minfoList }">
						<c:forEach items="${minfoList}" var="minfo">
							<tr onclick="detail()" style="font-weight:bolder; font-size: 11px;">
								<td>${minfo.minfoClass }</td>
								<td>${minfo.minfoCode }</td>
								<td>${minfo.minfoContent }
								<td>${minfo.minfoWriter }</td>
								<td>${minfo.minfoWriter }</td>
								<td>${minfo.minfoWriter }</td>
								<td>${minfo.minfoWriter }</td>
								<td><fmt:formatDate value="${minfo.minfoRegdate }"
										pattern="yyyy-MM-dd" /></td>
							</tr>
						</c:forEach>
					</c:if>
<%-- 								<c:if test="${empty minfoList }">
									<tr>
										<td colspan="7" class="text-center">해당내용이 없습니다.</td>
									</tr>
								</c:if> --%>
				</table>
			</div>
   		</div>
	</div>
	
   	<div class="row col justify-content-center">
    	<div class="row pt-3">
			<%@ include file="/WEB-INF/views/include/pagination.jsp" %>
   		</div>
	</div>
	
	<div class="justify-content-center  pt-2 pb-3">
		<hr style="margin: 5px; background: black; width:100%;">
	</div>	
	
	
	<div class="col-12">
		<h2 class="pl-5" style="font-weight: bolder; padding-top: 10px">휴가신청하기</h2>
	</div>
	<div class="row justify-content-center">
		<div class ="col-11 row p-0 pt-4 pb-2 table justify-content-center" style="height: 200px; width: 100%; padding: 50px 50px 50px 50px;">
			<table id="appVa" class="col-11 justify-content-center">
				<tr>
					<td style="width:100px; background-color:#333258; text-align:center; color:white;">사원번호</td>
					<td style="width:200px;"><input value="A01" type="text" style="width:100px; height:30px; text-align:center;" disabled></input></td>
					<td style="width:100px; background-color:#333258; text-align:center; color:white;">사원명</td>
					<td style="width:200px;"><input value="심금규" type="text" style="width:100px; height:30px; text-align:center;" disabled></input></td>
					<td style="width:150px; background-color:#333258; text-align:center; color:white;">기안작성시기</td>
					<td style="width:450px;"><input name="selectDate" type="date" id="selectDate" disabled></td>
				</tr>
			</table>
			<table id="appVa" class="col-11 justify-content-center">
				<tr>
					<td style="width:100px; background-color:#333258; text-align:center; color:white;">기간선택</td>
					<td style="width:210px;"><input type="date" placeholder="년-월-일"style="width:150px; height:30px; text-align:center;"></input>&nbsp;부터</td>
					<td style="width:210px;"><input type="date" placeholder="년-월-일"style="width:150px; height:30px; text-align:center;"></input>&nbsp;까지</td>
					<td style="width:80px;"></td>
					<td style="width:100px; background-color:#333258; text-align:center; color:white;">휴가분류</td>
					<td style="width:200px; "><select>					  		  		
										 		<option value="연차" >연차</option>
										 		<option value="반차" >반차</option>
										 		<option value="휴일대체휴가" >휴일대체휴가</option>
										 		<option value="특수휴가" >특수휴가</option>
										 	</select></td>
					<td style="width:100px; background-color:#333258; text-align:center; color:white;">결재승인자</td>
					<td style="width:200px;"><select>
												<optgroup label="관리자">				  		  		
											 		<option value="곽재린" >사장&nbsp;&nbsp;곽재린</option>
											 		<option value="심금규" >전무&nbsp;&nbsp;심금규</option>
											 		<option value="조민수" >상무&nbsp;&nbsp;조민수</option>
										 		</optgroup>
												<optgroup label="전문의">				  		  		
													<option value="김민수" >과장&nbsp;&nbsp;김민수</option>
											 		<option value="곽금규" >과장&nbsp;&nbsp;곽금규</option>
											 		<option value="조정현" >차장&nbsp;&nbsp;조정현</option>
										 		</optgroup>
												<optgroup label="직원">				  		  		
													<option value="곽공주" >대리&nbsp;&nbsp;곽공주</option>
											 		<option value="곽사원" >사원&nbsp;&nbsp;곽사원</option>
											 		<option value="일개미" >사원&nbsp;&nbsp;일개미</option>
										 		</optgroup>
										 	</select></td>
				</tr>
			</table>
			<table id="appVa" class="col-11 justify-content-start">
				<tr>
					<td style="width:100px; background-color:#333258; text-align:center; color:white;">휴가사유</td>
					<td style="width:1100px;"><input type="text" style="width:1000px;"></input></td>
				</tr>
			</table>
		</div>
	</div>
	<div class="row pl-2 justify-content-end">
		<div class="row p-1">
			<button type="button" class="btn btn-primary " 
					style="float: right; background:red; border-radius: 10px; 
						   margin-right: 50px;">
					임시저장
			</button>
		</div>
		<div class="row p-1">
			<button type="button" class="btn btn-primary " 
					style="float: right; border-radius: 10px; margin-right: 50px;
						   ">
					등록/신청
			</button>
		</div>
	</div>
	<div class="row justify-content-center" style="background-color: #333258; height: 65px; text-align: center ;">
		<div style="text-align: center; padding-top: 18px;" onclick="window.close()">
			<a style="padding: 5px; border-radius : 5px; color : black;
					  background-color: white; font-weight: bolder;">
					   돌아가기
			</a>
		</div>
	</div>
</div>

<script>
	document.getElementById('selectDate').value = new Date().toISOString().substring(0, 10);
</script>




