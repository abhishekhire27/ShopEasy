<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<spr:form action="login.htm" commandName="user" >
		User Name : <spr:input path="userName" /><br>
		Password : <spr:password path="userPass" /><br>
		<input type="submit" value="Login" /><br>
	</spr:form>
	<a href="prep_reg_form.htm" >sign up</a>
</body>
</html>