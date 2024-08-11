<?php 
session_start();
$sname = "localhost";
$uname = "root";
$password = "";
$db_name = "admincredentials";
$conn = mysqli_connect($sname, $uname, $password, $db_name);
$cin = $_POST["uname"];
$pass = $_POST["password"];
$_SESSION["uname"]=$cin;
$sql = "SELECT * FROM logininfo WHERE CIN='$cin' AND password='$pass'";

// Execute the SQL query and retrieve the results
$result = mysqli_query($conn, $sql);

// Check if any results were returned
if (mysqli_num_rows($result) == 1) {
	$_SESSION['loggedin'] = true;
    $_SESSION['username'] = $username;
    // User exists, redirect to the admin page
    header("Location: http://localhost/Project/Admin.php");
    exit;
} else {
    // User doesn't exist, redirect to previous page with an error message
	echo "<script>alert('User does not exist. Please try again.');</script>";
	header('Location: ' . $_SERVER['HTTP_REFERER']);
    exit;
}
?>
