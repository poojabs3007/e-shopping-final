<%@page import="org.jsp.dto.Customer" %>
	<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
		<!DOCTYPE html>
		<html lang="en">

		<head>
			<meta charset="UTF-8">
			<meta http-equiv="X-UA-Compatible" content="IE=edge">
			<meta name="viewport" content="width=device-width, initial-scale=1.0">
			<title>Home</title>
			<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
				integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
				crossorigin="anonymous">

			<link rel="stylesheet" href="./pro.css">
			<link rel="preconnect" href="https://fonts.googleapis.com">
			<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
				integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
				crossorigin="anonymous" referrerpolicy="no-referrer" />
			<link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet">

			<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
				integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
				crossorigin="anonymous">

			<style>
				a {
					font-family: 'Open Sans', sans-serif;
					font-weight: 400;
				}

				body{
					overflow-x: hidden;
				}

				#nav_bar {
					width: 100vw;
					height: 3em;
					background-color: rgb(107, 21, 28);
					display: flex;
					justify-content: end;
					align-items: center;
					position: fixed;
					z-index: 234567;
					top: 0;
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
					background-color: black;
					color: white;
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
					margin-right: 60px;
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
					top: 10em;
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

				.log {
					position: relative;
					right: 180px;
				}
			</style>
		</head>

		<body>
			<h1 id="successMessage" style="color: green">${pass}</h1>
			<h1 id="failMessage" style="color: red">${fail}</h1>


			<div id="nav_bar">
				<!-- <div class="cart">
			<a href="/admin/login" class="cart"><img src="https://cdn-icons-png.flaticon.com/128/2838/2838838.png"
				alt="cart" width="25em" height="25em" style="border-radius: 5em;">
			</a>
		</div> -->

				<div class="admin">
					<a href="/admin/login" class="admin" style="text-decoration: none;">Admin</a>
				</div>
			</div>



			<section id="nav_main">
				<div id="nav_child1">
					<h1 id="headt" style="font-style: oblique;">Shoppers choice</h1>
				</div>
				<div id="nav_child2">
					<form action="/customer/search" method="post">
						<input type="search" placeholder="Search" name="product"><button href=""
							style="background-color: white;border:none; width: 25px; position: absolute;left:37%;top:35%">
							<i style="color: black; position: relative ;right:10%"
								class="fa-solid fa-magnifying-glass"></i>
						</button>
					</form>
				</div>
				<div id="nav_child2">
					<div class="nav_child">
						<a href="/" style="text-decoration: none; color: white;">Home</a>
					</div>
					<div>
						<a href="/customer/products" style="text-decoration: none; color: white;">Products</a>

					</div>
					<% Customer customer=(Customer) session.getAttribute("customer"); if (customer==null) { %>
						<div>
							<a href="/aboutus" style="text-decoration: none; color: white;">About</a>

						</div>

						<div>
							<a href="/customer/login" style="text-decoration: none; color: white;">Login</a>

						</div>
						<div>
							<a href="/customer/signup" style="text-decoration: none; color: white;">SignUp</a>

						</div>

				</div>
				<% } else { %>
					<div id="nav_child3">
						<a href="/customer/cart" class="cart"><img
								src="https://cdn-icons-png.flaticon.com/128/2838/2838838.png" alt="cart" width="30em"
								height="30em" style="border-radius: 5em;">
						</a>
					</div>
					<div>
						<a class="log" href="/logout" style="text-decoration: none; color: white;">Logout</a>
					</div>
					<% } %>

			</section>

			<!-- <div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
		<div class="carousel-indicators">
		  <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="" aria-label="Slide 1"></button>
		  <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2" class="active" aria-current="true"></button>
		  <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3" class=""></button>
		</div>
		<div class="carousel-inner">
		  <div class="carousel-item">
			<svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#777"></rect></svg>
	
			<div class="container">
			  <div class="carousel-caption text-start">
				<h1>Example headline.</h1>
				<p>Some representative placeholder content for the first slide of the carousel.</p>
				<p><a class="btn btn-lg btn-primary" href="#">Sign up today</a></p>
			  </div>
			</div>
		  </div>
		  <div class="carousel-item active">
			<svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#777"></rect></svg>
	
			<div class="container">
			  <div class="carousel-caption">
				<h1>Another example headline.</h1>
				<p>Some representative placeholder content for the second slide of the carousel.</p>
				<p><a class="btn btn-lg btn-primary" href="#">Learn more</a></p>
			  </div>
			</div>
		  </div>
		  <div class="carousel-item">
			<svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#777"></rect></svg>
	
			<div class="container">
			  <div class="carousel-caption text-end">
				<h1>One more for good measure.</h1>
				<p>Some representative placeholder content for the third slide of this carousel.</p>
				<p><a class="btn btn-lg btn-primary" href="#">Browse gallery</a></p>
			  </div>
			</div>
		  </div>
		</div>
		<button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
		  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		  <span class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
		  <span class="carousel-control-next-icon" aria-hidden="true"></span>
		  <span class="visually-hidden">Next</span>
		</button>
	  </div> -->

			<body style="background-color: black;">
				<div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
					<div class="carousel-indicators">
						<button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0"
							class="active" aria-current="true" aria-label="Slide 1"></button>
						<button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
							aria-label="Slide 2"></button>
						<button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
							aria-label="Slide 3"></button>
					</div>
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img src="https://images.unsplash.com/photo-1555529669-2269763671c0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fHNoaXJ0cyUyMHNob3BwaW5nJTIwaW1hZ2VzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60"
								class="d-block w-100" alt="..." height="600px">
							<div class="carousel-caption d-none d-md-block">
								<h5>First slide label</h5>
								<p>Some representative placeholder content for the first slide.</p>
							</div>
						</div>
						<div class="carousel-item">
							<img src="https://images.unsplash.com/photo-1591085686350-798c0f9faa7f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fHNoaXJ0cyUyMHNob3BwaW5nJTIwaW1hZ2VzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60"
								class="d-block w-100" alt="..." height="600px">
							<div class="carousel-caption d-none d-md-block">
								<h5>Second slide label</h5>
								<p>Some representative placeholder content for the second slide.</p>
							</div>
						</div>
						<div class="carousel-item">
							<img src="https://images.unsplash.com/photo-1540959733332-eab4deabeeaf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fHNoaXJ0cyUyMHNob3BwaW5nJTIwaW1hZ2VzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60"
								class="d-block w-100" alt="..." height="600px">
							<div class="carousel-caption d-none d-md-block">
								<h5>Third slide label</h5>
								<p>Some representative placeholder content for the third slide.</p>
							</div>
						</div>
					</div>
					<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions"
						data-bs-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Previous</span>
					</button>
					<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions"
						data-bs-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Next</span>
					</button>
				</div>

				<div class="d-md-flex flex-md-equal w-100 my-md-3 mx-5 ps-md-3">
					<div class="bg-dark me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden">
						<div class="my-3 py-3">
							<h2 class="display-5">Top Deals On Shopping</h2>
							<p class="lead">Explore Now!</p>
						</div>
						<div class="bg-light shadow-sm mx-auto"
							style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;">
							<img src="https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2hvcHBpbmd8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60"
								alt="" height="300px" width="100%">
						</div>
					</div>
					<div class="bg-light me-md-3 pt-3 px-3 pt-md-5 mx-5 px-md-5 text-center overflow-hidden">
						<div class="my-3 p-3">
							<h2 class="display-5">Why Shoppers Choice?</h2>
							<p class="lead">Growth,Lowest Cost of doing Bussiness,Ease,transparency</p>
						</div>
						<div class="bg-dark shadow-sm mx-auto"
							style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;">
							<img src="https://images.unsplash.com/photo-1572584642822-6f8de0243c93?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGRpc2NvdW50JTIwaW1hZ2VzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60"
								alt="" width="100%">
						</div>
					</div>
				</div>

				<!-- footer -->
				<footer>
					<div class="container" style="color: white;">
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
								</a> <a href="https://www.instagram.com/accounts/login/"><img src="./images/insta.png"
										alt="" height="30px" width="30px" class="footer_image2"></a> <a
									href="https://twitter.com/i/flow/login?redirect_after_login=%2Flogin%3Flang%3Den"><img
										src="./images/twitter.png" alt="" height="30px" width="30px"
										class="footer_image3"></a> <a href="https://telegr.am/user_mgt/login"> <img
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

				<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
					integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
					crossorigin="anonymous"></script>
				<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
					integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
					crossorigin="anonymous"></script>
				<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
					integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
					crossorigin="anonymous"></script>
				<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
					integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
					crossorigin="anonymous"></script>

			</body>

		</html>