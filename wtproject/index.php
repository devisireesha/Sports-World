<?php include'head.php';
// session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">
    <title>Mini project</title>
    <!-- <link rel="icon" type="image/x-icon" sizes="32x32" href="favicon-32x32.png"> -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <script src="https://kit.fontawesome.com/da2ee74873.js" crossorigin="anonymous"></script>
</head>
<body >
  <div class="flex-container">
  <div class="header" ><h1>SPORTS <br> WORLD</h1></div>
    <div class="content">
      <div class="flex-container1">
        <div class="container">
          <a href="cricket.php"><img src="images/cricbg2.png"   width="600" height="400" >
            <div class="sport-name"><h2>CRICKET</h2></div>
          </a>
        </div>
        <div class="container">
          <a href="football.php"><img src="images/FOOTBG2.jpeg"   width="600" height="400">
            <div class="sport-name"><h2>FOOTBALL</h2></div>
          </a>
        </div>
        <div class="container">
          <a href="basketball.php"><img src="images/basketbg2.png"  width="600" height="400">
            <div class="sport-name"><h2>BASKETBALL</h2></div>
          </a>
        </div>
        <div class="container">
          <a href="hockey.php"><img src="images/hockeybg2.jpg"  width="600" height="400">
            <div class="sport-name"><h2>HOCKEY</h2></div>
          </a>
        </div>
        <div class="container">
          <a href="tennis.php"><img src="images/tennisbg.jpg"  width="600" height="400">
            <div class="sport-name"><h2>TENNIS</h2></div>
          </a>
        </div>
      </div>
<?php include 'footer.php';?>
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


