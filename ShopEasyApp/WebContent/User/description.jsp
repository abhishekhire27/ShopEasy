<%@page import="com.cdac.shopeasyapp.model.User"%>
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
<title>shoppingkart</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<style>
img {
  display: block;
  margin-left: auto;
  margin-right: auto;
}



.image-grid-imageContainer {
    height: 300;
    padding-top: 90%;
    margin-top:60px;
    overflow: hidden;
    position: relative;
    border: 1px solid #F5F5F6;
}

#div1 {
    height: 60px;
    background: royalblue;
}

.pdp-title {
    font-family: monospace;
    color: #282C3F;
    margin-top: 90px;
    margin-bottom: 0px;
    padding: 0px 20px 0px 0px;
    font-size: 24px;
    font-weight: 500;
    line-height: 1;
}

.pdp-name {
    color: #535665;
    margin-top: 0px;
    margin-bottom: 0px;
    padding: 5px 20px 14px 0px;
    font-size: 20px;
    opacity: 0.8;
    font-weight: 400;
}


.size-buttons {
    background-color:aqua;
    border: 1px solid #BFC0C6;
   border-radius: 50px;
    padding: 0;
    min-width: 50px;
    height: 50px;
    text-align: center;
    cursor: pointer;
    color: #282C3F;
  
    -ms-flex: 0 0 auto;
    flex: 0 0 auto;
   
}

.size-buttons-unified-size {
    margin: 0px;
    font-size: 16px;
    padding: 0px 8px;
}


.pdp-flex.pdp-center {
    -webkit-box-pack: center;
 
    
    justify-content: center;
    -webkit-box-align: center;
   
    align-items: center;
}

.pdp-add-to-bag:hover {
    background-color: #FF527B;
}

.pdp-add-to-bag {
    -webkit-border-radius: 0px;
    -moz-border-radius: 0px;
    border-radius: 0px;
    padding: 12px 15px;
    min-width: 108px;
    font-weight: 500;
    cursor: pointer;
    background-color: #ff3e6c;
    border: 1px solid #ff3e6c;
    color: #FFFFFF;
    
  
    flex: 3;
    text-align: center;
    width: 100%;
    margin-right: 3%;
}

.pdp-button {
    
    border-radius: 3px;
    outline: 0px;
    margin-top: 30px;
    padding: 10px 30px;
    font-size: 16px;
    min-height: 22px;
}

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
				<div class="col-md-4 d-md-block d-none">
					<input type="text" placeholder="Search for products...."
						name="search" style="width: 300px">
					<button type="submit">
						<i class="fa fa-search"></i>
					</button>
				</div>
				<div class="col-md-5">
					<div class="d-flex justify-content-md-end justify-content-between">
						<ul class="list-inline contact-info d-block d-md-none">
							<li class="list-inline-item"><a href="#"><i
									class="fa fa-phone"></i></a></li>
							<li class="list-inline-item"><a href="#"><i
									class="fa fa-envelope"></i></a></li>
						</ul>
						
						
						
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="cart.htm" style="color: white;"><i
							class=" fa fa-cart-plus"> </i> CART</a>
							
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<a href="logout.htm"><i class="fa fa-sign-out" ></i>LogOut</a>
						
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
				<li class="nav-item pl-4"><a class="nav-link" href="#"
					style="color: white">CATEGORIES</a></li>
				<li class="nav-item pl-4"><a class="nav-link" href="#"
					style="color: white">ABOUT</a></li>
				<li class="nav-item pl-4"><a class="nav-link" href="#"
					style="color: white">CONTACT</a></li>
				<li class="nav-item pl-4"><a class="nav-link" href="order_history.htm"
					style="color: white">ORDER HISTORY</a></li>
			</ul>
		</nav>
	</div>
	
	
	<div class="container-fluid">
 
<div class="row">
<div class="col-4">
<input type="image"  src="https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSS8oEITt9vJtsCPRH0mvi2pRf8YZfN6YnkASdjsibLyayVVlidSUwG64QIWw"  />
    </div>
    <div class="col-sm-5">
    
    <h1 class="pdp-title">HRX by Hrithik Roshan</h1>
    
   <h1 class="pdp-name pdp-bb1">Men Brown Printed Round Neck T-Shirt</h1>
   
    <div style="font-size: 24px; font-family: monospace;">RS.499</div>
    <div class="pdp-name pdp-bb1">Additional tax shall apply</div>
   
     <div style="  font-size:20px; monospace;">
    SELECT SIZE </div>
    
    
    <button class="size-buttons">
   
   <p class="size-buttons-unified-size">
    S</p></button>
    
     <button class="size-buttons">
   
    <p class="size-buttons-unified-size">
    M</p></button>
    
      <button class="size-buttons">
   
  <p class="size-buttons-unified-size">
    XL</p></button>
    
      <button class="size-buttons">
  
    <p class="size-buttons-unified-size">
    XLL</p></button>
    
    
   <spr:form action="addcart.htm">
					<input type="submit" name="cat" value="Add to Cart" style="Color: Green" />
				</spr:form>
    
    </div>
    
    
    </div>
</div>
</body>
</html>

