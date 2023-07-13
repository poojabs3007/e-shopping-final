<%@page import="org.jsp.dto.Customer"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.tomcat.util.codec.binary.Base64"%>
<%@page import="org.jsp.dto.Item"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap"
	rel="stylesheet">

<style>
a {
	font-family: 'Open Sans', sans-serif;
	font-weight: 400;
}

#nav_bar {
	width: 100%;
	height: 3em;
	background-color: rgb(110, 107, 107);
	display: flex;
	justify-content: end;
	align-items: center;
}

.cart {
	color: white;
	font-size: 1em;
	position: relative;
	left: -5em;
}
/* img:hover{
    background-color: red;
} */
.admin:hover {
	color: red;
}

* {
	margin: 0;
	padding: 0;
}

.admin {
	color: white;
	font-size: 1em;
	position: relative;
	left: -3em;
}

#nav_main {
	width: 100ew;
	height: 6em;
	background-color: rgb(218, 205, 214);
	display: flex;
	justify-content: center;
	align-items: center;
}

#nav_child1 {
	width: 30%;
	text-align: center;
}

#nav_child2 {
	width: 50%;
	display: flex;
	justify-content: space-between;
	align-items: center;
	font-size: 1.3em;
	font-family: 'Times New Roman', Times, serif;
}

.nav_child:hover {
	color: red;
}

#nav_child3 {
	width: 20%;
	display: flex;
	justify-content: end;
}

#headt {
	font-size: 35px;
	font-family: 'Times New Roman', Times, serif;
	font-weight: lighter;
}

#main_body {
	width: 100vw;
	height: 50vw;
	background-color: aqua;
}

#cart_imagehead {
	height: 5em;
	width: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
	background-image: radial-gradient(skyblue, white);
	font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande',
		'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
	position: relative;
	top: 15px;
}

#cart_table {
	font-family: Verdana, Geneva, Tahoma, sans-serif;
	font-size: medium;
	border-collapse: collapse;
	position: relative;
	top: 2em;
}

.cart_quantity {
	width: 3em;
	text-align: center;
}

#cart_head {
	background-image: linear-gradient(to top, gray, white);
}

#cart_total {
	position: relative;
	left: 65em;
	top: 50px;
	border-spacing: 2em;
}

td {
	text-align: left;
	border-bottom: -1em solid;
}

#cart_image {
	width: 250px;
	height: 200px;
	text-align: center;
}
</style>
</head>
<body>
		<h1 id="successMessage" style="color: green">${pass}</h1>
	<h1 id="failMessage" style="color: red">${fail}</h1>
	<script>
	// Get the success and fail message elements
	var successMessage = document.getElementById("successMessage");
	var failMessage = document.getElementById("failMessage");

	// Check if the success message exists and display it as a pop-up alert
	if (successMessage.innerText !== "") {
		window.alert(successMessage.innerText);
		successMessage.style.display = "none"; // Hide the success message element
	}

	// Check if the fail message exists and display it as a pop-up alert
	if (failMessage.innerText !== "") {
		window.alert(failMessage.innerText);
		failMessage.style.display = "none"; // Hide the fail message element
	}
</script>

	<%
	List<Item> list = (List<Item>) request.getAttribute("list");
	%>

	<section id="nav_main">
		<div id="nav_child1">
			<h1 id="headt" style="font-style: oblique;">Shoppers choice</h1>

		</div>
		<div id="nav_child2">
			<div class="nav_child">
				<a href="/" style="text-decoration: none; color: black;">Home</a>
			</div>
			<div>
				<a href="/customer/products"
					style="text-decoration: none; color: black;">Products</a>

			</div>
			<%
			Customer customer = (Customer) session.getAttribute("customer");
			if (customer == null) {
			%>
			<div>
				<a href="/aboutus" style="text-decoration: none; color: black;">About</a>

			</div>

			<div>
				<a href="/customer/login"
					style="text-decoration: none; color: black;">Login</a>

			</div>
			<div>
				<a href="/customer/signup"
					style="text-decoration: none; color: black;">SignUp</a>

			</div>

		</div>
		<%
		} else {
		%>
		<div id="nav_child3">
			<a href="/customer/cart" class="cart"><img src="car.png"
				alt="cart" width="30em" height="30em" style="border-radius: 5em;">
			</a>
		</div>
		<div>
			<a href="/logout" style="text-decoration: none; color: white;">Logout</a>
		</div>
		<%
		}
		%>


	</section>


	<div id="cart_imagehead">
		<h1>Cart Page</h1>
	</div>
	<center>
		<table style="text-align: center;" id="cart_table" cellspacing="5em"
			cellpadding="50em" border="2em">
			<tr id="cart_head">
				<td style="text-align: center; padding: 20px;"><h3>Product
						Image</h3></td>
				<td style="text-align: center; padding: 20px;"><h3>Product</h3></td>
				<td style="text-align: center; padding: 20px;"><h3>Price</h3></td>
				<td style="text-align: center; padding: 20px;"><h3>Quantity</h3></td>
				<td style="text-align: center; padding: 20px;"><h3>Remove</h3></td>
			</tr>

			<%
			for (Item prod : list) {
			%>
			<tr>
				<td id="cart_image">
					<%
					String base64 = Base64.encodeBase64String(prod.getImage());
					%> <img height="300" width="300" alt="unknown"
					src="data:image/jpeg;base64,<%=base64%>">
				</td>
				<td style="text-align: center;">
					<h3><%=prod.getName()%></h3>
				</td>
				<td style="text-align: center;"><h3><%=(prod.getPrice() / prod.getQuantity())%></h3></td>
				<td style="text-align: center;"><h3><%=prod.getQuantity()%></td>
				<td style="text-align: center;"><a
					href="/customer/<%=prod.getName()%>"><button
							style="padding: 5px; font-size: 15px;">Delete</button></a></td>
			</tr>


			<%
			}
			%>
		</table>
	</center>
	<a href="/jsp/CusomerBill.jsp"><button type="submit">Place
			Order</button></a>
</body>
</html>