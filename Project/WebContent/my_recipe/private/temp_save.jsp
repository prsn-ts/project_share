<%@page import="temp.myrecipe.dao.TempMyrecipeDao"%>
<%@page import="temp.myrecipe.dto.TempMyrecipeDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String writer = (String)session.getAttribute("id");
	String title=request.getParameter("title");
	String subTitle = request.getParameter("subTitle");
	String imagePath = request.getParameter("showImage_path");
	String showImage = request.getParameter("showImage_hidden");
	String content=request.getParameter("content");
	System.out.println(writer);
	System.out.println(title);
	System.out.println(subTitle);
	System.out.println(imagePath);
	System.out.println(showImage);
	System.out.println(content);
	
	//파라미터값을 임시 저장할 MyrecipeDto 객체 생성
	TempMyrecipeDto dto = new TempMyrecipeDto();
	dto.setWriter(writer);
	dto.setTitle(title);
	dto.setSubTitle(subTitle);
	dto.setImagePath(imagePath);
	dto.setShowImage(showImage);
	dto.setContent(content);
	System.out.println("dto.getContent() : "+dto.getContent());
	
	//tmp_my_recipe 테이블에 임시 저장된 값이 있는지 확인한다.
	boolean isSuccess = TempMyrecipeDao.getInstance().temp_insert_Confirm(dto.getWriter());
	
	//만약 이미 임시저장된 값이 있을 경우 임시 저장된 내용을 수정한다.
	if(isSuccess){
		//MyrecipeDao에 dto 값을 수정
		TempMyrecipeDao.getInstance().temp_update(dto);
	}
	//임시 저장된 값이 없을 경우 저장할 내용을 추가한다.
	else{
		//MyrecipeDao에 dto 값을 저장
		TempMyrecipeDao.getInstance().temp_insert(dto);
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
		alert("임시 저장 되었습니다.");
		location.href="${pageContext.request.contextPath}/my_recipe/private/insertform.jsp";
	</script>
</body>
</html>