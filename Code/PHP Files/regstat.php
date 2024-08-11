<?php
// Replace these values with your database connection details
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "yop2023";

// Get the CIN value from the user (assuming it was submitted via a form)
$cin ="20-300-4-02-0527";

// Create a connection to the database
$conn = new mysqli($servername, $username, $password, $dbname);

// Check for errors in the connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

// Query the database for the user with the given CIN
$sql = "SELECT RegStat FROM reginfo WHERE CIN = '$cin'";
$result = $conn->query($sql);

// Check if a user was found with the given CIN
if ($result->num_rows > 0) {
  // Get the value of RegStat for the user
  $row = $result->fetch_assoc();
  $regStat = $row["RegStat"];

  // Check the value of RegStat and display the appropriate message
  if ($regStat == "Yes") {
    echo "User registered";
  } else {
    echo "User not registered";
  }
} else {
  echo "User not found";
}

// Close the database connection
$conn->close();
?>
