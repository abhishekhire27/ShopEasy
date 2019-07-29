<%@page import="com.cdac.shopeasyapp.model.Product"%>
<%@page import="com.cdac.shopeasyapp.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<%@page import="java.util.List"%>

<%
	List<Product> productlist = (List<Product>)request.getAttribute("productlist");
	User user = (User)session.getAttribute("user");
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
.card {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	max-width: 200px;
	max-height: 300px;
	text-align: center;
	font-family: arial;
}

.price {
	color: grey;
	font-size: 22px;
}

.card button {
	border: none;
	outline: 0;
	padding: 12px;
	color: white;
	background-color: #000;
	cursor: pointer;
	width: 100%;
	font-size: 18px;
}

.card button:hover {
	opacity: 0.7;
}

.grid-container {
  display: grid;
  grid-template-columns: auto auto auto;
  padding: 10px;
}

.grid-item {
  font-size: 30px;
  text-align: center;
}
</style>

<script>
	function addToCart(int productId, User user1){
		UserService userService = new UserService();
		Product product = (Product)session(Product.class,productId);
		userService.addToCart(productId, user1);

	}


</script>

</head>

<body>
	<div class="col-3"></div>

	<div class="col-6">
<div class="grid-container">
		<%for(Product list : productlist){ %>
		 <div class="grid-item">
		<div class="card">
			<img
				src="http://bestjquery.com/tutorial/product-grid/demo8/images/img-4.jpg"
				alt="Image not available" style="width: 100%">
				
			<h1><%=list.getProductName() %></h1>
			<p class="price">Rs. <%=list.getPrice() %></p>
			<p><%=list.getDescription() %></p>
		
			<button name="cat" value="<%=list.getSubCategoryId() %>" style="Color: Green" onclick="addToCart(<%=list.getProductId()%>, user)">Add to Cart</button>
	
		</div>
</div>
		<%} %>
	</div>
</div>

	<div class="col-3"></div>
</body>
</html>