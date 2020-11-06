<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<title>스크랩 목록</title>
</head>
<body class="pt-5">
	<!-- Navigation -->
	  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
	    <div class="container">
	      <a class="navbar-brand" href="#">Wobby</a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="navbar-toggler-icon"></span>
	      </button>
	      <div class="collapse navbar-collapse" id="navbarResponsive">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item active">
	            <a class="nav-link" href="#">My Page
	              <span class="sr-only">(current)</span>
	            </a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link" href="#">Clubs</a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link" href="#">Matching</a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link" href="#">Search</a>
	          </li>
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- Main jumbotron for a primary marketing message or call to action -->
<div class="jumbotron">
      <div class="container">
        <i class="far fa-star"></i> <h2><b>닉네임</b>님,
			<span class="text-primary"><b>1</b></span>개의 새로운 스크랩을 확인해보세요.<br>
	      </h2></div>
    </div>

    <div class="container pb-2">
      <table class="table table-hover">
              <thead>
                <tr>
                  <th>#</th>
                  <th></th>
                  <th></th>
                </tr>
              </thead>
              <tbody>
              <c:forEach var="i" begin="1" end="1">
              	<tr>
                  <td>${i}</td>
                  <td>커뮤잉즈</td>
                  <td><a href="#">게시글 제목 게시글 제목 게시글 제목 게시글 제목</a></td>
                  <td><input type="checkbox" value="delete"></td>
                </tr>
              </c:forEach>
              <c:forEach var="i" begin="2" end="15">
              	<tr>
                  <td>${i}</td>
                  <td>헬시솜</td>
                  <td><a class="text-muted" href="#">게시글 제목 게시글 제목 게시글 제목 게시글 제목</a></td>
                  <td><input type="checkbox" value="delete"></td>
                </tr>
              </c:forEach>
                <tr>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td><button class="btn btn-light" type="delete">삭제</button></td>
                </tr>
              </tbody>
            </table>
    </div> <!-- /container -->
    
    <div class="container pb-5">
	    <ul class="pagination justify-content-center">
				<li class="page-item"><a class="page-link" href="#">이전</a></li>
				<li class="page-item"><a class="page-link" href="#"><b>1</b></a></li>
				<li class="page-item"><a class="page-link" href="#">2</a></li>
				<li class="page-item"><a class="page-link" href="#">3</a></li>
				<li class="page-item"><a class="page-link" href="#">4</a></li>
				<li class="page-item"><a class="page-link" href="#">5</a></li>
				<li class="page-item"><a class="page-link" href="#">다음</a></li>
		</ul>
	</div>
</body>
</html>
