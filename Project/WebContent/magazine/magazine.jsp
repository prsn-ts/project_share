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
	<%-- header --%>
	<%-- jsp:include(header) --%>
	<jsp:include page="../include/header.jsp"></jsp:include>
	<%-- //header --%>
	
	<div class="magazine_part" style="background-color: #d8d8d8;">
		<div class="container">
			<div class="pb-4"></div>
			<div class="row_all p-3" style="border: 1px solid #dfdfdf; background-color: #f2f2f2;">
			
			<div class=" my-4">
			  <h3 style="text-shadow: 2px 2px 4px gray;">매거진</h3>
			</div>
			
				<div class="row">
					<div class="col-sm my-4">
						<div class="card-deck h-100">
				  			<div class="card">
				  				<div class="card-body" style="cursor: pointer;" onclick="location.href='sub_magazine.jsp';">
				    				<img src="../images/magazine1.png" class="card-img-top first_card" class="card-img-top" alt="...">
							        <h5 class="card-title">자네 오늘은 우유한잔 어떤한가?</a></h5>
							        <p class="card-text">맛도좋고 몸에좋은 우유????</a></p>
							        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></a></p>
						        </div>
				    		</div>
				  		</div>
				    </div>
				    <div class="col-sm my-4">
						<div class="card-deck h-100">
				  			<div class="card">
				  				<div class="card-body" style="cursor: pointer;" onclick="location.href='sub_magazine.jsp';">
				    				<img src="../images/magazine2.png" class="card-img-top" alt="...">
							        <h5 class="card-title">음료수대신 녹차가 대세</a></h5>
							        <p class="card-text">맛도좋고 건강에도 좋은 녹차</a></p>
							        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></a></p>
						        </div>
				    		</div>
				  		</div>
				    </div>
				    <div class="col-sm my-4">
						<div class="card-deck h-100">
				  			<div class="card">
				  				<div class="card-body" style="cursor: pointer;" onclick="location.href='sub_magazine.jsp';">
				    				<img src="../images/magazine3.png" class="card-img-top" alt="...">
							        <h5 class="card-title">고소한 맛이 일품인 두부</a></h5>
							        <p class="card-text">오늘저녁으로 두부 어떠세요?</a></p>
							        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></a></p>
						        </div>
				    		</div>
				  		</div>
				    </div>
				</div>
				<div class="row">
					<div class="col-sm my-4">
						<div class="card-deck h-100">
				  			<div class="card">
				  				<div class="card-body" style="cursor: pointer;" onclick="location.href='sub_magazine.jsp';">
				    				<img src="../images/magazine4.png" class="card-img-top first_card"" class="card-img-top" alt="...">
							        <h5 class="card-title">완전식품의 대명사 계란</a></h5>
							        <p class="card-text">영양과 맛 두마리의 토끼를 잡았다!</a></p>
							        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></a></p>
						        </div>
				    		</div>
				  		</div>
				    </div>
				    <div class="col-sm my-4">
						<div class="card-deck h-100">
				  			<div class="card">
				  				<div class="card-body" style="cursor: pointer;" onclick="location.href='sub_magazine.jsp';">
				    				<img src="../images/magazine5.png" class="card-img-top" alt="...">
							        <h5 class="card-title">알록달록 오색빛깔 과일</a></h5>
							        <p class="card-text">간식으로 과자말고 과일어떠신가요?</a></p>
							        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></a></p>
						        </div>
				    		</div>
				  		</div>
				    </div>
				    <div class="col-sm my-4">
						<div class="card-deck h-100">
				  			<div class="card">
				  				<div class="card-body" style="cursor: pointer;" onclick="location.href='sub_magazine.jsp';">
				    				<img src="../images/magazine6.png" class="card-img-top" alt="...">
							        <h5 class="card-title">기억력에 좋다는 등푸른 생선</a></h5>
							        <p class="card-text">수험생의 우리아이에게 추천!</a></p>
							        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></a></p>
						        </div>
				    		</div>
				  		</div>
				    </div>
				</div>
				<div class="row">
					<div class="col-sm my-4">
						<div class="card-deck h-100">
				  			<div class="card">
				  				<div class="card-body" style="cursor: pointer;" onclick="location.href='sub_magazine.jsp';">
				    				<img src="../images/magazine7.png" class="card-img-top first_card"" class="card-img-top" alt="...">
							        <h5 class="card-title">노화방지에는 블루베리지!</a></h5>
							        <p class="card-text">우리 부모님에게 선물로 드려요!</a></p>
							        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></a></p>
						        </div>
				    		</div>
				  		</div>
				    </div>
				    <div class="col-sm my-4">
						<div class="card-deck h-100">
				  			<div class="card">
				  				<div class="card-body" style="cursor: pointer;" onclick="location.href='sub_magazine.jsp';">
				    				<img src="../images/magazine8.png" class="card-img-top" alt="...">
							        <h5 class="card-title">암세포에 대적하는 오미자</a></h5>
							        <p class="card-text">건강에도좋고 맛도좋고!</a></p>
							        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></a></p>
						        </div>
				    		</div>
				  		</div>
				    </div>
				    <div class="col-sm my-4">
						<div class="card-deck h-100">
				  			<div class="card">
				  				<div class="card-body" style="cursor: pointer;" onclick="location.href='sub_magazine.jsp';">
				    				<img src="../images/magazine9.png" class="card-img-top" alt="...">
							        <h5 class="card-title">면역력을 증가시켜주는 옥수수</a></h5>
							        <p class="card-text">옥수수 드시고 여름철 무기력을 극복하자! </a></p>
							        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></a></p>
						        </div>
				    		</div>
				  		</div>
				    </div>
				</div>
			</div>
			<div class="pt-4"></div>
		</div>
	</div>

	<!-- footer --> 
	<%-- jsp:include(footer) --%>
	<jsp:include page="../include/footer.jsp">
		<jsp:param value="magazine" name="thisPage" />
	</jsp:include>
	<!-- footer end-->
	
</body>
</html>