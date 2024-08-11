<?php

// Array of database names
$databases = array('yop2023', 'yop2022', 'yop2021', 'yop2020', 'yop2019', 'yop2018', 'yop2017', 'yop2016', 'yop2015', 'yop2014', 'yop2013', 'yop2012');

// Create a connection to MySQL
$mysqli = new mysqli('localhost', 'root', '');

// Check connection
if ($mysqli->connect_errno) {
    die("Failed to connect to MySQL: " . $mysqli->connect_error);
}

// Array to store placement report data
$placementData = array();

// Loop through the databases
foreach ($databases as $database) {
    // Extract the year information from the database name
    $year = substr($database, -4);

    // Select the current database
    $mysqli->select_db($database);

    // Query to fetch total placements per year of passing and per course
    $query = "SELECT c.`Course`, '$year' AS YearOfPassing, COUNT(*) AS TotalPlacements 
              FROM `placementinfo` p
              INNER JOIN `courseinfo` c ON c.`CIN` = p.`CIN`
              GROUP BY c.`Course`";

    // Execute the query
    $result = $mysqli->query($query);

    // Fetch the data and store it in the placementData array
    while ($row = $result->fetch_assoc()) {
        $placementData[] = array(
            'Course' => $row['Course'],
            'YearOfPassing' => $row['YearOfPassing'],
            'TotalPlacements' => $row['TotalPlacements']
        );
    }
}

// Close MySQL connection
$mysqli->close();

?>
<!DOCTYPE html>
<html>
<head>
    <title>Placement Report</title>
    <!-- Include Google Charts library -->
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        // Load the Google Charts library
        google.charts.load('current', {'packages':['bar']});
        google.charts.setOnLoadCallback(drawChart);

        // Function to draw the chart
        function drawChart() {
            // Create a DataTable from the placement data
            var data = new google.visualization.DataTable();
            data.addColumn('string', 'Course');
            data.addColumn('number', 'Total Placements');
            data.addRows([
                <?php
                // Loop through the placement data and add rows to the DataTable
                foreach ($placementData as $placement) {
                    echo "['" . $placement['Course'] . " (YOP: " . $placement['YearOfPassing'] . ")', " . $placement['TotalPlacements'] . "],";
                }
                ?>
            ]);

            // Set chart options
            var options = {
                chart: {
                    title: 'Placement Report',
                    subtitle: 'Total Placements per Course and Year of Passing'
                },
                bars: 'horizontal'
            };

            // Create a bar chart
            var chart = new google.charts.Bar(document.getElementById('chart_div'));
            chart.draw(data, google.charts.Bar.convertOptions(options));
        }
    </script>
</head>
<body>
    <!-- Display the chart in a div element with id "chart_div" -->
    <div id="chart_div" style="width: 900px; height: 500px;"></div>
	
</body>
</html>
<?php

// Array of database names
$databases = array('yop2023', 'yop2022', 'yop2021', 'yop2020', 'yop2019', 'yop2018', 'yop2017', 'yop2016', 'yop2015', 'yop2014', 'yop2013', 'yop2012');

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

<!DOCTYPE html>
<html>
<head>
    <title>Unique Companies</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        h1 {
            text-align: center;
        }
        table {
            border-collapse: collapse;
            width: 100%;
        }
        th, td {
            border: 1px solid #ccc;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
    </style>
</head>
<body>
    <h1>Unique Companies</h1>
    <table>
        <tr>
            <th>Company Name</th>
        </tr>
        <?php foreach ($uniqueCompanies as $company): ?>
            <tr>
                <td><?php echo $company; ?></td>
            </tr>
        <?php endforeach; ?>
    </table>
</body>
</html>
<?php
// Array of database names
$databases = array("yop2023", "yop2022", "yop2021", "yop2020", "yop2019", "yop2018", "yop2017", "yop2016", "yop2015", "yop2014", "yop2013", "yop2012");

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
<!DOCTYPE html>
<html>
<head>
    <title>Top 5 Companies</title>
</head>
<body>
    <h1>Top 5 Companies</h1>
    <table border="1">
        <tr>
            <th>Company Name</th>
            <th>Recruitment Count</th>
            <th>Unique Appointed Roles</th>
        </tr>
        <?php foreach ($top5Companies as $companyName) { ?>
            <tr>
                <td><?php echo $companyName; ?></td>
                <td><?php echo $companyCounts[$companyName]; ?></td>
                <td><?php echo implode(", ", $uniqueRoles[$companyName]); ?></td>
            </tr>
        <?php } ?>
    </table>
</body>
</html>
