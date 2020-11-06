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
	<title>Login</title>
</head>
<body>
    <div class="col-xs-6 col-sm-4 py-5 container">
      <form class="form-signin">
        <h2 class="pb-2 text-center form-signin-heading">Wobby</h2>
        <label for="inputEmail" class="sr-only">아이디</label>
        <input type="text" id="inputEmail" class="form-control" placeholder="아이디" required="" autofocus="">
        <label for="inputPassword" class="sr-only">비밀번호</label>
        <input type="password" id="inputPassword" class="form-control" placeholder="비밀번호" required="">
	    <div class="py-1 row">
		    <div class="col-md-6 checkbox">
			  <label>
			    <input type="checkbox" value="remember-me">
			    <small> 아이디 기억</small>
			  </label>
	        </div>
	        <div class="col-md-6">
	          <a class="text-right" href="FindUserInfo.jsp"><p class="text-right"><small>아이디 / 비밀번호 찾기</small></p></a>
	        </div>
		</div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">로그인</button>
      </form>
      <div class="pt-1">
      	<button class="btn btn-lg btn-info btn-block"  onclick="location.href='SignUp.jsp'">가입하기</button>
      </div>
    </div>
</body>
</html>