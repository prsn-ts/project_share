<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Home</title> 
<meta charset="utf-8"> 
<meta name="viewport" content="width=device-width, initial-scale=1"> 
<!-- CSS --> 
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<!-- customize css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
<!-- JS -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script> 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script> 
</head> 
<body>
<%
	//id 라는 키값으로 세션에 저장된 문자열이 있는지 읽어와 본다.
	String id=(String)session.getAttribute("id");
%>
	<%-- jsp:include(header) --%>
	<jsp:include page="../include/header.jsp"></jsp:include>
	<%-- //header --%>

	<!-- Page Content -->
	<div class="sub_myrecipe_part" style="background-color: #d8d8d8;">
		<div class="container">
			<div class="pb-4"></div>
			<div class="row_all p-3" style="border: 1px solid #dfdfdf; background-color: #f2f2f2;">
			
			<div class="my-4">
				<h3 style="text-shadow: 2px 2px 4px gray;">나만의 레시피</h3>
			</div>
			
			    <!-- Blog Post -->
			    <div class="card mb-4">
					<img class="card-img-top" src="../img/testimg.jpg" alt="Card image cap" style="width:100%; height: 300px;">
					<div class="card-body">
						<h2 class="card-title text-center" >밥도둑 반찬 고추장 달걀조림 만들기<br>알토란 레시피</h2>
						<hr>
						<p class="card-body h5 text-center">평소 간장을 베이스로 한 계란장조림을 만들어 먹는 편인데요. TV알토란에서 고추장을 베이스로 계란 장조림을 만들길래 저도 만들어 봤는데 우왕! 진짜 맛있어요. 뜨끈한 밥에 비벼 먹으니 밥도둑이 따로 없네요</p>
					</div>
			    </div>
				
			 
			    <!-- Blog Post -->
			    <div class="card mb-4">
			        <div class="card-body">
			        	  <h2 class="card-title">재료
			        	      <small class="text-muted">Ingredients</small>
			        	  </h2>
			        	  <div class="row">
				        	  <div class="col-sm">
					        	  <ul>
					        		  <li>달걀 : 10개</li>
					        		  <li>양파 : 1개</li>
					        		  <li>청양고추 : 3개</li>
					        		  <li>쪽파 또는 대파 : 약간</li>
					        		  <li>멸치육수 : 1.5컵</li>
					        	  </ul>
				        	  </div>
				        	  <div class="col-sm">
					        	  <ul>
					    			  <li>고추장 2T</li>
					    			  <li>고춧가루 3T</li>
					    			  <li>진간장 4T</li>
					    			  <li>설탕 2T</li>
					    			  <li>물엿 3T</li>
					    			  <li>참기름 2T</li>
					    			  <li>깨 1T</li>
					    			  <li>후추 1ts</li>
					    		  </ul>
				    		  </div>
			    		  </div>
			    		  <hr>
			    		  <br/>
			        	  <div>
			        	  	<h2>요리 과정!</h2>
			        	  	<hr />
			        	  	<ol class="h4">
			        	  		<li>먼저 물에 소금1T,식초1T를 섞어 달걀을 7-8분 반숙으로 삶아 줍니다.</li>
			        	  		<br />
			        	  		<li style="list-style: none;"><img src="https://recipe1.ezmember.co.kr/cache/recipe/2019/07/01/8ba68d0ba5320663fbd0905d5e9ba7851.jpg" style="width:100%; height: 300px;"></li>
			        	  		<li>달걀이 삶아지는 동안 양파는 굵게 채 썰고 청양고추도 큼직큼직 썰어주셔요</li>
			        	  		<li>달걀이 삶아지면 얼음물에 바로 행궈 껍질을 깔끔히 잘 벗겨 줍니다.</li>
			        	  		<li>참기름과 깨를 제외한 모든 양념을 한곳에 미리 섞어주셔요.</li>
			        	  		<li>냄비에 멸치육수를 넣고 양념을 잘 풀어 주신뒤 끓여줍니다.</li>
			        	  		<li>양념이 끓기 시작하면 양파와 청양고추를 넣고 끓여줍니다.</li>
			        	  		<li>양념이 반정도 졸아들었다 싶을때 반숙달걀을 투하 해줍니다.이대로 약 2분정도 더 끓여주시면서 달걀에 색이 입혀지게 국물을 끼얹어 주세요</li>
			        	  		<li>마지막으로 참기름 2T와 깨1T를 넣고 잘섞어주시고 쪽파를 고명으로 올려주시면 끝!</li>
			        	  		<li>밥도둑 반찬 알토란 임성근님의 고추장 달걀조림 완성입니다^^</li>
			        	  		<li>한번 먹어보니 촉촉한 반숙달걀에 매콤달콤 양념이 어우려져 넘 맛있네요.꼭 떡볶이 양념같은게 은근 중독성 있고 정말 짱짱짱!뜨끈한 밥에 비벼 먹으면 밥 한공기 뚝딱 하게 됩니다^^</li>
			        	  	</ol>
			        	  </div>
			        </div>
			        <div class="card-footer text-muted">
			            Posted on January 1, 2020 by
			            <a href="#">Start Bootstrap</a>
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
		    <!-- //.row_all -->
		    <div class="pt-4"></div>
		</div>
		<!-- //.container -->
	</div>
	<!-- //.sub_myrecipe_part -->
	
	<!-- footer --> 
		<%-- jsp:include(footer) --%>
		<jsp:include page="../include/footer.jsp">
			<jsp:param value="sub_myrecipe" name="thisPage"/>
		</jsp:include>
	<!-- footer end-->
	
</body> 
</html>​