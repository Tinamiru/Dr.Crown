<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" />
<c:set var="noticeList" value="${dataMap.noticeList }" />

<body>
<div class="container-fluid">
		<div class="row justify-content-start">
			<div class="col-3 pl-4">
				<div class="card-header p-0 pt-4">
					<h1>세미나 및 학회</h1>
				</div>
			</div>
		</div>
		
		<hr>
		
		<div class="row justify-content-start pl-4 pt-2">
				<div class="col-md-1">
					<div class="custom-control custom-checkbox mb-3">
						<input type="checkbox" class="custom-control-input" checked
							id="customCheckBox1" > <label
							class="custom-control-label" for="customCheckBox1">전체</label>
					</div>
				</div>
				<div class="col-md-1">
					<div class="custom-control custom-checkbox mb-3">
						<input type="checkbox" class="custom-control-input" 
							id="customCheckBox2" > <label
							class="custom-control-label" for="customCheckBox2">학회</label>
					</div>
				</div>
				<div class="col-md-2">
					<div class="custom-control custom-checkbox mb-3">
						<input type="checkbox" class="custom-control-input" id="customCheckBox3" >
						 <label	class="custom-control-label" for="customCheckBox3">세미나</label>
					</div>
				</div>
		</div>

		<div class="row justify-content-between pl-5 pr-3">
			<div class="col-3">
				<select class="form-control " name="perPageNum" id="perPageNum" onchange="list_go(1);">					  		  		
			 		<option value="5" ${cri.perPageNum eq 5 ? 'selected' : '' } >5개씩</option>
			 		<option value="10" ${cri.perPageNum eq 10 ? 'selected' : '' }>10개씩</option>
			 		<option value="20" ${cri.perPageNum eq 20 ? 'selected' : '' }>20개씩</option>
			 		<option value="30" ${cri.perPageNum eq 30 ? 'selected' : '' }>30개씩</option>
			 	</select>
			</div>
			<div class="col-6">
				<div class="row justify-content-end">
					<div class="col-2 p-0">
						<select class="form-control" name="searchType" id="searchType">
							<option value="tcw"  ${cri.searchType eq 'tcw' ? 'selected':'' }>전 체</option>
							<option value="t" ${cri.searchType eq 't' ? 'selected':'' }>제 목</option>
							<option value="w" ${cri.searchType eq 'w' ? 'selected':'' }>작성자</option>
							<option value="c" ${cri.searchType eq 'c' ? 'selected':'' }>내 용</option>
							<option value="tc" ${cri.searchType eq 'tc' ? 'selected':'' }>제목+내용</option>
							<option value="cw" ${cri.searchType eq 'cw' ? 'selected':'' }>작성자+내용</option>							
							<option value="tcw" ${cri.searchType eq 'tcw' ? 'selected':'' }>작성자+제목+내용</option>
						</select>
					</div>
					<div class="col-4 p-0">
						<input  class="form-control" type="text" name="keyword" placeholder="검색어를 입력하세요." value="${param.keyword }"/>
					</div>
					<div class="col-2 p-0">
						<span class="input-group-append">
							<button class="btn btn-primary" type="button">검색</button>
						</span>
					</div>
				</div>
			</div>
		</div>
				

		<!-- 테이블 -->
		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-bordered"
					style="margin: auto; text-align: center;">
					<thead class="thead">
						<tr bgcolor="#333258" style="color: white">
							<th scope="col" style="width:8%">순번</th>
							<th scope="col" style="width:10%">분류</th>
							<th scope="col" style="width:40%">제목</th>
							<th scope="col" style="width:10%">작성자</th>
							<th scope="col" style="width:14%">작성일자</th>
							<th scope="col" style="width:10%">첨부파일</th>
							<th scope="col" style="width:8%">조회수</th>
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
								<td>
									<c:choose>
										<c:when test="${notice.noticeCategory == '2'}"><span class="btn light btn-primary">${notice.noticeCategory}</span></c:when>
										<c:when test="${notice.noticeCategory == '1'}"><span class="btn light btn-secondary">${notice.noticeCategory}</span></c:when>
										<c:when test="${notice.noticeCategory == '0'}"><span class="btn light btn-info">${notice.noticeCategory}</span></c:when>
										<c:otherwise></c:otherwise>
									</c:choose>
								</td>	
								<td>${notice.noticeTitle}</td>
								<td>${notice.noticeWriter}</td>
								<td><fmt:formatDate value="${notice.noticeRegdate }"
										pattern="yyyy-MM-dd" /></td>
								<td></td>
								<td>${notice.noticeCount}</td>
							</tr>
						</tbody>
					</c:forEach>
				</table>
			</div>
		</div>
		<div class = "row justify-content-end pr-5">
			<div>
				<button type="button" class="btn  btn-square btn-primary">글쓰기</button>
			</div>
		</div>
</div>



<%@ include file="/WEB-INF/views/include/pagination.jsp" %>
