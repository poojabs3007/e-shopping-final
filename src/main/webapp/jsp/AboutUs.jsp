<%@page import="org.jsp.dto.Customer" %>
	<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
		<!DOCTYPE html>
		<html lang="en">

		<head>
			<meta charset="UTF-8">
			<meta http-equiv="X-UA-Compatible" content="IE=edge">
			<meta name="viewport" content="width=device-width, initial-scale=1.0">
			<title>About Us</title>
			<link rel="icon" href="../images/favicon.ico">
			<link rel="stylesheet" href="../css/about.css">
			<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
				integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
				crossorigin="anonymous">
			<style>
              #nav_main{
				display: flex;
				width: 100%;
				justify-content: space-around;
				position: relative;
				bottom: 30px;
				height: 100px;
				width: 100%;
				background-color: #6c757d;
			  }
			  #nav_child2{
				display: flex;
				justify-content: space-around;
				width: 35%;
				
			  position:absolute;
			  top: 50px;
			 left: 40%;

			  }
			  #nav_child1{
				position: absolute;
				top: 30px;
		left: 5%;
				
			  }
			  #nav_bar{
				display: flex;
				justify-content: space-around;
				width: 20%;
				position: absolute;
			  left: 90%;
				
			  }
			  #nav_bar{
				position: absolute;
			left: 80%;
				z-index: 4;
				color: black;
			  }
			  .cart{
				color: black;
				text-decoration: none;
				position: relative;
				top: 10px;
			  }
			  .admin{
				color: black;
				text-decoration: none;
				position: relative;
				top: 10px;
			  }
			  .ac{
				display: flex;
				justify-content: center;
				position: relative;
				top: 15px;
			  }
			  .ic{
				position: relative;
				left: 60%;
				bottom: 300px;
			  }
			  .chil{
				position: relative;
				left: 2%;
			  }
			  .chil4{
				width: 45%;
				position: relative;
				bottom: 100px;
				left: 2%;
			  }
			  .chil3{
				position: relative;
				left: 55%;
				bottom: 350px;
			  }
			  .head {
	font-size: 1.8em;
	position: relative;
}
.footer_image {
	display: inline-grid;
	grid-template-columns: auto auto auto auto;
	column-gap: 0.5em;
}
.container {
	display: flex;
	justify-content: space-around;
	position: relative;
	bottom: 200px;
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
			<div id="nav_bar">
				<div class="cart">
					<a href="./admincart.html" class="cart"><img src="car.png" alt="cart" width="25em" height="25em"
							style="border-radius: 5em;">
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
						<a href="/customer/products" style="text-decoration: none; color: black;">Products</a>

					</div>
					<% Customer customer=(Customer) session.getAttribute("customer"); if (customer==null) { %>
						<div>
							<a href="/aboutus" style="text-decoration: none; color: black;">About</a>

						</div>

						<div>
							<a href="/customer/login" style="text-decoration: none; color: black;">Login</a>

						</div>
						<div>
							<a href="/customer/signup" style="text-decoration: none; color: black;">SignUp</a>

						</div>

				</div>
				<% } else { %>
					<div id="nav_child3">
						<a href="/customer/cart" class="cart"><img src="car.png" alt="cart" width="30em" height="30em"
								style="border-radius: 5em;">
						</a>
					</div>
					<div>
						<a href="/logout" style="text-decoration: none; color: white;">Logout</a>
					</div>
					<% } %>
			</section>
			<div class="about">
				<div class="about-parent" style="position: relative; bottom: 30px; font-size: 25px;">
					<div class="ac">
						<h1>ABOUT US</h1>
					</div>
					<div class="para"></div>
				</div>
			</div>
			<div class="ip">
				<div class="chil">
					<img src="https://cdn.pixabay.com/photo/2014/02/03/11/31/medications-257336_960_720.jpg" alt=""
						width="600px" height="350px">
				</div>
				<div class="par">
					<div class="ic">
						<h1>How we started?</h1>
						<p>
							Our website was started due to people who are facing <br>problems
							related to medicine which is out of stock <br>and to the
							people who are unable to expalin <br>about their disease.We
							decided to start our <br> company called PHARMA+ in 2022 and
							now we <br> are providing medicines and utilities at the <br>
							given time and there is no word for out of stock
						</p>
					</div>
				</div>
			</div>
			<div class="chil2">
				<div class="chil4">
					<h1>CONVINIENCE</h1>
					<p>Heavy traffic, lack of parking, monsoons, shop closed,
						forgetfulness… these are some of the reasons that could lead to
						skipping of vital medications. Since taking medicines regularly is a
						critical component of managing chronic medical conditions, it’s best
						not to run out of essential medicines. Just log on to netmeds.com,
						place your order online and have your medicines delivered to you –
						without leaving the comfort of your home.</p>
				</div>
				<div class="chil3">
					<img src="https://media.istockphoto.com/id/1220577245/photo/hand-to-hand-of-delivery-food-service-sending-delicious-from-restaurant-to-customer-without.jpg?b=1&s=170667a&w=0&k=20&c=5GdOziZwOvG3bf-_d20XCkuoEmRzh9geqQgVFObKLMo="
						alt="" width="550px" height="350px">
				</div>
			</div>
			
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
		</body>

		</html>