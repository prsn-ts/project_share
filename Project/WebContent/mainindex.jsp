<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- header --> 
	<div class="jumbotron py-5 text-center mb-0"> 
		<h1>오늘의 레시피</h1> 
		<p>오늘의 레시피는 과연?</p> 
	</div> 
	<!-- Topbar -->
    <nav class="navbar navbar-expand navbar-light bg-white topbar mb-3 static-top shadow">
    	<div class="container">
	        <div class="collapse navbar-collapse" id="collapsibleNavbar"> 
	       	 	<ul class="navbar-nav"> 
	        		<li class="nav-item"><a href="#" class="navbar-brand nav-link font-weight-bolder">요리</a></li> 
	       		 	<li class="nav-item"><a href="${pageContext.request.contextPath}/my_recipe/myrecipe.jsp" class="navbar-brand nav-link font-weight-bolder">나만의 조리법</a></li>
	       		 	<li class="nav-item"><a href="magazine.jsp" class="navbar-brand nav-link font-weight-bolder">매거진</a></li> 
	     	    </ul> 
	        </div>
	        <!-- Topbar Navbar -->
	        <ul class="navbar-nav ml-auto">
	            <!-- Nav Item - User Information -->
	            <li class="nav-item dropdown no-arrow">
	                <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	                  <span class="mr-2 d-none d-lg-inline text-gray-600 small">Valerie Luna</span>
	                  <img class="img-profile rounded-circle" src="https://source.unsplash.com/QAB-WJcbgJk/60x60">
	                </a>
	                <!-- Dropdown - User Information -->
	                <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
		                  <a class="dropdown-item" href="#">
		                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
		                    Profile
		                  </a>
		                  <a class="dropdown-item" href="#">
		                    <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
		                    Settings
		                  </a>
		                  <a class="dropdown-item" href="#">
		                    <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
		                    Activity Log
		                  </a>
	                  <div class="dropdown-divider"></div>
		                  <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
		                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
		                    Logout
		                  </a>
	               	</div>
	            </li>
	        </ul>
	    </div> 
    </nav>
        <!-- End of Topbar -->
	<div class="container">
		<div id="carouselExampleCaptions" class="carousel slide mb-4" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
				<li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
				<li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="https://recipe1.ezmember.co.kr/cache/data/goods/19/05/19/1000001272/1000001272_list_069.jpg" class="d-block w-100" style="height: 400px" alt="...">
					<div class="carousel-caption d-none d-md-block">
						<h5>First slide label</h5>
						<p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
					</div>
				</div>
				<div class="carousel-item">
					<img src="https://recipe1.ezmember.co.kr/cache/recipe/2020/06/15/9c9e2d09deeb39e5590f1f8f7ee9b3161.jpg" class="d-block w-100" style="height: 400px"  alt="...">
					<div class="carousel-caption d-none d-md-block">
						<h5>Second slide label</h5>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
					</div>
				</div>
				<div class="carousel-item">
					<img src="https://recipe1.ezmember.co.kr/cache/data/goods/19/05/19/1000001272/1000001272_list_069.jpg" class="d-block w-100" style="height: 400px" alt="...">
					<div class="carousel-caption d-none d-md-block">
						<h5>Third slide label</h5>
						<p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
					</div>
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true" style="width: 40px; height:40px;"></span>
				<span class="sr-only">Previous</span>
			</a>
			<a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true" style="width: 40px; height:40px;"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>
	<div class="container">
		<div class="card-deck mb-4 h-100">
			<div class="card">
				<img src="images/food1.png" class="card-img-top first_card" class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">한식</h5>
					<p class="card-text">비빔밥, 갈비, 불고기 등등 한국요리!</p>
					<p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
				</div>
			</div>
		    <div class="card">
				<img src="images/food2.png" class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">중식</h5>
					<p class="card-text">팔보채, 딤섬, 짬뽕 등등 중국요리!</p>
					<p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
				</div>
		    </div>
			<div class="card">
				<img src="images/food3.png" class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">일식</h5>
					<p class="card-text">초밥, 우동, 덴뿌라 등등 일본요리!</p>
					<p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
				</div>
			</div>
		</div>
		<div class="card-deck mb-4 h-100">
			<div class="card">
				<img src="images/food4.png" class="card-img-top first_card" class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">양식</h5>
					<p class="card-text">피자, 스테이크, 파스타 등등 양식요리!</p>
					<p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
				</div>
			</div>
		    <div class="card">
				<img src="images/food5.png" class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">채식</h5>
					<p class="card-text">육류를제외한 두부, 생서 등등 채식요리! </p>
					<p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
				</div>
		    </div>
			<div class="card">
				<img src="images/food6.png" class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">그 외...</h5>
					<p class="card-text">아랍, 베트남, 싱가폴 등등의 각국가의 요리 모음!</p>
					<p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
				</div>
			</div>
		</div>
	</div>
	<footer>
	<hr class="one"/>
		<div class="row">
		    <div class="col intro">
		    	<p class="f_link">
		    		<a href="#">회사소개</a>
		    		<span>|</span>
		    		<a href="#">광고문의</a>
		    		<span>|</span>
		    		<a href="#">개인정보처리방침</a>
		    		<span>|</span>
		    		<a href="#">이용약관</a>
		    		<span>|</span>
		    		<a href="#">고객센터</a>
		    	</p>
		    </div>
		    <div class="col">
		     <div class="banner_sns">
                    <a href="https://www.facebook.com/" target="_blank"><img src="https://recipe1.ezmember.co.kr/img/btm_sns_1.gif" alt="페이스북"></a>
                    <a href="https://www.instagram.com/" target="_blank"><img src="https://recipe1.ezmember.co.kr/img/btm_sns_2.gif" alt="인스타그램"></a>
                    <a href="https://www.youtube.com/" target="_blank"><img src="https://recipe1.ezmember.co.kr/img/btm_sns_3.gif" alt="유투브"></a>
                    <a href="https://blog.naver.com/" target="_blank"><img src="https://recipe1.ezmember.co.kr/img/btm_sns_4_1.gif" alt="네이버블로그"></a>
                    <a href="http://m.post.naver.com/" target="_blank"><img src="https://recipe1.ezmember.co.kr/img/btm_sns_5.gif" alt="네이버포스트"></a>
                    <a href="https://tv.kakao.com/" target="_blank"><img src="https://recipe1.ezmember.co.kr/img/btm_sns_6.gif" alt="카카오TV"></a>
                    <a href="https://story.kakao.com/" target="_blank"><img src="https://recipe1.ezmember.co.kr/img/btm_sns_7.gif" alt="카카오스토리"></a>
        </div>
		    </div>
		    <div class="col">
		      3 of 3
	    	</div>
  		</div>
  		
  		
	</footer>
</body>
</html>