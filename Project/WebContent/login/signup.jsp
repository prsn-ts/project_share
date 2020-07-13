<%@page import="LoginDao.LoginDao"%>
<%@page import="LoginDto.LoginDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
	//폼 전송되는 가입할 회원의 정보를 읽어온다.
	String id=request.getParameter("id");
	String pwd=request.getParameter("pwd");
	String email=request.getParameter("email");
	//UsersDto 객체에 회원정보를 담고
	LoginDto dto=new LoginDto();
	dto.setId(id);
	dto.setPwd(pwd);
	dto.setEmail(email);
	//UsersDao 객체를 이용해서 DB 에 저장한다.
	boolean isSuccess=LoginDao.getInstance().insert(dto);
%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>알림</h1>
	<%if(isSuccess){ %>
		<p> 
			<strong><%=id %></strong> 회원가입 완료
			<a href="login_form.jsp">확인</a> 
		</p>
	<%}else{ %>
		<p>
			글 저장이 실패 되었습니다. 
			<a href="signup_form.jsp">다시 작성하기</a>
		</p>
	<%} %>
</body>
</html>
