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

// Calculate the maximum and average CGPA of B.Sc CS students
$bsc_query = "SELECT MAX(CGPA) AS max_cgpa, AVG(CGPA) AS avg_cgpa FROM studentinfo, courseinfo WHERE studentinfo.CIN = courseinfo.CIN AND courseinfo.course = 'B.Sc CS'";
$bsc_result = mysqli_query($conn, $bsc_query);
$bsc_row = mysqli_fetch_assoc($bsc_result);
$max_bsc_cgpa = $bsc_row['max_cgpa'];
$avg_bsc_cgpa = number_format($bsc_row['avg_cgpa'], 2);

// Calculate the maximum and average CGPA of M.Sc CS students
$msc_query = "SELECT MAX(CGPA) AS max_cgpa, AVG(CGPA) AS avg_cgpa FROM studentinfo, courseinfo WHERE studentinfo.CIN = courseinfo.CIN AND courseinfo.course = 'M.Sc CS'";
$msc_result = mysqli_query($conn, $msc_query);
$msc_row = mysqli_fetch_assoc($msc_result);
$max_msc_cgpa = $msc_row['max_cgpa'];
$avg_msc_cgpa = number_format($msc_row['avg_cgpa'], 2);

// Close the database connection
mysqli_close($conn);
?>

<!DOCTYPE html>
<html>
<head>
    <title>CGPA Calculation</title>
    <style>
        /* Add some basic styles to improve readability */
        body {
            font-family: Arial, sans-serif;
            font-size: 16px;
            line-height: 1.5;
            margin: 0;
            padding: 0;
        }
        
        h1 {
            text-align: center;
            margin-top: 50px;
        }
        
        table {
            margin: 50px auto;
            border-collapse: collapse;
        }
        
        th, td {
            padding: 10px 20px;
            border: 1px solid #ccc;
            text-align: center;
        }
        
        th {
            background-color: #f2f2f2;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <h1>CGPA Calculation</h1>
    <table>
        <tr>
            <th></th>
            <th>Maximum CGPA</th>
            <th>Average CGPA</th>
        </tr>
        <tr>
            <th>B.Sc CS</th>
            <td><?php echo $max_bsc_cgpa ?></td>
            <td><?php echo $avg_bsc_cgpa ?></td>
        </tr>
        <tr>
            <th>M.Sc CS</th>
            <td><?php echo $max_msc_cgpa ?></td>
            <td><?php echo $avg_msc_cgpa ?></td>
        </tr>
    </table>
</body>
</html>
