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
	<spr:form action="reg.htm" commandName="user" >
		User Name : <spr:input path="userName" /><br>
		Password : <spr:password path="userPass" /><br>
		Role <spr:select path="userRole">
			<spr:option value="admin">Admin</spr:option>
			<spr:option value="operator">Operator</spr:option>
		</spr:select>
		<input type="submit" value="Register" /><br>
	</spr:form>
	<a href="prep_login_form.htm" >back</a>
</body>
</html>
