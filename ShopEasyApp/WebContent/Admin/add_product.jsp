<%@page import="com.cdac.shopeasyapp.model.SubCategory"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>

<%@page import="java.util.List"%>

<%@ include file="../no-cache-page.jsp"%>

<%@ page errorPage="error.jsp" %> 


<%
	List<SubCategory> sublist = (List<SubCategory>) request.getAttribute("subcat");
%>

<!DOCTYPE html>
<html>
<head>

<script>
	window.history.replaceState(null, null, window.location.href)
</script>

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>
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

<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Fonts -->
<link rel="dns-prefetch" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600"
	rel="stylesheet" type="text/css">

<link rel="stylesheet"
	href="https://d19m59y37dris4.cloudfront.net/universal/2-0-1/vendor/font-awesome/css/font-awesome.min.css">

<link rel="icon" href="Favicon.png">

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

<title>Registration</title>

<script>
function priceCheck() {
	
    let price = document.getElementById("price").value;
    
   	if (price < 0 || price > 99999)
    {
       	document.getElementById("pr").innerHTML="**Please enter price within range**";
        document.getElementById("pr").style.color = "red";
        document.getElementById("Button").disabled = true;
        return false;
    }
    else{
        document.getElementById("pr").innerHTML=" ";
        document.getElementById("Button").disabled = false;
            return true;
    }
}

function quantityCheck() {
	
    let quantity = document.getElementById("quantity").value;
    
   	if (quantity < 0 || quantity > 999)
    {
       	document.getElementById("quan").innerHTML="**Please enter quantity within range**";
        document.getElementById("quan").style.color = "red";
        document.getElementById("Button").disabled = true;
        return false;
    }
    else{
        document.getElementById("quan").innerHTML=" ";
        document.getElementById("Button").disabled = false;
            return true;
    }
}

function descCheck() {

    let desc = document.getElementById("description").value;
    let desclength = desc.length;
    
   	if (desclength>250)
    {
       	document.getElementById("desc").innerHTML="**Description must be within 250 words**";
        document.getElementById("desc").style.color = "red";
        document.getElementById("Button").disabled = true;
        return false;
    }
    else{
        document.getElementById("desc").innerHTML=" ";
        document.getElementById("Button").disabled = false;
            return true;
    }
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
				<li class="nav-item pl-4 "><a class="nav-link"
					href="admin_home.htm" style="color: white">HOME</a></li>
				<li class="nav-item pl-4"><a class="nav-link"
					href="manage_product.htm" style="color: white">Manage Product</a></li>
				<li class="nav-item pl-4"><a class="nav-link"
					href="manage_subCategory.htm" style="color: white">Manage
						SubCategory</a></li>
			</ul>
		</nav>
	</div>

	<h2 class="pl-4 pt-4 pb-4">Registration</h2>

	<spr:form action="add_product.htm" commandName="product"
		class="form-horizontal" enctype="multipart/form-data">

		<div class="form-group pl-4">
			<div class="col-sm-9">
				Product Name : <span style="color: red">${productNameMsg}</span>

				<spr:input path="productName" type="text"
					class="form-control" style="width:500px" name="productname"
					required="true" />
			</div>
		</div>

		<div class="form-group pl-4">
			<div class="col-sm-9">
				Price :
				<spr:input path="price" onkeyup="priceCheck()" type="text" class="form-control"
					style="width:500px" id="price" required="true" />
				<span id="pr"></span>
			</div>
		</div>

		<div class="form-group pl-4">
			<div class="col-sm-9">
				Quantity Available :
				<spr:input path="quantityAvailable"  onkeyup="quantityCheck()" type="text" class="form-control"
					style="width:500px" id="quantity" required="true" />
				<span id="quan"></span>
			</div>
		</div>

		<div class="form-group pl-4">
			<div class="col-sm-9">
				Description (Max 250 words) :
				<spr:input path="description" onkeyup="descCheck()" type="text" class="form-control"
					style="width:500px" name="description" required="true" />
				<span id="desc"></span>
			</div>
		</div>



		<div class="form-group pl-4">
			<div class="col-sm-9">
				SubCategory:
				<spr:select path="subCategoryId" name="subcat" required="true">
					<%
						for (SubCategory list : sublist) {
					%>
					<spr:option value="<%=list.getSubCategoryId() %>"><%=list.getSubCategoryName()%></spr:option>
					<%
						}
					%>
				</spr:select>
			</div>
		</div>

		<div class="form-group pl-4">
			<div class="col-sm-9">
				Upload image : <input type="file" class="form-control"
					style="width: 500px" name="image" required />
			</div>
		</div>

		<input type="submit" id="Button" value="Add Product" style="Color: Green"
			class="ml-4" />

	</spr:form>

	<p></p>


</body>
</html>
