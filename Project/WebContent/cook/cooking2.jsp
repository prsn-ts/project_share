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
					<img class="card-img-top" src="../images/index1.png" alt="Card image cap" 
					style="width:700px; height: 500px; border-radius: 15px 15px 15px 15px; margin: auto;">
					<div class="card-body">
						<h2 class="card-title text-center" >팥빙수 만들기
						<hr>
						<p class="card-body h5 text-center">여름에 시원한 팥빙수 어떠신가요</p>
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
					        		  <li>우유 : 1개</li>
					        		  <li>미숫가루 : 1개</li>
					        	  </ul>
				        	  </div>
				        	  <div class="col-sm">
					        	  <ul>
					        		  <li>견과류 : 약간</li>
					        		  <li>팥 : 약간</li>
					    		  </ul>
				    		  </div>
			    		  </div>
			    		  <hr>
			    		  <br/>
			        	  <div>
			        	  	<h2>요리 과정!</h2>
			        	  	<hr />
			        	  	<ol class="h4">
			        	  		<li>지퍼백이나 일회용 비닐팩에 우유를 넣어 얼려준다.</li>
			        	  		<div style="list-style: none;"><img src="../images/cook7.png" align="right"
			        	  		style="width:300px; height: 200px; border-radius: 15px 15px 15px 15px;"></div>
			        	  		<br><br><br><br><br><br><br><br>
			        	  		<li>집에 왕얼음틀이 있다면 동그랗게 우유얼음을 얼려 함께 <br>
			        	  		곁들여주면 보기에 더 좋은 팥빙수를 만들 수 있습니다.</li>
			        	  		<div style="list-style: none;"><img src="../images/cook8.png" align="right"
			        	  		style="width:300px; height: 200px; border-radius: 15px 15px 15px 15px;"></div>
			        	  		<br><br><br><br><br><br><br><br>
			        	  		<li>그릇에 우유얼음, 미숫가루, 빙수팥을 개인의 기호에 맞추어 <br>
			        	  		적당량 올려주면 간단 빙수 만들기 완성!!!<br>
								취향에 따라 견과류, 시럽, 떡 등을 함께 넣어도 좋습니다.</li>
								 <div style="list-style: none;"><img src="../images/cook9.png" align="right"
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
						<a class="page-link" href="cooking3.jsp">&larr; 이전글</a>
					</li>
					<li class="page-item">
						<a class="page-link" href="cooking1.jsp">다음글 &rarr;</a>
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