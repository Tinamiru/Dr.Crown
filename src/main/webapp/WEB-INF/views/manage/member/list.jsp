<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" />
<c:set var="memberList" value="${dataMap.memberList }" />

<body>
<div class="container-fluid">
	<div class="row justify-content-between">
		<div class="col-3 pl-4">
			<div class="card-header p-0 pt-4">
				<h1>직원관리</h1>
			</div>
		</div>
		<div class="col-8">
			<div class="subMenuList">
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
						class="custom-control-label" for="customCheckBox2">일반</label>
				</div>
			</div>
			<div class="col-md-1">
				<div class="custom-control custom-checkbox mb-3">
					<input type="checkbox" class="custom-control-input" id="customCheckBox3" >
					 <label	class="custom-control-label" for="customCheckBox3">의사</label>
				</div>
			</div>
			<div class="col-md-1">
				<div class="custom-control custom-checkbox mb-3">
					<input type="checkbox" class="custom-control-input" 
						id="customCheckBox4" > <label
						class="custom-control-label" for="customCheckBox4">직원</label>
				</div>
			</div>
	</div>

	<div class="row justify-content-between pl-5 pr-3">
		<div class="col-2">
			<select class="form-control " name="perPageNum" id="perPageNum" onchange="list_go(1);">					  		  		
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
						<option value="i" ${cri.searchType eq 'i' ? 'selected':'' }>사원아이디</option>
						<option value="n" ${cri.searchType eq 'n' ? 'selected':'' }>이름</option>
						<option value="p" ${cri.searchType eq 'p' ? 'selected':'' }>연락처</option>
						<option value="pos" ${cri.searchType eq 'pos' ? 'selected':'' }>직책</option>
						<option value="a" ${cri.searchType eq 'a' ? 'selected':'' }>권한</option>							
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
			
	<hr>
	<!-- 테이블 -->
	<div class="row justify-content-end pr-5">
		<button type="button" onclick="regist()" class="btn btn-rounded btn-dark" style="border-radius: 10px;">생성</button>
	</div>
	<div class="card-body" style="height: 58vh;overflow-y:scroll;">
		<div class="table-responsive">
			<table class="table table-bordered"
				style="margin: auto; text-align: center; vertical-align:middle;">
				<thead class="thead">
					<tr bgcolor="#333258" style="color: white">
						<th scope="col">순번</th>
						<th scope="col">사원아이디</th>
						<th scope="col">이름</th>
						<th scope="col">연락처</th>
						<th scope="col">메일주소</th>
						<th scope="col">직위</th>
						<th scope="col">직책</th>
						<th scope="col">권한</th>
						<th scope="col">삭제</th>
					</tr>
				</thead>
				<c:if test="${empty memberList }" >
					<tr>
						<td colspan="8">
							<strong>해당 내용이 없습니다.</strong>
						</td>
					</tr>
				</c:if>	
				<c:forEach items="${memberList}" var="member" varStatus="status">
					<tr>
						<td>${status.index+1}</td>
						<td>${member.memId}</td>
						<td>${member.memName}</td>
						<td>${member.memPhone}</td>
						<td>${member.memMail }</td>
						<td>${member.memOfcps}</td>
						<td>${member.memRspofc}</td>
						<c:choose>
							<c:when test="${member.memAuthority eq 'ROLE_ADMIN'}">
								<td>관리자</td>
							</c:when>
							<c:when test="${member.memAuthority eq 'ROLE_MANAGER'}">
								<td>전문의</td>
							</c:when>
							<c:otherwise>
								<td>직원</td>
							</c:otherwise>
						</c:choose>
						<c:if test="${member.memId ne 'admin' and member.memEnabled eq 1}" >
							<td class="justify-content-center">
								<button type="button" onclick="location.href='remove?memId=${member.memId}';" class="btn btn-danger btn-xl" style="border-radius: 10px;">비활성화</button>
							</td>
						</c:if>
						<c:if test="${member.memEnabled eq 0}" >
							<td class="justify-content-center">
								<button type="button" onclick="location.href='activation?memId=${member.memId}';" class="btn btn-danger btn-xl" style="border-radius: 10px;">활성화</button>
							</td>
						</c:if>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
	<hr>
	<div class = "row justify-content-end pr-5">
		<div>
			<!-- <button type="button" class="btn btn-square btn-primary" style="position: absolute; right: 4vw;">사원등록</button> -->
		</div>
	</div>
</div>


<%@ include file="/WEB-INF/views/include/pagination.jsp" %>
<script>
	function regist() {
		
		var popupWidth = 800;
		var popupHeight = 800;
	
		var popupX = (document.body.offsetWidth / 2) - (800 / 2);
		var popupY= (window.screen.height / 2) - (800 / 2);
		window.open('registForm','detail2','height=800, width=850, left='+ popupX + ', top='+ popupY);
	}
</script>
<script>


</script>


<script>
	window.onload = function(){
		subMenu_go('M080000');
		<c:if test="${from eq 'remove'}" >
			swal( "성공" ,  "사원아이디가 비활성화 되었습니다." ,  "success" );
		</c:if>
		<c:if test="${from eq 'activation'}" >
			swal( "성공" ,  "사원아이디가 활성화 되었습니다." ,  "success" );
		</c:if>
		preloaderCustom.style.display = "none";
		}
</script>
<%@ include file="/WEB-INF/views/common/preloader_js.jsp"%>
<%@ include file="../../common/index_js.jsp"%>
