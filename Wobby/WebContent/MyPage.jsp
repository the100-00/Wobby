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
<title>마이페이지</title>
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
        <h2><b>닉네임</b>님, 안녕하세요!</h2>
        <p><a class="btn btn-light btn-sm" href="UpdateUserInfo.jsp" role="button">회원 정보 관리 ></a></p>
      </div>
    </div>

    <div class="container">
      <!-- Example row of columns -->
      <div class="row">
        <div class="col-md-4">
          <div class="pb-2">
	          <h4><b>알림</b></h4>
	          <i class="far fa-bell"></i> <span class="text-primary"><b>3</b></span>개의 새로운 알림이 있습니다.<br>
	      </div>
	      <div class="pb-3">
	      <small>
			<a class="text-muted"><i class="fas fa-angle-right "></i>
				[댓글] <b>과제</b> 글에 댓글 <b>2</b>개가 달렸습니다.<br></a>
			<a class="text-muted"><i class="fas fa-angle-right "></i>
				[답글] <b>과제</b> 글에 답글 <b>1</b>개가 달렸습니다.<br></a>
			<a class="text-muted"><i class="fas fa-angle-right "></i>
				[댓글] <b>데베프</b> 글에 댓글 <b>1</b>개가 달렸습니다.<br></a>
		  </small>
		  </div>
		  <p><a class="btn btn-light" href="NotiList.jsp" role="button">알림 더 보기</a></p>
        </div>
        <div class="col-md-4">
          <div class="pb-2">
	          <h4><b>쪽지</b></h4>
	          <i class="far fa-envelope"></i> <span class="text-primary"><b>10</b></span>개의 새로운 쪽지가 도착했습니다.<br>
	      </div>
	      <div class="pb-3">
	      <small>
			<a class="text-muted pb-1"><i class="fas fa-angle-right "></i>
				<b>명지 </b> | 20.10.06  |  홈 UI 파일 <br></a>
			<a class="text-muted pb-1"><i class="fas fa-angle-right "></i>
				<b>지원 </b> | 20.10.05  |  팀프로젝트 게시판에..<br></a>
			<a class="text-muted pb-1"><i class="fas fa-angle-right "></i>
				<b>연이 </b> | 20.10.01  |  다음 회의<br></a>
		  </small>
		  </div>
		  <p><a class="btn btn-light" href="#" role="button">쪽지 더 보기</a></p>
        </div>
        <div class="col-md-4">
          <div class="pb-2">
	          <h4><b>스크랩함</b></h4>
	          <i class="far fa-star"></i> <span class="text-primary"><b>1</b></span>개의 새로운 스크랩이 추가되었습니다.<br>
	      </div>
	      <div class="pb-3">
	      <small>
			<a class="text-muted pb-1"><i class="fas fa-angle-right "></i>
				<b>커뮤잉즈 </b> | UI 구상에 부트스트랩을 활용하는 법<br></a>
			<a class="text-muted pb-1"><i class="fas fa-angle-right "></i>
				<b>헬시솜 </b> | 효율적으로 단백질 섭취하기!<br></a>
			<a class="text-muted pb-1"><i class="fas fa-angle-right "></i>
				<b>다독이다 </b> | 개인적으로 추천하는 책 목록이에요<br></a>
		  </small>
		  </div>
		  <p><a class="btn btn-light" href="ScrapList.jsp" role="button">스크랩함 보기</a></p>
        </div>
      </div>
      
      <hr>
      
      <div class="container">
      <h4><b>가입 클럽 목록</b></h4>
      </div>
      <hr>
      <div class="container">
      <h4><b>내가 쓴 글</b></h4>
      </div>
      
      <hr>
      <footer>
        <p>Company 2014</p>
      </footer>
    </div> <!-- /container -->
</body>
</html>
