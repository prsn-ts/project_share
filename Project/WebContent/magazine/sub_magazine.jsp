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
		<h1>매거진</h1> 
		<p>유용한 정보들이 한가득!!</p> 
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
	
	<!-- content part -->
	<div class="container">
		<div class="text-center">
			<img class="img-fluid" src="../images/milk1.png" >
			<h5 class="card-title">우유의 효과1</h5>
			<p class="card-text">키가 쑥쑥 자란다!!!</p>
		</div>
		
		<div class="text-center">
			<img class="img-fluid" src="../images/milk2.png">
			<h5 class="card-title">우유의 효과2</h5>
			<p class="card-text">골다골증 예방한다!!!!!</p>
		</div>
	</div>
	<!-- //content part -->
	
	<!-- 푸터 부분 -->
	<footer>푸터 부분</footer>
	<!-- //푸터 부분 -->
</body>
</html>



