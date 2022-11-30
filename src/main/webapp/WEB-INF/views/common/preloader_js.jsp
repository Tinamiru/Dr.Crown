<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script>
	const preloaderCustom = parent.document.querySelector('#preloader-custom'); 
	
	function preloaderCustomRun(){
		preloaderCustom.style.display = "flex";
	}
	document.addEventListener("DOMContentLoaded", function(){
		preloaderCustom.style.display = "none";
	});
	
// 	window.onload= preloaderNone();
// 	function preloaderNone(){
// 		preloaderCustom.style.display = "none";
// 	}
</script>





