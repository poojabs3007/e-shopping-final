<%@page import="org.jsp.dto.Item"%>
<%@page import="org.jsp.dto.Customer"%>
<%@page import="java.util.Random"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cash on Delivery</title>
</head>
<body>
		<h1 id="successMessage" style="color: green">${pass}</h1>
	<h1 id="failMessage" style="color: red">${fail}</h1>
	
	<%
	Customer customer = (Customer) request.getAttribute("customer");
	String payment = (String) request.getAttribute("payment");
	double price = (double) request.getAttribute("price");
	%>
	<table border="2px">
		<tr>
			<th>Name</th>
			<th>Product name</th>
			<th>Quantity</th>
			<th>Price</th>
		</tr>

		<%
		for (Item item : customer.getCart().getItems()) {
		%>

		<tr>
			<td><%=customer.getFname() + " " + customer.getLname()%></td>
			<td><%=item.getName()%></td>
			<td><%=item.getQuantity()%></td>
			<td><%=item.getPrice()%></td>
		</tr>
		<%
		}
		%>
	</table>
	<h2>Delivery Address</h2>
	<h3><%=customer.getAddress()%></h3>
	<h1>Total Price is : ${price} Payment is Going Through Cash on Delivery</h1>
	<button>Confirm Order &#8377 ${price}</button>
	<button onclick="window.print()">print</button>

	

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
</body>
</html>

