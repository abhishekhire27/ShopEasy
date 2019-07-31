<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<%@ include file="../no-cache-page.jsp"%>

<!DOCTYPE html>
<html>
<head>

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

<script>

function isEmpty(value) {
    if (!value == " " || !value == "null") {
    	
        return true;
        document.getElementById("Button").disabled = false;
    }
    else {
    	
        return false;
        document.getElementById("Button").disabled = true;
    }
}

function mobNumberFun() {

    var mNo = document.getElementById("MbNum").value;
    var mNo_len = mNo.length;
    var mbnum=/^[0]?[789]\d{9}$/
    if(!isEmpty(mNo) || !mbnum.test(mNo))
    {
       	document.getElementById("mSpan").innerHTML="**Please Enter the Contact Number**";
        document.getElementById("mSpan").style.color = "red";
        document.getElementById("Button").disabled = true;
        return false;
    }
    else{
        document.getElementById("mSpan").innerHTML=" ";
        document.getElementById("Button").disabled = false;
            return true;
    }
}
function firstFun() {

    var fNo = document.getElementById('fName').value;
   				//window.alert(isEmpty(fNo));
    
    if(!isEmpty(fNo))
    { 	document.getElementById("fSpan").innerHTML="**Please Enter the First Name**";
    document.getElementById("fSpan").style.color = "red";
    document.getElementById("Button").disabled = true;
    	
        return false;
    }
    else{
    	
    	document.getElementById("fSpan").innerHTML=" ";
    	document.getElementById("Button").disabled = false;
        
            return true;
    }
}
function lastFun() {

    var mNo = document.getElementById('lName').value;
   
    
    if(!isEmpty(mNo))
    {
       	document.getElementById("lSpan").innerHTML="**Please Enter the Last Name**";
        document.getElementById("lSpan").style.color = "red";
        document.getElementById("Button").disabled = true;
        return false;
    }
    else{
        document.getElementById("lSpan").innerHTML=" ";
        document.getElementById("Button").disabled = false;
            return true;
    }
}
function addFun() {

    var mNo = document.getElementById('add').value;
   
    
    if(!isEmpty(mNo))
    {
       	document.getElementById("aSpan").innerHTML="**Please Enter the Address**";
        document.getElementById("aSpan").style.color = "red";
        document.getElementById("Button").disabled = true;
        return false;
    }
    else{
        document.getElementById("aSpan").innerHTML=" ";
        document.getElementById("Button").disabled = false;
            return true;
    }
}

function passwordFun(){
    var regName = /^[a-zA-Z]+$/;
    var passid = document.getElementById('pass').value;
    var passid_len = passid.length;
    if (passid_len == 0 || passid_len < 8 || passid_len > 12) {
        document.getElementById("SpanPass").innerHTML = "**Password should not be empty and length of 8-12**";
        document.getElementById("SpanPass").style.color = "red";
        document.getElementById("Button").disabled = true;

        return false;
    } else {
        document.getElementById("SpanPass").innerHTML = ""
        document.getElementById("Button").disabled = false;
        return true;
    }
}

function emailIdValidation(){

    var email = document.getElementById('emailId');
    var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

    if(!isEmpty() && !filter.test(email.value)) {

    document.getElementById("emailSpan").innerHTML="\n Please provide a valid email address";
    document.getElementById("emailSpan").style.color="red";
    document.getElementById("Button").disabled = true;
    
    return false;
    }
    else{
        document.getElementById("emailSpan").innerHTML=" ";
        document.getElementById("Button").disabled = false;
       return true;
    }
} 


</script>
<script src="https://code.jquery.com/jquery-1.10.2.js"
	type="text/javascript"></script>
<script type="text/javascript">
	

 
<script src="https://code.jquery.com/jquery-1.10.2.js" type="text/javascript"></script>
<script type="text/javascript">
	
	function ajaxcall(){
		$.ajax({
		url : 'check_user_id.htm',
		data : { "userId" :$('#userId').val() },
		success: function(responseText){
			$('#ajaxResponse').text(responseText);
		}	
	});
}
 
</script>

<script
	src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>

<script
	src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<title>Registration</title>
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


	<h2 class="pl-4 pt-4 pb-4">Registration</h2>

	<spr:form commandName="user" action="success_reg.htm"
		class="form-horizontal">

		<div class="form-group pl-4">
			<div class="col-sm-9">
				First Name :
				<spr:input path="userFirstName" id="fName" onkeyup="firstFun()"
					placeholder="Enter your firstname" class="form-control"
					style="width:500px" required="true" />
				<Span id="fSpan"></Span>
			</div>
		</div>

		<div class="form-group pl-4">
			<div class="col-sm-9">
				Last Name :
				<spr:input id="lName" onkeyup="lastFun()" path="userLastName"
					placeholder="Enter your lastname" class="form-control"
					style="width:500px" required="true" />
				<Span id="lSpan"></Span>
			</div>
		</div>

		<div class="form-group pl-4">
			<div class="col-sm-9">
				Email-ID :
				<spr:input id="emailId" onkeyup="emailIdValidation()" type="email"
					path="userEmail" required="true" placeholder="Enter your email-Id"
					class="form-control" style="width:500px" />
				<Span id="emailSpan"></Span>
			</div>
		</div>

		<div class="form-group pl-4">
			<div class="col-sm-9">
				User-ID :
				<spr:input onblur="ajaxcall()" id="userId" path="userId"
					placeholder="Enter your user-Id" class="form-control"
					style="width:500px" />
			</div>
			<div id="ajaxResponse" style="color: red;"></div>
		</div>

		<div class="form-group pl-4">
			<div class="col-sm-9">
				Password :
				<spr:password path="userPassword" placeholder="Enter your password"
					id="pass" onkeyup="passwordFun()" class="form-control"
					style="width:500px" required="true" />
				<span id="SpanPass"></span>
			</div>
		</div>

		<div class="form-group pl-4">
			<div class="col-sm-9">
				Phone NO :
				<spr:input path="userPhone" placeholder="Enter your phone no"
					id="MbNum" onkeyup="mobNumberFun()" class="form-control"
					style="width:500px" required="true" />
				<Span id="mSpan"></Span>
			</div>
		</div>

		<div class="form-group pl-4">
			<div class="col-sm-9">
				Address :
				<spr:input id="add" onkeyup="addFun()" path="userAddress"
					type="text" placeholder="Enter your Address" class="form-control"
					style="width:500px" required="true" />
				<Span id="aSpan"></Span>
			</div>
		</div>

		<div class="form-group pl-4">
			<div class="col-sm-9">
				<spr:input path="role" type="hidden" class="form-control"
					value="User" />
			</div>
		</div>

		<div class="form-group pl-4">
			<div class="col-sm-9">
				<spr:input path="userStatus" type="hidden" class="form-control"
					value="Inactive" />
			</div>
		</div>


		<input type="submit" id="Button" value="Register"
			class="btn btn-primary btn-block"
			style="width: 200px; margin-left: 130px">
		<a href="login.htm" class="pl-4">Login page</a>

	</spr:form>

	<p></p>

</body>
</html>
