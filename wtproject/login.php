<!DOCTYPE html>
<html>
    <style>
    form{
            max-width: 700px;
            margin-left:600px;
            color:white;
            /* background-image:"sports.jpg" ; */

        }
    h1{
         color:rgb(215, 194, 141);
         margin-left: 630px;
         font-family: "footlight MT light";
         font-size: 50px;
         font-variant: small-caps;
        }
        h2{
            color:white;
            margin-left: 740px;
            font-size: 45px;
            font-family: Garamond;
        }
        input[type=text]{
            width:50%;
            padding: 12px 20px;
            margin:5px;
        }
        body{
            background-image:url("fball.jpg") ;
            background-repeat: no-repeat;
         background-size:cover;
        }
        input[type=submit]{
            background-color:rgb(175, 157, 109); /* #374e85;*/
            color:white;
            width:56%;
            padding: 12px 20px;
            margin:5px;
            border:none;
            border-radius: 4px;
            font-size: 20px;
        }
        label{
            font-size: 20px;
            font-style: block;
        }
        .content p{
            margin-left: 130px;
            font-size: 20px;
        }
        h3{
            margin-left: 140px;
            font-size:20px ;
        }
    .head p{
            border:1px solid ;
            border-radius: 4px;
            padding:5px;
            background-color: rgba(175, 157, 109,0.6);
            width:8%;
            height:8%;
            float:right;
            margin-right: 80px;
            text-align: center;
            font-size: 20px;
        }
    </style>
<body>
    <div class="head">
        <p><a href="index.php" style="color: white;">Home</a></p> 
        <h1><i>SPORTS WORLD</i></h1> 
        <h2>Login</h2> 
    </div>
<div class="content">
    <form action="loginconfirm.php" method="post">
       <label for="usw">Username</label><br>
       <input type="text" id="usw" name="username" required ><br>
       <label for="psw">Password</label><br>
       <input type="password" id="psw" name="password" style="width: 56% ;height: 35px;" required ><br>
       <br> <input type="submit" value="Continue"><br>
       <p>Not a member yet?</p>
       <h3><a href="signup.php" style="color:rgb(133, 105, 160) ;">Sign Up Now</a></h3>
    </form>
</div>
    </div>
</body>
</html>
