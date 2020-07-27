<%@page import="temp.myrecipe.dao.TempMyrecipeDao"%>
<%@page import="temp.myrecipe.dto.TempMyrecipeDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String writer = (String)session.getAttribute("id");
	System.out.println("temp_delete.jsp 안에서의 writer 값 : "+writer);
	
	//tmp_my_recipe 테이블에 임시 저장된 값이 있는지 확인한다.
	boolean isSuccess = TempMyrecipeDao.getInstance().temp_delete(writer);
	System.out.println("temp_delete.jsp 안에서의 isSuccess 값 : "+isSuccess);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%if(isSuccess){ %>
		<script>
			alert("임시 저장된 내용을 삭제했습니다.");
			location.href="${pageContext.request.contextPath}/my_recipe/private/insertform.jsp";
		</script>
	<%}else{ %>
		<script>
			alert("임시 저장된 내용 삭제에 실패했습니다.. 다시 시도해주세요.");
			location.href="${pageContext.request.contextPath}/my_recipe/private/insertform.jsp";
	</script>
	<%} %>
</body>
</html>