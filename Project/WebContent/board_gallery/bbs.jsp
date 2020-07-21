
<%@ page language="java" contentType="text/html; charset=UTF-8"

	pageEncoding="UTF-8"%>

<%@ page import="java.io.PrintWriter"%>

<!DOCTYPE html>

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- 뷰포트 -->

<meta name="viewport" content="width=device-width">

<!-- 스타일시트 참조  -->

<link rel="stylesheet" href="../css/bootstrap.css">

<title>jsp 게시판 웹사이트</title>

</head>

<style>
	
</style>
<body>
<%

		//로긴한사람이라면	 id 라는 변수에 해당 아이디가 담기고 그렇지 않으면 null값

		String id = null;

		if (session.getAttribute("id") != null) {
			id = (String) session.getAttribute("id");
		}

	%>
 <!-- Page Content -->
	
    <!-- header --> 
	<div class="jumbotron py-5 text-center mb-0"> 
		<h1>나만의 레시피</h1> 
		<p>나만의 레시피를 등록하고 공유 해봐요!</p> 
	</div> 
	<!-- Topbar 네이바-->
    <nav class="navbar navbar-expand navbar-light bg-white topbar mb-3 static-top shadow">
    	<div class="container">
	        <div class="collapse navbar-collapse" id="collapsibleNavbar"> 
	       	 	<ul class="navbar-nav"> 
	        		<li class="nav-item"><a href="#" class="navbar-brand nav-link font-weight-bolder">요리</a></li> 
	       		 	<li class="nav-item"><a href="${pageContext.request.contextPath}/my_recipe/myrecipe.jsp" class="navbar-brand nav-link font-weight-bolder">나만의 조리법</a></li>
	       		 	<li class="nav-item"><a href="${pageContext.request.contextPath}/magazine/magazine.jsp" class="navbar-brand nav-link font-weight-bolder">매거진</a></li> 
	     	    </ul> 
	        </div>
	        <%if(id == null){ %>
	        	<ul class="navbar-nav ml-auto">
	            	<li class="nav-item dropdown no-arrow">     
	                  <span class="mr-2 d-none d-lg-inline text-gray-600 small">
	                  <a href="${pageContext.request.contextPath}/login/login_form.jsp">로그인</a>
	                  <a href="${pageContext.request.contextPath}/login/signup_form.jsp">회원가입</a>
	                  </span>            
	                </li>
	            </ul>
	        <%} %>
	        <!-- Topbar Navbar -->
	        <%if(id != null){ %>
	        <ul class="navbar-nav ml-auto">
	            	
	            	<!-- Nav Item - User Information -->
	            	<li class="nav-item dropdown no-arrow">
	                <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	                  <span class="mr-2 d-none d-lg-inline text-gray-600 small"><%=id %></span>
	                  <img class="img-profile rounded-circle" src="https://source.unsplash.com/QAB-WJcbgJk/60x60">
	                </a>
	            
	                <!-- Dropdown - User Information -->
	                
	                <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
		                  <a class="dropdown-item" href="login/private/info.jsp">
		                  	<%=id %>
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
		                  <a class="dropdown-item" href="${pageContext.request.contextPath}/login/logout.jsp">
		                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
		                    Logout
		                  </a>
	               	</div>
	            </li>
	        </ul>
           	<%} %>
	    </div> 
    </nav>
	


	<!-- 게시판 -->

	<div class="container">

		<div class = "row" style="justify-content: flex-end;">
			<a href = "write.jsp" class="btn btn-primary">글쓰기</a>
				<table class="table table-striped" style="text-align:center; border:1px solid #dddddd"> 
	
					<thead>
	
						<tr>
	
							<th style="background-color: #eeeeee; text-align: center;">번호</th>
	
							<th style="background-color: #eeeeee; text-align: center;">제목</th>
	
							<th style="background-color: #eeeeee; text-align: center;">작성자</th>
	
							<th style="background-color: #eeeeee; text-align: center;">작성일</th>
	
						</tr>
	
					</thead>
	
					<tbody>
	
						<tr>
	
							<td>1</td>
	
							<td>안녕하세요</td>
	
							<td>홍길동</td>
	
							<td>2017-05-04</td>
	
						</tr>
	
					</tbody>
	
				</table>

		</div>

	</div>

	







	<!-- 애니매이션 담당 JQUERY -->

	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>

	<!-- 부트스트랩 JS  -->

	<script src="../js/bootstrap.js"></script>



</body>

</html>


