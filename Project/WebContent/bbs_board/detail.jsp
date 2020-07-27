<%@page import="bbs.dao.BbsDao"%>
<%@page import="bbs.dto.BbsDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width">
<title>jsp 게시판 웹사이트</title><!-- CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<!-- customize css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
<!-- 글씨체 관련 -->
<link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
<!-- 아이콘 관련 -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome-4.7.0/css/font-awesome.min.css">
<!-- JS -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<%
	String id=(String)session.getAttribute("id");
	//파라미터로 전달되는 글번호를 읽어와서
	int num=Integer.parseInt(request.getParameter("num"));
	//글 하나의 정보를 DB 에서 읽어와서
	BbsDto dto=BbsDao.getInstance().getData(num);
	//3. 해당글의 조회수를 1 증가 시킨다.
	BbsDao.getInstance().addViewCount(num);
	//글정보를 응답한다. 
%>
</head>
<body>

 <!-- Page Content -->
	
    <%-- jsp:include(header) --%>
	<jsp:include page="../include/header.jsp">
		<jsp:param value="index" name="thisPage"/>
	</jsp:include>
	<%-- //jsp:include(header) --%>
	
	<!-- 게시판 -->

	<div class="container">
		<div class="form-group" style="text-align: right;">
		
				<table class="table table-striped"
					style="text-align: center; border: 1px solid #dddddd">
					<thead>
						<tr>
							<th colspan="2"
								style="background-color: #eeeeee; text-align: center;"><%=dto.getTitle() %></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>작성자 : <%=dto.getWriter() %></td>
						</tr>
						<tr>
							<td style="text-align: left;"><%=dto.getContent() %></td>
						</tr>
					</tbody>
				</table>
		</div>
		
	<%-- 
		글 작성자와 로그인 된 아이디가 같을때만 기능을 제공해 준다. 
		즉, 본인이 작성한 글만 수정할수 있도록 하기 위해
	--%>
	<div align="right">
	<a href="list.jsp" style="float: left;"  class="btn btn-primary" >목록</a>
	<%if(dto.getWriter().equals(id)){ %>
		<a class="btn btn-outline-warning" href="private/updateform.jsp?num=<%=dto.getNum() %>">
		<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-pencil-square" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
 		 	<path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456l-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
 			 <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
		</svg>
			수정
		</a>
		<a id="delete_btn" class="btn btn-outline-danger" href="private/delete.jsp?num=<%=dto.getNum() %>">
		<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-trash-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  			<path fill-rule="evenodd" d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5a.5.5 0 0 0-1 0v7a.5.5 0 0 0 1 0v-7z"/>
		</svg>
			삭제
		</a>
	<%} %>
	</div>
	</div>
		
		<script src="${pageContext.request.contextPath }/js/jquery-3.5.1.js"></script>
		<script>
		$("#delete_btn").click(function(){
		    if(confirm("정말 삭제하시겠습니까 ?") == true){
		        alert("삭제되었습니다");
		    }
		    else{
		        return ;
		    }
		});
		</script>

	<!-- footer --> 
		<%-- jsp:include(footer) --%>
		<jsp:include page="../include/footer.jsp">
			<jsp:param value="sub_myrecipe" name="thisPage"/>
		</jsp:include>
	<!-- footer end-->
</body>
</html>