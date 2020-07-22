<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>

<body>
	<%-- jsp:include(header) --%>
	<jsp:include page="../include/header.jsp">
		<jsp:param value="index" name="thisPage"/>
	</jsp:include>
    <!-- End of Topbar -->
	
	
	<div style="background-color: #CEECF5">
	<div class="container">
	<div style="background-color: white">
	<div class="row row-cols-1 row-cols-md-3">
	
	

		  <div class="col mb-4"  >
		  <div style="width: 350px; height:350px;">
		  <div class="card h-100" >
		    <a href="sub_magazine.jsp">
		    <img src="../images/magazine1.png" 
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
		  <div style="width: 350px; height:350px;">
		  <div class="card h-100" >
		  <a href="http://www.naver.com">
		    <img src="../images/magazine2.png" 
		    class="card-img-top" alt="...">
		    <div class="card-body">
		      <h5 class="card-title">녹차의 숨겨진 효능</h5>
		      <p class="card-text">피부관리에 짱짱하다</p>
		       </a>
		    </div>
		  </div>
		  </div>
		  </div>
		  
		  
		  <div class="col mb-4">
		  <div style="width: 350px; height:350px;">
		  <div class="card h-100">
		   <a href="http://www.naver.com">
		    <img src="../images/magazine3.png" 
		    class="card-img-top" alt="...">
		    <div class="card-body">
		      <h5 class="card-title">심현관 질환에 좋은두부</h5>
		      <p class="card-text">그 외의 숨겨진 효능들</p>
		      </a>
		    </div>
		  </div>
		  </div>
		  </div>
		   
		  
		  <div class="col mb-4">
		  <div class="card h-100">
		  <a href="http://www.naver.com">
		    <img src="../images/magazine4.png" 
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
		    <img src="../images/magazine5.png" 
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
		    <img src="../images/magazine6.png"
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
		    <img src="../images/magazine1.png"
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
		    <img src="../images/magazine1.png"
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
		    <img src="../images/magazine1.png"
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
		    <img src="../images/magazine1.png"
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
		    <img src="../images/magazine1.png" 
		    class="card-img-top" alt="...">
		    <div class="card-body" >
		      <h5 class="card-title">우유가 성장기 아이들에게 좋다?</h5>
		      <p class="card-text">맛도좋고 몸에좋은 우유!</p>
		      </a>
		    </div>
		  </div>
		  </div>
		  
	<div class="col mb-4">
		  <div class="card h-100">
		    <a href="mag1.jsp">
		    <img src="../images/magazine1.png" 
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
		
			<!-- footer --> 
		<%-- jsp:include(footer) --%>
		<jsp:include page="../include/footer.jsp">
			<jsp:param value="magazine" name="thisPage" />
		</jsp:include>
	<!-- footer end-->
	</div>
</body>
</html>