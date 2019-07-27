<%@page import="com.cdac.shopeasyapp.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>

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
body {
	background-color: #EAEAEA;
	font-family: 'Roboto', sans-serif;
}

.wrap {
	max-width: 940px;
	margin: 0 auto;
}

/*Menu !!!!*/
.menu {
	vertical-align: top;
	display: inline-block;
	margin: 10px;
}

.menu-item {
	background-color: #FEFEFE;
	width: 200px;
	height: 150px;
	margin: 10px;
	border-radius: 3px;
	box-shadow: 0 0 8px rgba(0, 0, 0, 0.06);
}

.header-item {
	letter-spacing: 2px;
	text-transform: uppercase;
	color: #3C3D41;
	font-size: 11px;
	padding: 15px 15px;
	border-bottom: 1.5px solid #EAEAEA;
}

.color-row1, .color-row2 {
	margin: 15px;
	padding: 0;
	max-width: 220px;
}

.color-circle {
	max-width: 220px;
	display: inline-block;
	width: 30px;
	height: 30px;
	border-radius: 50px 50px 50px 50px;
}

.size-circle {
	background-color: #EBEBEB;
}

.sizedouble {
	margin: 5px 5px;
}

.size {
	margin: 6px 8px;
}

/*ITEMS!!!*/
img {
	width: 100px;
	height: 130px;
	margin-top: 10px;
	vertical-align: top;
	position: relative;
	left: 50px;
}

.items {
	width: 650px;
	margin: 5px;
	display: inline-block;
}

.item {
	vertical-align: top;
	width: 190px;
	height: 240px;
	margin: 8px;
	background: #FEFEFE;
	display: inline-block;
	border-radius: 3px;
	box-shadow: 0 0 8px rgba(0, 0, 0, 0.06);
}

h3 {
	text-align: center;
	margin-bottom: 5px;
	margin-left: 5px;
	margin-right: 5px;
	font-size: 1em;
}

h5 {
	position: relative;
	bottom: 10px;
	text-align: center;
	margin-top: 20px;
}

.descroption {
	margin: 0;
	text-align: center;
	font-size: 11px;
	font-style: italic;
	color: grey;
	font-family: sans-serif;
}

/*BTN*/
.loadmore {
	height: 30px;
	width: 610px;
	margin-top: 25px;
	position: relative;
	left: 8px;
	text-decoration: none;
	font-size: 15px;
	background-color: #B8C6C7;
	color: #FEFEFE;
	border-radius: 4px;
	border: none;
	font-family: 'Roboto', sans-serif;
}

.mini-menu {
	width: 200px;
	border-radius: 3px;
	box-shadow: 0 0 8px rgba(0, 0, 0, 0.06);
	overflow: hidden;
	letter-spacing: 2px;
	text-transform: uppercase;
	color: #848C8F;
	font-size: 11px;
	margin: 10px;
}

.mini-menu ul {
	list-style: none;
	margin: 0;
	padding: 0;
	text-align: left;
}

.mini-menu>ul>li {
	position: relative;
}

.mini-menu>ul>li>a {
	display: block;
	outline: 0;
	padding: 1.2em 1em;
	text-decoration: none;
	color: #3C3D41;
	font-weight: normal;
	letter-spacing: 2px;
	background: #FEFEFE;
	border-bottom: 1.5px solid #EAEAEA;
}

.mini-menu .sub>ul {
	height: 0;
	overflow: hidden;
	background: #848C8F;
}

.mini-menu .sub>ul>li>a {
	font-family: sans-serif;
	color: #FEFEFE;
	font-size: 12px;
	display: block;
	text-decoration: none;
	padding: .7em 1em;
	text-transform: capitalize;
	font-style: normal;
	letter-spacing: 1px;
}
/*.mini-menu .sub > ul > li > a:hover,*/
.mini-menu

 

.sub
>
a


.active
,
{
padding-left


:

 

1
.3em


;
color


:

 

blue


;
content


:

 

"1";
float


:

 

right


;
margin-right


:


6
px
;


    

line-height


:

 

12
px


;
}
.mini-menu .sub>a:after {
	content: "»";
	float: right;
	margin-right: 6px;
	line-height: 12px;
}

@media screen and (max-width: 940px) {
	.items {
		width: 420px;
	}
	.wrap {
		width: 700px;
	}
	.loadmore {
		width: 420px;
	}
}

@media screen and (max-width: 720px) {
	.items {
		width: 220px;
	}
	.wrap {
		width: 500px;
	}
	.loadmore {
		width: 220px;
	}
}

.ui-slider .ui-slider-handle {
	position: absolute;
	z-index: 2;
	width: 0.9em;
	height: 1.6em;
	cursor: default;
	outline: none;
	border: 1px solid rgb(207, 207, 207);
	background: #090;
	border-image: initial;
}

</style>

</head>

<body>
	<div class="col-3"></div>

<div class="col-6">
		<div class="items">
		
			<div class="item">
				<spr:form action="description.htm">
					<input type="image"  src="https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSS8oEITt9vJtsCPRH0mvi2pRf8YZfN6YnkASdjsibLyayVVlidSUwG64QIWw"  />
				</spr:form>
				
				<div class="info">
					<h3>Our Legacy Splash Jacquard Knit</h3>
					<p class="descroption">Black Grey Plants</p>
					<h5>$290</h5>
				</div>
			</div>
			
			<div class="item">
				<spr:form action="user_productlist.htm">
					<input type="image"  src="https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSS8oEITt9vJtsCPRH0mvi2pRf8YZfN6YnkASdjsibLyayVVlidSUwG64QIWw"  />
				</spr:form>
				<div class="info">
					<h3>Our Legacy Splash Jacquard Knit</h3>
					<p class="descroption">Black Grey Plants</p>
					<h5>$900</h5>
				</div>
			</div>
			
			<div class="item">
				<spr:form action="user_productlist.htm">
					<input type="image"  src="https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSS8oEITt9vJtsCPRH0mvi2pRf8YZfN6YnkASdjsibLyayVVlidSUwG64QIWw"  />
				</spr:form>
				<div class="info">
					<h3>Our Legacy Splash Jacquard Knit</h3>
					<p class="descroption">Black Grey Plants</p>
					<h5>$600</h5>
				</div>
			</div>
			
		</div>
	</div>

	<div class="col-3"></div>
</body>