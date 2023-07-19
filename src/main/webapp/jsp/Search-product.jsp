<%@page import="org.apache.tomcat.util.codec.binary.Base64"%>
<%@page import="java.util.List"%>
<%@page import="org.jsp.dto.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Searched Products</title>
<style>

</style>


</head>
<body style="display: flex;flex-direction: column;">

	<table border="2px" cellpadding="30px" style="background-color: rgb(107, 21, 28);">
		<tr style="background-color:black; color: wheat;">
			<td>Brand</td>
			<td>Name</td>
			<td>Price</td>
			<td>Image</td>
			<td>Size</td>
			<td>Add To Cart</td>
		</tr>

	<%
	List<Product> product = (List<Product>) request.getAttribute("list");
	if (product != null) {
		for (Product product2 : product) {
			
	%>

		<tr>
			<td><%=product2.getBrand()%></td>
			<td><%=product2.getName()%></td>
			<td><%=product2.getPrice()%></td>
			<td>
			<%
				String base64 = Base64.encodeBase64String(product2.getImg());
				%> <img src="data:image/jpeg;base64,<%=base64%>" alt="Picture"
				style="width: 100px; height: auto;">
			</td>
			<td><%=product2.getSize()%></td>
			<td><a href="/customer/addtocart?id=<%=product2.getId()%>"><button>Add To Cart</button></a></td>
		</tr>

	<%}%>
</table>
<%
	} else {
	// Handle the case when the list is empty or null
	%>
	<p>No products found.</p>
	<%
	}

	%>

</body>
</html>
