<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//작성자 읽어오기
	String writer = (String)session.getAttribute("id");
	//글 제목 파라미터 가져오기
	String title = request.getParameter("title");
	//서브 타이틀 파라미터 가져오기
	String subTitle = request.getParameter("subTitle");
	//대표 이미지 파라미터 가져오기
	String showImage = request.getParameter("showImage");
	//스마트 에디터(content) 파라미터 가져오기
	String content = request.getParameter("content");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/insert.jsp</title>
<style>
	#content{
		width: 99.5%;
		border: 1px dotted red #cecece;
		box-shadow: 3px 3px 5px 6px #ccc;
	}
</style>
</head>
<body>
<%
	//String title=request.getParameter("title");
	//String content=request.getParameter("content");
	System.out.println(content);
%>
<p><%=title %></p>
<div id="content"><%=content %></div>
</body>
</html>