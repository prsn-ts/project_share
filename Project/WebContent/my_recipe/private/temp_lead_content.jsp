<%@page import="temp.myrecipe.dao.TempMyrecipeDao"%>
<%@page import="temp.myrecipe.dto.TempMyrecipeDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 로그인된 아이디를 읽어온다.
	String id=(String)session.getAttribute("id");
	//임시 저장된 내용을 표시할 준비를 한다.
	TempMyrecipeDto temp_dto = TempMyrecipeDao.getInstance().getTempWriteData(id);
	
	String content = temp_dto.getContent();
%>
<%=content %>
