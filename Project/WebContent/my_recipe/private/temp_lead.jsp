<%@page import="temp.myrecipe.dao.TempMyrecipeDao"%>
<%@page import="temp.myrecipe.dto.TempMyrecipeDto"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 로그인된 아이디를 읽어온다.
	String id=(String)session.getAttribute("id");
	//임시 저장된 내용을 표시할 준비를 한다.
	TempMyrecipeDto temp_dto = TempMyrecipeDao.getInstance().getTempWriteData(id);
%>
{"title":"<%=temp_dto.getTitle() %>", "subTitle":"<%=temp_dto.getSubTitle() %>",
"imagePath":"<%=temp_dto.getImagePath() %>", "showImage":"<%=temp_dto.getShowImage() %>", "content":"<%=temp_dto.getContent() %>"}
