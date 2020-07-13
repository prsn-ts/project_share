<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">

  <title>Register</title>

  <!-- Custom fonts for this template-->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="${pageContext.request.contextPath}/css/sb-admin-2.min.css" rel="stylesheet">

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
                <h1 class="h4 text-gray-900 mb-4">Create an Account!</h1>
              </div>
              <form class="user" action="signup.jsp" method="post">
                <div class="form-group">
                  <label for="id">아이디</label>
                  <input type="text" class="form-control form-control-user" id="id" name="id" placeholder="id">
                </div>
                <div class="form-group">
                  	<label for="pwd">비밀번호</label>
                    <input type="text" class="form-control form-control-user" id="pwd" name="pwd" placeholder="Password">
                  
                </div>
                
                <div class="form-group">
                  <label for="email">이메일</label>
                  <input type="text" class="form-control form-control-user" id="email" name="email" placeholder="Email Address">
                </div>
                
                <button type="submit" class="btn btn-primary btn-user btn-block">
                  Register Account
                </button>
                
               
              </form>
              <hr>
            
              <div class="text-center">
                <a class="small" href="login_form.jsp">Already have an account? Login!</a>
              </div>
              
              <hr>
              
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>


</body>

</html>
