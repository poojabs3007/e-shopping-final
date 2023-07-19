<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        form{
            position: relative;
            left: 35%;
            top: 100px;
        }
        .test1{
            height: 30px;
            width: 30%;
        }
        .test2{
            height: 30px;
            width: 14.7%;
        }
        h5{
            position: relative;
            left: 15.5%;
            bottom: 10px;
        }
        input{
            background-color: #EEEEEE;
            border-radius: 5px;
        }

        ::placeholder{
        position: relative;
        left: 7px;
        }

        body{
            background-image: url("https://images.unsplash.com/photo-1687720657052-c026be7f388c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=685&q=80");
       background-repeat: no-repeat;
       background-size: 100% 100vh;
        }

        button{
            position: relative;
            left: 150px;
            width: 7%;
            border-radius: 3px;
            height: 30px;
            box-shadow: 3px 4px 2px black;
        }
    </style>
</head>
<body>
    
    <form action="">
        <div class="main">
            <input class="test1" type="text" placeholder="Card Number"><br><br>
            <input  class="test1" type="text" placeholder="Name On Card"><br><br>  
            <input   class="test2"type="Date" placeholder="Expery Date"> 
            <input   class="test2" type="text" placeholder="CVV">

        </div>

        
   <br><br> <input type="checkbox"> Save this card for faster checkout <br> <br>
   <button>Submit</button>
    </form>


</body>
</html>