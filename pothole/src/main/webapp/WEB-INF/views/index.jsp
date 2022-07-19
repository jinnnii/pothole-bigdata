<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./include/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/maps.css" />
</head>
<body>
	<nav class="tabs">
		<button onclick="click_btn('/maps/history')">현황</button>
		<button onclick="click_btn('/maps/predict')">예측</button>
		<button onclick="click_btn('/maps/trap')">관광</button>
		<button onclick="click_btn('/maps/report')">신고</button>
	</nav>
	<p class="middle">
		<iframe id="main_frame"
			src="https://public.tableau.com/shared/YJWK6G83T?:display_count=n&:origin=viz_share_link&:embed=yes&:showVizHome=no&:showAppBanner=false&:showAskData=false&:showShareOptions=false&:subscriptions=no&:tabs=no&:toolbar=no&:tooltip=no">
		</iframe>
	</p>


	<script defer>
	function click_btn(str){	
		$.ajax({
			type : "get",
			url : str,
			contentType : "application/json;charset=utf-8"
		}).done(function(res) {
			document.getElementById("main_frame").src = res;
		})
	}
	</script>
</body>
</html>