<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 뷰포트 -->
<meta name="viewport" content="width=device-width">
<!-- CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<!-- customize css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
<!-- JS -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

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
	
 <!-- Page Content -->
	
    <%-- jsp:include(header) --%>
	<jsp:include page="../../include/header.jsp"></jsp:include>
	<%-- //header --%>


	<!-- 게시판 -->

	<div class="container" style="margin-top: 20px;">
		<div class="form-group" style="text-align: right;">
			<form method="post" action="insert.jsp">
				<table class="table table-striped"
					style="text-align: center; border: 1px solid #dddddd">
					<thead>
						<tr>
							<th colspan="2"
								style="background-color: #eeeeee; text-align: center;">게시판 글쓰기 양식</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="text" class="form-control" placeholder="글 제목" name="title" id="title"/></td>
						</tr>
						<tr>
							<td><textarea class="form-control" placeholder="글 내용" name="content" id="content" cols="30" rows="10">
								
							
							
							</textarea></td>
						</tr>
					</tbody>
				</table>
				<a class="btn btn-secondary" href="../list.jsp" role="button">취소</a>
				<button type="submit" onclick="submitContents(this);" class="btn btn-primary pull-right" value="글쓰기">글쓰기</button>
			</form>
		</div>
	</div>
	
	<!-- footer --> 
		<%-- jsp:include(footer) --%>
		<jsp:include page="../../include/footer.jsp">
			<jsp:param value="sub_bbs" name="thisPage"/>
		</jsp:include>
	<!-- footer end--> 
	
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

</body>
</html>

