<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<c:set var="equipList" value="${dataMap.equipList }" />

<style>
#mainFrame {
	overflow: hidden; 
	height:100vh; 
	width:100vw; 
	align-items: center;
}

#mainFrame_top{
	background-color: #333258; 
	height: 12vh; 
	align-items:center; 
	display: flex; 
	justify-content:center;

}
#bar{
	margin: 5px 20px; 
	background: #CCCCCC;
}

#bigTitle{ 
	margin-top: 12px; 
	margin-bottom: 12px;
}

#bigTitle > h1{
	font-weight:bold; ; 
	text-align: center;
	font-size: 35px;
	margin: 0px;
	
}

#detailFrame{
	height: 64vh; 
	width: 97vw; 
	margin: 10px;
}

#detailFrameLeft{
	float: left; 
	height: 64vh; 
	width: 35vw; 
}

#detailFrameLeftImg{
	height: 64vh; 
	width: 35vw; 
	align-items:center; 
	display: flex; 
	justify-content:center; 
	border:1px black solid;
}

#detailFrameLeftImg > img{
	height: 64vh; 
	width: 35vw;
}

#detailFrameRight{
	float: right; 
	height: 64vh; 
	width: 61vw; 
	right: 50%
}

#detailFrameRightUp {
	border: solid black 1px; 
	height: 100%; 
	width: 61vw; 
	text-align: center; 
	padding-top: 10px;
	
}

#detailFrameRightUp > h2{
	padding: 5px; 
	font-weight: 600; 
	color: #333258;
	font-size: 30px
}

#detailFrameRightUpContent{
	height: 90%; 
	width: 90%; 
	text-align: center;
	margin: 5% 7%;
	float: left; 
	font-size: 15px;

}

#detailListRow{
	margin-bottom: 1px;
}

#detailListRow > div{
	float: left; 
	width: 120px; 
	text-align: center; 
	padding: 5px;
	font-weight: bolder;
	background-color : #333258;
	color: white; 
}

#detailListRow > input {
	width: 38vw; 
	margin-left: 10px;
	border : 0px;
	border-bottom: 2px solid #333258;
	background: none;
	
}


#underBar{
	background-color: #333258; 
	height: 9vh; 
	text-align: center ;
}

#underBar > div {
	text-align: center; 
	padding-top: 15px;
}

#underBar > div > a{
	padding: 5px; 
	border-radius : 5px; 
	color : black;
	background-color: white; 
	font-weight: bolder;

}

textarea::placeholder {
	color: #ccc;
}

</style>




<div id="mainFrame">
	<div id="mainFrame_top">
		<img src="<%=request.getContextPath()%>/resources/images/logo-full.png" 
			 style="width: 30vw; height: 10vh;">
	</div>
	
	<div id="bigTitle">
		<h1>?????? ?????? ??????</h1>
	</div>
	<hr id="bar">
	<div id="detailFrame" class = "content" >
		<div id="detailFrameLeft" >
			<div id="detailFrameLeftImg">
				<img src="<%=request.getContextPath()%>/resources/images/stock/stock_detail_example.jpg">
			</div>	
		</div>
	
		<div id="detailFrameRight">
			<div id="detailFrameRightUp">
				<h2>????????????</h2>
					<div style="width: 100%; height: 80%; background-color: white;">
						<div id="detailFrameRightUpContent">
							
							
							<div class="row" id="detailListRow" >
								<div>
									????????????
								</div>
								<input type="text"  readonly="readonly" value="${stock.equipCode}">
							</div>
							
							<div class="row" id="detailListRow" >
								<div>
									?????????
								</div>
								<input type="text"  readonly="readonly" value="${stock.equipName}">
							</div>
							<div class="row" id="detailListRow" >
								<div>
									??????
								</div>
								<input type="text"  readonly="readonly" value="${stock.equipPrice}???">
							</div>
							<div class="row" id="detailListRow" >
								<div>
									??????
								</div>
								<input type="text"  readonly="readonly" value="${stock.equipStock}">
							</div>
							
							<div class="row" id="detailListRow" >
								<div>
									?????????
								</div>
								<input type="text"  readonly="readonly" value="${stock.equipMaker}">
							</div>
							<div class="row" id="detailListRow" >
								<div>
									?????????
								</div>
								<input type="text"  readonly="readonly" value="${stock.equipDistr}">
							</div>
							<div class="row" id="detailListRow" >
								<div>
									?????????
								</div>
								<input type="text"  readonly="readonly" 
										value="<fmt:formatDate value="${stock.equipDate }" pattern="yyyy-MM-dd" />" />
							</div>
					</div>
						
				</div>
			</div>
		</div>
	</div>
	
	<hr id="bar">

	<div id = "underBar">
		<div onclick="window.close()">
				<a>
				  ????????????
				</a>
		</div>
	</div>

</div>


