<%@page import="myrecipe.dao.MyrecipeDao"%>
<%@page import="java.util.List"%>
<%@page import="myrecipe.dto.MyrecipeDto"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>나만의 레시피</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
<% 
	
	//로그인 된 아이디 읽어오기 (로그인을 하지 않으면 null 이다)
	String id=(String)session.getAttribute("id");
	
	//한 페이지에 나타낼 row 의 갯수
	final int PAGE_ROW_COUNT=8;
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
	MyrecipeDto dto=new MyrecipeDto();
	dto.setStartRowNum(startRowNum);
	dto.setEndRowNum(endRowNum);
	//select 된 결과를 담을 List
	List<MyrecipeDto> list=null;
	//전체 row 의 갯수를 담을 변수 
	int totalRow=0;
	if(!keyword.equals("")){ //만일 키워드가 넘어온다면 
		if(condition.equals("title_content")){
			//검색 키워드를 FileDto 객체의 필드에 담는다. 
			dto.setTitle(keyword);
			dto.setContent(keyword);
			//검색 키워드에 맞는 파일 목록 중에서 pageNum 에 해당하는 목록 얻어오기
			list=MyrecipeDao.getInstance().getListTC(dto);
			//검색 키워드에 맞는 전체 글의 갯수를 얻어온다. 
			totalRow=MyrecipeDao.getInstance().getCountTC(dto);
		}else if(condition.equals("title")){
			dto.setTitle(keyword);
			list=MyrecipeDao.getInstance().getListT(dto);
			totalRow=MyrecipeDao.getInstance().getCountT(dto);
		}else if(condition.equals("writer")){
			dto.setWriter(keyword);
			list=MyrecipeDao.getInstance().getListW(dto);
			totalRow=MyrecipeDao.getInstance().getCountW(dto);
		}
	}else{//검색 키워드가 없으면 전체 목록을 얻어온다.
		list=MyrecipeDao.getInstance().getList(dto);
		totalRow=MyrecipeDao.getInstance().getCount();
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
	<%-- jsp:include(header) --%>
	<jsp:include page="../include/header.jsp"></jsp:include>
	<%-- //header --%>
	
	<!-- Page Content -->
	<div class="myrecipe_part" style="background-color: #d8d8d8;">
		<div class="container">
			<div class="pb-4"></div>
			<div class="row_all p-3" style="border: 1px solid #dfdfdf; background-color: #f2f2f2;">
			
			<div class=" my-4">
				<h3 style="text-shadow: 2px 2px 4px gray;">나만의 레시피</h3>
				<div class="write_btn" style="width:100%; text-align: right;">
				  	<button type="submit" class="btn btn-outline-success" onclick="location.href='${pageContext.request.contextPath}/my_recipe/private/insertform.jsp';">레시피 작성하기</button>
				</div>
			</div>

				<!-- Page Features -->
				<div class="row text-center" >
				<%for(MyrecipeDto tmp: list){ %>
				  <div class="card_one col-lg-3 col-md-6 mb-4" style=" cursor: pointer;" onclick="location.href='sub_myrecipe.jsp?num=<%=tmp.getNum()%>';">
				    <div class="card h-100">
				    <%if(tmp.getImagePath() != null){ %>
				      <img class="card-img-top" src="${pageContext.request.contextPath}<%=tmp.getImagePath() %>" alt="">
				    <%}else if(tmp.getImagePath() == null){ %>
				      <img class="card-img-top" src="${pageContext.request.contextPath}/images/basic_img.png" alt="">
				    <%} %>
				      <div class="card-body">
				        <h4 class="card-title"><%=tmp.getTitle() %></h4>
				        <p class="card-text"><%=tmp.getSubTitle() %> </p>
				        <p class="card-text">작성일자 : <%=tmp.getRegdate() %> </p>
				      </div>
				      <div class="card-footer">
				        <a href="sub_myrecipe.jsp?num=<%=tmp.getNum()%>" class="btn btn-primary">레시피 보러가기!</a>
				      </div>
				    </div>
				  </div>
				 <%} %>
				<%--
				  <div class="card_one col-lg-3 col-md-6 mb-4">
				    <div class="card h-100">
				      <img class="card-img-top" src="http://placehold.it/500x325" alt="">
				      <div class="card-body">
				        <h4 class="card-title">Card title</h4>
				        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo magni sapiente, tempore debitis beatae culpa natus architecto.</p>
				      </div>
				      <div class="card-footer">
				        <a href="#" class="btn btn-primary">Find Out More!</a>
				      </div>
				    </div>
				  </div>
				
				  <div class="card_one col-lg-3 col-md-6 mb-4">
				    <div class="card h-100">
				      <img class="card-img-top" src="http://placehold.it/500x325" alt="">
				      <div class="card-body">
				        <h4 class="card-title">Card title</h4>
				        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque.</p>
				      </div>
				      <div class="card-footer">
				        <a href="#" class="btn btn-primary">Find Out More!</a>
				      </div>
				    </div>
				  </div>
				
				  <div class="card_one col-lg-3 col-md-6 mb-4">
				    <div class="card h-100">
				      <img class="card-img-top" src="http://placehold.it/500x325" alt="">
				      <div class="card-body">
				        <h4 class="card-title">Card title</h4>
				        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo magni sapiente, tempore debitis beatae culpa natus architecto.</p>
				      </div>
				      <div class="card-footer">
				        <a href="#" class="btn btn-primary" >Find Out More!</a>
				      </div>
				    </div>
				  </div>
				  
				  <div class="card_one col-lg-3 col-md-6 mb-4">
				    <div class="card h-100">
				      <img class="card-img-top" src="http://placehold.it/500x325" alt="">
				      <div class="card-body">
				        <h4 class="card-title">Card title</h4>
				        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque.</p>
				      </div>
				      <div class="card-footer">
				        <a href="#" class="btn btn-primary">Find Out More!</a>
				      </div>
				    </div>
				  </div>
				  
				  <div class="card_one col-lg-3 col-md-6 mb-4">
				    <div class="card h-100">
				      <img class="card-img-top" src="http://placehold.it/500x325" alt="">
				      <div class="card-body">
				        <h4 class="card-title">Card title</h4>
				        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque.</p>
				      </div>
				      <div class="card-footer">
				        <a href="#" class="btn btn-primary">Find Out More!</a>
				      </div>
				    </div>
				  </div>
				  
				  <div class="card_one col-lg-3 col-md-6 mb-4">
				    <div class="card h-100">
				      <img class="card-img-top" src="http://placehold.it/500x325" alt="">
				      <div class="card-body">
				        <h4 class="card-title">Card title</h4>
				        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque.</p>
				      </div>
				      <div class="card-footer">
				        <a href="#" class="btn btn-light-primary">Find Out More!</a>
				      </div>
				    </div>
				  </div>
				  
				  <div class="card_one col-lg-3 col-md-6 mb-4">
				    <div class="card h-100">
				      <img class="card-img-top" src="http://placehold.it/500x325" alt="">
				      <div class="card-body">
				        <h4 class="card-title">Card title</h4>
				        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque.</p>
				      </div>
				      <div class="card-footer">
				        <a href="#" class="btn btn-primary">Find Out More!</a>
				      </div>  
				    </div>
				  </div>
				  --%>
				</div>
				
				<!-- //.row -->
				<div class="search_form" style="float:right;">
					<form action="myrecipe.jsp" method="get">
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
				<div class="page-display">
					<ul class="pagination pagination-sm">
					<%if(startPageNum != 1){ %>
						<li class="page-item"><a class="page-link" href="myrecipe.jsp?pageNum=<%=startPageNum-1 %>&condition=<%=condition %>&keyword=<%=encodedK %>">Prev</a></li>
					<%} %>
					<%for(int i=startPageNum; i<=endPageNum; i++){ %>
						<%if(i==pageNum){ %>
							<li class="page-item active"><a class="page-link" href="myrecipe.jsp?pageNum=<%=i %>&condition=<%=condition %>&keyword=<%=encodedK %>"><%=i %></a></li>
						<%}else{%>
							<li class="page-item"><a class="page-link" href="myrecipe.jsp?pageNum=<%=i %>&condition=<%=condition %>&keyword=<%=encodedK %>"><%=i %></a></li>
						<%} %>
					<%} %>	
					<%if(endPageNum < totalPageCount){ %>
						<li class="page-item"><a class="page-link" href="myrecipe.jsp?pageNum=<%=endPageNum+1 %>&condition=<%=condition %>&keyword=<%=encodedK %>">Next</a></li>
					<%} %>
					</ul>
				</div>				
			</div>
			<!-- //.row_all -->
		<div class="pt-4"></div>
		</div>
		<!-- //.container -->
	</div>
	<!-- //Page Content -->
	
	<!-- footer --> 
		<%-- jsp:include(footer) --%>
		<jsp:include page="../include/footer.jsp">
			<jsp:param value="sub_myrecipe" name="thisPage"/>
		</jsp:include>
	<!-- footer end-->

</body>
</html>