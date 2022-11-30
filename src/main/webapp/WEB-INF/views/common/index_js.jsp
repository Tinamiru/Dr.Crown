<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js" ></script>

<script type="text/x-handlebars-template"  id="subMenu-list-template">
	{{#each .}}
		<div style="float:left">
			<a style="float:left;" href="javascript:goInsidePage('<%=request.getContextPath()%>{{murl}}','{{mcode}}');" class="ai-icon nav-link nav-item subMenu">
				<p class="m-0"><i class="{{micon}}"></i>ㅤ{{mname}}</p>
			</a>
		</div>
	{{/each}}
</script>

<script>
function subMenu_go(mCode){
	preloaderCustomRun()
// 	alert(mCode);	
	if(mCode!="M000000"){
		$.ajax({
			url:"<%=request.getContextPath()%>/subMenu.do?mCode="+mCode,
			method:"get",			
			success:function(data){
				printData(data,$('.subMenuList'),$('#subMenu-list-template'));
			},
			error:function(error){
				AjaxErrorSecurityRedirectHandler(error.status);	
			}
		});
	}else{
		$('.subMenuList').html("");	
	}
}


function printData(dataArr,target,templateObject){
	
	var template=Handlebars.compile(templateObject.html());
	
	var html = template(dataArr);
	target.html(html);
}

function goPage(url,mCode){
	preloaderCustomRun()	
	//alert(url);
	$('iframe[name="ifr"]').attr("src",url);
	
	// HTML5 지원브라우저에서 사용 가능
	if (typeof(history.pushState) == 'function') {
	    //현재 주소를 가져온다.
	    var renewURL = location.href;
	    //현재 주소 중 .do 뒤 부분이 있다면 날려버린다.
	    renewURL = renewURL.substring(0, renewURL);
	    
	    if (mCode != 'M000000') {
	        renewURL += "?mCode="+mCode;
	    }
	    //페이지를 리로드하지 않고 페이지 주소만 변경할 때 사용
	    history.pushState(mCode, null, renewURL);
	 
	} else {
	    location.hash = "#"+mCode;
	}
}

function goInsidePage(url,mCode){
	preloaderCustomRun()
	parent.document.querySelector('iframe[name="ifr"]').setAttribute('src', url);
	
	// HTML5 지원브라우저에서 사용 가능
	if (typeof(window.parent.history.pushState) == 'function') {
	    //현재 주소를 가져온다.
	    var renewURL = window.parent.location.href;
	    //현재 주소 중 .do 뒤 부분이 있다면 날려버린다.
	    renewURL = renewURL.substring(0, renewURL);
	    
	    if (mCode != 'M000000') {
	        renewURL += "?mCode="+mCode;
	    }
	    //페이지를 리로드하지 않고 페이지 주소만 변경할 때 사용
	    window.parent.history.pushState(mCode, null, renewURL);
	 
	} else {
		window.parent.location.hash = "#"+mCode;
	}
}


goPage('<%=request.getContextPath()%>${menu.murl}','${menu.mcode}');
subMenu_go('${menu.mcode}'.substring(0,3)+"0000");
</script>





