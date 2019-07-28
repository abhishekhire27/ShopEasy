<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>
<!--
header css-->.top-bar {
	background: #555;
	color: #fff;
	font-size: 0.9rem;
	padding: 10px 0;
}

.top-bar .contact-info {
	margin-right: 20px;
}

.top-bar ul {
	margin-bottom: 0;
}

.top-bar .contact-info a {
	font-size: 0.8rem;
}

.top-bar ul.social-custom {
	margin-left: 20px;
}

.top-bar ul {
	margin-bottom: 0;
}

.top-bar a.login-btn i, .top-bar a.signup-btn i {
	margin-right: 10px;
}

.top-bar ul.social-custom a:hover {
	background: #4fbfa8;
	color: #fff;
}

.top-bar ul.social-custom a {
	text-decoration: none !important;
	font-size: 0.7rem;
	width: 26px;
	height: 26px;
	line-height: 26px;
	color: #999;
	text-align: center;
	border-radius: 50%;
	margin: 0;
}

a:focus, a:hover {
	color: #348e7b;
	text-decoration: underline;
}

.top-bar a.login-btn, .top-bar a.signup-btn {
	color: #eee;
	text-transform: uppercase;
	letter-spacing: 0.1em;
	text-decoration: none !important;
	font-size: 0.75rem;
	font-weight: 700;
	margin-right: 10px;
}

body {
	margin: 0;
	font-size: .9rem;
	font-weight: 400;
	line-height: 1.6;
	color: #212529;
	text-align: left;
	background-color: #f5f8fa;
}

.navbar-laravel {
	box-shadow: 0 2px 4px rgba(0, 0, 0, .04);
}

.navbar-brand, .nav-link, .my-form, .login-form {
	font-family: Raleway, sans-serif;
}

.my-form {
	padding-top: 1.5rem;
	padding-bottom: 1.5rem;
}

.my-form .row {
	margin-left: 0;
	margin-right: 0;
}

.login-form {
	padding-top: 1.5rem;
	padding-bottom: 1.5rem;
}

.login-form .row {
	margin-left: 0;
	margin-right: 0;
}
</style>

<link rel="stylesheet"
	href="https://d19m59y37dris4.cloudfront.net/universal/2-0-1/vendor/font-awesome/css/font-awesome.min.css">

</head>

<body>

	<div class="top-bar bg-dark"
		style="position: sticky; top: 0; z-index: 9999; height: 60px">
		<div class="container">
			<div class="row d-flex align-items-center">
				<div class="col-md-3 d-md-block d-none">
					<a href="#"><img src="images/shopEasy.jpg"
						style="padding-top: 8px" alt="shopperdealpoint" width="170"
						class="img-responsive" /></a>
				</div>

				<div class="col-md-5">
					<div class="d-flex justify-content-md-end justify-content-between">
						<ul class="list-inline contact-info d-block d-md-none">
							<li class="list-inline-item"><a href="#"><i
									class="fa fa-phone"></i></a></li>
							<li class="list-inline-item"><a href="#"><i
									class="fa fa-envelope"></i></a></li>
						</ul>


					</div>
				</div>
			</div>



		</div>

	</div>
	<div style="height: 40px;">
		<nav class="navbar navbar-expand-sm bg-secondary" style="height: 40px">

			<!-- Links -->
			<ul class="navbar-nav">
				<li class="nav-item pl-4 "><a class="nav-link" href="#"
					style="color: white">HOME</a></li>
				<li class="nav-item pl-4"><a class="nav-link" href="#"
					style="color: white">CATEGORIES</a></li>
				<li class="nav-item pl-4"><a class="nav-link" href="#"
					style="color: white">ABOUT</a></li>
				<li class="nav-item pl-4"><a class="nav-link" href="#"
					style="color: white">CONTACT</a></li>



			</ul>

		</nav>


	</div>

	<!-- login -->
	<div class="cotainer-fluid" style="padding-top: 50px">
		<div class="row justify-content-center">
			<div class="col-md-5">
				<div class="card">
					<div class="card-header">LOGIN</div>
					<div class="card-body">
					
						<spr:form action="home.htm" commandName="user">
							<div class="form-group row">
								<label for="email_address"
									class="col-md-4 col-form-label text-md-right">User-Id: </label>
								<div class="col-md-6">
									<spr:input path="userId" type="text" class="form-control" requried="true" />
								</div>
							</div>

							<div class="form-group row">
								<label for="password"
									class="col-md-4 col-form-label text-md-right">Password: </label>
								<div class="col-md-6">
									<spr:password path="userPassword" class="form-control" required="true" />
								</div>
							</div>

							<div class="col-md-6 offset-md-4">
								<input type="submit" value="Login" class="btn btn-primary"/>
								<a href="#" class="btn btn-link"> Forgot Your Password? </a>
							</div>
						</spr:form>
					</div>

				</div>
			</div>
		</div>
	</div>

</body>
</html>