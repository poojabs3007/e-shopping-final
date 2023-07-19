<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="ISO-8859-1">
		<title>Choose Payment</title>
		<style>
			body {
				background-image: url("https://images.unsplash.com/photo-1571715268998-d6e79bed5fc9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=872&q=80");
				background-repeat: no-repeat;
				background-size: 100% 100vh;
				font-size: 20px;
			}
			button{
				position: relative;
				left: 35px;
				width: 100PX;
				height: 25PX;
				color: black;
				font-weight: bolder;
				box-shadow: 2px 2px 5px black;
				transition: all 1s linear;
			}
			button:hover{
				transform: scale(1.2,1.2);
			}
		  form{
			position: relative;
			left: 2%;
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
			<input type="radio" name="payment" value="upi" id="payment">UPI <br><br>
			<div id="img1"></div>
			 <input type="radio" name="payment" value="card" id="card">Card <br><br>
			 <div id="img">

			 </div>
			 <input type="radio" name="payment" value="cod" id="">Cash On Delivery <br><br>
			<button type="submit">Submit</button>
		</form>
	</body>

	</html>