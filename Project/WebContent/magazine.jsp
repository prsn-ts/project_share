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
	<div class="jumbotron py-0 text-center mb-0">
	<div class="row">
	<a href="http://www.naver.com"  >
	<style>
	 img.relative { 
        position: relative;
        left: 700px;
        top: 80px;
      }
      </style>
	 <img src="images/seoul.png" class="relative" style="width:100px; height:100px;">
	</div>
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
	
	
	
	
	<div style="background-color: #CEECF5">
	<div class="container">
		<div style="background-color: white">
	<div class="row row-cols-1 row-cols-md-3">
	<div class="card-deck">
	

	<div class="col mb-4">
		  <div class="card h-100">
		    <a href="mag1.jsp">
		    <img src="images/magazine1.png" 
		    class="card-img-top" alt="...">
		    <div class="card-body" >
		      <h5 class="card-title">우유가 성장기 아이들에게 좋다?</h5>
		      <p class="card-text">맛도좋고 몸에좋은 우유!</p>
		      </a>
		    </div>
		  </div>
		  </div>
		  </div>
		  
		  <div class="col mb-4">
		  <div class="card h-100" >
		  <a href="http://www.naver.com">
		    <img src="images/magazine2.png" 
		    class="card-img-top" alt="...">
		    <div class="card-body">
		      <h5 class="card-title">녹차의 숨겨진 효능</h5>
		      <p class="card-text">피부관리에 짱짱하다</p>
		       </a>
		    </div>
		  </div>
		  </div>
		  
		  <div class="col mb-4">
		  <div class="card h-100">
		   <a href="http://www.naver.com">
		    <img src="images/magazine3.png" 
		    class="card-img-top" alt="...">
		    <div class="card-body">
		      <h5 class="card-title">심현관 질환에 좋은두부</h5>
		      <p class="card-text">그 외의 숨겨진 효능들</p>
		      </a>
		    </div>
		  </div>
		  </div>
		  
		  <div class="col mb-4">
		  <div class="card h-100">
		  <a href="http://www.naver.com">
		    <img src="images/magazine4.png" 
		    class="card-img-top" alt="...">
		    <div class="card-body">
		      <h5 class="card-title">두뇌발달에 효과적인 달걀</h5>
		      <p class="card-text">우리아이들에게 먹여보자</p>
		       </a>
		    </div>
		  </div>
		  </div>
		  
		  <div class="col mb-4">
		  <div class="card h-100">
		  <a href="http://www.naver.com">
		    <img src="images/magazine5.png" 
		    class="card-img-top" alt="...">
		    <div class="card-body">
		      <h5 class="card-title">피부미용에 효과적인 과일</h5>
		      <p class="card-text">간식은 과자대신 과일로!</p>
		       </a>
		    </div>
		  </div>
		  </div>
		  
		  <div class="col mb-4">
		  <div class="card h-100">
		  <a href="http://www.naver.com">
		    <img src="images/magazine6.png"
		    class="card-img-top" alt="...">
		    <div class="card-body">
		      <h5 class="card-title">노화예방에는 등푸른생선이 제격!</h5>
		      <p class="card-text">우리 부모님들에게 선물해보자</p>
		       </a>
		    </div>
		  </div>
		  </div>
		  
		  <div class="col mb-4">
		  <div class="card h-100">
		  <a href="http://www.naver.com">
		    <img src="images/magazine6.png"
		    class="card-img-top" alt="...">
		    <div class="card-body">
		      <h5 class="card-title">노화예방에는 등푸른생선이 제격!</h5>
		      <p class="card-text">우리 부모님들에게 선물해보자</p>
		       </a>
		    </div>
		  </div>
		  </div>
		  
		  <div class="col mb-4">
		  <div class="card h-100">
		  <a href="http://www.naver.com">
		    <img src="images/magazine6.png"
		    class="card-img-top" alt="...">
		    <div class="card-body">
		      <h5 class="card-title">노화예방에는 등푸른생선이 제격!</h5>
		      <p class="card-text">우리 부모님들에게 선물해보자</p>
		       </a>
		    </div>
		  </div>
		  </div>		  		  
		  
		  <div class="col mb-4">
		  <div class="card h-100">
		  <a href="http://www.naver.com">
		    <img src="images/magazine6.png"
		    class="card-img-top" alt="...">
		    <div class="card-body">
		      <h5 class="card-title">노화예방에는 등푸른생선이 제격!</h5>
		      <p class="card-text">우리 부모님들에게 선물해보자</p>
		       </a>
		    </div>
		  </div>
		  </div>		  
		  
		  <div class="col mb-4">
		  <div class="card h-100">
		  <a href="http://www.naver.com">
		    <img src="images/magazine6.png"
		    class="card-img-top" alt="...">
		    <div class="card-body">
		      <h5 class="card-title">노화예방에는 등푸른생선이 제격!</h5>
		      <p class="card-text">우리 부모님들에게 선물해보자</p>
		       </a>
		    </div>
		  </div>
		  </div>
		  		  
	<div class="col mb-4">
		  <div class="card h-100">
		    <a href="mag1.jsp">
		    <img src="images/magazine1.png" 
		    class="card-img-top" alt="...">
		    <div class="card-body" >
		      <h5 class="card-title">우유가 성장기 아이들에게 좋다?</h5>
		      <p class="card-text">맛도좋고 몸에좋은 우유!</p>
		      </a>
		    </div>
		  </div>
		  </div>
		  </div>
		 		  
		  
		  </div>
		  </div>
		  </div>
		  </div>
		</div>
	</div>
	<footer>푸터 내용</footer>
</body>
</html>