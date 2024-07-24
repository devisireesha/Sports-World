<!DOCTYPE html>
<html>
    <style>
    form{
            max-width: 700px;
            margin-left:600px;
            color:black;
        }
        h1{
            color:rgb(215, 194, 141);
         margin-left: 630px;
         font-family: "footlight MT light";
         font-size: 50px;
         font-variant: small-caps;
        }
        h2{
            color:black;
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
            /* background-image:linear-gradient(to bottom right,lightblue,blue) ; */
         background-image: url("bad.jpg");
         background-repeat: no-repeat;
         background-size:cover;
        }
        input[type=submit]{
            background-color: #0ec651;
            color:white;
            width:56%;
            padding: 12px 20px;
            margin:5px;
            border:none;
            font-size: 20px;
        }
        label{
            font-size: 20px;
            font-style: block;
            color: white;
        }
        input[type=date]{
            font-size: 15px;
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
        <h2>Signup</h2> 
    </div>
<div>
    <form method="post" action="signupconfirm.php">
        
        <label for="fname">First Name</label><br>
        <input type="text" id="fname" name="firstname" placeholder="Your Name" required><br><br>
        <label for="lname">Last Name</label><br>
        <input type="text" id="lname" name="lastname" placeholder="Your last Name" required><br>
        <br><label for="gender">Gender</label><br>
        <input type="radio" id="female" name="gender"  value="Female" required>
        <label for="female">Female</label><br>
        <input type="radio" id="male" name="gender"  value="Male" required>
        <label for="Male">Male</label><br>
       <br><label for="dob">Date Of Birth</label><br>
       <input type="date" id="dob" name="dateofbirth" required style="width: 56% ;height: 35px;"  ><br>
       <br> <label for="pno">Phone Number</label><br>
       <input type="tel" id="pno" name="phone" pattern="[0-9]{10}" required style="width: 56% ;height: 35px;"><br><br>
       <label for="usw">Username</label><br>
       <input type="text" id="usw" name="username" required><br>
       <label for="psw">Password</label><br>
       <input type="password" id="psw" name="password" required style="width: 56% ;height: 35px;" ><br>
       <br> <input type="submit" value="Submit"><br>
    </form>
</div>

    </div>
