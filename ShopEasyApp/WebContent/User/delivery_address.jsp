<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>

<!DOCTYPE html>
<html>
<head>

<script>
	window.history.replaceState(null, null, window.location.href)
</script>

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

.headd {
	color: purple;
	text-align: center;
	font-size: 30px;
	font-family: cursive
}

#div1 {
	height: 60px;
	background: royalblue;
}

.box {
	border-style: solid;
	border-width: medium;
	height: 300px;
	border-radius: 8px;
	text-align: center;
}

.rounded {
	border-radius: 40px;
}

.btn-middle {
	letter-spacing: 1px;
	text-decoration: none;
	background: none;
	background-image: none;
	border: 1px solid transparent;
	cursor: pointer;
	display: inline-block;
	margin-bottom: 0;
	vertical-align: middle;
	white-space: nowrap;
	font-size: 13px;
	line-height: 20px;
	font-weight: 700;
	text-transform: uppercase;
	border: 2px solid;
	padding: 8px 20px;
}
</style>

<link rel="stylesheet"
	href="https://d19m59y37dris4.cloudfront.net/universal/2-0-1/vendor/font-awesome/css/font-awesome.min.css">

<meta charset="ISO-8859-1">
<title>payment</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">


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
	
	<div class="container-fluid">
 <div id="div1" style="position: sticky; top:0;" class="child-align"></div>
 
 <div class="headd " style="padding-top: 50px;">Select an delivery address </div>
 <div class="row" style="padding-top: 30px;">
 <div class="col-sm-3" ></div>
 <div class="col-sm-6 box"  style="font-family:cursive ; padding-top: 10px;">
<input type="radio" name="user-add" id="rd1" value="1"/>
<label for="rd1">Registered Address</label><br/>
<input type="radio" name="user-add" id="rd2" value="2"/>
<label for="rd2">Add a new Address</label><br/>
<textarea rows="4" cols="50" placeholder="Add new address here..."></textarea><br>
<button type="submit" class="btn-middle rounded" style="margin-top: 20px; background-color: #05e2b6; color: white; border: none">
    							Place the order
							</button>
 </div>

 <div class="col-sm-4"></div>
 
  </div>
 </div>
 
 



	</body>
	</html>