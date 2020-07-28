<%@page import="bbs.dto.BbsDto"%>
<%@page import="bbs.dao.BbsDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. 파라미터로 전달되는 삭제할 파일의 번호를 읽어온다.
	int num=Integer.parseInt(request.getParameter("num"));
	//2. DB 에서 해당 파일의 정보를 읽어온다.
	BbsDto dto=BbsDao.getInstance().getData(num);
	//로그인된 아이디와 글 작성자가 같을때만 삭제 되도록한다.
	String id=(String)session.getAttribute("id");
	//만일 글작성자가 로그인된 아이디와 같지 않으면
	if(!dto.getWriter().equals(id)){
		//.sendError(에러코드, 에러메세지);
		response.sendError(HttpServletResponse.SC_FORBIDDEN, 
				"이 글의 작성자만 삭제 할수있습니다.");
		return; //메소드 끝내기 (servie() 메소드)
	}
	
	//4. DB 에서 해당 파일의 정보를 삭제한다.
	BbsDao.getInstance().delete(num);
	//5. 응답
	String cPath=request.getContextPath();
	response.sendRedirect(cPath+"/bbs_board/list.jsp");
%>    