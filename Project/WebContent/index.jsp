<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>	
<body>
	<div class="row">
		<div class="col">로고 이미지</div>
		<div class="col">검색창</div>
		<div class="col">로그인창</div>
	</div>
	<nav class="navbar navbar-expand-md bg-dark navbar-dark">
	  <a class="navbar-brand" href="#">오늘은 뭐먹지?</a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	  <div class="collapse navbar-collapse" id="collapsibleNavbar">
	    <ul class="navbar-nav">
	      <li class="nav-item">
	        <a class="nav-link" href="#">요리</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="#">나만의 조리법</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="#">매거진</a>
	      </li>    
	    </ul>
	  </div>  
	</nav>
	<div class="container">
		<div class="card-deck">
		  <div class="card">
		    <img src="https://recipe1.ezmember.co.kr/cache/data/goods/19/05/19/1000001272/1000001272_list_069.jpg" class="card-img-top first_card"" class="card-img-top" alt="...">
		    <div class="card-body">
		      <h5 class="card-title">자네 오늘은 쭈꾸미 볶음 어떤가?</h5>
		      <p class="card-text">쭈꾸미볶음 + 콜라 = 기적의 맛.</p>
		      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
		    </div>
		  </div>
		  <div class="card">
		    <img src="https://recipe1.ezmember.co.kr/cache/recipe/2020/06/15/9c9e2d09deeb39e5590f1f8f7ee9b3161.jpg" class="card-img-top" alt="...">
		    <div class="card-body">
		      <h5 class="card-title">여름에 시원한 빙수 요리 보실렵니까?</h5>
		      <p class="card-text">팥빙수가 짱이제</p>
		      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
		    </div>
		  </div>
		  <div class="card">
		    <img src="https://recipe1.ezmember.co.kr/cache/recipe/2020/06/29/70e9d1b6edcf0c81e377b6f01bfee06f1.jpg" class="card-img-top" alt="...">
		    <div class="card-body">
		      <h5 class="card-title">다시마 칼국수</h5>
		      <p class="card-text">냠냠?</p>
		      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
		    </div>
		  </div>
		</div>
	</div>
	<footer>푸터 내용</footer>
</body>
</html>