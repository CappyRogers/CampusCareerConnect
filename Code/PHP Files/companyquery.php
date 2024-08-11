<?php
// Create a connection to the database
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "yop2023";

$conn = mysqli_connect($servername, $username, $password, $dbname);

// Check if the connection is successful
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

// Get the company-wise, role-based placement information
$query = "SELECT Company_Name, Role, COUNT(*) AS count, AVG(Package) AS avg_package, MAX(Package) AS max_package FROM placementinfo WHERE Package > 0 GROUP BY Company_Name, Role";
$result = mysqli_query($conn, $query);

// Close the database connection
mysqli_close($conn);
?>

<!-- HTML code with external CSS file -->
<!DOCTYPE html>
<html>
<head>
    <title>Placement Information</title>
    <link rel="stylesheet" type="text/css" href="placementquery.css">
</head>
<body>
    <div class="container">
        <h1>Placement Information</h1>
        <h2>Company-wise, Role-based Placement Information</h2>
        <table>
            <tr>
                <th>Company Name</th>
                <th>Role</th>
                <th>Number of Students</th>
                <th>Average Package</th>
                <th>Maximum Package</th>
            </tr>
            <?php
            // Display the placement information in the table
            while ($row = mysqli_fetch_assoc($result)) {
                $company_name = $row['Company_Name'];
                $role = $row['Role'];
                $count = $row['count'];
                $avg_package = number_format($row['avg_package'], 2);
                $max_package = $row['max_package'];
                echo "<tr>";
                echo "<td>" . $company_name . "</td>";
                echo "<td>" . $role . "</td>";
                echo "<td>" . $count . "</td>";
                echo "<td>" . $avg_package . "</td>";
                echo "<td>" . $max_package . "</td>";
                echo "</tr>";
            }
            ?>
        </table>
    </div>
</body>
</html>
