<%@page import="test.bbs.dao.BbsDao"%>
<%@page import="test.bbs.dto.BbsDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//아이디값 읽어오기
	String writer = (String)session.getAttribute("id");
	//글 제목 파라미터 가져오기
	String title = request.getParameter("title");
	//글 내용 파라미터 가져오기
	String content = request.getParameter("content");
	
	//BbsDto 객체 생성
	BbsDto dto = new BbsDto();
	dto.setWriter(writer);
	dto.setTitle(title);
	dto.setContent(content);
	
	//BbsDao를 통해 DB에 dto 값 저장하기.
	Boolean isSuccess = BbsDao.getInstance().insert(dto);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%if(isSuccess == true){%>
		<script>
			alert("<%=writer%> 님 글이 등록되었습니다.");
			location.href="${pageContext.request.contextPath}/board_gallery/bbs.jsp";
		</script>
	<%}else{ %>
		<script>
			alert("글 등록이 실패했습니다.");
			location.href="${pageContext.request.contextPath}/board_gallery/private/write.jsp";
		</script>
	<%} %>
</script>
</body>
</html>