<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Home</title> 
<meta charset="utf-8"> 
<meta name="viewport" content="width=device-width, initial-scale=1"> 
<!-- CSS --> 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"> 
<!-- JS --> <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script> 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script> 
</head> 
<body> 
	<!-- header --> 
	<div class="jumbotron py-5 text-center mb-0"> 
		<h1>나만의 레시피</h1> 
		<p>나만의 레시피를 등록하고 공유 해봐요!</p> 
	</div> 
	<!-- Topbar -->
    <nav class="navbar navbar-expand navbar-light bg-white topbar mb-3 static-top shadow">
    	<div class="container">
	        <div class="collapse navbar-collapse" id="collapsibleNavbar"> 
	       	 	<ul class="navbar-nav"> 
	        		<li class="nav-item"><a href="#" class="navbar-brand nav-link font-weight-bolder">요리</a></li> 
	       		 	<li class="nav-item"><a href="#" class="navbar-brand nav-link font-weight-bolder">나만의 조리법</a></li>
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

	<!-- Page Content -->
	<div class="container">
	
	    <!-- Blog Entries Column -->
	    <h1 class="my-4">나만의 레시피</h1>
	
	    <!-- Blog Post -->
	    <div class="card mb-4">
	      <img class="card-img-top" src="img/testimg.jpg" alt="Card image cap">
	      <div class="card-body">
	        <h2 class="card-title">밥도둑 반찬 고추장 달걀조림 만들기<br>알토란 레시피</h2>
	        <p class="card-body h5">평소 간장을 베이스로 한 계란장조림을 만들어 먹는 편인데요. TV알토란에서 고추장을 베이스로 계란 장조림을 만들길래 저도 만들어 봤는데 우왕! 진짜 맛있어요. 뜨끈한 밥에 비벼 먹으니 밥도둑이 따로 없네요</p>
	      </div>
	    </div>
	 <div class="card mb-4">
	 	  <div class="row">
			      <div class="col-sm">
				      One of three columns
				  </div>
			  <div class="col-sm">
	  		      One of three columns
	 		  </div>
		  </div>
	 </div>
	 
	    <!-- Blog Post -->
	    <div class="card mb-4">
	        <div class="card-body">
	        	  <h2 class="card-title">재료
	        	      <small class="text-muted">Ingredients</small>
	        	  </h2>
	        	  <ul>
	        		  <li>달걀 : 10개</li>
	        		  <li>양파 : 1개</li>
	        		  <li>청양고추 : 3개</li>
	        		  <li>쪽파 또는 대파 : 약간</li>
	        		  <li>멸치육수 : 1.5컵</li>
	        	  </ul>
	        	  <a href="#" class="btn btn-primary">Read More &rarr;</a>
	        </div>
	        <div class="card-footer text-muted">
	            Posted on January 1, 2020 by
	            <a href="#">Start Bootstrap</a>
	        </div>
	    </div>
	
	    <div class="card" style="width: 18rem;">
	  <img src="..." class="card-img-top" alt="...">
	  <div class="card-body">
	      <h5 class="card-title">Card title</h5>
	      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
	      <a href="#" class="btn btn-primary">Go somewhere</a>
	  </div>
	 </div>
	
	    <!-- Pagination -->
	    <ul class="pagination justify-content-center mb-4">
	      <li class="page-item">
	        <a class="page-link" href="#">&larr; Older</a>
	      </li>
	      <li class="page-item disabled">
	        <a class="page-link" href="#">Newer &rarr;</a>
	      </li>
	    </ul>
	    
	</div>
	<!-- /.container -->

	<!-- footer --> 
	<div class="jumbotron text-center mt-5 mb-0"> 
		<h3 class="text-secondary">나만의 페이지</h3> 
		<p>Homepage is powered by 
			<span class="text-primary">3조</span> / Designed by 
			<span class="text-primary">3조</span>
		</p> 
	</div>
	<!-- footer end--> 
	
</body> 
</html>​