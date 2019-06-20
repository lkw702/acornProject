<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
	<head>
		<meta charset="utf-8">
		<title>Welcome</title>
	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
	<script type="text/javascript">
		$(function(){
			var interval=4000;
			$(".sildeshow").each(function(){
				var container=$(this);
				
				function switching(){
					var imgs=container.find('img');
	                   //앞에서부터 img요소 2개를 얻는다.
                    var f = imgs.eq(0);// 선두의 img요소
                    var s = imgs.eq(1);// 2번째의 img요소
                
                    // 처음의 img요소를 페이드아웃시켜, 가장 뒤로 이동
                    f.fadeOut(1000).appendTo(container);
                    // 2번째의 img요소를 페이드인 시킨다.
                    s.fadeIn();
				}
                // 3초 마다 switchImg를 실행
                setInterval(switching, interval);
			});
			
			$(".kiwan").click(function(){
				location.href="main.do";
			});
		});
	</script>
	<style type="text/css">
		div#innerMain{
			width: 98%;
			height: 98%;
			position: absolute;
		}
		img.alt{
			display: none;
		}
		img{
			width: 98%;
			position: absolute;
			height: 98%;
		}
		div.kiwan{
			position: absolute;
			left: 35%;
			top: 40%;
			font-size: 30pt;
			text-shadow : 15px 15px 20px pink;
			cursor: pointer;
		}
	</style>
	</head> 
	<body>
	<div id="innerMain" class="sildeshow">
		<img src="image/food01.PNG">
		<img src="image/food02.PNG" class="alt">
		<img src="image/food03.PNG" class="alt">
	</div>
	<div class="kiwan">KIWAN'S PROJECT</div>
	</body>
</html>









