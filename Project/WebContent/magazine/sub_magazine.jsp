<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
	<%-- jsp:include(header) --%>
	<jsp:include page="../include/header.jsp"></jsp:include>
    <!-- End of Topbar -->
	
	<!-- content part -->
	<div style="background-color: #d8d8d8; padding:20px;">
		<div class="container">
			<div class="row row-cols-1 row-cols-md-1">
				<div style="background-color: #f2f2f2">
					<div class="col my-4">	
						<div class="card h-100">
							<div align="center">
								<img class="img-fluid" src="../images/mag1.png" style="width: 600px; height:600px;" >
							</div>
							<div class="card-body" >	
								<h5 class="card-title">키 성장에 아주 중요해요!</h5>
								<p class="card-text">
									성장기에 있는 아이들은 근육 형성을 위한 단백질,
									뼈에 영양 공급을 하는 칼슘, 세포 구성 성분인 지방,
									대사 관련 물질인 비타민과 미네랄을 충분히 섭취해야 하며
									모든 영양소가 고농도로 함유된 우유를 섭취함으로써 성장을 촉진할 수 있다고 합니다
									우유를 마시면 키가 잘 크는 이유는
									우유에 함유된 양질의 단백질이 성장 촉진 효과를 발휘하기 때문입니다
									우유에 들어있는 유청 단백질은 몸을 구성하는데 효과적이고
									단백질의 일종인 콜라겐은 뼈를 만드는 작용을 합니다
								</p>
							</div>
						</div>
					</div>
					
					<div class="col mb-4">	
						<div class="card h-100">
							<div align="center">
								<img class="img-fluid" src="../images/mag2.png" style="width: 600px; height:600px;" >
							</div>
							<div class="card-body" >	
								<h5 class="card-title">골다골증을 예방해줘요!</h5>
								<p class="card-text">
									우유 안에는 뼈를 튼튼하게 해주는 칼슘이 많아
									키크고 싶은 학생들, 튼튼하게 크고 싶은 학생들에게
									가장 추천해주는 음식이에요
									사실 칼슘은 다른 음식에도 많은데요
									그 음식들을 다 제치고 우유가 추천 1위로 뽑힌 것은
									바로 체내 칼슘흡수율 때문인데요
									다른 식품들이 4% ~ 25% 흡수율을 보인다면
									우유는 무려 40%를 자랑하고 있었어요
									장수에 있어서 뼈 건강은 필수인데
									우유를 섭취해주면 튼튼한 뼈를 만들 수 있겠죠?<br><br>
								</p>
							</div>
						</div>
					</div>
					
					<div class="col mb-4">	
						<div class="card h-100">
							<div align="center">
								<img class="img-fluid" src="../images/mag2.png" style="width: 600px; height:600px;" >
							</div>
							<div class="card-body" >	
								<h5 class="card-title">두뇌가 발달한다!</h5>
								<p class="card-text">
									두뇌 작용이 활발하게 이뤄지려면 무엇보다 균형 잡힌 영양소를 섭취해야 한다. 
									이런 의미에서 우유는 단일 식품으로는 손꼽히는 두뇌 개발 식품이라고 할 수 있다.<br> 우유에는 여러 가지 영양소가 균형 있게 함유되어 있는데,
									 각 영양소는 서로 상호 작용을 해 우유만 마셔도 영양소 효율성이 매우 높기 때문이다.
									<br>특히 우유에는 두뇌 발달에 필요한 영양소가 가득하다. 우유 속의 유당은 칼슘 및 마그네슘, 아연 등의 체내 흡수를 촉진시킬 뿐 아니라, 
									뇌 세포막에 필요한 갈락토오스의 연료인 포도당을 공급한다.<br> 뇌신경계의 당지질에는 갈락토오스가 많이 포함되어 있는데, 
									적절한 양의 갈락토오스를 섭취하면 두뇌 활동이 활발해진다.
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- footer --> 
		<%-- jsp:include(footer) --%>
		<jsp:include page="../include/footer.jsp">
			<jsp:param value="magazine" name="thisPage"/>
		</jsp:include>
	<!-- footer end-->
</body>
</html>