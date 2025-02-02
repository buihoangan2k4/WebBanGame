<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Visual Admin - SignUp</title>
<meta name="description" content="">
<meta name="author" content="templatemo">
<!-- 
        Visual Admin Template
        https://templatemo.com/tm-455-visual-admin
        -->
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,700'
	rel='stylesheet' type='text/css'>
<link href="/admin/css/font-awesome.min.css" rel="stylesheet">
<link href="/admin/css/bootstrap.min.css" rel="stylesheet">
<link href="/admin/css/template.css" rel="stylesheet">
</head>
<body class="light-gray-bg">
	<div class="templatemo-content-widget templatemo-login-widget white-bg">
		<header class="text-center">
			<div class="square"></div>
			<h1>Visual Admin</h1>
		</header>
		<form action="/form/admin/singup" method="post" modelAttribute="user"
			class="templatemo-login-form">
			<div class="form-group">
				<div class="input-group">
					<div class="input-group-addon">
						<i class="fa fa-user fa-fw"></i>
					</div>
					<input type="text" name="username" class="form-control"
						placeholder="js@dashboard.com">
				</div>
			</div>
			<div class="form-group">
				<div class="input-group">
					<div class="input-group-addon">
						<i class="fa fa-key fa-fw"></i>
					</div>
					<input type="password" name="password_1" class="form-control"
						placeholder="******">
				</div>
			</div>
			<div class="form-group">
				<div class="input-group">
					<div class="input-group-addon">
						<i class="fa fa-key fa-fw"></i>
					</div>
					<input type="password" name="password_2" class="form-control"
						placeholder="******">
				</div>
			</div>
			<div class="form-group">
				<div class="checkbox squaredTwo">
					<input type="checkbox" id="c1" name="cc" /> <label for="c1"><span></span>Remember
						me</label>
				</div>
			</div>
			<div class="form-group text-danger">${message}</div>
			<div class="form-group">
				<button type="submit" class="templatemo-blue-button width-100">Sign
					up</button>
			</div>
		</form>
	</div>
	<div
		class="templatemo-content-widget templatemo-login-widget templatemo-register-widget white-bg">
		<p>
			Not a registered user yet? <strong><a href="/login/admin"
				class="blue-text">Login now!</a></strong>
		</p>
	</div>
</body>

</html>