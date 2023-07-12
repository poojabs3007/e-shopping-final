<%@page import="org.jsp.dto.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home</title>
<link rel="stylesheet" href="./pro.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap"
	rel="stylesheet">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<style>
a {
	font-family: 'Open Sans', sans-serif;
	font-weight: 400;
}

#nav_bar {
	width: 100vw;
	height: 3em;
	background-color: rgb(110, 107, 107);
	display: flex;
	justify-content: end;
	align-items: center;
	position: fixed;
	z-index: 234567;
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
	box-sizing: border-box;
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
	width: 100vw;
	height: 6em;
	background-color: rgb(218, 205, 214);
	display: flex;
	justify-content: center;
	align-items: center;
	position: fixed;
	top: 47px;
	z-index: 123434567;
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

#main_body {
	width: 100vw;
	height: 50vw;
	background-color: aqua;
}

.product_container {
	width: 100%;
}

.child_product_container {
	width: 90%;
	margin: auto;
	display: flex;
	justify-content: space-evenly;
}

.child_product_container1 {
	width: 20%;
	border: 1px solid black;
	border-style: none;
	text-align: center;
	padding: 10px;
}

.img1 {
	width: 220px;
	height: 280px;
}

.container {
	display: flex;
	justify-content: space-around;
	position: relative;
	top: 20em;
}

.footer_image {
	display: inline-grid;
	grid-template-columns: auto auto auto auto;
	column-gap: 0.5em;
}

.head {
	font-size: 1.8em;
	position: relative;
}

#carouselExampleSlidesOnly {
	position: relative;
	top: 8.5em;
}

.container {
	display: flex;
	justify-content: space-around;
	position: relative;
	top: 15em;
}

.footer_image {
	display: inline-grid;
	grid-template-columns: auto auto auto auto;
	column-gap: 0.5em;
}

a {
	font-family: 'Open Sans', sans-serif;
	font-weight: 400;
}

.head {
	font-size: 1.8em;
	position: relative;
}
</style>
</head>
<body>
	<h1>${pass}</h1>
	<h1>${fail}</h1>
	<div id="nav_bar">
		<div class="cart">
			<a href="/admin/login" class="cart"><img src="car.png"
				alt="cart" width="25em" height="25em" style="border-radius: 5em;">
			</a>
		</div>
		<div class="admin">
			<a href="/admin/login" class="admin" style="text-decoration: none;">Admin</a>
		</div>
	</div>



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

	<div id="carouselExampleSlidesOnly" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="../images/bb1.avif" class="d-block w-100" alt="..." height="500em">
			</div>
			<div class="carousel-item">
				<img src="./images/bb2.avif" class="d-block w-100" alt="..." height="500em">
			</div>
			<div class="carousel-item">
				<img src="./images/bb3.avif" class="d-block w-100" alt="..." height="500em">
			</div>
		</div>
	</div>
	<!-- footer -->
	<footer>
		<div class="container">
			<div class="item1">
				<div style="font-size: 1.8em;">Shoppers Choice</div>
				<p style="line-height: 2em;">
					Is a new generation Indian based brand. <br> With a new
					mindset, this brand is here to <br> redefine fashon aim to
					break free from the <br>conventional beauty standards.
				</p>
				<p style="line-height: 2em;">
					Copyright @2023 All rights reserved | This <br> template is
					made with &#128151 by Shoppers Choice
				</p>
			</div>
			<div class="item2">
				<div class="head">Opening Times</div>
				<p>Monday-Friday:10.00-23.00</p>
				<p>Saturday:10.00-19.00</p>

				<div class="footer_image">
					<a
						href="https://www.facebook.com/campaign/landing.php?campaign_id=14884913640&extra_1=s%7Cc%7C589460569891%7Cb%7Cfacebook%20signin%7C&placement=&creative=589460569891&keyword=facebook%20signin&partner_id=googlesem&extra_2=campaignid%3D14884913640%26adgroupid%3D128696221832%26matchtype%3Db%26network%3Dg%26source%3Dnotmobile%26search_or_content%3Ds%26device%3Dc%26devicemodel%3D%26adposition%3D%26target%3D%26targetid%3Dkwd-3821998899%26loc_physical_ms%3D1007768%26loc_interest_ms%3D%26feeditemid%3D%26param1%3D%26param2%3D&gclid=EAIaIQobChMI5pnu1IH8_wIVrSeDAx1-4Q6tEAAYASAAEgJxTvD_BwE">
						<img src="./images/facebook.png" alt="" height="30px" width="30px"
						class="footer_image1">
					</a> <a href="https://www.instagram.com/accounts/login/"><img
						src="./images/insta.png" alt="" height="30px" width="30px"
						class="footer_image2"></a> <a
						href="https://twitter.com/i/flow/login?redirect_after_login=%2Flogin%3Flang%3Den"><img
						src="./images/twitter.png" alt="" height="30px" width="30px"
						class="footer_image3"></a> <a
						href="https://telegr.am/user_mgt/login"> <img
						src="./images/telegram.png" alt="" height="30px" width="30px"
						class="footer_image4"></a>
				</div>

			</div>
			<div class="item3">
				<div class="head">Contact Us</div>
				<p>tel:8754678943</p>
				<P>Email:shopperschoice@gmail.com</P>
				<p>Adress:No 29 7th cross 5th main Mumbai India</p>
			</div>
		</div>
	</footer>




	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
		integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
		integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
		crossorigin="anonymous"></script>
</body>
</html>