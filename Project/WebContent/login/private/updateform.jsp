<%@page import="test.login.dao.LoginDao"%>
<%@page import="test.login.dto.LoginDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//세션에 저장된 아이디
	String id=(String)session.getAttribute("id");
	//수정할 회원의 정보를 읽어온다.
	LoginDto dto=LoginDao.getInstance().getData(id);
%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/private/updateform.jsp</title>
<!-- Custom fonts for this template-->
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
</head>
<body class="bg-gradient-primary">

  <div class="container">

    <div class="card o-hidden border-0 shadow-lg my-5">
      <div class="card-body p-0">
        <!-- Nested Row within Card Body -->
        <div class="row">
          <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
          <div class="col-lg-7">
            <div class="p-5">
              <div class="text-center">
                <h1 class="h4 text-gray-900 mb-4">회원정보 변경</h1>
              </div>
	<form class="user" action="update.jsp" method="post">
		<div class="form-group">
			<label for="id">아이디</label>
			<input type="text" class="form-control form-control-user" id="id" value="<%=dto.getId()%>" disabled/>
		</div>
		<div class="form-group">
			<label for="">이메일</label>
			<input type="text"  class="form-control form-control-user" id="email" name="email" value="<%=dto.getEmail() %>" />
		</div>
		<br />
		<button type="submit" class="btn btn-primary btn-user btn-block">수정확인</button>
		<hr>
		<button type="reset" class="btn btn-danger btn-user btn-block">취소</button>
	</form>
	</div>
  </div>
          </div>
        </div>
      </div>
</div>
</body>
</html>







