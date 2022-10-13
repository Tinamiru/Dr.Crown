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
<!--   <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" type="text/css" /> -->
	<div class="container-fluid">
		<div class="row pt-3">
				<div class = "card col-1">
					<div class="p-3 mb-2 bg text-white">통계 선택옵션</div>
				</div>
				<div class = "card col-5">
					<div class = "row pt-2">
						<div class = "col-6">
							<p>
							    <label for="date">시작날짜</label>
							    <input type="date" id="date">
					   		</p>
				   		</div>
				   		<div class = "col-6">
							<p>
							    <label for="date">종료날짜</label>
							    <input type="date" id="date">
					   		</p>
				   		</div>
			   		</div>
			   		<div class = "row pt-2">
				   		<div class = col-6 >
								<div class="bs-docs-example">
									<div class="dropdown bootstrap-select dropup"><select class="selectpicker" tabindex="-98" data-size="5">
									   <option>시작 나이 선택</option>
									   <option>Ketchup</option>
									   <option>Relish</option>
									   <option>Mayonnaise</option>
									   <option>Barbecue Sauce</option>
									   <option>Salad Dressing</option>
									   <option>Tabasco</option>
									   <option>Salsa</option>
									   <option>Mustard</option>
									   <option>Ketchup</option>
									   <option>Relish</option>
									   <option>Mayonnaise</option>
									   <option>Barbecue Sauce</option>
									   <option>Salad Dressing</option>
									   <option>Tabasco</option>
									   <option>Salsa</option>
									   <option>Mustard</option>
									   <option>Ketchup</option>
									   <option>Relish</option>
									   <option>Mayonnaise</option>
									   <option>Barbecue Sauce</option>
									   <option>Salad Dressing</option>
									   <option>Tabasco</option>
									   <option>Salsa</option>
									</select><button type="button" class="btn dropdown-toggle btn-light" data-toggle="dropdown" role="combobox" aria-owns="bs-select-36" aria-haspopup="listbox" aria-expanded="false" title="Mustard"><div class="filter-option"><div class="filter-option-inner"><div class="filter-option-inner-inner">시작 나이 선택</div></div> </div></button><div class="dropdown-menu" x-placement="top-start" style="max-height: 176px; overflow: hidden; position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, -178px, 0px);"><div class="inner show" role="listbox" id="bs-select-36" tabindex="-1" aria-activedescendant="bs-select-36-0" style="max-height: 160px; overflow-y: auto;"><ul class="dropdown-menu inner show" role="presentation" style="margin-top: 0px; margin-bottom: 0px;"><li class="selected active"><a role="option" class="dropdown-item active selected" id="bs-select-36-0" tabindex="0" aria-setsize="8" aria-posinset="1" aria-selected="true"><span class="fa bs-ok-default check-mark"></span><span class="text">Mustard</span></a></li><li><a role="option" class="dropdown-item" id="bs-select-36-1" tabindex="0"><span class="fa bs-ok-default check-mark"></span><span class="text">Ketchup</span></a></li><li><a role="option" class="dropdown-item" id="bs-select-36-2" tabindex="0"><span class="fa bs-ok-default check-mark"></span><span class="text">Relish</span></a></li><li><a role="option" class="dropdown-item" id="bs-select-36-3" tabindex="0"><span class="fa bs-ok-default check-mark"></span><span class="text">Mayonnaise</span></a></li><li><a role="option" class="dropdown-item" id="bs-select-36-4" tabindex="0" aria-setsize="8" aria-posinset="5"><span class="fa bs-ok-default check-mark"></span><span class="text">Barbecue Sauce</span></a></li><li><a role="option" class="dropdown-item" id="bs-select-36-5" tabindex="0" aria-setsize="8" aria-posinset="6"><span class="fa bs-ok-default check-mark"></span><span class="text">Salad Dressing</span></a></li><li><a role="option" class="dropdown-item" id="bs-select-36-6" tabindex="0" aria-setsize="8" aria-posinset="7"><span class="fa bs-ok-default check-mark"></span><span class="text">Tabasco</span></a></li><li><a role="option" class="dropdown-item" id="bs-select-36-7" tabindex="0" aria-setsize="8" aria-posinset="8"><span class="fa bs-ok-default check-mark"></span><span class="text">Salsa</span></a></li></ul></div></div></div>
								</div>
				   		</div>
				   		<div class = col-6>
							<div class="row">
								<div class="bs-docs-example">
									<div class="dropdown bootstrap-select dropup"><select class="selectpicker" tabindex="-98" data-size="5">
									   <option>끝 나이 선택</option>
									   <option>Ketchup</option>
									   <option>Relish</option>
									   <option>Mayonnaise</option>
									   <option>Barbecue Sauce</option>
									   <option>Salad Dressing</option>
									   <option>Tabasco</option>
									   <option>Salsa</option>
									   <option>Mustard</option>
									   <option>Ketchup</option>
									   <option>Relish</option>
									   <option>Mayonnaise</option>
									   <option>Barbecue Sauce</option>
									   <option>Salad Dressing</option>
									   <option>Tabasco</option>
									   <option>Salsa</option>
									   <option>Mustard</option>
									   <option>Ketchup</option>
									   <option>Relish</option>
									   <option>Mayonnaise</option>
									   <option>Barbecue Sauce</option>
									   <option>Salad Dressing</option>
									   <option>Tabasco</option>
									   <option>Salsa</option>
									</select><button type="button" class="btn dropdown-toggle btn-light" data-toggle="dropdown" role="combobox" aria-owns="bs-select-36" aria-haspopup="listbox" aria-expanded="false" title="Mustard"><div class="filter-option"><div class="filter-option-inner"><div class="filter-option-inner-inner">끝 나이 선택</div></div> </div></button><div class="dropdown-menu" x-placement="top-start" style="max-height: 176px; overflow: hidden; position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, -178px, 0px);"><div class="inner show" role="listbox" id="bs-select-36" tabindex="-1" aria-activedescendant="bs-select-36-0" style="max-height: 160px; overflow-y: auto;"><ul class="dropdown-menu inner show" role="presentation" style="margin-top: 0px; margin-bottom: 0px;"><li class="selected active"><a role="option" class="dropdown-item active selected" id="bs-select-36-0" tabindex="0" aria-setsize="8" aria-posinset="1" aria-selected="true"><span class="fa bs-ok-default check-mark"></span><span class="text">Mustard</span></a></li><li><a role="option" class="dropdown-item" id="bs-select-36-1" tabindex="0"><span class="fa bs-ok-default check-mark"></span><span class="text">Ketchup</span></a></li><li><a role="option" class="dropdown-item" id="bs-select-36-2" tabindex="0"><span class="fa bs-ok-default check-mark"></span><span class="text">Relish</span></a></li><li><a role="option" class="dropdown-item" id="bs-select-36-3" tabindex="0"><span class="fa bs-ok-default check-mark"></span><span class="text">Mayonnaise</span></a></li><li><a role="option" class="dropdown-item" id="bs-select-36-4" tabindex="0" aria-setsize="8" aria-posinset="5"><span class="fa bs-ok-default check-mark"></span><span class="text">Barbecue Sauce</span></a></li><li><a role="option" class="dropdown-item" id="bs-select-36-5" tabindex="0" aria-setsize="8" aria-posinset="6"><span class="fa bs-ok-default check-mark"></span><span class="text">Salad Dressing</span></a></li><li><a role="option" class="dropdown-item" id="bs-select-36-6" tabindex="0" aria-setsize="8" aria-posinset="7"><span class="fa bs-ok-default check-mark"></span><span class="text">Tabasco</span></a></li><li><a role="option" class="dropdown-item" id="bs-select-36-7" tabindex="0" aria-setsize="8" aria-posinset="8"><span class="fa bs-ok-default check-mark"></span><span class="text">Salsa</span></a></li></ul></div></div></div>
								</div>
							</div>
				   		</div>
		   			</div>
		   			<div class = "row pt-4">
		                    <div class="radio md-3 col-3 p-0"> 성별 선택</div>
		                    <div class="radio md-3 col-3 p-0"><input type="radio" name="optradio"> 모두</div>
		                    <div class="radio md-3 col-3 p-0"><input type="radio" name="optradio"> 남성</div>
		                    <div class="radio md-3 col-3 p-0"><input type="radio" name="optradio"> 여성</div>
		   			</div>
				</div>	
				<div class = "card col-5">
					<div class = "row pt-2">
						<div class="col-md-3 ">
							<div class="custom-control custom-checkbox mb-3">
								<input type="checkbox" class="custom-control-input" checked id="customCheckBox1" >
								<label class="custom-control-label col-form-label-sm" for="customCheckBox1">기본진료</label>
							</div>
						</div>
						<div class="col-md-3">
							<div class="custom-control custom-checkbox mb-3">
								<input type="checkbox" class="custom-control-input" checked id="customCheckBox1" >
								<label class="custom-control-label lb-sm" for="customCheckBox1">X-ray</label>
							</div>
						</div>
						<div class="col-md-3">
							<div class="custom-control custom-checkbox mb-3">
								<input type="checkbox" class="custom-control-input" checked id="customCheckBox1" >
								<label class="custom-control-label" for="customCheckBox1">마취</label>
							</div>
						</div>
						<div class="col-md-3">
							<div class="custom-control custom-checkbox mb-3">
								<input type="checkbox" class="custom-control-input" checked id="customCheckBox1" >
								<label class="custom-control-label" for="customCheckBox1">보존</label>
							</div>
						</div>
					</div>
					<div class = "row pt-2">
						<div class="col-md-3">
							<div class="custom-control custom-checkbox mb-3">
								<input type="checkbox" class="custom-control-input" checked id="customCheckBox1" >
								<label class="custom-control-label" for="customCheckBox1">GI즉처</label>
							</div>
						</div>
						<div class="col-md-3">
							<div class="custom-control custom-checkbox mb-3">
								<input type="checkbox" class="custom-control-input" checked id="customCheckBox1" >
								<label class="custom-control-label" for="customCheckBox1">GI충전</label>
							</div>
						</div>
						<div class="col-md-3">
							<div class="custom-control custom-checkbox mb-3">
								<input type="checkbox" class="custom-control-input" checked id="customCheckBox1" >
								<label class="custom-control-label col-form-label-sm" for="customCheckBox1">근관치료</label>
							</div>
						</div>
						<div class="col-md-3">
							<div class="custom-control custom-checkbox mb-3">
								<input type="checkbox" class="custom-control-input" checked id="customCheckBox1" >
								<label class="custom-control-label col-form-label-sm" for="customCheckBox1">발치/외과</label>
							</div>
						</div>
					</div>
					<div class = "row pt-2">
						<div class="col-md-3">
							<div class="custom-control custom-checkbox mb-3">
								<input type="checkbox" class="custom-control-input" checked id="customCheckBox1" >
								<label class="custom-control-label" for="customCheckBox1">교정</label>
							</div>
						</div>
						<div class="col-md-3">
							<div class="custom-control custom-checkbox mb-3">
								<input type="checkbox" class="custom-control-input" checked id="customCheckBox1" >
								<label class="custom-control-label col-form-label-sm" for="customCheckBox1">치주치료</label>
							</div>
						</div>
						<div class="col-md-3">
							<div class="custom-control custom-checkbox mb-3">
								<input type="checkbox" class="custom-control-input" checked id="customCheckBox1" >
								<label class="custom-control-label col-form-label-sm" for="customCheckBox1">치관확장</label>
							</div>
						</div>
						<div class="col-md-3">
							<div class="custom-control custom-checkbox mb-3">
								<input type="checkbox" class="custom-control-input" checked id="customCheckBox1" >
								<label class="custom-control-label" for="customCheckBox1">제거</label>
							</div>
						</div>
					</div>
					<div class = "row pt-2">
						<div class="col-md-3">
							<div class="custom-control custom-checkbox mb-3">
								<input type="checkbox" class="custom-control-input" checked id="customCheckBox1" >
								<label class="custom-control-label col-form-label-sm" for="customCheckBox1">스케일링</label>
							</div>
						</div>
						<div class="col-md-3">
							<div class="custom-control custom-checkbox mb-3">
								<input type="checkbox" class="custom-control-input" checked id="customCheckBox1" >
								<label class="custom-control-label" for="customCheckBox1">급여</label>
							</div>
						</div>
						<div class="col-md-3">
							<div class="custom-control custom-checkbox mb-3">
								<input type="checkbox" class="custom-control-input" checked id="customCheckBox1" >
								<label class="custom-control-label" for="customCheckBox1">비급여</label>
							</div>
						</div>
						<div class="col-md-3">
							<div class="custom-control custom-checkbox mb-3">
								<input type="checkbox" class="custom-control-input" checked id="customCheckBox1" >
								<label class="custom-control-label" for="customCheckBox1">기타</label>
							</div>
						</div>
					</div>
				</div>
		</div>
		<div  class="row pt-3">
			<div class="col-xl-6 col-lg-6">
				<div class="card">
					<div class="card-header">
						<h4 class="card-title">진료별 환자 통계 차트</h4>
					</div>
                    <div class="card-body">
						<div id="morris_bar" class="morris_chart_height" style="position: relative; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><svg height="240" version="1.1" width="524" xmlns="http://www.w3.org/2000/svg" style="overflow: hidden; position: relative; left: -0.341262px; top: -0.0696931px;"><desc style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Created with Raphaël 2.1.0</desc><defs style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></defs><text x="33.48980140686035" y="199.05979601287842" text-anchor="end" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal"><tspan dy="3.9822894706726117" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">0</tspan></text><path fill="none" stroke="#000000" d="M45.98980140686035,199.05979601287842H499.35" stroke-opacity="0" stroke-width="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><text x="33.48980140686035" y="155.5448470096588" text-anchor="end" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal"><tspan dy="3.9823093395233116" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">25</tspan></text><path fill="none" stroke="#000000" d="M45.98980140686035,155.5448470096588H499.35" stroke-opacity="0" stroke-width="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><text x="33.48980140686035" y="112.02989800643921" text-anchor="end" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal"><tspan dy="3.982302028656008" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">50</tspan></text><path fill="none" stroke="#000000" d="M45.98980140686035,112.02989800643921H499.35" stroke-opacity="0" stroke-width="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><text x="33.48980140686035" y="68.51494900321961" text-anchor="end" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal"><tspan dy="3.982303300857552" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">75</tspan></text><path fill="none" stroke="#000000" d="M45.98980140686035,68.51494900321961H499.35" stroke-opacity="0" stroke-width="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><text x="33.48980140686035" y="25" text-anchor="end" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal"><tspan dy="3.982300281524658" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">100</tspan></text><path fill="none" stroke="#000000" d="M45.98980140686035,25H499.35" stroke-opacity="0" stroke-width="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><text x="466.9671286719186" y="211.55979601287842" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7.9646)"><tspan dy="3.9822894706726117" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2012</tspan></text><text x="337.435643359593" y="211.55979601287842" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7.9646)"><tspan dy="3.9822894706726117" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2010</tspan></text><text x="207.90415804726737" y="211.55979601287842" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7.9646)"><tspan dy="3.9822894706726117" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2008</tspan></text><text x="78.37267273494176" y="211.55979601287842" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7.9646)"><tspan dy="3.9822894706726117" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2006</tspan></text><rect x="70.2769549029214" y="25" width="3.3971452213469013" height="174.05979601287842" r="0" rx="0" ry="0" fill="#007a64" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect><rect x="76.6741001242683" y="42.40597960128784" width="3.3971452213469013" height="156.65381641159058" r="0" rx="0" ry="0" fill="#1bd084" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect><rect x="83.07124534561521" y="94.62391840515137" width="3.3971452213469013" height="104.43587760772705" r="0" rx="0" ry="0" fill="#ff9f00" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect><rect x="135.04269755908422" y="68.51494900321961" width="3.3971452213469013" height="130.5448470096588" r="0" rx="0" ry="0" fill="#007a64" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect><rect x="141.43984278043112" y="85.92092860450745" width="3.3971452213469013" height="113.13886740837097" r="0" rx="0" ry="0" fill="#1bd084" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect><rect x="147.83698800177802" y="129.43587760772704" width="3.3971452213469013" height="69.62391840515139" r="0" rx="0" ry="0" fill="#ff9f00" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect><rect x="199.80844021524703" y="112.02989800643921" width="3.3971452213469013" height="87.02989800643921" r="0" rx="0" ry="0" fill="#007a64" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect><rect x="206.20558543659394" y="129.43587760772704" width="3.3971452213469013" height="69.62391840515139" r="0" rx="0" ry="0" fill="#1bd084" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect><rect x="212.60273065794084" y="146.8418572090149" width="3.3971452213469013" height="52.21793880386352" r="0" rx="0" ry="0" fill="#ff9f00" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect><rect x="264.57418287140985" y="68.51494900321961" width="3.3971452213469013" height="130.5448470096588" r="0" rx="0" ry="0" fill="#007a64" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect><rect x="270.9713280927567" y="85.92092860450745" width="3.3971452213469013" height="113.13886740837097" r="0" rx="0" ry="0" fill="#1bd084" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect><rect x="277.36847331410365" y="129.43587760772704" width="3.3971452213469013" height="69.62391840515139" r="0" rx="0" ry="0" fill="#ff9f00" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect><rect x="329.3399255275727" y="112.02989800643921" width="3.3971452213469013" height="87.02989800643921" r="0" rx="0" ry="0" fill="#007a64" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect><rect x="335.73707074891956" y="129.43587760772704" width="3.3971452213469013" height="69.62391840515139" r="0" rx="0" ry="0" fill="#1bd084" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect><rect x="342.1342159702665" y="146.8418572090149" width="3.3971452213469013" height="52.21793880386352" r="0" rx="0" ry="0" fill="#ff9f00" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect><rect x="394.10566818373553" y="68.51494900321961" width="3.3971452213469013" height="130.5448470096588" r="0" rx="0" ry="0" fill="#007a64" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect><rect x="400.5028134050824" y="85.92092860450745" width="3.3971452213469013" height="113.13886740837097" r="0" rx="0" ry="0" fill="#1bd084" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect><rect x="406.89995862642934" y="129.43587760772704" width="3.3971452213469013" height="69.62391840515139" r="0" rx="0" ry="0" fill="#ff9f00" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect><rect x="458.8714108398983" y="25" width="3.3971452213469013" height="174.05979601287842" r="0" rx="0" ry="0" fill="#007a64" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect><rect x="465.2685560612452" y="42.40597960128784" width="3.3971452213469013" height="156.65381641159058" r="0" rx="0" ry="0" fill="#1bd084" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect><rect x="471.6657012825921" y="129.43587760772704" width="3.3971452213469013" height="69.62391840515139" r="0" rx="0" ry="0" fill="#ff9f00" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect></svg><div class="morris-hover morris-default-style" style="left: 31.5322px; top: 60px; display: none;"><div class="morris-hover-row-label">2006</div><div class="morris-hover-point" style="color: #007A64">
								  A:100
								</div><div class="morris-hover-point" style="color: #1bd084">
								  B:90
								</div><div class="morris-hover-point" style="color: #ff9f00">
								  C:60
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xl-6 col-lg-6">
	        	<div class="card">
	            	<div class="card-header">
	                	<h4 class="card-title">연도별 재무 통계 차트</h4>
                   	</div>
                	<div class="card-body">
                    	<div id="line_chart_2" class="morris_chart_height" style="position: relative; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><svg height="240" version="1.1" width="524" xmlns="http://www.w3.org/2000/svg" style="overflow: hidden; position: relative; left: -0.652658px; top: -0.0696931px;"><desc style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Created with Raphaël 2.1.0</desc><defs style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></defs><text x="33.48980140686035" y="199.05979601287842" text-anchor="end" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal"><tspan dy="3.9822894706726117" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">0</tspan></text><path fill="none" stroke="#000000" d="M45.98980140686035,199.05979601287842H499.35" stroke-opacity="0" stroke-width="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><text x="33.48980140686035" y="155.5448470096588" text-anchor="end" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal"><tspan dy="3.9823093395233116" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">50</tspan></text><path fill="none" stroke="#000000" d="M45.98980140686035,155.5448470096588H499.35" stroke-opacity="0" stroke-width="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><text x="33.48980140686035" y="112.02989800643921" text-anchor="end" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal"><tspan dy="3.982302028656008" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">100</tspan></text><path fill="none" stroke="#000000" d="M45.98980140686035,112.02989800643921H499.35" stroke-opacity="0" stroke-width="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><text x="33.48980140686035" y="68.51494900321961" text-anchor="end" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal"><tspan dy="3.982303300857552" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">150</tspan></text><path fill="none" stroke="#000000" d="M45.98980140686035,68.51494900321961H499.35" stroke-opacity="0" stroke-width="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><text x="33.48980140686035" y="25" text-anchor="end" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal"><tspan dy="3.982300281524658" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">200</tspan></text><path fill="none" stroke="#000000" d="M45.98980140686035,25H499.35" stroke-opacity="0" stroke-width="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><text x="499.3500000000001" y="211.55979601287842" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7.9646)"><tspan dy="3.9822894706726117" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2007</tspan></text><text x="423.82445345207856" y="211.55979601287842" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7.9646)"><tspan dy="3.9822894706726117" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2006</tspan></text><text x="348.2989069041571" y="211.55979601287842" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7.9646)"><tspan dy="3.9822894706726117" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2005</tspan></text><text x="272.5664410506248" y="211.55979601287842" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7.9646)"><tspan dy="3.9822894706726117" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2004</tspan></text><text x="197.04089450270334" y="211.55979601287842" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7.9646)"><tspan dy="3.9822894706726117" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2003</tspan></text><text x="121.51534795478184" y="211.55979601287842" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7.9646)"><tspan dy="3.9822894706726117" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2002</tspan></text><text x="45.98980140686035" y="211.55979601287842" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7.9646)"><tspan dy="3.9822894706726117" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2001</tspan></text><path fill="#078b73" stroke="none" d="M45.98980140686035,199.05979601287842C64.87118804384073,179.47806896142959,102.63396131780146,125.0843827074051,121.51534795478184,120.73288780708313C140.39673459176223,116.38139290676116,178.15950786572296,157.7205944598198,197.04089450270334,164.24783681030274C215.92228113968372,170.77507916078568,253.68505441364442,184.90106739397856,272.5664410506248,172.95082661094665C291.49955751400785,160.9678454422078,329.36579044077405,67.9702680410042,348.2989069041571,68.51494900321961C367.1802935411375,69.0581417660847,404.9430668150982,162.07208936014177,423.82445345207856,177.30232151126862C442.70584008905894,192.5325536623955,480.4686133630197,187.09318503699302,499.3500000000001,190.3568062122345L499.3500000000001,199.05979601287842L45.98980140686035,199.05979601287842Z" fill-opacity="0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 0;"></path><path fill="none" stroke="#007a64" d="M45.98980140686035,199.05979601287842C64.87118804384073,179.47806896142959,102.63396131780146,125.0843827074051,121.51534795478184,120.73288780708313C140.39673459176223,116.38139290676116,178.15950786572296,157.7205944598198,197.04089450270334,164.24783681030274C215.92228113968372,170.77507916078568,253.68505441364442,184.90106739397856,272.5664410506248,172.95082661094665C291.49955751400785,160.9678454422078,329.36579044077405,67.9702680410042,348.2989069041571,68.51494900321961C367.1802935411375,69.0581417660847,404.9430668150982,162.07208936014177,423.82445345207856,177.30232151126862C442.70584008905894,192.5325536623955,480.4686133630197,187.09318503699302,499.3500000000001,190.3568062122345" stroke-width="3" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><circle cx="45.98980140686035" cy="199.05979601287842" r="3" fill="#007a64" stroke="#ff6746" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="121.51534795478184" cy="120.73288780708313" r="3" fill="#007a64" stroke="#ff6746" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="197.04089450270334" cy="164.24783681030274" r="3" fill="#007a64" stroke="#ff6746" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="272.5664410506248" cy="172.95082661094665" r="3" fill="#007a64" stroke="#ff6746" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="348.2989069041571" cy="68.51494900321961" r="3" fill="#007a64" stroke="#ff6746" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="423.82445345207856" cy="177.30232151126862" r="3" fill="#007a64" stroke="#ff6746" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="499.3500000000001" cy="190.3568062122345" r="3" fill="#007a64" stroke="#ff6746" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><path fill="#3ddc99" stroke="none" d="M45.98980140686035,199.05979601287842C64.87118804384073,186.00531131191255,102.63396131780146,155.54484700965884,121.51534795478184,146.8418572090149C140.39673459176223,138.13886740837097,178.15950786572296,128.0216417651224,197.04089450270334,129.43587760772704C215.92228113968372,130.85011345033166,253.68505441364442,153.8102018469313,272.5664410506248,158.155743949852C291.49955751400785,162.5131916475752,329.36579044077405,167.84273116092442,348.2989069041571,164.24783681030274C367.1802935411375,160.66276457539317,404.9430668150982,126.17225643248557,423.82445345207856,129.43587760772704C442.70584008905894,132.6994987829685,480.4686133630197,175.12657406110762,499.3500000000001,190.3568062122345L499.3500000000001,199.05979601287842L45.98980140686035,199.05979601287842Z" fill-opacity="0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 0;"></path><path fill="none" stroke="#1bd084" d="M45.98980140686035,199.05979601287842C64.87118804384073,186.00531131191255,102.63396131780146,155.54484700965884,121.51534795478184,146.8418572090149C140.39673459176223,138.13886740837097,178.15950786572296,128.0216417651224,197.04089450270334,129.43587760772704C215.92228113968372,130.85011345033166,253.68505441364442,153.8102018469313,272.5664410506248,158.155743949852C291.49955751400785,162.5131916475752,329.36579044077405,167.84273116092442,348.2989069041571,164.24783681030274C367.1802935411375,160.66276457539317,404.9430668150982,126.17225643248557,423.82445345207856,129.43587760772704C442.70584008905894,132.6994987829685,480.4686133630197,175.12657406110762,499.3500000000001,190.3568062122345" stroke-width="3" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><circle cx="45.98980140686035" cy="199.05979601287842" r="3" fill="#1bd084" stroke="#1bd084" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="121.51534795478184" cy="146.8418572090149" r="3" fill="#1bd084" stroke="#1bd084" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="197.04089450270334" cy="129.43587760772704" r="3" fill="#1bd084" stroke="#1bd084" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="272.5664410506248" cy="158.155743949852" r="3" fill="#1bd084" stroke="#1bd084" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="348.2989069041571" cy="164.24783681030274" r="3" fill="#1bd084" stroke="#1bd084" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="423.82445345207856" cy="129.43587760772704" r="3" fill="#1bd084" stroke="#1bd084" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="499.3500000000001" cy="190.3568062122345" r="3" fill="#1bd084" stroke="#1bd084" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><path fill="#6e6af7" stroke="none" d="M45.98980140686035,199.05979601287842C64.87118804384073,193.62042738747598,102.63396131780146,181.10987954905033,121.51534795478184,177.30232151126862C140.39673459176223,173.4947634734869,178.15950786572296,167.7290327305603,197.04089450270334,168.5993317106247C215.92228113968372,169.46963069068912,253.68505441364442,193.49899032049024,272.5664410506248,184.26471335178377C291.49955751400785,175.00513699412193,329.36579044077405,97.12945083134223,348.2989069041571,94.62391840515137C367.1802935411375,92.12523169597198,404.9430668150982,152.28122583441737,423.82445345207856,164.24783681030274C442.70584008905894,176.21444778618815,480.4686133630197,183.82956386175155,499.3500000000001,190.3568062122345L499.3500000000001,199.05979601287842L45.98980140686035,199.05979601287842Z" fill-opacity="0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 0;"></path><path fill="none" stroke="#2d28ff" d="M45.98980140686035,199.05979601287842C64.87118804384073,193.62042738747598,102.63396131780146,181.10987954905033,121.51534795478184,177.30232151126862C140.39673459176223,173.4947634734869,178.15950786572296,167.7290327305603,197.04089450270334,168.5993317106247C215.92228113968372,169.46963069068912,253.68505441364442,193.49899032049024,272.5664410506248,184.26471335178377C291.49955751400785,175.00513699412193,329.36579044077405,97.12945083134223,348.2989069041571,94.62391840515137C367.1802935411375,92.12523169597198,404.9430668150982,152.28122583441737,423.82445345207856,164.24783681030274C442.70584008905894,176.21444778618815,480.4686133630197,183.82956386175155,499.3500000000001,190.3568062122345" stroke-width="3" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><circle cx="45.98980140686035" cy="199.05979601287842" r="3" fill="#2d28ff" stroke="#2d28ff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="121.51534795478184" cy="177.30232151126862" r="3" fill="#2d28ff" stroke="#2d28ff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="197.04089450270334" cy="168.5993317106247" r="3" fill="#2d28ff" stroke="#2d28ff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="272.5664410506248" cy="184.26471335178377" r="3" fill="#2d28ff" stroke="#2d28ff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="348.2989069041571" cy="94.62391840515137" r="3" fill="#2d28ff" stroke="#2d28ff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="423.82445345207856" cy="164.24783681030274" r="3" fill="#2d28ff" stroke="#2d28ff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="499.3500000000001" cy="190.3568062122345" r="3" fill="#2d28ff" stroke="#2d28ff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle></svg><div class="morris-hover morris-default-style" style="left: 46.4048px; top: 47px; display: none;"><div class="morris-hover-row-label">2002</div><div class="morris-hover-point" style="color: rgb(0, 122, 100)">
								  Phone:90
								</div><div class="morris-hover-point" style="color: rgb(27, 208, 132)">
								  Windows:60
								</div><div class="morris-hover-point" style="color: #2D28FF">
								  Mac:25
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row pt-3">
                    <div class="col-xl-6 col-lg-6">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title">진료별 환자 통계 표</h4>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <div id="example_wrapper" class="dataTables_wrapper">
                                    	<div class="dataTables_length" id="example_length">
                                    		<label>Show <select name="example_length" aria-controls="example" class="">
                                    		<option value="10">10</option>
                                    		<option value="25">25</option>
                                    		<option value="50">50</option><option value="100">100</option>
                                    		</select> entries</label>
                                   		</div>
                                   		<div id="example_filter" class="dataTables_filter">
                                   			<label>Search:<input type="search" class="" placeholder="" aria-controls="example">
                                   			</label>
                                 		</div>
                                 			<table id="example" class="display min-w850 dataTable" role="grid" aria-describedby="example_info">
		                                        <thead>
		                                            <tr role="row">
		                                            	<th class="sorting_asc" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 149.668px;">순번</th>
		                                            	<th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending" style="width: 245.216px;">날짜</th>
		                                            	<th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Office: activate to sort column ascending" style="width: 112.583px;">기본진료</th>
		                                            	<th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Age: activate to sort column ascending" style="width: 50.9817px;">마취</th>
		                                            	<th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Start date: activate to sort column ascending" style="width: 106.775px;">급여처치</th>
		                                            	<th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Salary: activate to sort column ascending" style="width: 89.9475px;">Salary</th></tr>
		                                        </thead>
		                                        <tbody>
		                                        <tr class="odd" role="row">
		                                                <td class="sorting_1">Airi Satou</td>
		                                                <td>Accountant</td>
		                                                <td>Tokyo</td>
		                                                <td>33</td>
		                                                <td>2008/11/28</td>
		                                                <td>$162,700</td>
		                                            </tr><tr class="even" role="row">
		                                                <td class="sorting_1">Angelica Ramos</td>
		                                                <td>Chief Executive Officer (CEO)</td>
		                                                <td>London</td>
		                                                <td>47</td>
		                                                <td>2009/10/09</td>
		                                                <td>$1,200,000</td>
		                                            </tr><tr class="odd" role="row">
		                                                <td class="sorting_1">Ashton Cox</td>
		                                                <td>Junior Technical Author</td>
		                                                <td>San Francisco</td>
		                                                <td>66</td>
		                                                <td>2009/01/12</td>
		                                                <td>$86,000</td>
		                                            </tr><tr class="even" role="row">
		                                                <td class="sorting_1">Bradley Greer</td>
		                                                <td>Software Engineer</td>
		                                                <td>London</td>
		                                                <td>41</td>
		                                                <td>2012/10/13</td>
		                                                <td>$132,000</td>
		                                            </tr><tr class="odd" role="row">
		                                                <td class="sorting_1">Brenden Wagner</td>
		                                                <td>Software Engineer</td>
		                                                <td>San Francisco</td>
		                                                <td>28</td>
		                                                <td>2011/06/07</td>
		                                                <td>$206,850</td>
		                                            </tr><tr class="even" role="row">
		                                                <td class="sorting_1">Brielle Williamson</td>
		                                                <td>Integration Specialist</td>
		                                                <td>New York</td>
		                                                <td>61</td>
		                                                <td>2012/12/02</td>
		                                                <td>$372,000</td>
		                                            </tr><tr class="odd" role="row">
		                                                <td class="sorting_1">Bruno Nash</td>
		                                                <td>Software Engineer</td>
		                                                <td>London</td>
		                                                <td>38</td>
		                                                <td>2011/05/03</td>
		                                                <td>$163,500</td>
		                                            </tr><tr class="even" role="row">
		                                                <td class="sorting_1">Caesar Vance</td>
		                                                <td>Pre-Sales Support</td>
		                                                <td>New York</td>
		                                                <td>21</td>
		                                                <td>2011/12/12</td>
		                                                <td>$106,450</td>
		                                            </tr><tr class="odd" role="row">
		                                                <td class="sorting_1">Cara Stevens</td>
		                                                <td>Sales Assistant</td>
		                                                <td>New York</td>
		                                                <td>46</td>
		                                                <td>2011/12/06</td>
		                                                <td>$145,600</td>
		                                            </tr><tr class="even" role="row">
		                                                <td class="sorting_1">Cedric Kelly</td>
		                                                <td>Senior Javascript Developer</td>
		                                                <td>Edinburgh</td>
		                                                <td>22</td>
		                                                <td>2012/03/29</td>
		                                                <td>$433,060</td>
		                                            </tr></tbody>
		                                        <tfoot>
		                                            <tr><th rowspan="1" colspan="1">Name</th><th rowspan="1" colspan="1">Position</th><th rowspan="1" colspan="1">Office</th><th rowspan="1" colspan="1">Age</th><th rowspan="1" colspan="1">Start date</th><th rowspan="1" colspan="1">Salary</th></tr>
		                                        </tfoot>
                                    	</table>
                                    <div class="dataTables_info" id="example_info" role="status" aria-live="polite">Showing 1 to 10 of 57 entries</div><div class="dataTables_paginate paging_simple_numbers" id="example_paginate"><a class="paginate_button previous disabled" aria-controls="example" data-dt-idx="0" tabindex="0" id="example_previous">Previous</a><span><a class="paginate_button current" aria-controls="example" data-dt-idx="1" tabindex="0">1</a><a class="paginate_button " aria-controls="example" data-dt-idx="2" tabindex="0">2</a><a class="paginate_button " aria-controls="example" data-dt-idx="3" tabindex="0">3</a><a class="paginate_button " aria-controls="example" data-dt-idx="4" tabindex="0">4</a><a class="paginate_button " aria-controls="example" data-dt-idx="5" tabindex="0">5</a><a class="paginate_button " aria-controls="example" data-dt-idx="6" tabindex="0">6</a></span><a class="paginate_button next" aria-controls="example" data-dt-idx="7" tabindex="0" id="example_next">Next</a></div></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-6 col-lg-6">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title">진료별 환자 통계 표</h4>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <div id="example_wrapper" class="dataTables_wrapper">
                                    	<div class="dataTables_length" id="example_length">
                                    		<label>Show <select name="example_length" aria-controls="example" class="">
                                    		<option value="10">10</option>
                                    		<option value="25">25</option>
                                    		<option value="50">50</option><option value="100">100</option>
                                    		</select> entries</label>
                                   		</div>
                                   		<div id="example_filter" class="dataTables_filter">
                                   			<label>Search:<input type="search" class="" placeholder="" aria-controls="example">
                                   			</label>
                                 		</div>
                                 			<table id="example" class="display min-w850 dataTable" role="grid" aria-describedby="example_info">
		                                        <thead>
		                                            <tr role="row">
		                                            	<th class="sorting_asc" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 149.668px;">순번</th>
		                                            	<th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending" style="width: 245.216px;">날짜</th>
		                                            	<th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Office: activate to sort column ascending" style="width: 112.583px;">기본진료</th>
		                                            	<th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Age: activate to sort column ascending" style="width: 50.9817px;">마취</th>
		                                            	<th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Start date: activate to sort column ascending" style="width: 106.775px;">급여처치</th>
		                                            	<th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Salary: activate to sort column ascending" style="width: 89.9475px;">Salary</th></tr>
		                                        </thead>
		                                        <tbody>
		                                        <tr class="odd" role="row">
		                                                <td class="sorting_1">Airi Satou</td>
		                                                <td>Accountant</td>
		                                                <td>Tokyo</td>
		                                                <td>33</td>
		                                                <td>2008/11/28</td>
		                                                <td>$162,700</td>
		                                            </tr><tr class="even" role="row">
		                                                <td class="sorting_1">Angelica Ramos</td>
		                                                <td>Chief Executive Officer (CEO)</td>
		                                                <td>London</td>
		                                                <td>47</td>
		                                                <td>2009/10/09</td>
		                                                <td>$1,200,000</td>
		                                            </tr><tr class="odd" role="row">
		                                                <td class="sorting_1">Ashton Cox</td>
		                                                <td>Junior Technical Author</td>
		                                                <td>San Francisco</td>
		                                                <td>66</td>
		                                                <td>2009/01/12</td>
		                                                <td>$86,000</td>
		                                            </tr><tr class="even" role="row">
		                                                <td class="sorting_1">Bradley Greer</td>
		                                                <td>Software Engineer</td>
		                                                <td>London</td>
		                                                <td>41</td>
		                                                <td>2012/10/13</td>
		                                                <td>$132,000</td>
		                                            </tr><tr class="odd" role="row">
		                                                <td class="sorting_1">Brenden Wagner</td>
		                                                <td>Software Engineer</td>
		                                                <td>San Francisco</td>
		                                                <td>28</td>
		                                                <td>2011/06/07</td>
		                                                <td>$206,850</td>
		                                            </tr><tr class="even" role="row">
		                                                <td class="sorting_1">Brielle Williamson</td>
		                                                <td>Integration Specialist</td>
		                                                <td>New York</td>
		                                                <td>61</td>
		                                                <td>2012/12/02</td>
		                                                <td>$372,000</td>
		                                            </tr><tr class="odd" role="row">
		                                                <td class="sorting_1">Bruno Nash</td>
		                                                <td>Software Engineer</td>
		                                                <td>London</td>
		                                                <td>38</td>
		                                                <td>2011/05/03</td>
		                                                <td>$163,500</td>
		                                            </tr><tr class="even" role="row">
		                                                <td class="sorting_1">Caesar Vance</td>
		                                                <td>Pre-Sales Support</td>
		                                                <td>New York</td>
		                                                <td>21</td>
		                                                <td>2011/12/12</td>
		                                                <td>$106,450</td>
		                                            </tr><tr class="odd" role="row">
		                                                <td class="sorting_1">Cara Stevens</td>
		                                                <td>Sales Assistant</td>
		                                                <td>New York</td>
		                                                <td>46</td>
		                                                <td>2011/12/06</td>
		                                                <td>$145,600</td>
		                                            </tr><tr class="even" role="row">
		                                                <td class="sorting_1">Cedric Kelly</td>
		                                                <td>Senior Javascript Developer</td>
		                                                <td>Edinburgh</td>
		                                                <td>22</td>
		                                                <td>2012/03/29</td>
		                                                <td>$433,060</td>
		                                            </tr></tbody>
		                                        <tfoot>
		                                            <tr><th rowspan="1" colspan="1">Name</th><th rowspan="1" colspan="1">Position</th><th rowspan="1" colspan="1">Office</th><th rowspan="1" colspan="1">Age</th><th rowspan="1" colspan="1">Start date</th><th rowspan="1" colspan="1">Salary</th></tr>
		                                        </tfoot>
                                    	</table>
                                    <div class="dataTables_info" id="example_info" role="status" aria-live="polite">Showing 1 to 10 of 57 entries</div><div class="dataTables_paginate paging_simple_numbers" id="example_paginate"><a class="paginate_button previous disabled" aria-controls="example" data-dt-idx="0" tabindex="0" id="example_previous">Previous</a><span><a class="paginate_button current" aria-controls="example" data-dt-idx="1" tabindex="0">1</a><a class="paginate_button " aria-controls="example" data-dt-idx="2" tabindex="0">2</a><a class="paginate_button " aria-controls="example" data-dt-idx="3" tabindex="0">3</a><a class="paginate_button " aria-controls="example" data-dt-idx="4" tabindex="0">4</a><a class="paginate_button " aria-controls="example" data-dt-idx="5" tabindex="0">5</a><a class="paginate_button " aria-controls="example" data-dt-idx="6" tabindex="0">6</a></span><a class="paginate_button next" aria-controls="example" data-dt-idx="7" tabindex="0" id="example_next">Next</a></div></div>
                                </div>
                            </div>
                        </div>
                    </div>
		</div>
		<div>
		
		</div>
	</div>


<!--   <script src="https://code.jquery.com/jquery-3.6.0.js"></script> -->


