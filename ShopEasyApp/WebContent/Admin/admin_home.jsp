<%@page import="java.util.List"%>
<%@page import="com.cdac.shopeasyapp.model.SubCategory"%>
<%@page import="com.cdac.shopeasyapp.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<%@page import="java.util.List"%>

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
<link rel="stylesheet"
	href="https://d19m59y37dris4.cloudfront.net/universal/2-0-1/vendor/font-awesome/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">

<style>
.top-bar {
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

#custom-search-input {
	margin: 0;
	margin-top: 10px;
	padding: 0;
}

#custom-search-input .search-query {
	padding-right: 3px;
	padding-right: 4px \9;
	padding-left: 3px;
	padding-left: 4px \9;
	/* IE7-8 doesn't have border-radius, so don't indent the padding */
	margin-bottom: 0;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px;
}

#custom-search-input button {
	border: 0;
	background: none;
	/** belows styles are working good */
	padding: 2px 5px;
	margin-top: 2px;
	position: relative;
	left: -28px;
	/* IE7-8 doesn't have border-radius, so don't indent the padding */
	margin-bottom: 0;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px;
	color: #D9230F;
}

.search-query:focus+button {
	z-index: 3;
}

<!--
FOOTER-->.context-dark, .bg-gray-dark, .bg-primary {
	color: rgba(255, 255, 255, 0.8);
}

.footer-classic a, .footer-classic a:focus, .footer-classic a:active {
	color: #ffffff;
}

.nav-list li {
	padding-top: 5px;
	padding-bottom: 5px;
}

.nav-list li a:hover:before {
	margin-left: 0;
	opacity: 1;
	visibility: visible;
}

ul, ol {
	list-style: none;
	padding: 0;
	margin: 0;
}

.social-inner {
	display: flex;
	flex-direction: column;
	align-items: center;
	width: 100%;
	padding: 23px;
	font: 900 13px/1 "Lato", -apple-system, BlinkMacSystemFont, "Segoe UI",
		Roboto, "Helvetica Neue", Arial, sans-serif;
	text-transform: uppercase;
	color: rgba(255, 255, 255, 0.5);
}

.social-container .col {
	border: 1px solid rgba(255, 255, 255, 0.1);
}

.nav-list li a:before {
	content: "\f14f";
	font: 400 21px/1 "Material Design Icons";
	color: #4d6de6;
	display: inline-block;
	vertical-align: baseline;
	margin-left: -28px;
	margin-right: 7px;
	opacity: 0;
	visibility: hidden;
	transition: .22s ease;
}

h3.h3 {
	text-align: center;
	margin: 1em;
	text-transform: capitalize;
	font-size: 1.7em;
}
</style>

<%
	User user = (User)session.getAttribute("user");
	List<SubCategory> sublist = (List<SubCategory>)request.getAttribute("sublist");
%>

</head>

<body>
	<div class="top-bar bg-dark"
		style="position: sticky; top: 0; z-index: 9999;">
		<div class="container">
			<div class="row d-flex align-items-center">
				<div class="col-md-3 d-md-block d-none">
					<a href="#"><img src="images/shopEasy.jpg"
						alt="shopperdealpoint" width="170" class="img-responsive" /></a>
				</div>

				<div class="col-md-5">
					<div class="d-flex justify-content-md-end justify-content-between">

						Welcome,
						<%=user.getUserFirstName() %>
						!

						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="logout.htm"><i class="fa fa-sign-out"></i>LogOut</a>

					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Menu Bar -->
	<div style="height: 40px;">
		<nav class="navbar navbar-expand-sm bg-secondary" style="height: 40px">
			<!-- Links -->
			<ul class="navbar-nav">
				<li class="nav-item pl-4 "><a class="nav-link" href="#"
					style="color: white">HOME</a></li>
				<li class="nav-item pl-4"><a class="nav-link"
					href="manage_product.htm" style="color: white">Manage Product</a></li>
				<li class="nav-item pl-4"><a class="nav-link"
					href="manage_subCategory.htm" style="color: white">Manage
						SubCategory</a></li>
			</ul>
		</nav>
	</div>
	<!-- Slider -->
	<div id="carouselExampleIndicators" class="carousel slide "
		data-ride="carousel" style="">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner"
			style="width: 50% justify-content-center display-flex">
			<div class="carousel-item active justify-content-center ">
				<img class="img-fluid max-width:50% height:auto"
					style="width: 100%; height: 500px;"
					src="http://bestjquery.com/tutorial/product-grid/demo5/images/img-3.jpg"
					alt="First slide">
			</div>
			<div class="carousel-item">
				<img class="d-block w-10" style="width: 100%; height: 500px;"
					src="http://bestjquery.com/tutorial/product-grid/demo4/images/img-2.jpg"
					alt="Second slide">

			</div>
			<div class="carousel-item">
				<img class="d-block w-10" style="width: 100%; height: 500px;"
					src="http://bestjquery.com/tutorial/product-grid/demo6/images/img-3.jpg"
					alt="Third slide">
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleIndicators"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>

	<!-- product list -->
	<div class=" row bg-dark align-item"
		style="height: 30px; padding-left: 115px; display: flex; justify-content: left;">
		<h4 class="pl-3 " style="color: white">Product Categories</h4>
	</div>

	<div class=" row bg-light" style="height: 300px">
		<div class="col-1 bg-light"></div>


		<%for(SubCategory list : sublist) { %>

		<div class="col-3 bg-white" style="margin-top: 20px">


			<img class="pic-2"
				src="<%=list.getSubcatpath() %>"
				style="height: 200px; width: 300px; margin-top: 20px">

			<spr:form action="admin_productlist.htm">
				<button name="cat" value="<%=list.getSubCategoryId() %>"
					style="Color: Green"><%=list.getSubCategoryName() %></button>
			</spr:form>
		</div>
		<%} %>

	</div>

	<!-- FOOTER -->
	<footer class="section footer-classic context-dark bg-image bg-dark">
		<div class="container" style="margin-top: 20px">
			<div class="row row-30">
				<div class="col-md-4 col-xl-5">
					<div class="pr-xl-4">
						<a class="brand" href="index.html"><img
							class="brand-logo-light" src="images/shopEasy" alt="" width="140"
							height="37"></a>
						<p style="color: white">We are an award-winning creative
							agency, dedicated to the best result in web design, promotion,
							business consulting, and marketing.</p>
						<!-- Rights-->
						<p class="rights" style="color: white">
							<span>Rights Reserved</span>
						</p>
					</div>
				</div>
				<div class="col-md-4" style="color: white">
					<h5>Contacts</h5>
					<dl class="contact-list">
						<dt>Address:</dt>
						<dd>Kharghar, Navi Mumbai</dd>
					</dl>
					<dl class="contact-list">
						<dt>email:</dt>
						<dd>
							<a href="mailto:#">shopeasy@gmail.com</a>
						</dd>
					</dl>
					<dl class="contact-list">
						<dt>phones:</dt>
						<dd>
							<a href="tel:#">+91 7568543012</a> <span>or</span> <a
								href="tel:#">+91 9571195353</a>
						</dd>
					</dl>
				</div>
				<div class="col-md-4 col-xl-3" style="color: white">
					<h5>Links</h5>
					<ul class="nav-list">
						<li><a href="#">About</a></li>
						<li><a href="#">Contacts</a></li>
					</ul>
				</div>
			</div>
		</div>

	</footer>
</body>
</html>