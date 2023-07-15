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
</head>
<body>

	<table>
		<tr>
			<td>Brand</td>
			<td>Name</td>
			<td>Price</td>
			<td>Image</td>
			<td>Size</td>
		</tr>
	</table>
	<%
	List<Product> product = (List<Product>) request.getAttribute("list");
	if (product != null) {
		for (Product product2 : product) {
			
	%>
	<table>
		<tr>
			<td><%=product2.getBrand()%></td>
			<td><%=product2.getName()%></td>
			<td>
			<%
				String base64 = Base64.encodeBase64String(product2.getImg());
				%> <img src="data:image/jpeg;base64,<%=base64%>" alt="Picture"
				style="width: 100px; height: auto;">
			</td>
			<td><%=product2.getSize()%></td>
		</tr>
	</table>
	<%
	}
	} else {
	// Handle the case when the list is empty or null
	%>
	<p>No products found.</p>
	<%
	}
	%>

</body>
</html>
