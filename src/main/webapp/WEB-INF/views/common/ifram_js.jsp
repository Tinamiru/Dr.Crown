<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<script>

function goInsidePage(url,mCode){
	
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
</script>





