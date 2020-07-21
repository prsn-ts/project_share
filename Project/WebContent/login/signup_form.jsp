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
				  <span id="checkResult"></span>
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
<script src="${pageContext.request.contextPath }/js/jquery-3.5.1.js"></script>
<script>
	//아이디 중복확인을 통과 했는지 여부
	var canUseId=false;
	//중복 확인 버튼을 눌렀을때 실행할 함수 등록
	$("#id").blur(function(){
		//입력한 아이디를 읽어온다.
		var inputId=$("#id").val();
		//아이디에 아무것도 입력하지않고 뗐을 시 중복확인 문자 사라지게 하기
		if(inputId.length == 0){
			$("#checkResult").text("");
			//form 안에 있는 일반 버튼을 눌러도 폼이 전송 되기 때문에 폼 전송을 막아준다.
			return false;
		}
		//ajax 를 이용해서 서버에 보낸후 결과를 응답 받는다.
		$.ajax({
			method:"GET",
			url:"checkid.jsp",
			data:"inputId="+inputId,
			success:function(data){
				//data => {isExist:true} or {isExist:false} 인 object 이다.
				if(data.isExist){//이미 존재하는 아이디임으로 사용 불가
					$("#checkResult")
					.text("사용불가")
					.css("color","red");
					//아이디가 사용 불가 하다고 표시한다.
					canUseId=false;
				}else{//사용가능 
					$("#checkResult")
					.text("사용가능")
					.css("color","green");
					//아이디가 사용 가능 하다고 표시한다.
					canUseId=true;
				}
 			}
		});
		//form 안에 있는 일반 버튼을 눌러도 폼이 전송 되기 때문에 폼 전송을 막아준다.
		return false;
	});
	//폼에 submit 이벤트가 일어났을때 호출될 함수 등록 
	$("#myForm").on("submit", function(){
		
		if(!canUseId){//사용 불가한 아이디 이면 
			alert("아이디 중복을 확인 하세요");
			return false; //폼 제출 막기 
		}
	});
</script>

</body>

</html>
