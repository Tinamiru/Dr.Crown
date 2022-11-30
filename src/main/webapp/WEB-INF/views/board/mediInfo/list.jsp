<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>

<c:set var="minfoList" value="${dataMap.minfoList }" />
<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" />

<style>

/**right-iframe*/

.right-iframe{

	padding:0;
	margin:0;
	height:100vh;
	background-color:#F6F6F6;
	border-radius:5px;
	border:2px #333258 solid;
	border-left:none;
}

.iframeBox{

	border:none;
	height: 90vh;

}	
/**left-side-bar*/

.left-side-bar{
	padding:0;
	margin:0;
	height:100vh;
	border-radius:5px;
	background-color:lightgray;
	border:2px #333258 solid;
}

.thisPlace{
	margin:0;
	padding:0;
	
	weight:100%;
	height: 30%;
	
	background-color: #333258;
	border:1px lightgray solid;
	border-radius:5px;
	
	display:flex;
	justify-content:center;
	align-items:center;
	
	color:white;
	font-size:30px;
	font-weight:600;
}


.anotherPlace{

	margin:0;
	padding:0;
	
	weight:100%;
	height: 20%;
	
	background-color: lightgray;
	border:1px lightgray solid;
	
	display:flex;
	justify-content:center;
	align-items:center;
	
	color:gray;
	font-size:25px;
	font-weight:600;
}

.anotherPlace:hover{

	margin:0;
	padding:0;
	
	weight:100%;
	height: 20%;
	
	background-color: #F6F6F6;
	border:1px lightgray solid;
	border-radius:10px;
	
	display:flex;
	justify-content:center;
	align-items:center;
	
	color:gray;
	font-size:25px;
	font-weight:600;

	cursor:pointer;
}


/**table*/
	.normalTable{
		text-align:center;
		width:100%;
	}
	
	.normalTr{
		border: 1px lightgray solid;
		padding: 5px;
		cursor:pointer;
		
	}

	.normalTrHeader{
		border: 1px lightgray solid;
		padding: 5px;
		position:sticky; 
		top:-2px;
		cursor:pointer;
		z-index:10;
		
	}
	
	.normalTh{
		background-color: #333258;
		border: 1px lightgray solid;
		color:white;
		height:30px;
		
	}
	
	.normalTd, .normalTdTitle{
		padding: 5px;
		border: 1px lightgray solid;
	}

.normalTdTitle:hover{

	cursor:pointer;
	text-decoration:underline;
	color:blue;

}
/** tr hover */


	.normalTr:hover{
	    background: #EAEAEA;
	    
	}

/**체크박스*/

.check-menu-box {
    margin-top: 0px;
}

.check-menu-box > div {
    padding: 5px 0;
}

.check-menu-box > div > label {
    color: #979797;
    font-size: 15px;
    padding-left: 40px;
}

input[type="checkbox"] {
    display: none;
}

input[type="checkbox"] + label {
    cursor: pointer;
}

input[type="checkbox"] + label:before {
    content: "";
    width: 20px;
    height: 20px;
    position: absolute;
    left: 0;
    background-color: #eeeeee;
    box-shadow: inset 0px 1px 1px 0px rgba(0, 0, 0, 0.1),
        0px 1px 0px 0px rgba(255, 255, 255, 0.5);
}

.check-menu-box {
    position: relative;
}

input[type="checkbox"]:checked + label:before {
    content: "\2714";
    font-size: 10px;
    color: #fff;
    background: #29a9e0;
    text-align: center;
}
 

</style>

<div class="container-fluid">
	<div class="row">
			<div class="card left-side-bar col-2">
				<div id="sideButton2" class="thisPlace" onclick="changeIframeUrl2()"> 논문 및 의학지</div>
				<div id="sideButton1" class="anotherPlace" onclick="changeIframeUrl1()">공지사항</div>
			</div> 
			<div class="right-iframe col-10">
				<div class="col-3 pl-2">
					<div class="card-header p-0 pt-4">
						<h3 style="font-weight:600">논문 및 의학지</h3>
					</div>
				</div>
				<div class="row justify-content-end align-self-center">
					<div class="check-menu-box row pl-5 pt-3 align-self-center" style="width:60vh; display:none;">
						<div class="checkType checkbox-container col-md-3 custom-control custom-checkbox mb-3 align-self-center pr-3" >
							<input id="checkType1" type="checkbox" name="checkAll" class="custom-control-input"	value="selectall" >
							<label	class="individual custom-control-label" for="checkType1">전체</label>
						</div>
						<div class="checkType checkbox-container col-md-4 custom-control custom-checkbox mb-3 align-self-center pr-3">
							<input id="checkType2" type="checkbox" name="checkOne" class="normal custom-control-input" value="T">
							<label class="custom-control-label" for="checkType2">학위논문</label>
						</div>
						<div class="checkType checkbox-container col-md-5 custom-control custom-checkbox mb-3 align-self-center pr-3" >
							<input id="checkType3" type="checkbox" name="checkOne" class="normal custom-control-input" value="O">
							<label class="custom-control-label" for="checkType3">해외학술논문</label>
						</div>
					</div>
					<div class="row">
<%-- 						<div class="p-0 align-self-center">
							<select class="form-control " name="perPageNum" id="perPageNum" onchange="list_go(1);" style="border-color:lightgray;">					  		  		
						 		<option class="cri" value="5" ${cri.perPageNum eq 5 ? 'selected' : '' } >5개씩</option>
						 		<option class="cri" value="10" ${cri.perPageNum eq 10 ? 'selected' : '' }>10개씩</option>
						 		<option class="cri" value="20" ${cri.perPageNum eq 20 ? 'selected' : '' }>20개씩</option>
						 		<option class="cri" value="30" ${cri.perPageNum eq 30 ? 'selected' : '' }>30개씩</option>
						 	</select>
						</div> --%>
						<div class="p-0 align-self-center">
							<select class="form-control" name="selKeyword" id="selKeyword" style="border-color:lightgray;">
								<%-- <option value="tcw"  ${cri.searchType eq 'tcw' ? 'selected':'' }>전 체</option> --%>
								<option class="cri" value="title">논문명</option>
								<option class="cri" value="author">저자</option>
								<option class="cri" value="keyword">논문명+저자</option>
								<%-- <option value="c" ${cri.searchType eq 'c' ? 'selected':'' }>내 용</option>
								<option value="tc" ${cri.searchType eq 'tc' ? 'selected':'' }>제목+내용</option>
								<option value="cw" ${cri.searchType eq 'cw' ? 'selected':'' }>작성자+내용</option>							
								<option value="tcw" ${cri.searchType eq 'tcw' ? 'selected':'' }>작성자+제목+내용</option> --%>
							</select>
						</div>
						<div class="p-0 align-self-center">
							<input  id="keySearchValue" onkeyup="searchKeywordEnter()" class="form-control" type="text" name="keyword" placeholder="검색어를 입력하세요." value="" style="border-color:lightgray;"/>
						</div>
						<div class="p-0 align-self-center">
							<button onclick="searchKeyword()" class="bg-drcrown" type="button" style=" width:80px; height:40px; margin-right:5vh; margin-bottom:1px; border-color:darkgray; border-radius:5px; color:white;">
								<span style="text-align:center;">검색</span>
							</button>
						</div>
					</div>
				</div>
						
				<hr>
				<!-- 테이블 -->
				<div class="card" style="height: 60vh; overflow-y:scroll; border:1px lightgray solid;">
					<!-- <form action="detail.jsp" method="get"> -->
					<table class="normalTable">
						<tr class="normalTrHeader" >
							<!-- <th class="normalTh" scope="col" style="width:8%">순번</th> -->
							<th class="normalTh" scope="col" style="width:10%">분류</th>
							<th class="normalTh" scope="col" style="width:55%">논문명</th>
							<th class="normalTh" scope="col" style="width:15%">저자</th>
							<th class="normalTh" scope="col" style="width:10%">발행일자</th>
							<th class="normalTh" scope="col" style="width:10%">발행기관</th>
						</tr>
						<tbody id="journalTbody">
						<c:if test="${empty minfoList }" >
							<tr class="normalTr" >
								<td class="normalTd" colspan="8">
									<strong>해당 내용이 없습니다. <br> 찾고자하는 논문 또는 의학지를 검색해주세요.</strong>
								</td>
							</tr>
						</c:if>	
						<%-- <c:forEach items="${minfoList}" var="minfo">
							<tr class="normalTr" onclick="goToMinfoDetail(${minfo.minfoNo})">
								<td class="normalTd">${minfo.minfoNo}</td>
								<td class="normalTd">
									<c:set var="name" value="${minfo.pccNumber}"/>
										<c:if test="${name eq '1'}">
											<span>논문</span>
										</c:if>
										<c:if test="${name eq '2'}">
											<span>의학지</span>
										</c:if>
								</td>
								<td class="normalTd">${minfo.minfoTitle}</td>
								<td class="normalTd"></td>
								<td class="normalTd">${minfo.minfoWriter}</td>
								<td class="normalTd"></td>
								<td class="normalTd"></td>
								<td class="normalTd">${minfo.minfoCount}</td>
							</tr>
						</c:forEach> --%>
						</tbody>
					</table>
					<!-- </form> -->
				</div>
				<hr>
<!-- 				<div class = "row justify-content-end pr-5">
					<div>
						<button onclick="minfoRegistForm()" type="button" class="bg-drcrown" style="position: absolute; right: 4vw; border-color:darkgray; border-radius:5px; color:white; width:130px; height:41px;">글쓰기</button>
					</div>
				</div> -->
			</div>
		</div>
</div>
<%-- <%@ include file="/WEB-INF/views/include/pagination.jsp" %> --%>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script>
function xmlToJson(xml) {	
	  // Create the return object
	  var obj = {};

	  if (xml.nodeType == 1) {
	    // element
	    // do attributes
	    if (xml.attributes.length > 0) {
	      obj["@attributes"] = {};
	      for (var j = 0; j < xml.attributes.length; j++) {
	        var attribute = xml.attributes.item(j);
	        obj["@attributes"][attribute.nodeName] = attribute.nodeValue;
	      }
	    }
	  } else if (xml.nodeType == 3) {
	    // text
	    obj = xml.nodeValue;
	  }

	  // do children
	  // If all text nodes inside, get concatenated text from them.
	  var textNodes = [].slice.call(xml.childNodes).filter(function(node) {
	    return node.nodeType === 3;
	  });
	  if (xml.hasChildNodes() && xml.childNodes.length === textNodes.length) {
	    obj = [].slice.call(xml.childNodes).reduce(function(text, node) {
	      return text + node.nodeValue;
	    }, "");
	  } else if (xml.hasChildNodes()) {
	    for (var i = 0; i < xml.childNodes.length; i++) {
	      var item = xml.childNodes.item(i);
	      var nodeName = item.nodeName;
	      if (typeof obj[nodeName] == "undefined") {
	        obj[nodeName] = xmlToJson(item);
	      } else {
	        if (typeof obj[nodeName].push == "undefined") {
	          var old = obj[nodeName];
	          obj[nodeName] = [];
	          obj[nodeName].push(old);
	        }
	        obj[nodeName].push(xmlToJson(item));
	      }
	    }
	  }
	  return obj;
	}
</script>
 
<%-- <script type="text/javascript" src="<c:url value="/resources/js/xml2json.js" />"></script> --%>
<script> 	// 비동기 논문 검색

var paperCreateArr=[];

function searchKeyword() {
	

	
	console.log("aa")
	
	var keySearchValue = document.querySelector('#keySearchValue').value;
	var selKeyword = document.querySelector('#selKeyword').value;
 	var checkType1 = document.querySelector('#checkType3');
	//console.log("checkType3 :", checkType3);
	
 	//체크 필터링
 	if(checkType1.checked == true) {
 		console.log("checkType1.checked")
 	} else if (checkType1.checked == false){
 		console.log("checkType1. not checked!!")
 	}

	var searchValue1 = "http://www.riss.kr/openApi?key=70aaa00tte60abr00aaa00ro00ta870a&version=1.0&type=T&title="+keySearchValue;
	//var searchValue1 = "http://www.riss.kr/openApi?key=70aaa00tte60abr00aaa00ro00ta870a&version=1.0&type="+checkType1+"&"+selKeyword+"="+keySearchValue;
	//var searchValue2 = "http://www.riss.kr/openApi?key=70aaa00tte60abr00aaa00ro00ta870a&version=1.0&type="+checkType2+"&"+selKeyword+"="+keySearchValue;
	//var searchValue3 = "http://www.riss.kr/openApi?key=70aaa00tte60abr00aaa00ro00ta870a&version=1.0&type="+checkType3+"&"+selKeyword+"="+keySearchValue;
	var d = '' 
		d += '<tr class="normalTrSel1" style="height: 400px;" >';
		d += '<td style="text-align:center;" colspan="6">'
		d += '<div class="sk-three-bounce">'
		d += '<div class="sk-child sk-bounce1"></div>'
		d += '<div class="sk-child sk-bounce2"></div>'
		d += '<div class="sk-child sk-bounce3"></div>'
		d += '</div>';
		d += '</td>';
		d += '</tr>';
	
	paperCreateArr.push($("#journalTbody").html(d));
	var getTypeO = 
		$.ajax({
		url: searchValue1,
		method: 'GET',
		dataType: 'xml',
	    success: function(data){
	    	
	    	/////
	    	//xml to json 위한 get Started
	    	//var xml2json = new XMLtoJSON();
	    	//var objson = xml2json.fromStr(data);	// object 형식		
	    	/////
	    	//import { xml2json } from 'xml-js';
	    	//const objson = xml2json(data);
	    	
	    	var objson = xmlToJson(data);
	    	//var objson = xmlToJson.parse(data);
	    	
	    	
	    	//alert(JSON.stringify(objson));
	    	console.log("JSON.stringify(objson) = ",JSON.stringify(objson));
	    	
	    	var result = objson.record.metadata;
	    	console.log(result);
	    	var s = '';
			
	    	arrItem = [];
	    	
	    	var normalTdTitle = document.querySelector('#normalTdTitle');
	    	
	    	$.each(result, function(index,item){
	    		console.log("아이템",item);
	    		console.log("인덱스"+index)
	    		var type=item['riss.type'];
	    		var typeName="";
	    		
	    		if(type=="A") {
    			 	typeName = "국내학술논문";
	    		} else if(type=="O") {
	    			typeName = "해외학술논문";
	    		} else if(type=="T") {
	    			typeName = "학위논문";
	    		} else if(type=="U") {
	    			typeName = "단행본";
	    		} else if(type=="S") {
	    			typeName = "학술지";
	    		} else if(type=="K") {
	    			typeName = "공개강의";
	    		}  
	    		var url = item['url'];
	    		
				s += '<tr class="normalTrSel1" >';
					s += '<td class="normalTd" style="text-align:center;">'+ typeName +'</td>'
					/* s += '<td class="normalTd" onclick="location.href='+"'"+url+"'"+'">'+item['riss.title']+'</td>' */
					s += '<td class="normalTdTitle text-left" onclick=goToMinfoDetail('+index+')>' + item['riss.title'] +'</td>'
					s += '<td class="normalTd">'+item['riss.author']+'</td>'
					s += '<td class="normalTd"style="text-align:center;">'+item['riss.pubdate']+'</td>'
					s += '<td class="normalTd"style="text-align:center;">'+item['riss.publisher']+'</td>'
					s += '<td class="normalTd" style="text-align:center; display:none;">'+item['url']+'</td>'
				s += '</tr>';
				
				typeName2 = typeName
				title = item['riss.title']
				author = item['riss.author']
				pubdate = item['riss.pubdate']
				publisher = item['riss.publisher']
				rUrl = item['url']
				
					
				var index = [typeName2,title,author,pubdate,publisher,rUrl]
				
									
				
				arrItem.push(index);
				
				
				
				console.log("normalTdTitle's index : ",normalTdTitle)
				
				
				
			})
			
			
			
			
			var normalTrSel1 = document.querySelectorAll(".normalTrSel1");
	    	//console.log("normalTrSel1 ::: ", normalTrSel1);
			
			//document.write("index: ")
			//arrItem.push(typeName2);
			//arrItem.push(author);
			//arrItem.push(pubdate);
			//arrItem.push(publisher);
			
			console.log('arrItem : ', arrItem);
			
			//console.log("fdfssfa",title);
			
	    	var iframValue = "/board/mediInfo/detail.do?="+arrItem;
	    	//var iframValue = "/board/mediInfo/detail.do?from=list&";
	    	//console.log('iframValue = '+iframValue);
	    	//var url = iframValue//+param;
	    	//parent.document.querySelector('#iframePlace').setAttribute("src", url);
	    	
	    	
	    	//goToMinfoDetail(title);
			//$("#journalTbody").html(s);
			paperCreateArr.push($("#journalTbody").html(s));
			
			let vTDS = document.querySelectorAll(".normalTdTitle");
			/* for(let i=0; i < vTDS.length; i++){
				console.log(result[i]);
				vTDS[i].onclick = goToMinfoDetail.bind(null, result[i])
				//console.log("vTDS[i].onclick = goToMinfoDetail.bind(null, result[i]) : ", vTDS[i].onclick = goToMinfoDetail.bind(null, result[i]));			
			} */
	    	
		} 
	});
	//console.log("getTypeO = ", getTypeO);
	
// 	console.log(normalTrSel1[0])
	
		// 글 상세보기 펑션

	
	/* var url = searchValue;
	parent.document.querySelector('#iframePlace').setAttribute("src", url); */

// 	console.log(objson);
// 	getXmlTitle(searchValue);
// 	getXmlAuthor(searchValue);
// 	getXmlPubdate(searchValue);
	
// 	console.log('paperTitleArr = ', paperTitleArr);
// 	console.log('paperAuthorArr = ', paperAuthorArr);
// 	console.log('paperPubdateArr = ', paperPubdateArr);
	
	
}



function goToMinfoDetail(param){
	
	console.log("arrItem", arrItem[param]);
	//debugger;
	//console.log("param : ", param);
	
	//var obj = JSON.parse(param);
	
	/* $.each(param.riss, function(index,value){
           
               console.log('value.riss : ', value.title);

	               

            }) */
    
            
   /*  reArrItem = [];
    for(var i=0; 0<arrItem[param].length; i++){
    	arrItem[param][i].push();
    }      */   
            
    console.log("arrItem[param][0] : ", arrItem[param][0]);
    console.log("arrItem[param][1] : ", arrItem[param][1]);
    console.log("arrItem[param][2] : ", arrItem[param][2]);
    console.log("arrItem[param][3] : ", arrItem[param][3]);
    console.log("arrItem[param][4] : ", arrItem[param][4]);
    console.log("arrItem[param][5] : ", arrItem[param][5]);
	
    var type=	arrItem[param][0];
    var title=	arrItem[param][1];
    var author=	arrItem[param][2];
    var pubdate=	arrItem[param][3];
    var publisher=	arrItem[param][4];
    var rUrl=	arrItem[param][5];
    
    
	//console.log("param.record.metadata.riss.title : " + param.text);
	param.method="get";
	//submit(param);
	//return param;
	var iframValue = "/board/mediInfo/detail.do?type="+type+"&title="+title+"&author="+author+"&pubdate="+pubdate+"&publisher="+publisher+"&rUrl="+rUrl;
	//var iframValue = "/board/mediInfo/detail.do?"+arrItem[param][1];
	//var iframValue = "/board/mediInfo/detail.do?"+arrItem[param][2];
	//var iframValue = "/board/mediInfo/detail.do?"+arrItem[param][3];
	//var iframValue = "/board/mediInfo/detail.do?"+arrItem[param][4];
	//var iframValue = "/board/mediInfo/detail.do?from=list&";
	console.log('iframValue = '+iframValue);
	var url = iframValue//+param;
	parent.document.querySelector('#iframePlace').setAttribute("src", url);
	
	
	
	
	
}

</script>


<!-- <script type="text/javascript" src="searchValue"></script>
<script>



function getXmlTitle(searchValue) {
	$.ajax({
		url: searchValue,
		method: 'GET',
		dataType: 'xml',
	    success: function(data){
	    	console.log(data);
	      	var titles = data.getElementsByTagName("riss.title");
	      	for(var i=0; i<titles.length; i++){
	    	  	var getPaperTitle = titles[i].innerHTML;
	    	  	console.log('getPaperTitle = ', getPaperTitle);
	    	  	paperTitleArr.push(getPaperTitle);
	      	}
		} 
	});
}

function getXmlAuthor(searchValue) {
	$.ajax({
		url: searchValue,
		method: 'GET',
		dataType: 'xml',
	    success: function(data){
	    	console.log(data);
	      	var authors = data.getElementsByTagName("riss.author");
	      	for(var i=0; i<authors.length; i++){
	    	  	var getPaperAuthor = authors[i].innerHTML;
	    	  	console.log('getPaperAuthor = ', getPaperAuthor);
	    	  	paperAuthorArr.push(getPaperAuthor);
	      	}
		} 
	});
}

function getXmlPubdate(searchValue) {
	$.ajax({
		url: searchValue,
		method: 'GET',
		dataType: 'xml',
	    success: function(data){
	    	console.log(data);
	      	var pubdates = data.getElementsByTagName("riss.pubdate");
	      	for(var i=0; i<pubdates.length; i++){
	    	  	var getPaperPubdate = pubdates[i].innerHTML;
	    	  	console.log('getPaperPubdate = ', getPaperPubdate);
	    	  	paperPubdateArr.push(getPaperPubdate);
	      	}
		} 
	});
}

</script>

<script>

	function drugListByKeyword(){
	 	var keyword = document.getElementById('keySearchValue').value;
	  	var searchType = document.getElementById('searchType').value;
	  	
	  	if(keyword == ''){
	  		swal ( "실패" ,  "검색어를 입력하세요." ,  "error" );
	  		return;
	  	}
	  	
	  	var d =""
		d += '<tr style="height:30vh"><td class="text-center" colspan="6">';
		d += '<div class="sk-three-bounce">';
		d += '<div class="sk-child sk-bounce1"></div>';
		d += '<div class="sk-child sk-bounce2"></div>';
		d += '<div class="sk-child sk-bounce3"></div>';
		d += '</div>';
		d += '</td></tr>';
		$("#journalTbody").html(d);
		  $.ajax({
			  url :  "http://www.riss.kr/openApi?key=70aaa00tte60abr00aaa00ro00ta870a&version=1.0&type="+criteria+"&keyword="+keySearchValue,
			  type : "post",
			  data : {"keyword": keyword,"searchType":"na"},
			  success : function(data){
				  var s = '';
				  $("#journalTbody").html(s);
				  if(data < 1){
					  s = `<tr><td class="text-center" colspan="6"><strong>해당 내용이 없습니다.</strong></td></tr>`;
					  $("#journalTbody").html(s);
					  return;
				  }else{
				 	
					$.each(data, function(index,item){
						s += '<tr class="normalTrSel1" onclick="">';
						s += '<td class="normalTd" style="text-align:center;">'+item.drugNo+'</td>'
						s += '<td class="normalTd">'+item.drugName+'</td>'
						s += '<td class="normalTd">'+item.drugMaker+'</td>'
						s += '<td class="normalTd"style="text-align:center;">'+item.drugPnum+'</td>'
						s += '</tr>';
						
					})
					$("#journalTbody").html(s);
				  }
			  },
			  error : function (jqXHR, textStatus, errorThrown){
				alert("에러코드 : "+textStatus);  
			  }
		  })
	};
</script> -->



<!-- <script>
	function goToNoticeDetail(param){
		var iframValue = "/board/notice/detail.do?from=list&noticeNo=";
		var url = iframValue+param;
		parent.document.querySelector('iframe[name="ifr"]').setAttribute("src", url);
	}
</script> -->




<script> /**글쓰기, 글 상세보기 펑션*/
/* 	function noticeRegistForm() {
	   
	   var popupWidth = 600;
	   var popupHeight = 800;
	
	   var popupX = (document.body.offsetWidth / 2) - (300 / 2);
	   // 만들 팝업창 좌우 크기의 1/2 만큼 보정값으로 빼주었음
	
	   var popupY= (window.screen.height / 2) - (800 / 2);
	   // 만들 팝업창 상하 크기의 1/2 만큼 보정값으로 빼주었음
	   
	   
	   window.open('registForm','registForm','height=630, width=800, left='+ popupX + ', top='+ popupY);
	} */

	// 글쓰기 펑션
	function minfoRegistForm(){
		var iframValue = "/board/mediInfo/registForm";
		var url = iframValue;
		parent.document.querySelector('#iframePlace').setAttribute("src", url);
	}
	

</script>



<script>/** 오늘날짜일 경우, 날짜 hidden처리 펑션*/



var fmtDate = document.querySelector("#fmtDate");
var fmtClock = document.querySelector("#fmtClock");
var normalTr = document.querySelectorAll(".normalTr");


//console.log("fmtDate.innerText : ",fmtDate.innerText);
//console.log("fmtDate.innerText type : ",typeof fmtDate.innerText);

//console.log("fmtClock : ",fmtClock);
//console.log("fmtClock type : ",typeof fmtClock);

//console.log("normalTr[0].cells[4].children[0].innerText", normalTr[0].cells[4].children[0].innerText);
//console.log("normalTr[0].cells[4].children[1].innerText", normalTr[0].cells[4].children[1].innerText);


function leftPad(value) {
    if (value >= 10) {
        return value;
    }

    return `0${value}`;
} 

function toStringByFormatting(source, delimiter = '-') {
    const year = source.getFullYear(); 
    const month = leftPad(source.getMonth() + 1);
    const day = leftPad(source.getDate());

    return [year, month, day].join(delimiter);
}

//console.log(toStringByFormatting(new Date));
//console.log(typeof (toStringByFormatting(new Date)));


//console.log("normalTr", normalTr);
//console.log("normalTr.length", normalTr.length);
//console.log("normalTr[0]", normalTr[0]);


// for(var i=0; i<normalTr.length; i++){
// 	if(normalTr[i].cells[4].children[0].innerText == toStringByFormatting(new Date)){
		
// 		normalTr[i].cells[4].children[0].style.display = "none";
// 		normalTr[i].cells[4].children[1].style.display = "";
		
// 	} else if (normalTr[i].cells[4].children[0].innerText != toStringByFormatting(new Date)){
		
// 		normalTr[i].cells[4].children[0].style.display = "";
// 		normalTr[i].cells[4].children[1].style.display = "none";
// 	}
// }

//console.log("fmtDate.style.display : ", fmtDate.style.display);
//console.log("fmtClock.style.display : ", fmtClock.style.display);

</script>

<script>/**체크박스 전체선택 및 해제 펑션*/

//체크박스 전체 선택
	// 모두 => 동기화
	function allCheckFunc( obj ) {
	    $("[name=checkOne]").prop("checked", $(obj).prop("checked") );
	}
	
	// 체크박스 체크시 전체선택 체크 여부 
	function oneCheckFunc( obj )
	{
	    var allObj = $("[name=checkAll]");
	    var objName = $(obj).attr("name");
	
	    if( $(obj).prop("checked") )
	    {
	        checkBoxLength = $("[name="+ objName +"]").length;
	        checkedLength = $("[name="+ objName +"]:checked").length;
	        
	        // console.log("checkBoxLength : " + checkBoxLength + ", checkedLength : " + checkedLength);
	        // 확인용
	
	        if( checkBoxLength == checkedLength ) {
	            allObj.prop("checked", true);
	        } else {
	            allObj.prop("checked", false);
	        }
	    }
	    else
	    {
	        allObj.prop("checked", false);
	    }
	}
	
	$(function(){
	    $("[name=checkAll]").change(function(){
	        allCheckFunc( this );
	    });
	    
	    $("[name=checkOne]").change(function(){
	        oneCheckFunc($(this));
	    });
	});
</script>


<script>
function changeIframeUrl1() {
	
	var iframValue = "/board/notice/list";
	var url = iframValue;
	
	/* return url; */
	parent.document.querySelector('#iframePlace').setAttribute("src", url);
	
<%-- 	$.ajax({
		url:"<%=request.getContextPath()%>/board/notice/list",
		type:"get",
		data: {document.getElementById("iframePlace").src: <%=request.getContextPath()%>/board/notice/list},
		dataType:"json",
		success:console.log("pass") ,
	}); --%>
	
	
	
	<%-- document.getElementById("iframePlace").src= "<%=request.getContextPath()%>/board/notice/list";
	console.log("changeIframeUrl1's URL = ", iframePlaceSrc); --%>
	
/* 	sideButton1.classList.remove("anotherPlace");
	sideButton1.classList.add("thisPlace");
	sideButton2.classList.remove("thisPlace");
	sideButton2.classList.add("anotherPlace");
	sideButton3.classList.remove("thisPlace");
	sideButton3.classList.add("anotherPlace"); */
	
	

}
function changeIframeUrl2() {
	
	
	var iframValue = "/board/mediInfo/list";
	var url = iframValue;
	
	/* return url; */
	parent.document.querySelector('#iframePlace').setAttribute("src", url);
	
/* 	sideButton1.classList.remove("anotherPlace");
	sideButton1.classList.add("thisPlace");
	sideButton2.classList.remove("thisPlace");
	sideButton2.classList.add("anotherPlace");
	sideButton3.classList.remove("thisPlace");
	sideButton3.classList.add("anotherPlace"); */
	
	
}
function changeIframeUrl3() {
	document.getElementById("iframePlace").src= "<%=request.getContextPath()%>/board/seminar/list";
	console.log("changeIframeUrl3's URL = ", iframePlaceSrc);
	
	sideButton3.classList.remove("anotherPlace");
	sideButton3.classList.add("thisPlace");
	sideButton1.classList.remove("thisPlace");
	sideButton1.classList.add("anotherPlace");
	sideButton2.classList.remove("thisPlace");
	sideButton2.classList.add("anotherPlace");
	 
}
</script>

<script>

function searchKeywordEnter(){
	if(window.event.keyCode == 13){
		searchKeyword();
	}
	
}
</script>

<script>
// var iframePlaceSrc = document.getElementById("iframePlace").src;
// var sideButton1 = document.getElementById("sideButton1");
// var sideButton2 = document.getElementById("sideButton2");
// var sideButton3 = document.getElementById("sideButton3");

// console.log(iframePlaceSrc);
<%-- console.log("<%=request.getContextPath()%>/board/mediInfo/list"); --%>




<%-- if (iframePlaceSrc == ("<%=request.getContextPath()%>/board/mediInfo/list")){ --%>
	
// 	console.log("ww");
	
// 	sideButton2.classList.remove("anotherPlace");
// 	sideButton2.classList.add("thisPlace");
// 	sideButton1.classList.remove("thisPlace");
// 	sideButton1.classList.add("anotherPlace");
	
// }
	
</script>

