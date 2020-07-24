<%@page import="myrecipe.dao.MyrecipeDao"%>
<%@page import="myrecipe.dto.MyrecipeDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String writer = (String)session.getAttribute("id");
	String imagePath = request.getParameter("showImage_path");
	String showImage = request.getParameter("showImage");
	
	//MyrecipeDto 에 파라미터 값을 저장한다.
	MyrecipeDto dto = new MyrecipeDto();
	dto.setWriter(writer);
	dto.setImagePath(imagePath);
	dto.setShowImage(showImage);
	
	//MyrecipeDao 에 dto 값을 저장한다.
	boolean isSuccess = MyrecipeDao.getInstance().showImage_update(dto);
	System.out.println("db에 이미지 저장 확인 : "+isSuccess);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
</body>
</html>