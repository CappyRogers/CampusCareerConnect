<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
    <title>Data report</title>
    <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="ppg.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Bruno+Ace+SC&family=Fasthand&family=Orbitron:wght@600&display=swap" rel="stylesheet">
</head>
<?php
// Array of database names
$databases = array("yop2022", "yop2021", "yop2020", "yop2019", "yop2018", "yop2017", "yop2016", "yop2015", "yop2014", "yop2013", "yop2012", "yop2011", "yop2010");

// Create an array to store recruitment counts for each company
$companyCounts = array();
// Create an array to store unique appointed roles for each company
$placement_percentage = array();
// Loop through each database
foreach ($databases as $database) {
    // Connect to the database
    $conn = new mysqli("localhost", "root", "", $database); // Replace with your actual database connection details
	$year = substr($database, 3);
    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Retrieve number of rows in placementinfo table
    $sql_placement = "SELECT COUNT(*) as placement_count FROM placementinfo";
    $result_placement = $conn->query($sql_placement);
    $row_placement = $result_placement->fetch_assoc();
    $placement_count = $row_placement["placement_count"];

    // Retrieve number of rows in reginfo table where RegStat is 'Yes'
    $sql_reg = "SELECT COUNT(*) as reg_count FROM reginfo WHERE RegStat = 'Yes'";
    $result_reg = $conn->query($sql_reg);
    $row_reg = $result_reg->fetch_assoc();
    $reg_count = $row_reg["reg_count"];

    // Calculate placement percentage and store in array
    $placement_percentage[$year] = ($reg_count > 0) ? ($placement_count / $reg_count) * 100 : 0;

    $conn->close();
}
?>
<!DOCTYPE html>
<html>
<head>
    <title>Data Report</title>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        google.charts.load("current", {packages:["corechart"]});
        google.charts.setOnLoadCallback(drawChart);
        function drawChart() {
            var data = google.visualization.arrayToDataTable([
                ['Year', 'Placement Percentage'],
                <?php
                foreach ($placement_percentage as $year => $percentage) {
                    echo "['" . $year . "', " . $percentage . "],";
                }
                ?>
            ]);

            var options = {
                title: 'Placement Percentage by Year',
                titleTextStyle: {color: 'white', fontSize: 28},
                pieHole: 0.4,
                width: '80%',
                height: '50%',
                chartArea: {width: '100%', height: '80%'},
                legend: {position: 'bottom',
                textStyle: {color: 'white',fontSize: 18}},
                backgroundColor: { fill:'transparent' },
                tooltip: {trigger: 'hover', text: 'value'},
                pieSliceText: 'none'
            };

            var chart = new google.visualization.PieChart(document.getElementById('placementPercentageChart'));
            chart.draw(data, options);

            // Add logo image in the center of the donut chart
            var logoImage = document.createElement('img');
            logoImage.src = 'logo.png'; // Set the src attribute to the path of your logo image file
            logoImage.style.position = 'absolute'; // Set the position to absolute
            logoImage.style.top = '50%'; // Set the top position to 50%
            logoImage.style.left = '50%'; // Set the left position to 50%
            logoImage.style.transform = 'translate(-50%, -50%)'; // Translate the logo image to center
            logoImage.style.maxWidth = '15%'; // Set the maximum width for the logo image (adjust as needed)

            document.getElementById('placementPercentageChart').appendChild(logoImage); // Append the logo image element to the chart div
        }
    </script>
</head>
<body>
    <div class="header">
    <span class="Lspan"><a href='PlacementStat.php'><button class="icon"><i class="fa fa-arrow-left"></i></button></a></span>
    <span class="Cspan"><h1>Placement Percentage</h1></span>
    </div>
    <div id="placementPercentageChart" class="chart"></div>
    <br><br>
    <a href='Admin.php'><button class="back">Go Back to Admin Dashboard</button></a>
</body>
</html>

