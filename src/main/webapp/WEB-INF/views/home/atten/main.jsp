  
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" />
<c:set var="minfoList" value="${dataMap.minfoList }" />

<div style="position: fixed; width: 100%; height: 100%">
	<div class="contaner-fluid" style="margin: 1.5em;">
		<div class="row">
			<div class="col-sm-5 justify-content-center" style="border-right: solid 1px;">
				<section class="content" style="hight 80%; wigth:95%">
					<section class="content-header" >
						<div class="container-fluid" >			
						</div>
									<div class="card-body">
				<h3>▶ 상세정보</h3>
					<div class="table-responsive" style=" border: solid 1px; height: 80vh;" >
						<table class="table table-bordered"
							style="margin: auto;  text-align: center;">
							<thead class="thead">
								<tr bgcolor="#333258" style="color: white">
									<th scope="col" style="width:10%">이름</th>
									<th scope="col" style="width:10%">나이</th>
									<th scope="col" style="width:10%">직책</th>
									<th scope="col" style="width:35%">출근시간</th>
									<th scope="col" style="width:35%">퇴근시간</th>
								</tr>
							</thead>
							<c:if test="${empty noticeList }" >
								<tr>
									<td colspan="8">
										<strong>해당 내용이 없습니다.</strong>
									</td>
								</tr>
							</c:if>	
							<c:forEach items="${noticeList}" var="notice">
								<tbody>
									<tr>
										<td>${notice.noticeNo}</td>
										<td>${notice.noticeTitle}</td>
										<td><fmt:formatDate value="${notice.noticeRegdate }"
												pattern="MM-dd" /></td>
									</tr>
								</tbody>
							</c:forEach>
						</table>
				    </div>
				</div>
						
						</section>
					</section>

			</div>
			<div class="col-sm-7 justify-content-center" style="border-right: solid 1px;">
				<div class="row justify-content-center" style="padding-bottom: 8vh;">
				
						
							<div class="card-body">
				<h3>▶ 금일 근무현황</h3>
					<div class="table-responsive" style=" border: solid 1px; height: 80vh;" >
						<table class="table table-bordered"
							style="margin: auto;  text-align: center;">
							<thead class="thead">
								<tr bgcolor="#333258" style="color: white">
									<th scope="col" style="width:10%">순번</th>
									<th scope="col" style="width:10%">이름</th>
									<th scope="col" style="width:10%">직무</th>
									<th scope="col" style="width:35%">출근시간</th>
									<th scope="col" style="width:35%">퇴근시간</th>
								</tr>
							</thead>
							<c:if test="${empty noticeList }" >
								<tr>
									<td colspan="8">
										<strong>해당 내용이 없습니다.</strong>
									</td>
								</tr>
							</c:if>	
							<c:forEach items="${noticeList}" var="notice">
								<tbody>
									<tr>
										<td>${notice.noticeNo}</td>
										<td>${notice.noticeTitle}</td>
										<td><fmt:formatDate value="${notice.noticeRegdate }"
												pattern="MM-dd" /></td>
									</tr>
								</tbody>
							</c:forEach>
						</table>
				    </div>
				</div>
							
						
						</div>
						
									<!-- col-sm-12 -->
								<!-- row -->
						
					
					
				</div>
			</div>
		
		</div>


		<div class="row">
			<div style="width: 47%; margin-left: 1.5em;">


				<div style="max-height: 39%; overflow-y: scroll;"></div>
			</div>
		</div>
	</div>

    