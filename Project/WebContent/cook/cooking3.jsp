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
					<img class="card-img-top" src="../images/index2.png" alt="Card image cap" 
					style="width:700px; height: 500px; border-radius: 15px 15px 15px 15px; margin: auto;">
					<div class="card-body">
						<h2 class="card-title text-center" >칼국수 만들기!
						<hr>
						<p class="card-body h5 text-center">몸이 뜨끈해지는 칼국수 어떠신가요</p>
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
					        		  <li>칼국수면 : 2인분</li>
					        		  <li>육수 : 9컵</li>
					        		  <li>달걀 : 1개</li>
					        		  <li>쪽파 또는 대파 : 2대</li>
					        	  </ul>
				        	  </div>
				        	  <div class="col-sm">
					        	  <ul>
					    			  <li>다진마늘 2T</li>
					    			  <li>국간장 1T</li>
					    			  <li>멸치액젓 1T</li>
					    		  </ul>
				    		  </div>
			    		  </div>
			    		  <hr>
			    		  <br/>
			        	  <div>
			        	  	<h2>요리 과정!</h2>
			        	  	<hr />
			        	  	<ol class="h4">
			        	  		<li>육수가 완성돼 끓기 시작하면 준비해 놓은 칼국수 면을 넣어주고<br>
									젓가락을 이용해 저어가며 면을 익혀주세요.</li>
			        	  		<div style="list-style: none;"><img src="../images/cook10.png" align="right"
			        	  		style="width:300px; height: 200px; border-radius: 15px 15px 15px 15px;"></div>
			        	  		<br><br><br><br><br><br><br><br>
			        	  		<li>면이 어느 정도 익으면 국간장 1, 멸치 액젓 1, 다진 마늘 0.5를 넣어 간을 하고<br>
								썰어 놓은 대파를 넣고, 국물 맛을 보고 부족한 간은 소금으로 해주세요.<br>
								그리고 풀어 놓은 달걀 1을 전체적으로 둘러주고</li>
			        	  		<div style="list-style: none;"><img src="../images/cook11.png" align="right"
			        	  		style="width:300px; height: 200px; border-radius: 15px 15px 15px 15px;"></div>
			        	  		<br><br><br><br><br><br><br><br>
			        	  		<li>달걀이 익으면 취향에 따라 후춧가루를 더해 마무리해줍니다</li>
								 <div style="list-style: none;"><img src="../images/cook12.png" align="right"
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
					<li class="page-item disabled">
						<a class="page-link" href="#">&larr; 이전글</a>
					</li>
					<li class="page-item ">
						<a class="page-link" href="cooking2.jsp">다음글 &rarr;</a>
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