<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/private/pwd_updateform.jsp</title>
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
                <h1 class="h4 text-gray-900 mb-4">비밀번호 변경</h1>
              </div>
	<form class="user" action="pwd_update.jsp" method="post" id="myForm">
		<div class="form-group">
			<label for="pwd">기존 비밀번호</label>
			<input type="password" class="form-control form-control-user" name="pwd" id="pwd" placeholder="id"/>
		</div>
		<div class="form-group">
			<label for="newPwd">새 비밀번호</label>
			<input type="password" class="form-control form-control-user" name="newPwd" id="newPwd" placeholder="Password"/>
		</div>
		<div class="form-group">
			<label for="newPwd2">새 비밀번호 확인</label>
			<input type="password" class="form-control form-control-user" name="newPwd2" id="newPwd2" placeholder="Password"/>
		</div>
		<button type="submit" class="btn btn-primary btn-user btn-block">수정하기</button>
	</form>
</div>
  </div>
          </div>
        </div>
      </div>
    </div>


<script src="${pageContext.request.contextPath }/js/jquery-3.5.1.js"></script>
<script>
	//id 가 myForm  인 곳에 submit 이벤트가 일어 났을때 실행할 함수 등록 
	$("#myForm").on("submit", function(){
		//입력한 새로운 비밀번호 2개를 읽어와서 
		var pwd1=$("#newPwd").val();
		var pwd2=$("#newPwd2").val();
		//만일 일치하지 않으면 
		if(pwd1 != pwd2){
			//알림을 띄우고 
			alert("새로운 비밀번호가 일치 하지 않아요");
			//비밀번호 입력란을 초기화 하고 포커스도 주고 
			$("#newPwd").val("").focus();
			$("#newPwd2").val("");
			//폼전송을 막는다. 
			return false;
		}
	});
</script>

</body>
</html>
