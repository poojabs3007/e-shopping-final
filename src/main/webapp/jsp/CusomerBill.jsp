<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Choose Payment</title>
</head>
<body>
	<h1>${pass}</h1>
	<h1>${fail}</h1>
	<form action="/customer/billing" method="post">
		<label>Payment mode</label> <input type="radio" name="payment"
			value="Paytm">Paytm <br> <input type="radio"
			name="payment" value="card">Card <input type="radio"
			name="payment" value="cod">Cash On Delivery
		<button type="submit">Submit</button>
	</form>
</body>
</html>