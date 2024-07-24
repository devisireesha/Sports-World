<html>
    <center>
        <h1>
            <?php
  include 'connection.php';
  $insert_query="Insert into customer(fname,lname,gendere,dob,phone_no,username,password) values('$_POST[firstname]','$_POST[lastname]','$_POST[gender]','$_POST[dateofbirth]','$_POST[phone]','$_POST[username]','$_POST[password]')";
  $insert=mysqli_query($con,$insert_query);
?>
            SIGN UP SUCCESSFUL
        </h1>
        <form action="index.php">
        <button>Go to home</button>
        </form>
    </center>
</html>
