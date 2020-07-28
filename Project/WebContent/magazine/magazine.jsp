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
				    				<img src="../images/one.png" class="card-img-top first_card" class="card-img-top" alt="...">
							        <h5 class="card-title">자네 오늘은 우유한잔 어떤한가?</h5>
							        <p class="card-text">맛도좋고 몸에좋은 우유????</p>
							        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
						        </div>
				    		</div>
				  		</div>
				    </div>
				    <div class="col-sm my-4">
						<div class="card-deck h-100">
				  			<div class="card">
				  				<div class="card-body" style="cursor: pointer;" onclick="location.href='sub_magazine.jsp';">
				    				<img src="../images/two.png" class="card-img-top" alt="...">
							        <h5 class="card-title">여름에 시원한 빙수 요리 보실렵니까?</h5>
							        <p class="card-text">팥빙수가 짱이제</p>
							        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
						        </div>
				    		</div>
				  		</div>
				    </div>
				    <div class="col-sm my-4">
						<div class="card-deck h-100">
				  			<div class="card">
				  				<div class="card-body" style="cursor: pointer;" onclick="location.href='sub_magazine.jsp';">
				    				<img src="../images/three.png" class="card-img-top" alt="...">
							        <h5 class="card-title">다시마 칼국수</h5>
							        <p class="card-text">냠냠?</p>
							        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
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
				    				<img src="../images/one.png" class="card-img-top first_card"" class="card-img-top" alt="...">
							        <h5 class="card-title">자네 오늘은 우유한잔 어떤한가?</h5>
							        <p class="card-text">맛도좋고 몸에좋은 우유????</p>
							        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
						        </div>
				    		</div>
				  		</div>
				    </div>
				    <div class="col-sm my-4">
						<div class="card-deck h-100">
				  			<div class="card">
				  				<div class="card-body" style="cursor: pointer;" onclick="location.href='sub_magazine.jsp';">
				    				<img src="../images/two.png" class="card-img-top" alt="...">
							        <h5 class="card-title">여름에 시원한 빙수 요리 보실렵니까?</h5>
							        <p class="card-text">팥빙수가 짱이제</p>
							        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
						        </div>
				    		</div>
				  		</div>
				    </div>
				    <div class="col-sm my-4">
						<div class="card-deck h-100">
				  			<div class="card">
				  				<div class="card-body" style="cursor: pointer;" onclick="location.href='sub_magazine.jsp';">
				    				<img src="../images/three.png" class="card-img-top" alt="...">
							        <h5 class="card-title">다시마 칼국수</h5>
							        <p class="card-text">냠냠?</p>
							        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
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
				    				<img src="../images/one.png" class="card-img-top first_card"" class="card-img-top" alt="...">
							        <h5 class="card-title">자네 오늘은 우유한잔 어떤한가?</h5>
							        <p class="card-text">맛도좋고 몸에좋은 우유????</p>
							        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
						        </div>
				    		</div>
				  		</div>
				    </div>
				    <div class="col-sm my-4">
						<div class="card-deck h-100">
				  			<div class="card">
				  				<div class="card-body" style="cursor: pointer;" onclick="location.href='sub_magazine.jsp';">
				    				<img src="../images/two.png" class="card-img-top" alt="...">
							        <h5 class="card-title">여름에 시원한 빙수 요리 보실렵니까?</h5>
							        <p class="card-text">팥빙수가 짱이제</p>
							        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
						        </div>
				    		</div>
				  		</div>
				    </div>
				    <div class="col-sm my-4">
						<div class="card-deck h-100">
				  			<div class="card">
				  				<div class="card-body" style="cursor: pointer;" onclick="location.href='sub_magazine.jsp';">
				    				<img src="../images/three.png" class="card-img-top" alt="...">
							        <h5 class="card-title">다시마 칼국수</h5>
							        <p class="card-text">냠냠?</p>
							        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
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