<%@page import="java.io.File"%>
<%@page import="test.login.dao.LoginDao"%>
<%@page import="test.login.dto.LoginDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id=(String)session.getAttribute("id");
	//수정할 프로파일 
	String profile = request.getParameter("profile");
	//프로필의 실제 이름을 저장할 변수
	String saveFileName = request.getParameter("profile_name");
	
	if(!profile.equals("null") && !saveFileName.equals("null")){ //프로필 이미지 경로와 실제 이름이 존재하는 경우(null이 아닌 경우)
		//문자열 "null"이 아닌 실제 null 값을 DB에 넣어준다.
		profile=null;
	}
	//삭제할 파일의 실제 경로 알아내기
	String path=application.getRealPath("/upload")
			+File.separator+saveFileName;
	System.out.println(saveFileName);
	//파일 객체 생성 후 파일 삭제
	File file = new File(path);
	if(file.exists()){
		if(file.delete()){
			System.out.println("삭제 성공!");
		}else{
			System.out.println("삭제 실패..");
		}
	}else{ 
		System.out.println("파일이 존재하지 않습니다.");
	}
	//DB에 저장하기전에 saveFileName 변수 값이 문자열 "null"인지 확인 후 null인 경우 실제 null값을 대입.
	//이 조건문을 하는 이유는 위에서 받은 profile_name의 파라미터 값을 파일 삭제하기 전에 null로 바꿔서 파일 삭제가 안되는 것을 방지하기 위함.
	//파일 삭제가 끝난 후 파일 삭제가 되어서 비었다는 의미로 null로 대입.
	if(!saveFileName.equals("null")){
		saveFileName=null;
	}
	
	//수정할 정보를 LoginDto 객체에 담고
	LoginDto dto=new LoginDto();
	dto.setId(id);
	dto.setProfile(profile);
	dto.setSaveFileName(saveFileName);
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