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
	       		 	<li class="nav-item"><a href="${pageContext.request.contextPath}/test.jsp" class="navbar-brand nav-link font-weight-bolder">나만의 조리법</a></li>
	       		 	<li class="nav-item"><a href="#" class="navbar-brand nav-link font-weight-bolder">매거진</a></li> 
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
		<div class="card-deck mb-4">
		  <div class="card">
		    <img src="https://recipe1.ezmember.co.kr/cache/data/goods/19/05/19/1000001272/1000001272_list_069.jpg" class="card-img-top first_card" class="card-img-top" alt="...">
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
		<div class="card-deck">
		  <div class="card">
		    <img src="https://recipe1.ezmember.co.kr/cache/data/goods/19/05/19/1000001272/1000001272_list_069.jpg" class="card-img-top first_card" class="card-img-top" alt="...">
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