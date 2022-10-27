<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" />
<c:set var="memeberList" value="${dataMap.memeberList }" />

<body>
<style>
table {
    border: 4px solid #333258;
    border-collapse:separate;
    border-radius:8px;
    background-color:white;
    }
tr {
    border: 2px solid;
    }
td {
	padding: 15px; 
}


</style>
<div class="container-fluid">
	<div class="row justify-content-start">
		<div class="col-3 pl-4">
			<div class="card-header p-0 pt-4">
				<h1>주소록</h1>
			</div>
		</div>
	</div>
	
	<hr>

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
						<option value="i" ${cri.searchType eq 'i' ? 'selected':'' }>이름</option>
						<option value="n" ${cri.searchType eq 'n' ? 'selected':'' }>단체명</option>
						<option value="p" ${cri.searchType eq 'p' ? 'selected':'' }>직책/직위</option>
					</select>
				</div>
				<div class="col-4 p-0">
					<input  class="form-control" type="text" name="keyword" placeholder="검색어를 입력하세요." value="${param.keyword }"/>
				</div>
				<div class="col-2 p-0">
					<span class="input-group-append">
						<button class="btn btn-primary" type="button" >검색</button>
					</span>
				</div>
			</div>
		</div>
	</div>
			
	<hr>
	<!-- 테이블 -->
	<div class="card-body" style="height: 58vh;overflow-y:scroll;">
		
		<div class="table-responsive p-3">
			<div id="sampleR">
			<table id="sample1" class=""
				style="margin: auto; text-align: center; vertical-align:middle;">
				<thead class="thead">
					<tr id="tr1">
						<td rowspan="4" style="vertical-align:middle; width:8%;">사진</td>
						<th bgcolor="#333258" style="color:white; width:5%;">단체명</th>
						<td style="width:10%;">(주)한국약품</td>
						<th bgcolor="#333258" style="color:white; width:5%;">연락처</th>
						<td style="width:15%;  font-size:15px;">[Tel]&nbsp;042-123-4567&nbsp;&nbsp;/&nbsp;&nbsp;[HP]&nbsp;010-1234-5678</td>
						<th rowspan="4" bgcolor="#333258" style="color: white; vertical-align:middle;width:5%;">이력&nbsp;/&nbsp;메모</th>
						<td style="width:10%;">(현)한국약품 대표</td>
						<th style="color: white; vertical-align:middle;width:6%;"><button type="button" class="btn btn-square btn-danger" style="border-radius:8px">수정/삭제</button></th>
					</tr>
					<tr id="tr2">
						<th bgcolor="#333258" style="color: white">직책&nbsp;/&nbsp;직위</th>
						<td>대표/사장</td>
						<th bgcolor="#333258" style="color: white">전자메일</th>
						<td>abc@goolgle.com</td>
						<td>(전)한국약제회사 전회장</td>
					</tr>
					<tr id="tr3">
						<th bgcolor="#333258" style="color: white">이름</th>
						<td>갤럭시좋아</td>
						<th bgcolor="#333258" style="color: white; vertical-align:middle;" rowspan="2">주소</th>
						<td>대한민국 서울시 삼성구 삼성동</td>
						<td>(전)한국약사 과장</td>
					</tr>
					<tr id="tr4">
						<th bgcolor="#333258" style="color: white;">나이</th>
						<td>2003년생</td>
						<td>1999-99번지 삼성빌딩 99층 99호</td>
						<td>(전)서울대 약학 박사</td>
					</tr>
				</thead>
			</table>
			</div>
		</div>
		<div class="table-responsive p-3">
			<div id="sampleR">
			<table id="sample1" class=""
				style="margin: auto; text-align: center; vertical-align:middle;">
				<thead class="thead">
					<tr id="tr1">
						<td rowspan="4" style="vertical-align:middle; width:8%;">사진</td>
						<th bgcolor="#333258" style="color:white; width:5%;">단체명</th>
						<td style="width:10%;">(주)한국약품</td>
						<th bgcolor="#333258" style="color:white; width:5%;">연락처</th>
						<td style="width:15%;  font-size:15px;">[Tel]&nbsp;042-123-4567&nbsp;&nbsp;/&nbsp;&nbsp;[HP]&nbsp;010-1234-5678</td>
						<th rowspan="4" bgcolor="#333258" style="color: white; vertical-align:middle;width:5%;">이력&nbsp;/&nbsp;메모</th>
						<td style="width:10%;">(현)한국약품 대표</td>
						<th style="color: white; vertical-align:middle;width:6%;"><button type="button" class="btn btn-square btn-danger" style="border-radius:8px">수정/삭제</button></th>
					</tr>
					<tr id="tr2">
						<th bgcolor="#333258" style="color: white">직책&nbsp;/&nbsp;직위</th>
						<td>대표/사장</td>
						<th bgcolor="#333258" style="color: white">전자메일</th>
						<td>abc@goolgle.com</td>
						<td>(전)한국약제회사 전회장</td>
					</tr>
					<tr id="tr3">
						<th bgcolor="#333258" style="color: white">이름</th>
						<td>갤럭시좋아</td>
						<th bgcolor="#333258" style="color: white; vertical-align:middle;" rowspan="2">주소</th>
						<td>대한민국 서울시 삼성구 삼성동</td>
						<td>(전)한국약사 과장</td>
					</tr>
					<tr id="tr4">
						<th bgcolor="#333258" style="color: white;">나이</th>
						<td>2003년생</td>
						<td>1999-99번지 삼성빌딩 99층 99호</td>
						<td>(전)서울대 약학 박사</td>
					</tr>
				</thead>
			</table>
			</div>
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
	
	<div class = "row justify-content-end pr-5">
		<div>
			<button type="button" class="btn btn-square btn-primary" style="position: absolute; right: 4vw;">&nbsp;등&nbsp;록&nbsp;</button>
		</div>
	</div>


