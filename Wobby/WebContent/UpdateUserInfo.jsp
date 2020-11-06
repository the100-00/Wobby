<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
<!-- Optional JavaScript -->
<!-- JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
	integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
	integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
	crossorigin="anonymous"></script>
<!-- for Icon -->
<script src="https://kit.fontawesome.com/cfb4151af4.js"
	crossorigin="anonymous"></script>
<title>회원정보 수정</title>
</head>
<body class="pt-5">
	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a class="navbar-brand" href="#">Wobby</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link" href="#">My
							Page <span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Clubs</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Matching</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#">Search</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="col-xs-6 col-sm-4 py-5 container">
		<form class="form-signin">
			<h2 class="pb-2 text-center form-signin-heading">회원 정보 수정</h2>
			<div class="form-group">
				<label for="inputName">아이디</label> <input type="text"
					class="form-control" id="inputId" placeholder="userId" disabled>
			</div>
			<div class="form-group">
				<label for="inputPassword">비밀번호</label> <input type="password"
					class="form-control" id="inputPassword" placeholder="">
			</div>
			<div class="form-group">
				<label for="inputPasswordCheck">비밀번호 확인</label> <input
					type="password" class="form-control" id="inputPasswordCheck"
					placeholder="">
			</div>
			<div class="form-group">
				<label for="inputName">이름</label> <input type="text"
					class="form-control" id="inputName" placeholder="">
			</div>
			<div class="form-group">
				<label for="inputName">닉네임</label> <input type="text"
					class="form-control" id="inputNickName" placeholder="">
			</div>
			<div class="form-group">
				<label for="InputEmail">이메일 주소</label> <input type="email"
					class="form-control" id="InputEmail"
					placeholder="example@example.com">
			</div>
			<div class="form-group">
				<label for="inputName">생년월일</label>
				<div class="row">
					<div class="col-md-4">
						<input type="text" class="form-control" id="InputYear"
							placeholder="1998" disabled>
					</div>
					<div class="col-md-4 btn-group">
						<button type="button"
							class="btn btn-default dropdown-toggle btn-block"
							data-toggle="dropdown" aria-expanded="false" disabled>
							5 <span class="caret"></span>
						</button>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#">6</a></li>
							<li><a href="#">7</a></li>
							<li><a href="#">8</a></li>
							<li><a href="#">9</a></li>
							<li><a href="#">10</a></li>
							<li><a href="#">11</a></li>
							<li><a href="#">12</a></li>
						</ul>
					</div>
					<div class="col-md-4">
						<input type="text" class="form-control" id="InputYear"
							placeholder="2" disabled>
					</div>
				</div>
			</div>
			<div class="pt-2 form-group">
				<label for="selectHobby"><i class="fab fa-diaspora"></i> 취미
					선택 <small> <br>당신의 취미를 선택하세요. 이를 기반으로 맞춤 클럽과 전문가를
						추천해드립니다!<br></small></label>
				<div class="btn-group btn-group-justified pt-1 btn-block"
					data-toggle="buttons-checkbox">
					<button type="button" class="btn btn-light">
						<i class="fas fa-futbol"></i><br> <small>운동</small>
					</button>
					<button type="button" class="btn btn-light">
						<i class="fas fa-book-reader"></i><br> <small>독서</small>
					</button>
					<button type="button" class="btn btn-light">
						<i class="fas fa-palette"></i><br> <small>미술</small>
					</button>
					<button type="button" class="btn btn-light">
						<i class="fas fa-language"></i><br> <small>어학</small>
					</button>
					<button type="button" class="btn btn-light">
						<i class="fas fa-pizza-slice"></i><br> <small>요리</small>
					</button>
					<button type="button" class="btn btn-light">
						<i class="fas fa-gamepad"></i><br> <small>게임</small>
					</button>
					<button type="button" class="btn btn-light">
						<i class="fas fa-music"></i><br> <small>음악</small>
					</button>
					<button type="button" class="btn btn-light">
						<i class="fas fa-chart-line"></i><br> <small>재테크</small>
					</button>
					<button type="button" class="btn btn-light">
						<i class="fas fa-icons"></i><br> <small>기타</small>
					</button>
				</div>
			</div>
			<div class="pt-2 form-group">
				<label for="selectHobby"><i class="fab fa-diaspora"></i> 성향
					선택 <small> <br>당신의 MBTI를 선택하세요. 당신의 성향에 맞는 취미를
						추천해드립니다.<br></small></label>
				<div class="btn-group btn-group-justified pt-1 btn-block"
					data-toggle="buttons-radio">
					<button type="button" class="btn btn-light">E</button>
					<button type="button" class="btn btn-light">I</button>
				</div>
				<div class="btn-group btn-group-justified btn-block"
					data-toggle="buttons-radio">
					<button type="button" class="btn btn-light">N</button>
					<button type="button" class="btn btn-light">S</button>
				</div>
				<div class="btn-group btn-group-justified btn-block"
					data-toggle="buttons-radio">
					<button type="button" class="btn btn-light">F</button>
					<button type="button" class="btn btn-light">T</button>
				</div>
				<div class="btn-group btn-group-justified btn-block"
					data-toggle="buttons-radio">
					<button type="button" class="btn btn-light">P</button>
					<button type="button" class="btn btn-light">J</button>
				</div>
			</div>
			<div class="py-2 form-group">
				<label for="selectHobby"><i class="fab fa-diaspora"></i> 지역
					선택<small> <br>당신의 지역을 선택하세요. 당신의 지역에서 친구와 클럽을 찾아드립니다.<br></small></label>
				<div class="row">
					<div class="col-md-4">
						<input type="text" class="form-control" id="InputYear"
							placeholder="시도">
					</div>
					<div class="col-md-4">
						<input type="text" class="form-control" id="InputYear"
							placeholder="시군구">
					</div>
					<div class="col-md-4">
						<input type="text" class="form-control" id="InputYear"
							placeholder="읍면동">
					</div>
				</div>
			</div>
			<div class="pb-5">
				<p class="text-right"><a href="#">탈퇴하기</a></p>
				<button class="btn btn-lg btn-info btn-block" type="submit">수정완료</button>
			</div>
		</form>
	</div>
</body>
</html>
