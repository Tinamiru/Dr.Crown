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
							<h3>▶ 진료내역</h3>
						</div>
						
						
						</section>
					</section>
					
				
						


			</div>
			<div class="col-sm-7 justify-content-center" style="border-right: solid 1px;">
				<div class="row justify-content-center" style="padding-bottom: 8vh;">
					<section class="content" style="height: 30vh; width: 95%;">
						<section class="content-header">
							
							<div class="container-fluid" style="">
							<h3>▶문서발급</h3>
							
							<h4>▶새문서 발급</h4>
							<div>
								<button type="button" class="btn btn-primary" style="float: left; border-radius: 10px; margin-right: 5px;">진단서</button>
								<button type="button" class="btn btn-primary" style="float: left; border-radius: 10px; margin-right: 5px;">진료 의뢰서</button>
								<button type="button" class="btn btn-primary" style="float: left; border-radius: 10px; margin-right: 5px;">치료 계획서</button>
								<button type="button" class="btn btn-primary" style="float: left; border-radius: 10px; margin-right: 5px;">소견서</button>
								<button type="button" class="btn btn-primary" style="float: left; border-radius: 10px; margin-right: 5px;">진료/수술 확인서</button>
								<button type="button" class="btn btn-primary" style="float: left; border-radius: 10px; margin-right: 5px;">향후치료비 추정서</button>
							</div>
							<div style="margin-top: 10px;">
								<button type="button" class="btn btn-primary" style="float: left; border-radius: 10px; margin-right: 5px;">상해진단서</button>
								<button type="button" class="btn btn-primary" style="float: left; border-radius: 10px; margin-right: 5px;">병무용진단서</button>
								<button type="button" class="btn btn-primary" style="float: left; border-radius: 10px; margin-right: 5px;">통원치료확인서</button>
								<button type="button" class="btn btn-primary" style="float: left; border-radius: 10px; margin-right: 5px;">방사선판독소견서</button>
								<button type="button" class="btn btn-primary" style="float: left; border-radius: 10px; margin-right: 5px;">진료의뢰회신서</button>
							</div>
							
							</div>
						
									<!-- col-sm-12 -->
								<!-- row -->
						</section>
							</section>
						
							<div class="card-body">
				<h4>▶이이름(23232)님의 문서 발급 내역</h4>
				
				
					<div class="table-responsive" style=" border: solid 1px; height: 60vh;" >
						<table class="table table-bordered"
							style="margin: auto;  text-align: center;">
							<thead class="thead">
								<tr bgcolor="#333258" style="color: white">
									<th scope="col" style="width:15%">문서번호</th>
									<th scope="col" style="width:15%">문서종류</th>
									<th scope="col" style="width:15%">용도</th>
									<th scope="col" style="width:55%">내용</th>
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

