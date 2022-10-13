<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" />
<c:set var="minfoList" value="${dataMap.minfoList }" />


<div>
	<section class="content-header">
	  	<div class="container-fluid">
	  		<div class="row md-2">
	  			<div class="col-sm-6">
	  				<h1>비품 재고현황</h1>  				
	  			</div>
	  			<div class="col-sm-6">
	  				<ol class="breadcrumb float-sm-right">
			        <li class="breadcrumb-item">
			        	<a href="list.do">
				        	<i class="fa fa-dashboard"></i>회원관리
				        </a>
			        </li>
			        <li class="breadcrumb-item active">
			        	목록0	
			        </li>		        
	    	  </ol>
	  			</div>
	  		</div>
	  	</div>
	</section>
	
	<section class="content">  
   		<div class="card">
   			<div class="card-header with-border" >
   				
   				<div id="keyword" class="card-tools" style="width:550px; "  >
   					 <div class="input-group row">
   					 	<!-- search bar -->
   					 	<!-- sort num -->
					  	<select class="form-control col-md-3" name="perPageNum" id="perPageNum" onchange="list_go(1);">					  		  		
					  		<option value="10" ${cri.perPageNum eq 10 ? 'selected' : '' } >정렬개수</option>
					  		<option value="2" ${cri.perPageNum eq 2 ? 'selected' : '' }>2개씩</option>
					  		<option value="3" ${cri.perPageNum eq 3 ? 'selected' : '' }>3개씩</option>
					  		<option value="5" ${cri.perPageNum eq 5 ? 'selected' : '' }>5개씩</option>
					  	</select>
					  	
					  	
					  	<!-- search bar -->
					 	<select class="form-control col-md-3" name="searchType" id="searchType">
					 		<option value=""  >검색구분</option>
				
							<option value="i" ${param.searchType=='i' ? "selected":"" } >아이디</option>
							<option value="n" ${param.searchType=='n' ? "selected":"" }>이 름</option>
							<option value="p" ${param.searchType=='p' ? "selected":"" }>전화번호</option>
							<option value="e" ${param.searchType=='e' ? "selected":"" }>이메일</option>	
											 									
						</select>
						<!-- keyword -->
   					 	<input  class="form-control" type="text" name="keyword" placeholder="검색어를 입력하세요." value="${cri.keyword }"/>
						<span class="input-group-append">
							<button class="btn btn-primary" type="button" 
									id="searchBtn" data-card-widget="search" onclick="list_go(1);">
								<i class="fa fa-fw fa-search"></i>
							</button>
						</span>
					<!-- end : search bar -->		
   					 </div>
   				</div>   			
   			</div>
   			<div class="card-body" style="text-align:center;">
    		  <div class="row">
	             <div class="col-sm-12">	
		    		<table class="table table-bordered">
		    			<tr>
		    				<th>비품코드</th>
		                	<th>비품명</th>
		                	<th>제조사</th>
		                	<th>유통사</th>
		                	<th>상세정보</th>
		                	<th>입고일</th>
		                	<th>수량</th> <!-- yyyy-MM-dd  -->
		               	</tr>
		               	<tr>
		               		<td>EQU1</td>
		               		<td>거즈</td>
		               		<td>재림산업</td>
		               		<td>금규산업</td>
		               		<td><a href="/stock/supply/detail" class="btn btn-primary mb-1 mr-1">상세정보</a></td>
		               		<td>2022/10/11</td>
		               		<td>200</td>
		               	</tr>
		               	
		               	
		              
		               		
		     			<c:if test="${!empty minfoList }" >
		            		<c:forEach items="${minfoList}" var="minfo">		     						     				
		     					 <tr>

		            		  	   	<td>${minfo.minfoClass }</td>
				              		<td>${minfo.minfoCode }</td>
				              		<td>${minfo.minfoContent }
				              		<td>${minfo.minfoWriter }</td>
				              		<td>${minfo.minfoWriter }</td>
				              		<td>${minfo.minfoWriter }</td>
		            		  	   	<td><fmt:formatDate value="${minfo.minfoRegdate }" pattern="yyyy-MM-dd"/></td>
		            		  	  </tr>	
		     					
		     				</c:forEach>
		            	</c:if>		
		     			<c:if test="${empty minfoList }" >
			     			<tr>
		            			<td colspan="7" class="text-center">
		            				해당내용이 없습니다.
		            			</td>
		            		</tr>
		     			</c:if>	
		            </table>
    		     </div> <!-- col-sm-12 -->
    	       </div> <!-- row -->
    		</div> <!-- card-body -->
    		<div class="card-footer">
    			<%@ include file="/WEB-INF/views/include/pagination.jsp" %>
    		</div>
  	 	</div>
   	</section>
</div>