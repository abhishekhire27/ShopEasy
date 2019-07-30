<%@page import="com.cdac.shopeasyapp.model.Product"%>
<%@page import="com.cdac.shopeasyapp.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<%@page import="java.util.List"%>
<%@page import="com.cdac.shopeasyapp.service.*" %>

<%
	List<Product> productlist = (List<Product>)request.getAttribute("productlist");
%>

<!DOCTYPE html>
<html>
<head>
<title>Product List</title>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/normalize/6.0.0/normalize.min.css">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


<style>
.prod-info-main {
	border: 1px solid #CEEFFF;
	margin-bottom: 20px;
	margin-top: 10px;
	background: #fff;
	padding: 6px;
	-webkit-box-shadow: 0 1px 4px 0 rgba(21, 180, 255, 0.5);
	box-shadow: 0 1px 1px 0 rgba(21, 180, 255, 0.5);
}

.prod-info-main .product-image {
	background-color: #EBF8FE;
	display: block;
	min-height: 238px;
	overflow: hidden;
	position: relative;
	border: 1px solid #CEEFFF;
	padding-top: 40px;
}

.prod-info-main .product-deatil {
	border-bottom: 1px solid #dfe5e9;
	padding-bottom: 17px;
	padding-left: 16px;
	padding-top: 16px;
	position: relative;
	background: #fff
}

.product-content .product-deatil h5 a {
	color: #2f383d;
	font-size: 15px;
	line-height: 19px;
	text-decoration: none;
	padding-left: 0;
	margin-left: 0
}

.prod-info-main .product-deatil h5 a span {
	color: #9aa7af;
	display: block;
	font-size: 13px
}

.prod-info-main .product-deatil span.tag1 {
	border-radius: 50%;
	color: #fff;
	font-size: 15px;
	height: 50px;
	padding: 13px 0;
	position: absolute;
	right: 10px;
	text-align: center;
	top: 10px;
	width: 50px
}

.prod-info-main .product-deatil span.sale {
	background-color: #21c2f8
}

.prod-info-main .product-deatil span.discount {
	background-color: #71e134
}

.prod-info-main .product-deatil span.hot {
	background-color: #fa9442
}

.prod-info-main .description {
	font-size: 12.5px;
	line-height: 20px;
	padding: 10px 14px 16px 19px;
	background: #fff
}

.prod-info-main .product-info {
	padding: 11px 19px 10px 20px
}

.prod-info-main .product-info a.add-to-cart {
	color: #2f383d;
	font-size: 13px;
	padding-left: 16px
}

.prod-info-main name.a {
	padding: 5px 10px;
	margin-left: 16px
}

.product-info.smart-form .btn {
	padding: 6px 12px;
	margin-left: 12px;
	margin-top: -10px
}

.load-more-btn {
	background-color: #21c2f8;
	border-bottom: 2px solid #037ca5;
	border-radius: 2px;
	border-top: 2px solid #0cf;
	margin-top: 20px;
	padding: 9px 0;
	width: 100%
}

.product-block .product-deatil p.price-container span, .prod-info-main .product-deatil p.price-container span,
	.shipping table tbody tr td p.price-container span, .shopping-items table tbody tr td p.price-container span
	{
	color: #21c2f8;
	font-family: Lato, sans-serif;
	font-size: 24px;
	line-height: 20px
}

.product-info.smart-form .rating label {
	margin-top: 15px;
}

.prod-wrap .product-image span.tag2 {
	position: absolute;
	top: 10px;
	right: 10px;
	width: 36px;
	height: 36px;
	border-radius: 50%;
	padding: 10px 0;
	color: #fff;
	font-size: 11px;
	text-align: center
}

.prod-wrap .product-image span.tag3 {
	position: absolute;
	top: 10px;
	right: 20px;
	width: 60px;
	height: 36px;
	border-radius: 50%;
	padding: 10px 0;
	color: #fff;
	font-size: 11px;
	text-align: center
}

.prod-wrap .product-image span.sale {
	background-color: #57889c;
}

.prod-wrap .product-image span.hot {
	background-color: #a90329;
}

.prod-wrap .product-image span.special {
	background-color: #3B6764;
}

.shop-btn {
	position: relative
}

.shop-btn>span {
	background: #a90329;
	display: inline-block;
	font-size: 10px;
	box-shadow: inset 1px 1px 0 rgba(0, 0, 0, .1), inset 0 -1px 0
		rgba(0, 0, 0, .07);
	font-weight: 700;
	border-radius: 50%;
	padding: 2px 4px 3px !important;
	text-align: center;
	line-height: normal;
	width: 19px;
	top: -7px;
	left: -7px
}

.product-deatil hr {
	padding: 0 0 5px !important
}

.product-deatil .glyphicon {
	color: #3276b1
}

.product-deatil .product-image {
	border-right: 0px solid #fff !important
}

.product-deatil .name {
	margin-top: 0;
	margin-bottom: 0
}

.product-deatil .name small {
	display: block
}

.product-deatil .name a {
	margin-left: 0
}

.product-deatil .price-container {
	font-size: 24px;
	margin: 0;
	font-weight: 300;
}

.product-deatil .price-container small {
	font-size: 12px;
}

.product-deatil .fa-2x {
	font-size: 16px !important
}

.product-deatil .fa-2x>h5 {
	font-size: 12px;
	margin: 0
}

.product-deatil .fa-2x+a, .product-deatil .fa-2x+a+a {
	font-size: 13px
}

.product-deatil .certified {
	margin-top: 10px
}

.product-deatil .certified ul {
	padding-left: 0
}

.product-deatil .certified ul li:not(first-child) {
	margin-left: -3px
}

.product-deatil .certified ul li {
	display: inline-block;
	background-color: #f9f9f9;
	padding: 13px 19px
}

.product-deatil .certified ul li:first-child {
	border-right: none
}

.product-deatil .certified ul li a {
	text-align: left;
	font-size: 12px;
	color: #6d7a83;
	line-height: 16px;
	text-decoration: none
}

.product-deatil .certified ul li a span {
	display: block;
	color: #21c2f8;
	font-size: 13px;
	font-weight: 700;
	text-align: center
}

.product-deatil .message-text {
	width: calc(100% - 70px)
}

@media only screen and (min-width:1024px) {
	.prod-info-main div[class*=col-md-4] {
		padding-right: 0
	}
	.prod-info-main div[class*=col-md-8] {
		padding: 0 13px 0 0
	}
	.prod-wrap div[class*=col-md-5] {
		padding-right: 0
	}
	.prod-wrap div[class*=col-md-7] {
		padding: 0 13px 0 0
	}
	.prod-info-main .product-image {
		border-right: 1px solid #dfe5e9
	}
	.prod-info-main .product-info {
		position: relative
	}
}

@import url(https://fonts.googleapis.com/css?family=Raleway:300,400,600)
	;

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

</style>

<%
	User user = (User)session.getAttribute("user");
	//UserServiceImple userService = (UserServiceImple)session.getAttribute("service");
%>

<script>
	function addToCart(productId){
		console.log("Hello");
		
		userService.addToCart(productId);
		
		console.log("Done");
		
	}
</script>

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
						<div class="d-flex justify-content-md-end justify-content-between">
							<a href="logout.htm"><i class="fa fa-sign-out"></i>LogOut</a>
						</div>
					</div>

				</div>
			</div>
		</div>

	</div>

	<div style="height: 40px;">
		<nav class="navbar navbar-expand-sm bg-secondary" style="height: 40px">

			<!-- Links -->
			<ul class="navbar-nav">
				<li class="nav-item pl-4 "><a class="nav-link" href="user_home.htm"
					style="color: black">HOME</a></li>
				<li class="nav-item pl-4"><a class="nav-link"
					href="#" style="color: black">Order History</a></li>
					
					<li class="nav-item pl-4"><a class="nav-link"
					href="#" style="color: black">Cart</a></li>
			</ul>
		</nav>
	</div>
	<div class="col-3"></div>

	<div class="col-6">

		<%for(Product list : productlist){ %>
		<div class="container">
			<div class="col-xs-12 col-md-6">

				<!-- First product box start here-->
				<div class="prod-info-main prod-wrap clearfix">

					<div class="row">

						<div class="col-md-5 col-sm-12 col-xs-12">

							<div class="product-image">

								<img src="<%=list.getPath() %>" class="img-responsive">

							</div>

						</div>

						<div class="col-md-7 col-sm-12 col-xs-12">

							<div class="product-deatil">

								<h5 class="name">

									<a href="#"> <%=list.getProductName() %> </a> <a href="#"> <span>Clothing</span>

									</a>

								</h5>

								<p class="price-container">

									<span>Rs. <%=list.getPrice() %></span>

								</p>

								<span class="tag1"></span>

							</div>

							<div class="description">

								<p><%=list.getDescription() %></p>

							</div>

							<div class="product-info smart-form">

								<div class="row">

									<div class="col-md-12">

										<span onclick="addToCart(<%=list.getProductId() %>)" class="btn btn-danger">Add to cart</span>

									</div>

									<div class="col-md-12">

									</div>

								</div>

							</div>

						</div>

					</div>
				</div>
			</div>
		</div>
					</div>

			<%} %>
	


	<div class="col-3"></div>
</body>
</html>