
<%@page import="java.util.Random"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="bbs.dao.BbsDao"%>
<%@page import="bbs.dto.BbsDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>게시판</title>
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<style>
</style>
<body>
 	<%-- jsp:include(header) --%>
	<jsp:include page="../include/header.jsp"></jsp:include>
	<%-- //header --%>

	
<% 
	
	//로그인 된 아이디 읽어오기 (로그인을 하지 않으면 null 이다)
	String id=(String)session.getAttribute("id");
	
	//한 페이지에 나타낼 row 의 갯수
	final int PAGE_ROW_COUNT=10;
	//하단 디스플레이 페이지 갯수
	final int PAGE_DISPLAY_COUNT=5;

	
	//보여줄 페이지의 번호
	int pageNum=1;
	//보여줄 페이지의 번호가 파라미터로 전달되는지 읽어와 본다.	
	String strPageNum=request.getParameter("pageNum");
	if(strPageNum != null){//페이지 번호가 파라미터로 넘어온다면
		//페이지 번호를 설정한다.
		pageNum=Integer.parseInt(strPageNum);
	}
	//보여줄 페이지 데이터의 시작 ResultSet row 번호
	int startRowNum=1+(pageNum-1)*PAGE_ROW_COUNT;
	//보여줄 페이지 데이터의 끝 ResultSet row 번호
	int endRowNum=pageNum*PAGE_ROW_COUNT;
	/*
		검색 키워드에 관련된 처리 
	*/
	String keyword=request.getParameter("keyword"); //검색 키워드
	String condition=request.getParameter("condition"); //검색 조건
	if(keyword==null){//전달된 키워드가 없다면 
		keyword=""; //빈 문자열을 넣어준다. 
		condition="";
	}
	//인코딩된 키워드를 미리 만들어 둔다. 
	String encodedK=URLEncoder.encode(keyword);
	
	//검색 키워드와 startRowNum, endRowNum 을 담을 FileDto 객체 생성
	BbsDto dto=new BbsDto();
	dto.setStartRowNum(startRowNum);
	dto.setEndRowNum(endRowNum);
	//select 된 결과를 담을 List
	List<BbsDto> list=null;
	//전체 row 의 갯수를 담을 변수 
	int totalRow=0;
	if(!keyword.equals("")){ //만일 키워드가 넘어온다면 
		if(condition.equals("title_content")){
			//검색 키워드를 FileDto 객체의 필드에 담는다. 
			dto.setTitle(keyword);
			dto.setContent(keyword);
			//검색 키워드에 맞는 파일 목록 중에서 pageNum 에 해당하는 목록 얻어오기
			list=BbsDao.getInstance().getListTC(dto);
			//검색 키워드에 맞는 전체 글의 갯수를 얻어온다. 
			totalRow=BbsDao.getInstance().getCountTC(dto);
		}else if(condition.equals("title")){
			dto.setTitle(keyword);
			list=BbsDao.getInstance().getListT(dto);
			totalRow=BbsDao.getInstance().getCountT(dto);
		}else if(condition.equals("writer")){
			dto.setWriter(keyword);
			list=BbsDao.getInstance().getListW(dto);
			totalRow=BbsDao.getInstance().getCountW(dto);
		}
	}else{//검색 키워드가 없으면 전체 목록을 얻어온다.
		list=BbsDao.getInstance().getList(dto);
		totalRow=BbsDao.getInstance().getCount();
	}	
	//전체 페이지의 갯수 구하기
	int totalPageCount=
			(int)Math.ceil(totalRow/(double)PAGE_ROW_COUNT);
	//시작 페이지 번호
	int startPageNum=
		1+((pageNum-1)/PAGE_DISPLAY_COUNT)*PAGE_DISPLAY_COUNT;
	//끝 페이지 번호
	int endPageNum=startPageNum+PAGE_DISPLAY_COUNT-1;
	//끝 페이지 번호가 잘못된 값이라면 
	if(totalPageCount < endPageNum){
		endPageNum=totalPageCount; //보정해준다. 
	}
%>
 <!-- Page Content -->
	
	<!-- 게시판 -->
	<div class="container">
		
		<div style="text-align:center;">
			<h3>나만의 레시피 등록 게시판</h3>	
		</div>	
		<div style="text-align:right;">
			<a href = "private/insertform.jsp" class="btn btn-primary" >글쓰기</a>
		</div>
			<table class="table table-hover" style="text-align: center;"> 
				<thead >
					<tr>
						<th style="width: 100px;">번호</th>
						<th style="width: 400px;">제목</th>
						<th style="width: 100px;">작성자</th>
						<th style="width: 200px;">작성일</th>
						<th style="width: 100px;">조회수</th>
					</tr>
				</thead>
				<tbody>
				<%for(BbsDto tmp: list){ %>
					<tr>
						<td><%=tmp.getNum() %></td>
						<td><a href="detail.jsp?num=<%=tmp.getNum()%>"><%=tmp.getTitle() %></a></td>
						<td><%=tmp.getWriter() %></td>
						<td><%=tmp.getRegdate() %></td>
						<td><%=tmp.getViewCount() %></td>
					</tr>
				<%} %>
				</tbody>
			</table>
				<div class="page-display">
					<ul class="pagination pagination-sm">
					<%if(startPageNum != 1){ %>
						<li class="page-item"><a class="page-link" href="list.jsp?pageNum=<%=startPageNum-1 %>&condition=<%=condition %>&keyword=<%=encodedK %>">Prev</a></li>
					<%} %>
					<%for(int i=startPageNum; i<=endPageNum; i++){ %>
						<%if(i==pageNum){ %>
							<li class="page-item active"><a class="page-link" href="list.jsp?pageNum=<%=i %>&condition=<%=condition %>&keyword=<%=encodedK %>"><%=i %></a></li>
						<%}else{%>
							<li class="page-item"><a class="page-link" href="list.jsp?pageNum=<%=i %>&condition=<%=condition %>&keyword=<%=encodedK %>"><%=i %></a></li>
						<%} %>
					<%} %>	
					<%if(endPageNum < totalPageCount){ %>
						<li class="page-item"><a class="page-link" href="list.jsp?pageNum=<%=endPageNum+1 %>&condition=<%=condition %>&keyword=<%=encodedK %>">Next</a></li>
					<%} %>
					</ul>
				</div>
				<hr style="clear:left;"/>
				<form action="list.jsp" method="get">
					<label for="condition">검색조건</label>
					<select name="condition" id="condition">
						<option value="title_content" <%if(condition.equals("title_content")){ %>selected<%} %>>제목+내용</option>
						<option value="title" <%if(condition.equals("title")){ %>selected<%} %>>제목</option>
						<option value="writer" <%if(condition.equals("writer")){ %>selected<%} %>>작성자</option>
					</select>
					<input value="<%=keyword %>" type="text" name="keyword" placeholder="검색어..."/>
					<button class="btn-primary" type="submit">검색</button>
				</form>
	
	</div>
	

<%

	Random random = new Random();
	//int ran = random.nextInt(dto.getNum());
	//System.out.println(ran);
	//1. 전체 글의 갯수를 얻어온다  (15개) 
	int count=7;
	//2. 그 글의 갯수를 이용해서 랜덤한 정수 하나를 얻어낸다. (1~15 사이의 랜덤한 정수를 얻어낸다.)
	int ran=random.nextInt(count)+1;
	//3. 글을 정렬하고, rownum 을 부여해서 랜덤한 정수에 해당하는 rownum 을 가지고 있는 글 하나의 정보를 얻어낸다.
 	/* boolean rannum=BbsDao.getInstance().getrandom(dto); */
	
%>


	<!-- footer --> 
		<%-- jsp:include(footer) --%>
		<jsp:include page="../include/footer.jsp">
			<jsp:param value="sub_myrecipe" name="thisPage"/>
		</jsp:include>
	<!-- footer end--> 




</body>

</html>


