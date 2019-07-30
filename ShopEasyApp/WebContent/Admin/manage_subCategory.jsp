<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>

<%@page import="java.util.List"%>
<%@page import="com.cdac.shopeasyapp.model.SubCategory"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Manage Subcategory</title>

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

#customers {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

#customers td, #customers th {
	border: 1px solid #ddd;
	padding: 8px;
}

#customers tr:nth-child(even) {
	background-color: #f2f2f2;
}

#customers tr:hover {
	background-color: #ddd;
}

#customers th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: left;
	background-color: #4CAF50;
	color: white;
}
</style>

<%
	List<SubCategory> sublist = (List<SubCategory>) request.getAttribute("subcat");
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

	<spr:form action="reg_subCategory.htm" class="mt-4 ml-4">
		<input type="submit" name="cat" value="Add SubCategory"
			style="Color: Green" />
	</spr:form>
	<div>
		<h1></h1>
	</div>

	<table class="ml-4" id="customers">
		<tr>
			<th>Subcategory Name</th>
			<th>CategoryId</th>
			<th>Delete</th>
		</tr>
		<%
			for (SubCategory list : sublist) {
		%>
		<tr>

			<td><%=list.getSubCategoryName()%></td>
			<td><%=list.getCategoryId()%></td>
			<td><a
				href="delete_subCategory.htm?subcatid=<%=list.getSubCategoryId()%>">Delete</a></td>

		</tr>
		<%
			}
		%>
	</table>


</body>
</html>