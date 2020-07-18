<%@page import="test.login.dao.LoginDao"%>
<%@page import="test.login.dto.LoginDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id=(String)session.getAttribute("id");
	//수정할 이메일 주소
	String email=request.getParameter("email");
	//수정할 프로파일 
	String profile = request.getParameter("profile");
	if(!profile.equals("null")){ //프로필 이미지 경로가 존재하는 경우(null이 아닌 경우)
		//문자열 "null"이 아닌 실제 null 값을 DB에 넣어준다.
		profile=null;
	}
	//수정할 정보를 LoginDto 객체에 담고
	LoginDto dto=new LoginDto();
	dto.setId(id);
	dto.setEmail(email);
	dto.setProfile(profile);
	//LoginDao 객체를 이용해서 수정 반영한다.
	LoginDao.getInstance().profile_delete(dto);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/private/profile_delete.jsp</title>
</head>
<body>
	<script>
		alert("프로필 사진을 삭제했습니다.");
		location.href="${pageContext.request.contextPath}/index.jsp";
	</script>
</body>
</html>