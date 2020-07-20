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
	//프로필의 실제 이름을 저장할 변수
	String saveFileName = request.getParameter("profile_name");
	if(profile.equals("null") && saveFileName.equals("null")){ //프로필 이미지를 수정하지 않으면
		//문자열 "null"이 아닌 실제 null 값을 DB에 넣어준다.
		profile=null;
		saveFileName=null;
	}
	//수정할 정보를 UsersDto 객체에 담고
	LoginDto dto=new LoginDto();
	dto.setId(id);
	dto.setEmail(email);
	dto.setProfile(profile);
	dto.setSaveFileName(saveFileName);
	//UsersDao 객체를 이용해서 수정 반영한다.
	LoginDao.getInstance().update(dto);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/private/update.jsp</title>
</head>
<body>
	<script>
		alert("수정 했습니다.");
		location.href="${pageContext.request.contextPath }/index.jsp";
	</script>
</body>
</html>