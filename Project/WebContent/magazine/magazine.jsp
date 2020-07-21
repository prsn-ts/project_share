<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<style>
img.relative { 
	position: relative;
	left: 700px;
	top: 80px;
}
</style>
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
	<!--
	<img src="images/seoul.png" class="relative" style="width:100px; height:100px;">
	-->
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
	
	<div class="container">
		<div class="row">
			<div class="col-sm mb-4">
				<div class="card-deck h-100">
		  			<div class="card">
		  				<div class="card-body" style="cursor: pointer;" onclick="location.href='sub_magazine.jsp';">
		    				<img src="../images/one.png" class="card-img-top first_card"" class="card-img-top" alt="...">
					        <h5 class="card-title"><a href="mag1.jsp">자네 오늘은 우유한잔 어떤한가?</a></h5>
					        <p class="card-text"><a href="mag1.jsp">맛도좋고 몸에좋은 우유????</a></p>
					        <p class="card-text"><a href="mag1.jsp"><small class="text-muted">Last updated 3 mins ago</small></a></p>
				        </div>
		    		</div>
		  		</div>
		    </div>
		    <div class="col-sm mb-4">
				<div class="card-deck h-100">
		  			<div class="card">
		  				<div class="card-body" style="cursor: pointer;" onclick="location.href='sub_magazine.jsp';">
		    				<img src="../images/two.png" class="card-img-top" alt="...">
					        <h5 class="card-title"><a href="mag1.jsp">여름에 시원한 빙수 요리 보실렵니까?</a></h5>
					        <p class="card-text"><a href="mag1.jsp">팥빙수가 짱이제</a></p>
					        <p class="card-text"><a href="mag1.jsp"><small class="text-muted">Last updated 3 mins ago</small></a></p>
				        </div>
		    		</div>
		  		</div>
		    </div>
		    <div class="col-sm mb-4">
				<div class="card-deck h-100">
		  			<div class="card">
		  				<div class="card-body" style="cursor: pointer;" onclick="location.href='sub_magazine.jsp';">
		    				<img src="../images/three.png" class="card-img-top" alt="...">
					        <h5 class="card-title"><a href="mag1.jsp">다시마 칼국수</a></h5>
					        <p class="card-text"><a href="mag1.jsp">냠냠?</a></p>
					        <p class="card-text"><a href="mag1.jsp"><small class="text-muted">Last updated 3 mins ago</small></a></p>
				        </div>
		    		</div>
		  		</div>
		    </div>
		</div>
		<div class="row">
			<div class="col-sm mb-4">
				<div class="card-deck h-100">
		  			<div class="card">
		  				<div class="card-body" style="cursor: pointer;" onclick="location.href='sub_magazine.jsp';">
		    				<img src="../images/one.png" class="card-img-top first_card"" class="card-img-top" alt="...">
					        <h5 class="card-title"><a href="mag1.jsp">자네 오늘은 우유한잔 어떤한가?</a></h5>
					        <p class="card-text"><a href="mag1.jsp">맛도좋고 몸에좋은 우유????</a></p>
					        <p class="card-text"><a href="mag1.jsp"><small class="text-muted">Last updated 3 mins ago</small></a></p>
				        </div>
		    		</div>
		  		</div>
		    </div>
		    <div class="col-sm mb-4">
				<div class="card-deck h-100">
		  			<div class="card">
		  				<div class="card-body" style="cursor: pointer;" onclick="location.href='sub_magazine.jsp';">
		    				<img src="../images/two.png" class="card-img-top" alt="...">
					        <h5 class="card-title"><a href="mag1.jsp">여름에 시원한 빙수 요리 보실렵니까?</a></h5>
					        <p class="card-text"><a href="mag1.jsp">팥빙수가 짱이제</a></p>
					        <p class="card-text"><a href="mag1.jsp"><small class="text-muted">Last updated 3 mins ago</small></a></p>
				        </div>
		    		</div>
		  		</div>
		    </div>
		    <div class="col-sm mb-4">
				<div class="card-deck h-100">
		  			<div class="card">
		  				<div class="card-body" style="cursor: pointer;" onclick="location.href='sub_magazine.jsp';">
		    				<img src="../images/three.png" class="card-img-top" alt="...">
					        <h5 class="card-title"><a href="mag1.jsp">다시마 칼국수</a></h5>
					        <p class="card-text"><a href="mag1.jsp">냠냠?</a></p>
					        <p class="card-text"><a href="mag1.jsp"><small class="text-muted">Last updated 3 mins ago</small></a></p>
				        </div>
		    		</div>
		  		</div>
		    </div>
		</div>
		<div class="row">
			<div class="col-sm mb-4">
				<div class="card-deck h-100">
		  			<div class="card">
		  				<div class="card-body" style="cursor: pointer;" onclick="location.href='sub_magazine.jsp';">
		    				<img src="../images/one.png" class="card-img-top first_card"" class="card-img-top" alt="...">
					        <h5 class="card-title"><a href="mag1.jsp">자네 오늘은 우유한잔 어떤한가?</a></h5>
					        <p class="card-text"><a href="mag1.jsp">맛도좋고 몸에좋은 우유????</a></p>
					        <p class="card-text"><a href="mag1.jsp"><small class="text-muted">Last updated 3 mins ago</small></a></p>
				        </div>
		    		</div>
		  		</div>
		    </div>
		    <div class="col-sm mb-4">
				<div class="card-deck h-100">
		  			<div class="card">
		  				<div class="card-body" style="cursor: pointer;" onclick="location.href='sub_magazine.jsp';">
		    				<img src="../images/two.png" class="card-img-top" alt="...">
					        <h5 class="card-title"><a href="mag1.jsp">여름에 시원한 빙수 요리 보실렵니까?</a></h5>
					        <p class="card-text"><a href="mag1.jsp">팥빙수가 짱이제</a></p>
					        <p class="card-text"><a href="mag1.jsp"><small class="text-muted">Last updated 3 mins ago</small></a></p>
				        </div>
		    		</div>
		  		</div>
		    </div>
		    <div class="col-sm mb-4">
				<div class="card-deck h-100">
		  			<div class="card">
		  				<div class="card-body" style="cursor: pointer;" onclick="location.href='sub_magazine.jsp';">
		    				<img src="../images/three.png" class="card-img-top" alt="...">
					        <h5 class="card-title"><a href="mag1.jsp">다시마 칼국수</a></h5>
					        <p class="card-text"><a href="mag1.jsp">냠냠?</a></p>
					        <p class="card-text"><a href="mag1.jsp"><small class="text-muted">Last updated 3 mins ago</small></a></p>
				        </div>
		    		</div>
		  		</div>
		    </div>
		</div>
	</div>
	
	<!-- footer --> 
		<%-- jsp:include(footer) --%>
		<jsp:include page="../include/footer.jsp">
			<jsp:param value="magazine" name="thisPage"/>
		</jsp:include>
	<!-- footer end-->
	
</body>
</html>