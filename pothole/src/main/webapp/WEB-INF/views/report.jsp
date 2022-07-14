<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f7cdc7fef485ea7e296c324785ec817c"></script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="../js/address.js" defer></script>
<script type="text/javascript" src="../js/report.js" defer></script>
<link rel="stylesheet" href="/css/report.css" />
</head>
<body>
	<%@ include file="./include/header.jsp"%>

	<section class="reportform container pt-5 ">
		<form action="/reportProc" method="post">
			<h1>포트홀 발생 신고</h1>
			<dl class="privacyTbl">
				<dt>
					<strong>[신고분야]</strong>
				</dt>
				<dd>
					<ul>
						<li><strong class="tit">도로, 시설물 파손및 고장</strong> <span
							class="desc">도로, 인도, 가로등, 신호등, 볼라드, 공원산책로, 건축물, 교량, 기타 시설물</span></li>
						<li><strong class="tit">건설, (해체)공사장 위험</strong> <span
							class="desc">안전모, 안전화, 안전띠(로프) 미착용, 안전관리자 미지정 : 고용노동부 <br>
								건설현장 안전시설 파손 : 지자체
						</span></li>
						<li><strong class="tit">지하수 미등록 시설·방치공</strong> <span
							class="desc">관정개발 실패(수량부족, 수질불량·오염 등)<br>사용 중지된 관정
								방치로 인한 오염
						</span></li>
						<li><strong class="tit">대기오염(미세먼지 불법배출 포함)</strong> <span
							class="desc">자동차 매연 과다배출, 쓰레기(영농폐기물 포함) 불법소각, 공장굴뚝 매연배출,
								기타 미세먼지 불법배출, 공사장 먼지·악취, 기타 대기환경 오염 행위(미세먼지 포함) 등</span></li>
						<li><strong class="tit">수질오염</strong> <span class="desc">오·폐수·유독물
								방류, 하천·바다 오염, 화학물질·기름유출 등</span></li>
						<li><strong class="tit">교통위반</strong> <span class="desc">과속운전,
								불법 차선변경, 불법유턴 등</span></li>
						<li><strong class="tit">기타 안전·환경오염</strong> <span
							class="desc">기타 안전·환경오염</span></li>
					</ul>
				</dd>
			</dl>

			<div class="table_bbs singo tb_sty03">
				<!-- shin 클래스 tb_sty03 추가 -->
				<table width="100%">
					<tbody>
						<tr>

							<th scope="row">안전분야 신고유형 <i class="fa fa-check ico_check"><span>*</span></i></th>


							<td>
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
							</td>
						</tr>
						<tr>
							<th scope="row">사진/동영상</th>
							<td>
								<article class="article">
									<!-- 사진업로드 -->

									<label for="file">파일추가 <input id="file" type="file"
										name="file"
										style="opacity: 0; filter: alpha(opacity : 0); display: none;"
										title="첨부파일"></label> <span class="txt_comment"><strong
										class="star">*</strong> 50MB 내에서 사진, 문서 파일 1~4개, 120MB 내에서 동영상
										파일 1~4개 첨부 가능합니다.</span>
								</article>
								<article id="filename"></article>
								<div id="progress">
									<div class="bar" style="width: 0%; height: 10px;"></div>
								</div>
							</td>
						</tr>
						<tr>
							<th scope="row"><span>신고발생지역</span><i
								class="fa fa-check ico_check"><span>*</span></i></th>
							<td>
								<article class="article">
									<!-- 신고발생지역 -->
									<div class="input-box">
										<input type="hidden" id="sample6_postcode" placeholder="우편번호">
										<input type="button" onclick="sample6_execDaumPostcode()"
											value="우편번호 찾기" class="find_address"> <input
											type="text" id="sample6_address" placeholder="주소"> <input
											type="text" id="sample6_detailAddress" placeholder="상세주소">
										<input type="text" id="sample6_extraAddress"
											placeholder="참고항목">


										<div id="map" style="width: 100%; height: 350px;"></div>
										<div id="clickLatlng"></div>

									</div>
								</article>

							</td>
						</tr>
						<tr>

							<!-- 제목 -->
							<th scope="row"><label for="title">제목</label><i
								class="fa fa-check ico_check"><span>*</span></i></th>
							<td><input type="text" id="title" name="title" title="제목"
								value="" class="inputWmax" maxlength="240"
								placeholder="최소2자, 최대 240자 작성 가능"></td>



						</tr>
						<tr>
							<th scope="row"><label for="content">신고내용</label><i
								class="fa fa-check ico_check"><span>*</span></i></th>
							<td><textarea type="text" id="content" name="content"
									title="신고내용" class="inputWmax" maxlength="1600"
									placeholder="최소5자, 최대 1600자 작성 가능"></textarea></td>
						</tr>
						<tr>

							<th scope="row"><label for="C_PHONE2">휴대전화</label><i
								class="fa fa-check ico_check"><span>*</span></i></th>
							<td>
								<!-- 휴대전화 -->
								<div class="input-box">
									<select name="phone" id="phone">
										<option value="">선택</option>
										<option value="010">010</option>
									</select> - <input type="text" name="phone2" id="phone2" size="4"
										onkeypress="onlyNumber();" />- <input type="text"
										name="phone3" id="phone3" size="4" onkeypress="onlyNumber();" />
								</div>
							</td>
						</tr>
						<tr>
							<th scope="row">신고 내용 공유</th>
							<td>
								<article class="inputWmd dsp_inblck">
									<!-- 공유여부 -->
									<div class="input-box">
										<input type="radio" name="isshare" value="True"
											checked="checked">동의 <input type="radio"
											name="isshare" value="False">비동의
									</div>
								</article> <!-- 내용보기 가리기 -->

							</td>
						</tr>
					</tbody>
				</table>
			</div>

			<div class="table_bbs singo tb_sty03">
				<!-- shin 클래스 tb_sty03 추가 -->
				<table width="100%">
					<tbody>
						<tr>
							<th scope="row"><label for="name">이름</label></th>
							<td><input type="text" id="name" name="name" title="이름"
								class=""></td>
						</tr>
						<tr>
							<th scope="row"><label>이메일</label></th>
							<td>
								<!-- 이메일 -->
								<div class="input-box">
									<input type="text" name="email1" id="email1" placeholder="이메일" />@
									<select name="email2" id="email2">
										<option value="@naver.com">naver.com</option>
										<option value="@google.com">google.com</option>
										<option value="@daum.net">daum.net</option>
									</select>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="input-box">
				<input type="hidden" name="latitude" id="latitude" /> <input
					type="hidden" name="longitude" id="longitude" />
			</div>

			<div class="send-box">
				<button type="button" value="제출" id="btnReport">제출</button>
			</div>
		</form>
	</section>



</body>
<script>
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	mapOption = {
		center : new kakao.maps.LatLng(37.45142633579384, 126.70485787498721), // 지도의 중심좌표
		level : 3
	// 지도 확대레벨
	};

	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도 생성

	// 지도 클릭위치 마커
	var marker = new kakao.maps.Marker({
		// 지도 중심좌표에 마커 생성 
		position : map.getCenter()
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