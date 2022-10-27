<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<style>

#main{
	overflow: hidden; 
	height:100vh; 
	width:100vw; 
	align-items: center;
}

#topLog{
	background-color: #333258; 
	height: 12vh; 
	align-items:center; 
	display: flex; 
	justify-content:center;
}

#topLog > img{
	width: 300px; 
	height: 75px;
}

#title{
	margin-top: 15px; 
	margin-bottom: 15px;
}

#title > h1 {
	font-weight:bold; ; 
	text-align: center;
}
#bar{
	margin: 5px 40px; 
	background: #CCCCCC;
}

#orderStateCard{
	height: 24vh; 
	width: 100vw; 
	text-align: center; 
	margin-bottom: 0px; 
	background: none;
}

#orderStateCard > div > h2{
	font-weight: bolder; 
	padding-top: 10px
}

#orderStateCardBody{
	text-align: center;  
	padding:5px 30px; 
}
#tableTr{
	color: white; 
	font-size: 11px;
	background: #333258;
}

#orderDetail{
	text-align: center;
}
#orderDetail > h2{
	font-weight: bolder; 
	padding-top: 10px
}
#orderDetailCard{
	overflow-y: scroll; 
	height: 39vh; 
	width: 100%; 
	padding-bottom: 20px;
}

#orderDetailCardBody{
	text-align: center; 
	padding:10px 30px; 
}

#underBar{
	background-color: #333258; 
	height: 7vh; 
	text-align: center ;
}

#homeButton{
	text-align: center; 
	padding-top: 18px;
}
#homeButton > a {
	padding: 5px; 
	border-radius : 5px; 
	color : black;
	background-color: white; 
	font-weight: bolder;
}

</style>


<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" />
<c:set var="minfoList" value="${dataMap.minfoList }" />



<div id="main">
	<div id="topLog">
		<img src="<%=request.getContextPath()%>/resources/images/logo-full.png" >
	</div>
	
	<div id="title">
		<h1>발주 상세목록</h1>
	</div>
		
	<hr id="bar">
	
	<div class="content">
		<div class="card" id="orderStateCard">
			<div>
				<h2>결재상태</h2>
			</div>
				<div class="card-body" style="padding-top: 3px" >
					<div class="row">
						<div class="col-sm-12">
							<table class="table table-bordered" style="margin: 0px;">
								<tr id="tableTr">
									<th width="15%">작성자</th>
									<th>결제등록일</th>
									<th>결제승인여부</th>
									<th>승인자</th>
									<th>결제승인일</th>
								</tr>
								<tr style="font-weight:bolder; font-size: 11px;">
									<td>나간호</td>
									<td>2022/09/28</td>
									<td>대기중</td>
									<td></td>
									<td></td>
								</tr>
							
								<%-- <c:if test="${!empty minfoList }">
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
								</c:if> --%>
										
							</table>
							<table  class="table table-bordered">
								<tr>
									<th  id="tableTr" width="15%">반려사유</th>
									<td style="font-size: 11px;">배고파서그랬습니다</td>
								</tr>
							</table>
						</div>
					</div>
				</div>
		</div>
	</div>
	
	
	<hr id="bar">
		<div id="orderDetail">
				<h2>상세목록</h2>
		</div>
		<div id="orderDetailCard">
			<div class="card-body" id="orderDetailCardBody">
				<div class="row">
					<div class="col-sm-12" >
						<table class="table table-bordered" >
							<tr class="tr-select"  id="tableTr">
								<th>일련코드</th>
								<th>품목명</th>
								<th>수량</th>
								<th>단위</th>
								<th>제조사</th>
								<th>금액(만)</th>
							</tr>
							<tr style="font-weight:bolder; font-size: 11px;">
								<td>EQ001</td>
								<td>치과용 치약</td>
								<td>10</td>
								<td>개</td>
								<td>(주)동크제약</td>
								<td>10</td>
							</tr>
							<tr style="font-weight:bolder; font-size: 11px;">
								<td>EQ001</td>
								<td>치과용 치약</td>
								<td>10</td>
								<td>개</td>
								<td>(주)동크제약</td>
								<td>10</td>
							</tr><tr style="font-weight:bolder; font-size: 11px;">
								<td>EQ001</td>
								<td>치과용 치약</td>
								<td>10</td>
								<td>개</td>
								<td>(주)동크제약</td>
								<td>10</td>
							</tr><tr style="font-weight:bolder; font-size: 11px;">
								<td>EQ001</td>
								<td>치과용 치약</td>
								<td>10</td>
								<td>개</td>
								<td>(주)동크제약</td>
								<td>10</td>
							</tr>
							
							<c:if test="${!empty minfoList }">
								<c:forEach items="${minfoList}" var="minfo">
									<tr style="font-weight:bolder; font-size: 11px;">

										<td>${minfo.minfoClass }</td>
										<td>${minfo.minfoCode }</td>
										<td>${minfo.minfoContent }</td>
										<td>${minfo.minfoWriter }</td>
										<td>${minfo.minfoWriter }</td>
										<td>${minfo.minfoWriter }</td>
									</tr>

								</c:forEach>
							</c:if>
							<c:if test="${empty minfoList }">
								<tr>
									<td colspan="7" class="text-center">해당내용이 없습니다.</td>
								</tr>
							</c:if>
						</table>
						</div>
				</div>
			</div>
		
		</div>
		
		<hr id="bar">
		
	<div id="underBar">
		<div id="homeButton" onclick="window.close()">
				<a>
					돌아가기
				</a>
		</div>
	</div>

</div>


