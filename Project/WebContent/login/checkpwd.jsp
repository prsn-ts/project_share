<%@page import="test.login.dao.LoginDao"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//ajax 전송 파라미터를 읽어온다. ( data: "checkId="+checkId )
	String inputpwd=request.getParameter("inputpwd");
	//UsersDao  를 이용해서 해당 아이디가 존재 하는지 여부를 리턴받는다. 
	boolean isExistpwd=LoginDao.getInstance().isExistpwd(inputpwd);
%>    
{"isExistpwd":<%=isExistpwd %>}