<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport"
		content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
	<!-- Optional JavaScript -->
	<!-- JS, Popper.js, and jQuery -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
	<!-- for Icon -->
	<script src="https://kit.fontawesome.com/cfb4151af4.js"	crossorigin="anonymous"></script>
	<title>아이디 찾기</title>
</head>
<body>
    <div class="col-xs-6 col-sm-4 py-5 container">
    	<div class="pb-5">
      		<form class="form-signin">
        	<h2 class="pb-2 text-center form-signin-heading">아이디 찾기</h2>
        	<i class="fab fa-diaspora"></i><b> 아이디 찾기</b>
        	<div class="py-2">
        		<div class="pb-2">
				<label for="inputName">이름</label> <input type="text"
						class="form-control" id="inputName" placeholder=""></div>
				<div><label for="InputEmail">이메일 주소</label> <input type="email"
						class="form-control" id="InputEmail"
					placeholder="example@example.com"></div>
			</div>
			</form>
			<div>
        	<button class="btn btn-lg btn-primary btn-block"
        		onclick="location.href='FindIdSuccess.jsp'">아이디 찾기</button>
        	</div>
		</div>
      <div class="pb-5">
      		<form class="form-signin">
        	<i class="fab fa-diaspora"></i><b> 비밀번호 찾기</b>
        	<div class="py-2">
        		<div class="pb-2">
        		<label for="InputId">ID</label> <input type="text"
						class="form-control" id="inputId" placeholder=""></div>
        		<div class="pb-2">
        		<label for="inputName">이름</label> <input type="text"
						class="form-control" id="inputName" placeholder=""></div>
				<div><label for="InputEmail">이메일 주소</label> <input type="email"
						class="form-control" id="InputEmail"
					placeholder="example@example.com"></div>
			</div>
			</form>
			<div>
        	<button class="btn btn-lg btn-info btn-block"
        		onclick="location.href='FindPwSuccess.jsp';">비밀번호 찾기</button>
        	</div>
		</div>
    </div>
</body>
</html>