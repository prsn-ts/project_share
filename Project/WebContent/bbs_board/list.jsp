
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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width">
<title>jsp 게시판 웹사이트</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
</head>
<style>
</style>
<body>
<% 
	
	//로그인 된 아이디 읽어오기 (로그인을 하지 않으면 null 이다)
	String id=(String)session.getAttribute("id");
	
	//한 페이지에 나타낼 row 의 갯수
	final int PAGE_ROW_COUNT=5;
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
		if(condition.equals("title_name")){
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
	
    <!-- header --> 
	<div class="jumbotron py-5 text-center mb-0"> 
		<h1>나만의 레시피</h1> 
		<p>나만의 레시피를 등록하고 공유 해봐요!</p> 
	</div> 
	<!-- Topbar 네이바-->
    <nav class="navbar navbar-expand navbar-light bg-white topbar mb-3 static-top shadow">
    	<div class="container">
	        <div class="collapse navbar-collapse" id="collapsibleNavbar"> 
	       	 	<ul class="navbar-nav"> 
	        		<li class="nav-item"><a href="#" class="navbar-brand nav-link font-weight-bolder">요리</a></li> 
	       		 	<li class="nav-item"><a href="${pageContext.request.contextPath}/my_recipe/myrecipe.jsp" class="navbar-brand nav-link font-weight-bolder">나만의 조리법</a></li>
	       		 	<li class="nav-item"><a href="${pageContext.request.contextPath}/magazine/magazine.jsp" class="navbar-brand nav-link font-weight-bolder">매거진</a></li> 
	     	    </ul> 
	        </div>
	        <%if(id == null){ %>
	        	<ul class="navbar-nav ml-auto">
	            	<li class="nav-item dropdown no-arrow">     
	                  <span class="mr-2 d-none d-lg-inline text-gray-600 small">
	                  <a href="${pageContext.request.contextPath}/login/login_form.jsp">로그인</a>
	                  <a href="${pageContext.request.contextPath}/login/signup_form.jsp">회원가입</a>
	                  </span>            
	                </li>
	            </ul>
	        <%} %>
	        <!-- Topbar Navbar -->
	        <%if(id != null){ %>
	        <ul class="navbar-nav ml-auto">
	            	
	            	<!-- Nav Item - User Information -->
	            	<li class="nav-item dropdown no-arrow">
	                <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	                  <span class="mr-2 d-none d-lg-inline text-gray-600 small"><%=id %></span>
	                  <img class="img-profile rounded-circle" src="https://source.unsplash.com/QAB-WJcbgJk/60x60">
	                </a>
	            
	                <!-- Dropdown - User Information -->
	                
	                <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
		                  <a class="dropdown-item" href="login/private/info.jsp">
		                  	<%=id %>
		                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
		                    Profile
		                  </a>
		                  <a class="dropdown-item" href="#">
		                    <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
		                    Settings
		                  </a>
		                  <a class="dropdown-item" href="#">
		                    <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
		                    Activity Log
		                  </a>
	                  <div class="dropdown-divider"></div>
		                  <a class="dropdown-item" href="${pageContext.request.contextPath}/login/logout.jsp">
		                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
		                    Logout
		                  </a>
	               	</div>
	            </li>
	        </ul>
           	<%} %>
	    </div> 
    </nav>



	<!-- 게시판 -->

	<div class="container">
	
		<div class = "row" style="justify-content: flex-end;" >			
			<a href = "private/insertform.jsp" class="btn btn-primary">글쓰기</a>
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
							<option value="title_name" <%if(condition.equals("title_name")){ %>selected<%} %>>제목+내용</option>
							<option value="title" <%if(condition.equals("title")){ %>selected<%} %>>제목</option>
							<option value="writer" <%if(condition.equals("writer")){ %>selected<%} %>>작성자</option>
						</select>
						<input value="<%=keyword %>" type="text" name="keyword" placeholder="검색어..."/>
						<button class="btn-primary" type="submit">검색</button>
					</form>
		</div>
	</div>

	







	<!-- 애니매이션 담당 JQUERY -->

	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>

	<!-- 부트스트랩 JS  -->

	<script src="../js/bootstrap.js"></script>
	<!-- footer --> 
		<%-- jsp:include(footer) --%>
		<jsp:include page="../include/footer.jsp">
			<jsp:param value="sub_myrecipe" name="thisPage"/>
		</jsp:include>
	<!-- footer end-->


</body>

</html>


