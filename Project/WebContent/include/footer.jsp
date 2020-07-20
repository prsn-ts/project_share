<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    //요청 파라미터 읽어내기
	String thisPage = request.getParameter("thisPage");
	String save_par = thisPage;
%>
	<div class="jumbotron text-center mt-5 mb-0"> 
		<%if(save_par.equals("myrecipe") || save_par.equals("sub_myrecipe")){ %>
			<h3 class="text-secondary">나만의 레시피</h3>
		<%} %>
		<%if(save_par.equals("magazine") || save_par.equals("sub_magazine")){ %>
			<h3 class="text-secondary">매거진</h3>
		<%} %>
		<p>Homepage is powered by 
			<span class="text-primary">3조</span> / Designed by 
			<span class="text-primary">3조</span>
		</p> 
	</div>
