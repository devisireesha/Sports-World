<?php 
session_start();
include 'connection.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.css" />
 <script src="https://kit.fontawesome.com/da2ee74873.js" crossorigin="anonymous"></script>
 <link rel="stylesheet" href="styles.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<style>
  
</style>
<body>
<div class="navbar">
  <div class="home">
  <a href="index.php">SPORTS WORLD</a>
  </div>
  <?php

  if(isset($_SESSION['uid'])){
    echo '<a href="account.php">MY ACCOUNT</a>';
    echo '<a href="logout.php">LOG OUT</a>';
  }
  else{
    echo '<a href="login.php">LOGIN</a>';
    echo '<a href="signup.php">SIGN IN</a>';
  }
  ?>  
  
  <div class="dropdown">
  <button class="dropbtn" onclick="myFunction()"> SPORTS
    <i class="fa fa-caret-down"></i>
  </button>
  <div class="dropdown-content" id="myDropdown">
    <a href="cricket.php">CRICKET</a>
    <a href="football.php">FOOTBALL</a>
    <a href="basketball.php">BASKET BALL</a>
    <a href="hockey.php">HOCKEY</a>
    <a href="tennis.php">TENNIS</a>
  </div>
  </div>

            <div class="cart">
                <a href="cart.php" class="nav-item nav-link active">
                    <h5 class="px-5 cart">
                        <i class="fas fa-shopping-cart"></i> Cart
                        <?php

                        if (isset($_SESSION['cart'])){
                            $count = count($_SESSION['cart']);
                            echo "<span id=\"cart_count\" class=\"text-warning bg-light\">$count</span>";
                        }else{
                            echo "<span id=\"cart_count\" class=\"text-warning bg-light\">0</span>";
                        }

                        ?>
                    </h5>
                </a>
            </div>
</div> 

<script>
/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function myFunction() {
  document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(e) {
  if (!e.target.matches('.dropbtn')) {
  var myDropdown = document.getElementById("myDropdown");
    if (myDropdown.classList.contains('show')) {
      myDropdown.classList.remove('show');
    }
  }
}
</script>
</body>
</html>