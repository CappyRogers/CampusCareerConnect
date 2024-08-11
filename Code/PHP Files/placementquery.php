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

// Get the number of B.Sc CS students and their average and maximum packages
$bsc_query = "SELECT COUNT(*) AS bsc_count, AVG(Package) AS bsc_avg, MAX(Package) AS bsc_max FROM placementinfo, courseinfo WHERE placementinfo.CIN = courseinfo.CIN AND courseinfo.course = 'B.Sc CS'AND placementinfo.Package > 0";
$bsc_result = mysqli_query($conn, $bsc_query);
$bsc_row = mysqli_fetch_assoc($bsc_result);
$bsc_count = $bsc_row['bsc_count'];
$bsc_avg_package = number_format($bsc_row['bsc_avg'], 2);
$bsc_max_package = $bsc_row['bsc_max'];

// Get the number of M.Sc CS students and their average and maximum packages
$msc_query = "SELECT COUNT(*) AS msc_count, AVG(Package) AS msc_avg, MAX(Package) AS msc_max FROM placementinfo, courseinfo WHERE placementinfo.CIN = courseinfo.CIN AND courseinfo.course = 'M.Sc CS'AND placementinfo.Package > 0";
$msc_result = mysqli_query($conn, $msc_query);
$msc_row = mysqli_fetch_assoc($msc_result);
$msc_count = $msc_row['msc_count'];
$msc_avg_package = number_format($msc_row['msc_avg'], 2);
$msc_max_package = $msc_row['msc_max'];

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
        <table>
            <tr>
                <th>Course</th>
                <th>Number of Students</th>
                <th>Average Package</th>
                <th>Maximum Package</th>
            </tr>
            <tr>
                <td>B.Sc CS</td>
                <td><?php echo $bsc_count; ?></td>
                <td><?php echo "" . $bsc_avg_package; ?></td>
                <td><?php echo "" . $bsc_max_package; ?></td>
            </tr>
            <tr>
                <td>M.Sc CS</td>
                <td><?php echo $msc_count; ?></td>
                <td><?php echo "" . $msc_avg_package; ?></td>
                <td><?php echo "" . $msc_max_package; ?></td>
            </tr>
        </table>
    </div>
</body>
</html>
