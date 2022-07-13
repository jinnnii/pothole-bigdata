<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f7cdc7fef485ea7e296c324785ec817c"></script>
<script type="text/javascript" src="../js/address.js"></script>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="../js/report.js"></script>
</head>
<body>

	<nav>
	    <div class="logo"></div>
	</nav>
	<section class="reportform">
		<form action="/reportProc" method="post">
			<h3 onclick="location.href='/index'">pothole</h3>
		
			<!-- 신고유형 -->
			<div class="input-boxes">
				<select name="reportType" id="reportType">
					<option value="">신고유형</option>
					<option value="BREAKDOWN">도로, 시설물 파손</option>
					<option value="CONSTRUCTION">건설, 공사장 위험물</option>
					<option value="GROUNDWATER">지하수 미등록 시설</option>
					<option value="POLLUTION">환경오염</option>
					<option value="TRAFFIC">교통위반</option>
				</select>
			</div>
	
			<!-- 사진업로드 -->
			<div class="input-box">
				<input type="file" name="file" id="file" placeholder="사진, 동영상" />
			</div>
			
			<!-- 신고발생지역 -->
			<div class="input-box">
			
			
				<input type="text" id="sample6_postcode" placeholder="우편번호">
				<input type="button" onclick="sample6_execDaumPostcode()"
					value="우편번호 찾기">
			
				<input type="text" id="sample6_address" placeholder="주소"> <input
					type="text" id="sample6_detailAddress" placeholder="상세주소">
				<input type="text" id="sample6_extraAddress" placeholder="참고항목">
				
				
				<div id="map" style="width:500px;height:350px;"></div>
				<div id="clickLatlng"></div>
				<!-- 주소 검색을해서 그 주소를 위도경도로 변환하여 지도 중심표시좌표로 설정?
					 지도에 선택된 위도경도를 담아서 보내는 코드 작성필요 -->
			</div>
			
			<!-- 제목 -->
			<div class="input-box">
				<input type="text" name="title" id="title" placeholder="제목" />
			</div>
			
			<!-- 신고내용 -->
			<div class="input-box">
				<input type="text" name="content" id="content" placeholder="신고내용" />
			</div>
			
			<!-- 휴대전화 -->
			<div class="input-box">
				<select name="phone" id="phone">
					<option value="">선택</option>
					<option value="010">010</option>
				</select>-
				<input type="text" name="phone2" id="phone2" size="4" onkeypress="onlyNumber();" />-
				<input type="text" name="phone3" id="phone3" size="4" onkeypress="onlyNumber();" />
			</div>
			
			<div class="input-box">
				<input type="hidden" name="latitude" id="latitude"/>
				<input type="hidden" name="longitude" id="longitude"/>
			</div>
			
			<!-- 공유여부 -->
			<div class="input-box">
				<input type="radio" name="isshare" value="True" checked="checked">동의
				<input type="radio" name="isshare" value="False">비동의
			</div>
			
			<!-- 이름 -->
			<div class="input-box">
				<input type="text" name="name" id="name" placeholder="이름" />
			</div>
			
			<!-- 이메일 -->
			<div class="input-box">
				<input type="text" name="email1" id="email1" placeholder="이메일" />@
				<select name="email2" id="email2">
					<option value="@naver.com">naver.com</option>
					<option value="@google.com">google.com</option>
					<option value="@daum.net">daum.net</option>
				</select>
			</div>
			
			<button type="button" value="제출" id="btnReport">제출</button>
			<button type="reset">초기화</button>
		</form>
	</section>



</body>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(37.45142633579384, 126.70485787498721), // 지도의 중심좌표
        level: 3 // 지도 확대레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도 생성

// 지도 클릭위치 마커
var marker = new kakao.maps.Marker({ 
    // 지도 중심좌표에 마커 생성 
    position: map.getCenter() 
}); 
// 지도에 마커를 표시합니다
marker.setMap(map);

// 지도에 클릭 이벤트를 등록합니다
// 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
kakao.maps.event.addListener(map, 'click', function(mouseEvent) {        
    
    // 클릭한 위도, 경도 정보 가져오기
    var latlng = mouseEvent.latLng; 
    
    // 마커 위치 클릭한 위치로 이동
    marker.setPosition(latlng);
    
    $("#latitude").val(latlng.getLat())
    $("#longitude").val(latlng.getLng())
    // 클릭한 위도 값 : latlng.getLat()
    // 클릭한 경도 값 : latlng.getLng()
    
    //var message = '클릭한 위치의 위도는 ' + latlng.getLat() + ' 이고, ';
    //message += '경도는 ' + latlng.getLng() + ' 입니다';
    
    //var resultDiv = document.getElementById('clickLatlng'); 
    //resultDiv.innerHTML = message;
    
});

//주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

/*
// 주소로 좌표를 검색합니다
geocoder.addressSearch('sample6_address', function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">우리회사</div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    }
}
*/
</script>
</html>