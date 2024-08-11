<html>
<head>
    <title>Data report</title>
    <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="report.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Bruno+Ace+SC&family=Fasthand&family=Orbitron:wght@600&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Bruno+Ace+SC&family=Comfortaa:wght@600&family=Fasthand&family=Orbitron:wght@600&display=swap" rel="stylesheet">
</head>
<?php
// Array of database names
$databases = array("yop2022", "yop2021", "yop2020", "yop2019", "yop2018", "yop2017", "yop2016", "yop2015", "yop2014", "yop2013", "yop2012","yop2011","yop2010");

// Create an array to store recruitment counts for each company
$companyCounts = array();
// Create an array to store unique appointed roles for each company
$uniqueRoles = array();

// Loop through each database
foreach ($databases as $database) {
    // Connect to the database
    $conn = new mysqli("localhost", "root", "", $database); // Replace with your actual database connection details

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Query to get recruitment counts for each company
    $query = "SELECT c.Company_Name, p.AppointedRole 
              FROM " . $database . ".placementinfo p 
              INNER JOIN " . $database . ".company c ON p.Company_ID = c.Company_ID";

    // Execute the query
    $result = $conn->query($query);

    // Process the results
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $companyName = trim($row['Company_Name']);
            $appointedRole = trim($row['AppointedRole']);
            
            // Add the recruitment count to the companyCounts array
            if (!isset($companyCounts[$companyName])) {
                $companyCounts[$companyName] = 1;
            } else {
                $companyCounts[$companyName] += 1;
            }
if (!isset($uniqueRoles[$companyName])) {
                $uniqueRoles[$companyName] = array();
            }

            // Add the unique appointed role to the uniqueRoles array
            if (!in_array($appointedRole, $uniqueRoles[$companyName])) {
                $uniqueRoles[$companyName][] = $appointedRole;
            }
        }
    }

    // Close the database connection
    $conn->close();
}

// Sort the companyCounts array in descending order based on recruitment counts
arsort($companyCounts);

// Get the top 5 company names
$top5Companies = array_slice(array_keys($companyCounts), 0, 5);
?>

<body>
    <div class="header">
    <span class="Lspan"><a href='CompanyName.php'><button class="icon"><i class="fa fa-arrow-left"></i></button></a></span>
    <span class="Cspan"><h1>Top Recruiters</h1></span>
    <span class="Rspan"><a href='PlacementStat.php'><button class="icon"><i class="fa fa-arrow-right"></i></button></a></span>
    </div>
    <center>
	<br>
	<br>
    <table class="rectable" cellspacing="0">
        <tr>
            <th>Company Name</th>
            <th>Recruitment Count</th>
            <th>Unique Appointed Roles</th>
        </tr>
        <?php foreach ($top5Companies as $companyName) { ?>
            <tr>
                <td class="spec"><?php echo strtoupper($companyName); ?></td>
                <td class="spec"><?php echo $companyCounts[$companyName]; ?></td>
                <td><?php echo strtoupper(implode("<br>", $uniqueRoles[$companyName])); ?></td>
            </tr>
        <?php } ?>
    </table>
    </center>
</body>
</html>
