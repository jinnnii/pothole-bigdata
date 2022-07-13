<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp"%>
<link rel="stylesheet" href="/css/news.css" />
</head>
<body>
	<div class="container pt-5 table-responsive">
		<table class="table detail">
			<div class="news_header">
				<h1>재난안전뉴스룸</h1>
				<a href="/news/list?page=${page}" class="list">목록</a>
			</div>
			<thead class="thead-dark">
				<tr>
					<th scope="col">${news.title}</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>${news.regdate}</td>
				</tr>
				<tr>
					<td>${news.content }</td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>