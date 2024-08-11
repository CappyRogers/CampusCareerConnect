<?php
// Start the session
session_start();

// Check if the CIN value is set in the session variable
    $cin = $_SESSION["uname"];

    // Connect to the database
    $db = new mysqli("localhost", "root", "", "admincredentials");

    // Check for errors
    if ($db->connect_error) {
        die("Connection failed: " . $db->connect_error);
    }

    // Query the logininfo table for the AccessLevel corresponding to the CIN value
    $sql = "SELECT AccessLevel FROM logininfo WHERE CIN = '$cin'";
    $result = $db->query($sql);

    // Check if the query returned a row
    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $accessLevel = $row["AccessLevel"];

        // Check if the AccessLevel is 2
        if ($accessLevel == 2) {
            // Show a success popup and redirect to a given URL
            echo "<script>alert('Success!'); window.location.href='http://localhost/phpmyadmin/';</script>";
        } else {
            // Show a failure popup
            echo "<script>alert('Access denied!');window.location.href='Admin.php';</script>";
    }
        }
 
    // Close the database connection
    $db->close();
?>

