<%@page import="myrecipe.dao.MyrecipeDao"%>
<%@page import="myrecipe.dto.MyrecipeDto"%>
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
	
	//MyrecipeDto 객체 생성
	MyrecipeDto dto = new MyrecipeDto();
	dto.setWriter(writer);
	dto.setTitle(title);
	dto.setSubTitle(subTitle);
	dto.setShowImage(showImage);
	dto.setContent(content);
	
	//MyrecipeDao 를 통해 dto 값 저장하기.
	Boolean isSuccess = MyrecipeDao.getInstance().insert(dto);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/insert.jsp</title>
</head>
<body>
	<%if(isSuccess == true){%>
		<script>
			alert("<%=writer%> 님 글이 등록되었습니다.");
			location.href="${pageContext.request.contextPath}/my_recipe/myrecipe.jsp";
		</script>
	<%}else{ %>
		<script>
			alert("글 등록이 실패했습니다.");
			location.href="${pageContext.request.contextPath}/my_recipe/private/insertform.jsp";
		</script>
	<%} %>
</body>
</html>