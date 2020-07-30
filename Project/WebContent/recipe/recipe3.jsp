
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>jsp 게시판 웹사이트</title><!-- CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<!-- customize css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
<link href="${pageContext.request.contextPath}/css/stickyfooter.css" rel="stylesheet">
<!-- 글씨체 관련 -->
<link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
<!-- 아이콘 관련 -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome-4.7.0/css/font-awesome.min.css">
<!-- JS -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
	
	<%-- jsp:include(header) --%>
	<jsp:include page="../include/header.jsp">
		<jsp:param value="index" name="thisPage"/>
	</jsp:include>
	
	<%-- //본문 내용 --%>
		
	<div class="container">
		<div class="form-group" style="text-align: right; margin-top:30px;">
			<table class="table table-striped"
				style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th colspan="2"
							style="background-color: #eeeeee; text-align: center;">오늘의 추천 레시피 짜장 떡볶이! </th>
					</tr>
				</thead>
				<tbody>
				
					<tr>
						<td>작성자 : <b>관리자</b></td>
					</tr>
					<tr>
						<td style="text-align: center;"> 
						<img src="https://www.sporbiz.co.kr/news/photo/201912/398396_295490_3954.jpg"/>
						
						</td>
					</tr>
				</tbody>
			</table>
		</div>	
		</div>
		
	<footer class="footer">
	<div class="jumbotron text-center mb-0" style="background-color: #289f5d;"> 
	<h3 class="text-white">게시판</h3>
		<p>Homepage is powered by 
			<span class="text-white">3조</span> / Designed by 
			<span class="text-white">3조</span>
		</p> 
	</div>
	</footer>


</body>
</html>