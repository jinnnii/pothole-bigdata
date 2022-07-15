<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Document</title>
<link rel="stylesheet" href="/css/root.css" />
<link rel="stylesheet" href="/css/index.css" />

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<link rel="stylesheet"
	href="https://unicons.iconscout.com/release/v4.0.0/css/line.css" />
<script src="https://unpkg.com/typeit@8.3.3/dist/index.umd.js"></script>
<script src="/js/acvity.js" defer></script>
</head>

<body>
	<!-- <header>
            <ul>
                <li><a href="#home" class="active">Home</a></li>
                <li><a href="#about">About</a></li>
                <li><a href="#services">Services</a></li>
                <li><a href="#contact">Contact</a></li>
            </ul>
        </header> -->

	<nav>
		<a href="#home" class="active">Home</a> <a href="#about">About</a> <a
			href="#services">Services</a> <a href="#contact">Contact</a>
	</nav>

	<section id="home">
		<video muted autoplay loop>
			<source src="image/video.mp4" type="video/mp4" />
		</video>
		<div class="container reveal">
			<h1 class="title">전국이 안전도로가 되는 그날까지</h1>
			<button>
				<a href="/maps"><i class="uil uil-arrow-right"></i></a>
			</button>
		</div>
	</section>
	<div class="overray"></div>
	<section id="about">
		<div class="container reveal">
			<h2>About</h2>
			<div class="text-container">
				<div class="text-box">
					<h3>포트홀이란 무엇인가요?</h3>
					<p>포트홀이란 아스팔트로된 도로 표면 일부가 부서지거나 내려앉으면서 도로 위에 냄비 모양의 움푹파인 구멍을
						말합니다.</p>

				</div>
			</div>
		</div>
	</section>

	<section id="services">
		<div class="container reveal">
			<h2>Services</h2>
			<div class="text-container">
				<div class="text-box">
					<h3>포트홀 현황 및 예측</h3>
					<p>날씨와 교통량 증가량, 상습 침수구역, 인구밀도, 도로사고 데이터 정보를 분석하여 지역별 포트홀 발생 확률 모델을 구축하였습니다.</p>
					<a href="/maps" class="gotofast">바로가기</a>
				</div>

				<div class="text-box">
					<h3>포트홀 신고</h3>
					<p>사용자는 다양한 안전사고 신고를 접수할 수 있습니다. 신고지점과 사진을 함께 접수하며, 이메일로 현황을 받아볼 수 있습니다.</p>
					<a href="/report" class="gotofast">바로가기</a>
				</div>

				<div class="text-box">
					<h3>재난안전 보고</h3>
					<p>전국의 재난안전 현황을 알 수 있습니다. 매일 새로운 정보를 업데이트하며 주요 키워드를 확인합니다.</p>
					<a href="/news/list" class="gotofast">바로가기</a>
				</div>
			</div>
		</div>
	</section>

	<section id="contact">
		<div class="container reveal">
			<h2>Contact</h2>
			<div class="text-container">
				<div class="text-box">
					<h3>Section Text</h3>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
				</div>
				<div class="text-box">
					<h3>Section Text</h3>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
				</div>
			</div>
		</div>
	</section>

	<div class="progress-wrap">
		<svg class="progress-circle svg-content" width="100%" height="100%"
			viewBox="-1 -1 102 102">
                <path d="M50,1 a49,49 0 0,1 0,98 a49,49 0 0,1 0,-98" />
            </svg>
	</div>
</body>
</html>
