<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        body{
            overflow: hidden;
            height: 600px;
            display: flex;
            justify-content: center;
            align-items: center;
            background-image:url(../image/prbg2.jpg) ;
        }

        .cont{
            position: relative;
            right: 7%;
        }
        form{
            border: 2px solid;
            /* position: relative;
            left: 27em;
            top: 5em; */
            width: 25em;
            height: 33em;
            /* display: flex;
            justify-content: center;
            align-items: center; */
            border-radius: 1em;
            background-color: rgb(218, 205, 214);

        }
        h1{
            height: 2em;
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
            top: -20.3px;
            border-radius: 10px;
        
            
            /* background-color: rgb(110, 107, 107); */
            /* text-align: center;
            border-top-right-radius: 0.5em;
            border-top-left-radius: 0.5em; */
            
        }
       

        .td1{
            text-align: right;
            position: relative;
            /* left: -1em; */
        }

        .cancel{
            background-color: red;
             position: relative; 
             left: -4em; top: 1.5em;
              border: white; height: 2em;
              width: 7em; border-radius: 1em;
              
        }

        .reg{
            position: relative;
             left: 2em;
              background-color:cornflowerblue;
               border: white;
                height: 2em; width: 7em; 
                top: 1em;
                 border-radius: 1em;
        }
        ::placeholder{
            position: relative;
left: 5px;


        }
        body{
        background-image: url("https://images.unsplash.com/photo-1525562723836-dca67a71d5f1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80");
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
        <form class="cont"action="/customer/signup" method="post" style="background-image: linear-gradient(to top left,#675D50,#FFCDA8);">
          
        <h1 class="header" style="color: #331D2C;">SignUp</h1>
        <table cellspacing="20em">
            <tr>
                <td class="td1"><label for="name"><strong>First Name :</strong></label></td>
                <td><input type="text" name="fname" id="name" placeholder="First Name"></td>
                <td><span id="fname"></span></td>
            </tr>
            <tr>
                <td class="td1"><label for="lname"><strong>Last Name :</strong></label></td>
                <td><input type="text" name="lname" id="lname" placeholder="Last Name"></td>
            </tr>
            <tr>
                <td class="td1"><label for="mno"><strong>Mobile No :</strong></label></td>
                <td><input type="text" name="mno" id="mno" placeholder="Mobile No"></td>
            </tr>
            <tr>
                <td class="td1"><label for="email"><strong> Email-Id :</strong></label></td>
                <td><input type="email" name="email" id="email" placeholder="Email-Id"></td>
            </tr>
            <tr>
                <td class="td1"><label for="pwd"><strong>Password :</strong></label></td>
                <td><input type="password" name="pwd" id="pwd" placeholder="Password"></td>
            </tr>
            <tr>
                <td class="td1"><label for="address"><strong> Address  </strong>:</label></td>
                <td><input type="text" name="address" id="address" placeholder="Adress"></td>
            </tr>
            
            <tr>
                <td><button class="reg" ><strong><a href="./home.jsp" style="text-decoration: none; color: white;">Home</strong></a></button>
                </td>
                <td><button class="reg" style="text-decoration: none;color: white;"><strong>Register</strong></button>
                </td>
                <!-- <a href="/customer/cart" >Forgot pasword?</a> -->
                <td><button class="cancel"><strong><a href="" style="text-decoration: none;color: white;">Cancel</a></strong></button>
                 <a href="" style="position: relative; top: 3em; left: -1em; text-decoration: none;font-size: 15px;color: black;">help?</a></td>
            
        </table>
    </form>

    <script>
         let user=document.getElementById('name').value;
             if(user=="")
        {
            document.getElementById('fname').innerHTML="username cant be empty";
            return false;
        }
        if((user.length<=3)||(user.length>20))
        {
            document.getElementById('fname').innerHTML="characters must be between 3 to 20";
            return false;
        }
        if(!isNaN(user))
        {
            document.getElementById('fname').innerHTML="username cant be a numbers";
            return false;
        }
    </script>
</body>
</html>