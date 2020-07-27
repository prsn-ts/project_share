<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>SB Admin 2 - Login</title>

  <!-- Custom fonts for this template-->
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
</head>

<body class="bg-gradient-primary">
<%
	// url 파라미터가 넘어오는지 읽어와 보기 
	String url=request.getParameter("url");
	if(url==null){//목적지 정보가 없다면
		String cPath=request.getContextPath();
		url=cPath+"/index.jsp"; //로그인후 인덱스 페이지로 가도록 하기 위해 
	}
%>
<%
	//쿠키에 저장된 아이디와 비밀번호를 담을 변수
	String savedId="";
	String savedPwd="";
	//쿠키에 저장된 값을 위의 변수에 저장하는 코드를 작성해 보세요.
	Cookie[] cooks=request.getCookies();
	if(cooks!=null){
		//반복문 돌면서 쿠키객체를 하나씩 참조해서 
		for(Cookie tmp: cooks){
			//저장된 키값을 읽어온다.
			String key=tmp.getName();
			//만일 키값이 savedId 라면 
			if(key.equals("savedId")){
				//쿠키 value 값을 savedId 라는 지역변수에 저장
				savedId=tmp.getValue();
			}
			if(key.equals("savedPwd")){
				savedPwd=tmp.getValue();
			}
			
		}
	}
%>
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
                    <h1 class="h4 text-gray-900 mb-4">Welcome Back!</h1>
                  </div>
                  <form class="user" action="login.jsp" method="post">
                 	 <%-- 원래 가려던 목적지 정보를 url 이라는 파라미터 명으로 가지고 간다 --%>
                 	
					<input type="hidden" name="url" value="<%=url %>" />
                    <div class="form-group">
                	  <label for="id">아이디</label>
                      <input value="<%=savedId %>" type="text" class="form-control form-control-user" name="id" id="id"  placeholder="Enter id...">
                    </div>
                    <div class="form-group">
                      <label for="pwd">비밀번호</label>
                      <input value="<%=savedPwd %>" type="password" class="form-control form-control-user"  name="pwd" id="pwd" placeholder="Password">
                    </div>
                    <div class="form-group">
                      
                        <input type="checkbox" name="isSave" value="yes"/>
                        <label >Remember Me</label>
                 
                    </div>
                    <button type="submit" class="btn btn-primary btn-user btn-block">
                      Login
                    </button>
                   
         
                  </form>
                  <hr>
                  
                  <div class="text-center">
                    <a class="small" href="signup_form.jsp">Create an Account!</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>

    </div>

  </div>


</body>

</html>
