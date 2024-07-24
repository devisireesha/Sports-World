<?php
include 'connection.php';
include 'head.php';
$username = $_POST['username'];
$password = $_POST['password'];
// $_SESSION['adid']=$adid;
//database connection
if($con->connect_error) {
    die("Failed to connect: ".$con->connect_error);
} else {
    // $stmt = $con->prepare("select * from customer where username = ?");
    $sql = "SELECT * FROM customer WHERE username = '$username' AND password = '$password'";
	$run_query = mysqli_query($con,$sql);
	$count = mysqli_num_rows($run_query);
    $row = mysqli_fetch_array($run_query);
		$_SESSION["uid"] = $row["user_id"];
		$_SESSION["name"] = $row["fname"];
        echo "$_SESSION[uid]";
    // $stmt->bind_param("s",$username);
    // $stmt->execute();
    // $stmt_result = $stmt->get_result();
    // if($stmt_result->num_rows > 0) {
    //      $data = $stmt_result->fetch_assoc();
         if($row['password'] === $password) {
             echo "login successfull";
             header("Location: index.php");
         } else {
             echo "invalid email or password";
         }
    // } else {
    //     echo "<h2>Invalid email or password</h2>";
    // }
}
?>
