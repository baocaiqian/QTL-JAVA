<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/home/header.css" rel="stylesheet">
<link href="css/home/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/user/createxc.css">
<script src="js/home/jquery-1.11.3.min.js"></script>
<script src="js/home/bootstrap.min.js"></script>
<script src="js/home/swiper.min.js"></script>
<script src="js/home/main.js"></script>
</head>
<body>
<jsp:include page="header.jsp" flush="true"></jsp:include>
	<div class="all">
		<div class="left" style="margin-top: 5%;back">
			<div class="tit">已选目的地</div>
			<div class="titna" >从右侧添加想去的地点</div>
			<div class="tianjia">+手动添加地点</div>
			<div class="bian">
				<div class="bj">
					<a href="createer.jsp">开始编辑</a>
				</div>
			</div>
		</div>
		<div class="myright" style="margin-top: 5%">
			<div class="shang">
				<div class="ti1">热门推荐</div>
				<div class="ssk">
					<form>
						<input type="text" style="width: 240px; height: 23px"> <input
							type="submit" style="width: 40px; height: 25px" value="搜索">
					</form>
				</div>
			</div>
			<div class="jd9">
				<div class="dian1">
					<img src="img/c1.jpg" onclick="add()">
					<div class="ming1">抱犊寨</div>
				</div>
				<div class="dian2">
					<img src="img/c2.jpg" onclick="add()">
					<div class="ming2">正定古城墙</div>
				</div>
				<div class="dian3">
					<img src="img/c3.jpg" onclick="add()">
					<div class="ming3">河北博物馆</div>
				</div>
				<div class="dian4" onclick="add()">
					<img src="img/c4.jpg">
					<div class="ming4">赵云庙</div>
				</div>
				<div class="dian5" onclick="add()">
					<img src="img/c5.jpg">
					<div class="ming5">赵州桥</div>
				</div>
				<div class="dian6" onclick="add()">
					<img src="img/c6.jpg">
					<div class="ming5">开元寺</div>
				</div>
				<div class="dian7" onclick="add()">
					<img src="img/c7.jpg">
					<div class="ming7">荣国府</div>
				</div>
				<div class="dian8" onclick="add()">
					<img src="img/c8.jpg">
					<div class="ming8">柏林禅寺</div>
				</div>
				<div class="dian9" onclick="add()">
					<img src="img/c9.jpg">
					<div class="ming9">空中花园</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" flush="true"></jsp:include>
	<script type="text/javascript">
		function add() {
			
		}
	</script>
</body>
</html>