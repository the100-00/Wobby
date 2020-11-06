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
	<!-- Optional JavaScript -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
	<!-- Optional JavaScript -->
	<!-- JS, Popper.js, and jQuery -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
	<!-- for Icon -->
	<script src="https://kit.fontawesome.com/cfb4151af4.js"	crossorigin="anonymous"></script>
	<title>SignUp</title>
	<style type="text/css">
	.dropdown-menu {
      max-height:200px;
      overflow-y:scroll; 
	}
	</style>
</head>
<body>
	<div class="col-xs-6 col-sm-4 py-5 container">
		<form class="form-signin">
			<h2 class="pb-2 text-center form-signin-heading">Wobby</h2>
			<div class="form-group">
				<label for="inputName">���̵�</label> <input type="text"
					class="form-control" id="inputId" placeholder="">
			</div>
			<div class="form-group">
				<label for="inputPassword">��й�ȣ</label> <input type="password"
					class="form-control" id="inputPassword" placeholder="">
			</div>
			<div class="form-group">
				<label for="inputPasswordCheck">��й�ȣ Ȯ��</label> <input
					type="password" class="form-control" id="inputPasswordCheck"
					placeholder="">
			</div>
			<div class="form-group">
				<label for="inputName">�̸�</label> <input type="text"
					class="form-control" id="inputName" placeholder="">
			</div>
			<div class="form-group">
				<label for="inputName">�г���</label> <input type="text"
					class="form-control" id="inputNickName" placeholder="">
			</div>
			<div class="form-group">
				<label for="InputEmail">�̸��� �ּ�</label> <input type="email"
					class="form-control" id="InputEmail"
					placeholder="example@example.com">
			</div>
			<div class="form-group">
				<label for="inputName">�������</label>
				<div class="row">
					<div class="col-md-4">
						<input type="text" class="form-control" id="InputYear"
							placeholder="����">
					</div>
					<div class="col-md-4 btn-group">
						<button type="button"
							class="btn btn-default dropdown-toggle btn-block"
							data-toggle="dropdown" aria-expanded="false">
							�� <span class="caret"></span>
						</button>
						<ul class="dropdown-menu" role="menu">
							<c:forEach var="month" begin="1" end="12">
							<li><a href="#">${month}</a></li>
							</c:forEach>
						</ul>
					</div>
					<div class="col-md-4 btn-group">
						<button type="button"
							class="btn btn-default dropdown-toggle btn-block"
							data-toggle="dropdown" aria-expanded="false">
							�� <span class="caret"></span>
						</button>
						<ul class="dropdown-menu" role="menu">
							<c:forEach var="day" begin="1" end="31">
							<li><a href="#">${day}</a></li>
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>
			<div class="pt-2 form-group">
				<label for="selectHobby"><i class="fab fa-diaspora"></i> ��� ���� <small>
				<br>����� ��̸� �����ϼ���. �̸� ������� ���� Ŭ���� ��������
						��õ�ص帳�ϴ�!<br></small></label>
				<div class="btn-group btn-group-justified pt-1 btn-block"
					data-toggle="buttons-checkbox">
					<button type="button" class="btn btn-light">
						<i class="fas fa-futbol"></i><br>
						<small>�</small>
					</button>
					<button type="button" class="btn btn-light">
						<i class="fas fa-book-reader"></i><br>
						<small>����</small>
					</button>
					<button type="button" class="btn btn-light">
						<i class="fas fa-palette"></i><br>
						<small>�̼�</small>
					</button>
					<button type="button" class="btn btn-light">
						<i class="fas fa-language"></i><br>
						<small>����</small>
					</button>
					<button type="button" class="btn btn-light">
						<i class="fas fa-pizza-slice"></i><br>
						<small>�丮</small>
					</button>
					<button type="button" class="btn btn-light">
						<i class="fas fa-gamepad"></i><br>
						<small>����</small>
					</button>
					<button type="button" class="btn btn-light">
						<i class="fas fa-music"></i><br>
						<small>����</small>
					</button>
					<button type="button" class="btn btn-light">
						<i class="fas fa-chart-line"></i><br>
						<small>����ũ</small>
					</button>
					<button type="button" class="btn btn-light">
						<i class="fas fa-icons"></i><br>
						<small>��Ÿ</small>
					</button>
				</div>
			</div>
			<div class="pt-2 form-group">
				<label for="selectHobby"><i class="fab fa-diaspora"></i> ���� ���� <small>
				<br>����� MBTI�� �����ϼ���. ����� ���⿡ �´� ��̸� ��õ�ص帳�ϴ�.<br></small></label>
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
			<div class="pt-2 form-group">
				<label for="selectHobby"><i class="fab fa-diaspora"></i> ���� ����<small>
				<br>����� ������ �����ϼ���. ����� �������� ģ���� Ŭ���� ã�Ƶ帳�ϴ�.<br></small></label>
				<div class="row">
					<div class="col-md-4">
						<input type="text" class="form-control" id="InputYear"
							placeholder="�õ�">
					</div>
					<div class="col-md-4">
						<input type="text" class="form-control" id="InputYear"
							placeholder="�ñ���">
					</div>
					<div class="col-md-4">
						<input type="text" class="form-control" id="InputYear"
							placeholder="���鵿">
					</div>
				</div>
			</div>
			<div class="pt-2 pb-5">
				<div class="checkbox">
					<label> <input type="checkbox" value=""> <a
						href="#">�̿���</a>�� �����մϴ�.
					</label>
				</div>
				<button class="btn btn-lg btn-info btn-block" type="submit">ȸ������</button>
			</div>
		</form>
	</div>
</body>
</html>
