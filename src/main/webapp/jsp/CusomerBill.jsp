<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="ISO-8859-1">
		<title>Choose Payment</title>
		<style>
			body {
				background-image: url("https://images.unsplash.com/photo-1483478550801-ceba5fe50e8e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fHBheW1lbnRzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60");
				background-repeat: no-repeat;
				background-size: 100% 100vh;
			}
		
		
		</style>
	</head>

	<body>
		<h1>${pass}</h1>
		<h1>${fail}</h1>
		<form action="/customer/billing" method="post">
			<center>
			<label><h1>Payment mode</h1></label>
		</center>
			<input type="radio" name="payment" value="Paytm" id="payment">Paytm <br>
			<div id="img1"></div>
			 <input type="radio" name="payment"value="card" id="card">Card 
			 <div id="img">

			 </div>
			 <input type="radio" name="payment" value="cod" id="">Cash On Delivery
			<button type="submit">Submit</button>
		</form>
	</body>

	</html>