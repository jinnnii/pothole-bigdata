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
		<table class="table table-hover">
			<h1>재난안전뉴스룸</h1>
			<p>total : ${count }</p>
			<thead class="thead-dark">
				<tr>
					<th scope="col">번호</th>
					<th scope="col">제목</th>
					<th scope="col">등록일</th>
				</tr>
			</thead>
			<tbody>

				<c:forEach var="news" items="${newsList}">
					<%-- <fmt:formatDate value="${news.regdate}" pattern="yyyy.MM.dd"
						var="reg" /> --%>
					<tr>
						<th scope="row">${news.id}</th>

						<td>
							<button type="button" onclick="location.href='/news/${news.id}?page=${curPage}'">${news.title }</button>
						</td>

						<td>${news.regdate }</td>
					</tr>

				</c:forEach>

			</tbody>
		</table>

		<ul class="paging pagination">
			<c:if test="${prev=true}">
				<li class="prev page-item"><a class="page-link"
					href="home?page=${startPage-pageSize}&field=${field}&word=${word}"><</a></li>
			</c:if>

			<c:forEach begin="${startPage}" end="${endPage-1}" var="i">
				<li class="page-item"><a href="list?page=${i}" class="page-link">${i+1}</a></li>
			</c:forEach>

			<c:if test="${next==true}">
				<li class="next page-item"><a class="page-link"
					href="list?page=${endPage+1}&field=${field}&word=${word}">></a></li>
			</c:if>

		</ul>
	</div>
</body>


</html>