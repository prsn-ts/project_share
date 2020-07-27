<%@page import="test.login.dao.LoginDao"%>
<%@page import="test.login.dto.LoginDto"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//로그인후 가야하는 목적지 정보
	String url=request.getParameter("url");
	//목적지 정보도 미리 인코딩 해 놓는다.
	String encodedUrl=URLEncoder.encode(url);
	

	//1. 폼전송되는 로그인 아이디와 비밀번호를 읽어온다.
	String id=request.getParameter("id");
	String pwd=request.getParameter("pwd");
	
	//아이디 비번 저장 쿠키
	//체크박스를 체크 하지 않았으면 null 이다. 
	String isSave=request.getParameter("isSave");
	
	if(isSave == null){//체크 박스를 체크 안했다면
		//저장된 쿠키 삭제 
		Cookie idCook=new Cookie("savedId", id);
		idCook.setMaxAge(0);//삭제하기 위해 0 으로 설정 
		response.addCookie(idCook);
		
		Cookie pwdCook=new Cookie("savedPwd", pwd);
		pwdCook.setMaxAge(0);
		response.addCookie(pwdCook);
	}else{//체크 박스를 체크 했다면 
		//아이디와 비밀번호를 쿠키에 저장
		Cookie idCook=new Cookie("savedId", id);
		idCook.setMaxAge(60*60*24);//60초동안 유지  60*60은 한시간 60*60*24 하루
		response.addCookie(idCook);
		
		Cookie pwdCook=new Cookie("savedPwd", pwd);
		pwdCook.setMaxAge(60*60*24);
		response.addCookie(pwdCook);
	}
	
	//2. DB 에 실제로 존재하는지 (유효한 정보인지) 확인한다.
	LoginDto dto=new LoginDto();
	dto.setId(id);
	dto.setPwd(pwd);
	boolean isValid=LoginDao.getInstance().isValid(dto);
	//3. 유효한 정보이면 로그인 처리를 하고 응답 
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/login.jsp</title>
</head>
<body>
<%if(isValid){ 
	//로그인 처리를 한다. 
	session.setAttribute("id", id);%>
	<script>
		alert("<%=id %> 님 로그인 되었습니다.");
		location.href="<%=url%>";
	</script>
<%}else{ %>
	<script>
		alert("아이디 혹은 비밀번호가 틀려요!");
		location.href="login_form.jsp?url=<%=encodedUrl%>";
	</script>
<%} %>
</body>
</html>
