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
        
            
            background-color: rgb(110, 107, 107);
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
    </style>
</head>
<body>
	<h1>${pass}</h1>
	<h1>${fail}</h1>
        <form action="/customer/signup" method="post">
        <h1 class="header" style="color: white;">SignUp</h1>
        <table cellspacing="20em">
            <tr>
                <td class="td1"><label for="name"><strong>First Name :</strong></label></td>
                <td><input type="text" name="fname" id="name"></td>
            </tr>
            <tr>
                <td class="td1"><label for="lname"><strong>Last Name :</strong></label></td>
                <td><input type="text" name="lname" id="lname"></td>
            </tr>
            <tr>
                <td class="td1"><label for="mno"><strong>Mobile No :</strong></label></td>
                <td><input type="text" name="mno" id="mno"></td>
            </tr>
            <tr>
                <td class="td1"><label for="email"><strong> Email-Id :</strong></label></td>
                <td><input type="email" name="email" id="email"></td>
            </tr>
            <tr>
                <td class="td1"><label for="pwd"><strong>Password :</strong></label></td>
                <td><input type="password" name="pwd" id="pwd"></td>
            </tr>
            <tr>
                <td class="td1"><label for="cpwd"><strong> Confirm <br>
                    Password </strong>:</label></td>
                <td><input type="password" name="" id="cpwd"></td>
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
</body>
</html>