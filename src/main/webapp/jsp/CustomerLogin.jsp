<%@page import="org.jsp.dto.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="./pro.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap"
	rel="stylesheet">
<style>
	body{
		overflow-y: hidden;
	}
a {
	font-family: 'Open Sans', sans-serif;
	font-weight: 400;
}

h1 {
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

h1 {
	font-size: 35px;
	font-family: 'Times New Roman', Times, serif;
	font-weight: lighter;
}

.container-fluid {
	background-image: url(../image/prbgg.jpg);
	/* background-image: url(../image/1682498717547.jpg);
     background-repeat: no-repeat;
     background-size: cover; */
	height: 500px;
	display: flex;
	justify-content: center;
	align-items: center;
}

.tab {
	border: 2px solid black;
	background-color: white;
	/* background-image: linear-gradient(blue,red,orange,green); */
	/* border-radius: 10px; */
	/* display: flex; */
	/* justify-content: center; */
	padding: 60px;
	width: 100px;
	height: 100px;
	margin-bottom: 40px;
}

input[id="user"] {
	border-color: black;
	border-width: 1px;
	border-radius: 3px;
	border-style: solid;
}

input[id="pass"] {
	border-color: black;
	border-width: 1px;
	border-radius: 3px;
	border-style: solid;
}

input[value="Submit"] {
	border-color: blue;
	border-width: 1px;
	border-radius: 3px;
	color: black;
}
.container-fluid{
	position: relative;
	top: 150px;
	left: 10px;
}

body{
        background-image: url("https://images.unsplash.com/photo-1607082348824-0a96f2a4b9da?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80");
        background-repeat: no-repeat;
        background-size: 100% 100vh;
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
		<!-- <section id="nav_main">
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

	</section> -->


	<div class="container-fluid">
		<form action="/customer/login" method="post" >
			<table class="tab"
				style="height: 300px ;width: 300px; border-radius: 10px;background-image: linear-gradient(brown,grey);">
				<tr>
					<th
						style="font-size: 20px; font-style: normal; text-align: center; position: relative;bottom: 20px;">
						USER LOGIN </th>
				</tr>
				<tr>

					<td><input type="text" name="user" id="user"
						placeholder="Enter email"
						style="width: 200px; height: 25px; font-size: 12px; background-color: lightgoldenrodyellow;">
					</td>

				</tr>
				<tr>

					<td><input type="password" name="password" id="pass"
						placeholder="Password"
						style="width: 200px; height: 25px; font-size: 12px;"></td>

				</tr>

				<tr>
					<td>
						<button
							style="width: 50px; height: 30px; font-size: 18px; background-color: orange; border-style: none; width: 200px; border-radius: 2px;">
							<a style="text-decoration: none; color: white">Login</a>
						</button>
						<a href="/customer/signup" style="color: black; position: relative; left: 36%; top: 20px; font-weight: 800;">SignUp?</a>
					</td>

				</tr>

			</table>
		</form>
	</div>

<script>
	 let email=document.getElementById('user').value;
           if(email=="")
         {
            document.getElementById('user').innerHTML="email cant be empty";
            return false;
         }
         if(email.indexOf('@')<=0)
         {
            document.getElementById('user').innerHTML="invalid @ Position";
            return false;
         }
         if((email.charAt(email.length-4)!='.')||(email.charAt(email.length-3)!='.'))
         {
            document.getElementById('user').innerHTML="invalid . position"
         }


		 let pass=document.getElementById('pass').value;
           if(pass=="")
        {
            document.getElementById('password').innerHTML="password cant be empty";
            return false;
        }
        if((pass.length<=2)||(pass.length>20))
        {
            document.getElementById('password').innerHTML="password must be between 2 to 20";
            return false;
        }
</script>
</body>
</html>