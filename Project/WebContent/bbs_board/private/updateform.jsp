<%@page import="bbs.dao.BbsDao"%>
<%@page import="bbs.dto.BbsDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 뷰포트 -->
<meta name="viewport" content="width=device-width">
<!-- 스타일시트 참조  -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css">
<title>jsp 게시판 웹사이트</title>
<style>
	#content{
		width: 1080px;
		height: 500px;
	}
</style>
</head>
<body>
<%
	//로긴한사람이라면	 id라는 변수에 해당 아이디가 담기고 그렇지 않으면 null값
	String id = null;

	if (session.getAttribute("id") != null) {
		id = (String) session.getAttribute("id");
	}
%>
<%
	//1. 파라미터로 전달되는 수정할 글번호를 읽어온다.
	int num=Integer.parseInt(request.getParameter("num"));
	//2. DB 에서 글정보를 얻어온다.
	BbsDto dto=BbsDao.getInstance().getData(num);
	//3. 글 수정 폼을 응답한다.
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
		<div class="form-group" style="text-align: right;">
			<form method="post" action="update.jsp">
			<input type="hidden" name="num" value="<%=num %>"/>
				<table class="table table-striped"
					style="text-align: center; border: 1px solid #dddddd">
					<thead>
						<tr>
							<th colspan="2"
								style="background-color: #eeeeee; text-align: center;">게시판 수정</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="text" class="form-control" placeholder="글 수정" name="title" id="title" value="<%=dto.getTitle() %>"/></td>
						</tr>
						<tr>
							<td><textarea class="form-control" placeholder="글 내용" name="content" id="content" cols="30" rows="10"><%=dto.getContent() %></textarea></td>
						</tr>
					</tbody>
				</table>
				<a class="btn btn-secondary" href="../list.jsp" role="button">취소</a>
				<button type="submit" onclick="submitContents(this);" class="btn btn-primary pull-right" value="글수정">수정</button>
			</form>
		</div>
	</div>
	<%--
	[ SmartEditor 를 사용하기 위한 설정 ]
	
	1. WebContent 에 SmartEditor  폴더를 복사해서 붙여 넣기
	2. WebContent 에 upload 폴더 만들어 두기
	3. WebContent/WEB-INF/lib 폴더에 
	   commons-io.jar 파일과 commons-fileupload.jar 파일 붙여 넣기
	4. <textarea id="content" name="content"> 
	   content 가 아래의 javascript 에서 사용 되기때문에 다른 이름으로 바꾸고 
	      싶으면 javascript 에서  content 를 찾아서 모두 다른 이름으로 바꿔주면 된다. 
	5. textarea 의 크기가 SmartEditor  의 크기가 된다.
	6. 폼을 제출하고 싶으면  submitContents(this) 라는 javascript 가 
	      폼 안에 있는 버튼에서 실행되면 된다.
	 --%>
	<!-- SmartEditor 에서 필요한 javascript 로딩  -->
	<script src="${pageContext.request.contextPath }/SmartEditor/js/HuskyEZCreator.js"></script>
	<script>
		var oEditors = [];
		
		//추가 글꼴 목록
		//var aAdditionalFontSet = [["MS UI Gothic", "MS UI Gothic"], ["Comic Sans MS", "Comic Sans MS"],["TEST","TEST"]];
		
		nhn.husky.EZCreator.createInIFrame({
			oAppRef: oEditors,
			elPlaceHolder: "content",
			sSkinURI: "${pageContext.request.contextPath}/SmartEditor/SmartEditor2Skin.html",	
			htParams : {
				bUseToolbar : true,				// 툴바 사용 여부 (true:사용/ false:사용하지 않음)
				bUseVerticalResizer : true,		// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
				bUseModeChanger : true,			// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
				//aAdditionalFontList : aAdditionalFontSet,		// 추가 글꼴 목록
				fOnBeforeUnload : function(){
					//alert("완료!");
				}
			}, //boolean
			fOnAppLoad : function(){
				//예제 코드
				//oEditors.getById["ir1"].exec("PASTE_HTML", ["로딩이 완료된 후에 본문에 삽입되는 text입니다."]);
			},
			fCreator: "createSEditor2"
		});
		
		function pasteHTML() {
			var sHTML = "<span style='color:#FF0000;'>이미지도 같은 방식으로 삽입합니다.<\/span>";
			oEditors.getById["content"].exec("PASTE_HTML", [sHTML]);
		}
		
		function showHTML() {
			var sHTML = oEditors.getById["content"].getIR();
			alert(sHTML);
		}
		//폼에 저장 버튼을 누르면 호출되는 함수
		//<button type="submit" onclick="submitContents(this)";">저장</button>
		function submitContents(elClickedObj) {
			oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);	// 에디터의 내용이 textarea에 적용됩니다.
			
			// 에디터의 내용에 대한 값 검증은 이곳에서 document.getElementById("content").value를 이용해서 처리하면 됩니다.
			
			try {
				elClickedObj.form.submit(); //폼 강제 제출
			} catch(e) {}
		}
		
		function setDefaultFont() {
			var sDefaultFont = '궁서';
			var nFontSize = 24;
			oEditors.getById["content"].setDefaultFont(sDefaultFont, nFontSize);
		}
	</script>
	<!-- 애니매이션 담당 JQUERY -->
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<!-- 부트스트랩 JS  -->
	<script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
</body>
</html>