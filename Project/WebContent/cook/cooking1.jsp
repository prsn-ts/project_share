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
				<h3 style="text-shadow: 2px 2px 4px gray;">레시피</h3>
			</div>
			
			    <!-- Blog Post -->
			    <div class="card mb-4">
					<img class="card-img-top" src="../images/cook1.png" alt="Card image cap" 
					style="width:700px; height: 500px; border-radius: 15px 15px 15px 15px; margin: auto;">
					<div class="card-body">
						<h2 class="card-title text-center" >쭈구미볶음 만들기!!
						<hr>
						<p class="card-body h5 text-center">요즘 쭈꾸미가 제철인데 가족들과 함께 쭈꾸미 볶음 어떠신가요?</p>
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
					        		  <li>쭈꾸미 : 5마리</li>
					        		  <li>양파 : 1개</li>
					        		  <li>청양고추 : 3개</li>
					        		  <li>쪽파 또는 대파 : 약간</li>
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
			        	  		<li>쭈꾸미는 머리를 뒤집어서 내장과 먹물주머니를 제거하고</li>
			        	  		<div style="list-style: none;"><img src="../images/cook2.png" align="right"
			        	  		style="width:300px; height: 200px; border-radius: 15px 15px 15px 15px;"></div>
			        	  		<br><br><br><br><br><br><br><br>
			        	  		<li>다리사이에 있는 입을 꾹 눌러 제거해주시고 밀가루를 넣어 <br>
			        	  		거품이 나오지 않을정도로 빡빡 문질러준다음 <br>깨끗한물에 씻어주세요</li>
			        	  		<div style="list-style: none;"><img src="../images/cook3.png" align="right"
			        	  		style="width:300px; height: 200px; border-radius: 15px 15px 15px 15px;"></div>
			        	  		<br><br><br><br><br><br><br><br>
			        	  		<li>분량의 양념도 한곳에 모아 준비해주세요<br>
								다진마늘 1큰술, 진간장 1큰술, 설탕 1큰술, 맛술 1큰술,<br>
								 고추장 2큰술, 고춧가루 2큰술, 참기름 1큰술.</li>
								 <div style="list-style: none;"><img src="../images/cook4.png" align="right"
			        	  		style="width:300px; height: 200px; border-radius: 15px 15px 15px 15px;"></div>
			        	  		<br><br><br><br><br><br><br><br>
			        	  		<li>준비한 양파를 넣어주세요!<br>
								어느정도 볶아주다가 마지막엔 대파 넣고 마무리 해줬어요</li>
								 <div style="list-style: none;"><img src="../images/cook5.png" align="right"
			        	  		style="width:300px; height: 200px; border-radius: 15px 15px 15px 15px;"></div>
			        	  		<br><br><br><br><br><br><br><br>
			        	  		<li>예쁜 그릇에 담아주시면 완성!</li>
			        	  		 <div style="list-style: none;"><img src="../images/cook1.png" align="right"
			        	  		style="width:300px; height: 200px; border-radius: 15px 15px 15px 15px;"></div>
			        	  		<br><br><br><br><br><br><br><br>
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
						<a class="page-link" href="cooking2.jsp">&larr; 이전글</a>
					</li>
					<li class="page-item disabled">
						<a class="page-link" href="#">다음글 &rarr;</a>
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