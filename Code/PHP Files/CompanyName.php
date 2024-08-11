<html>
<head>
    <title>Data report</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="comrep.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Bruno+Ace+SC&family=Fasthand&family=Orbitron:wght@600&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@300&display=swap" rel="stylesheet">
</head>
<?php

// Array of database names
$databases = array('yop2022', 'yop2021', 'yop2020', 'yop2019', 'yop2018', 'yop2017', 'yop2016', 'yop2015', 'yop2014', 'yop2013', 'yop2012','yop2011','yop2010');

// Create a connection to MySQL
$mysqli = new mysqli('localhost', 'root', '');

// Check connection
if ($mysqli->connect_errno) {
    die("Failed to connect to MySQL: " . $mysqli->connect_error);
}

// Array to store unique company names
$uniqueCompanies = array();

// Loop through the databases
foreach ($databases as $database) {
    // Select the current database
    $mysqli->select_db($database);

    // Fetch unique company names from the company table
    $result = $mysqli->query("SELECT DISTINCT TRIM(Company_Name) AS Company_Name FROM company");
    if ($result) {
        while ($row = $result->fetch_assoc()) {
            $uniqueCompanies[] = $row['Company_Name'];
        }
        $result->free();
    }
}

// Remove duplicate company names
$uniqueCompanies = array_unique($uniqueCompanies);
?>
<body>
    <div class="header">
	&emsp;&emsp;
    <span class="Cspan"><h1>Companies Visited</h1></span>
    <span class="Rspan"><a href='TopRecruitment.php'><button class="icon"><i class="fa fa-arrow-right"></i></button></a></span>
    </div>
    <table>
        <tr>
            <th>Company Name</th>
        </tr>
        <?php foreach ($uniqueCompanies as $company): ?>
            <tr>
                <td><?php echo strtoupper($company); ?></td>
            </tr>
        <?php endforeach; ?>
    </table><br>
	<a href='Admin.php'><button class="back">Go Back to Admin Dashboard</button></a>
</body>
</html>
