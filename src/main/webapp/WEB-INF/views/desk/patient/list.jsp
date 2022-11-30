<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" />
<c:set var="patientList" value="${dataMap.patientList }" />

<body>
<div class="container-fluid">
		<div class="row justify-content-center">
			<hr class="m-0" style="  width: 35%; ">
		</div>
		<div class="row justify-content-center">
			<div class="subMenuList">
			</div>
		</div>
		<div class="row justify-content-center">
			<hr class="m-0" style="  width: 35%; ">
		</div>
		<div class="col-4">
			<h2>환자목록</h2>
		</div>
	<hr>
	<div class="row">
		<div class="col-md-12">
			<div class="row justify-content-end pl-5 pr-3">
				<div class="col-8" style="height: 50px;">
					<div class="row justify-content-end" >
						<div class="col-1 p-0">
							<select class="form-control" name="searchType" id="searchType">
								<option value="tcw"  ${cri.searchType eq 'tcw' ? 'selected':'' }>전 체</option>
								<option value="t" ${cri.searchType eq 't' ? 'selected':'' }>이름</option>
								<option value="w" ${cri.searchType eq 'w' ? 'selected':'' }>작성자</option>
								<option value="c" ${cri.searchType eq 'c' ? 'selected':'' }>내 용</option>
								<option value="tc" ${cri.searchType eq 'tc' ? 'selected':'' }>제목+내용</option>
								<option value="cw" ${cri.searchType eq 'cw' ? 'selected':'' }>작성자+내용</option>							
								<option value="tcw" ${cri.searchType eq 'tcw' ? 'selected':'' }>작성자+제목+내용</option>
							</select>
						</div>
						<div class="col-3 p-0">
							<input  class="form-control" type="text" name="keyword" placeholder="검색어를 입력하세요." value="${param.keyword }"/>
						</div>
						<div class="pr-3">
							<span class="input-group-append">
								<button class="btn btn-primary" type="button">검색</button>
							</span>
						</div>
					</div>
				</div>
			</div>
			<hr>
			<!-- 테이블 -->
			<div class="card-body" style="height: 68vh; overflow-y:scroll;">
				<div class="table-responsive">
					<table class="table table-bordered"
						style="margin: auto; text-align: center; font-size: 13px;">
						<thead class="thead">
							<tr bgcolor="#333258" style="color: white">
								<th scope="col">차트번호</th>
								<th scope="col">이름</th>
								<th scope="col">생년월일</th>
								<th scope="col">성별</th>
								<th scope="col">담당의사</th>
								<th scope="col">휴대전화</th>
								<th scope="col">최종내원일</th>
							</tr>
						</thead>
						<c:if test="${empty patientList }" >
							<tr>
								<td colspan="8">
									<strong>해당 내용이 없습니다.</strong>
								</td>
							</tr>
						</c:if>	
						<c:forEach items="${patientList}" var="patient">
							<tbody>
								<tr class="tr-select" onclick="detail(${patient.PNo})" style="cursor:pointer;">
									<td>${patient.PNo}</td>
									<td>${patient.PName}</td>
									<td><fmt:formatDate value="${patient.PBir}"
											pattern="yyMMdd" /></td>
									<c:set var="gender" value="${fn:substring(patient.PRnum,7,8)}"/>
									
									<c:choose>
										<c:when test="${(gender eq '1') or (gender eq '3') }">
											<td>남</td>
										</c:when >
										<c:when test="${(gender eq '2') or (gender eq '4') }">
											<td>여</td>
										</c:when >
										<c:otherwise>
											<td></td>
										</c:otherwise>

									</c:choose>
									<td>담당의</td>
									<td>${patient.PTel}</td>
									<td><fmt:formatDate value="${patient.PLastdate }"
											pattern="yyyy-MM-dd" /></td>
								</tr>
							</tbody>
						</c:forEach>
					</table>
				</div>
			</div>
			<hr>
		</div>
	</div>
</div>
					
<script type="text/javascript">
function detail(p_no) {
	
	var popupWidth = 800;
	var popupHeight = 800;

	var popupX = (document.body.offsetWidth / 2) - (800 / 2);
	var popupY= (window.screen.height / 2) - (800 / 2);
	
	window.open('detail?pNo='+p_no,'detail2','height=800, width=800, left='+ popupX + ', top='+ popupY);
}
window.onload=function() {
    subMenu_go('M030000')
	preloaderCustom.style.display = "none";
}

</script>
<%@ include file="/WEB-INF/views/common/preloader_js.jsp"%>
<%@ include file="/WEB-INF/views/common/index_js.jsp"%>
<%@ include file="/WEB-INF/views/common/ifram_js.jsp"%>