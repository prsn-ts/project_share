<%@page import="test.login.dao.LoginDao"%>
<%@page import="test.login.dto.LoginDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id=(String)session.getAttribute("id");
	//로그인된 개인 정보를 읽어온다.
	LoginDto dto=LoginDao.getInstance().getData(id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/private/info.jsp</title>
<!-- Custom fonts for this template-->
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
</head>
<body class="bg-gradient-primary">
  <div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

      <div class="col-xl-10 col-lg-12 col-md-9">

        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
              <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
              <div class="col-lg-6">
                <div class="p-5">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">회원 정보</h1>
                  </div>
                 	<table class="table">
						<tr>
							<th>아이디</th>
							<td><%=dto.getId() %></td>
						</tr>
						<tr>
							<th>비밀번호</th>
							<td><a href="pwd_updateform.jsp">수정하기</a></td>
						</tr>
						<tr>
							<th>이메일</th>
							<td><%=dto.getEmail() %></td>
						</tr>
						<tr>
							<th>가입일</th>
							<td><%=dto.getRegdate() %></td>
						</tr>
					</table>
					<a href="updateform.jsp">개인정보 수정</a><br />
					<hr>
					<a href="javascript:deleteConfirm()">탈퇴</a>
                </div>            
              </div>
            </div>
          </div>
        </div>

      </div>

    </div>

  </div>
<script>
	function deleteConfirm(){
		var isDelete=confirm("<%=id%> 회원님 탈퇴 하시겠습니까?");
		if(isDelete){
			location.href="delete.jsp";
		}
	}
</script>
</body>
</html>