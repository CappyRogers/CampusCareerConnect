<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
    <title>Data report</title>
    <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="chart.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Bruno+Ace+SC&family=Fasthand&family=Orbitron:wght@600&display=swap" rel="stylesheet">
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

// Array to store unique course counts
$courseCounts = array(
    'B.Sc CS' => array(),
    'M.Sc CS' => array()
);

// Loop through the databases
foreach ($databases as $database) {
    // Extract the year from the database name
    $year = substr($database, 3); // Assuming the year is in the format "yopYYYY"

    // Select the current database
    $mysqli->select_db($database);

    // Count entries in the studentinfo table for B.Sc CS students
    $studentInfoQuery = "SELECT COUNT(*) AS studentCount FROM studentinfo WHERE CIN IN (SELECT CIN FROM courseinfo WHERE Course = 'B.Sc CS')";
    $studentInfoResult = $mysqli->query($studentInfoQuery);
    $studentCount = $studentInfoResult->fetch_assoc()['studentCount'];

    // Count entries in the reginfo table where RegStat='Yes' for B.Sc CS students
    $regInfoQuery = "SELECT COUNT(*) AS regCount FROM reginfo WHERE RegStat='Yes' AND CIN IN (SELECT CIN FROM courseinfo WHERE Course = 'B.Sc CS')";
    $regInfoResult = $mysqli->query($regInfoQuery);
    $regCount = $regInfoResult->fetch_assoc()['regCount'];

    // Count entries in the placementinfo table for B.Sc CS students
    $placementInfoQuery = "SELECT COUNT(*) AS placementCount FROM placementinfo WHERE CIN IN (SELECT CIN FROM courseinfo WHERE Course = 'B.Sc CS')";
    $placementInfoResult = $mysqli->query($placementInfoQuery);
    $placementCount = $placementInfoResult->fetch_assoc()['placementCount'];

    // Store the data in the courseCounts array
    $courseCounts['B.Sc CS'][$year] = array(
        'studentCount' => $studentCount,
        'regCount' => $regCount,
        'placementCount' => $placementCount
    );

    // Count entries in the studentinfo table for M.Sc CS students
    $studentInfoQuery = "SELECT COUNT(*) AS studentCount FROM studentinfo WHERE CIN IN (SELECT CIN FROM courseinfo WHERE Course = 'M.Sc CS')";
    $studentInfoResult = $mysqli->query($studentInfoQuery);
    $studentCount = $studentInfoResult->fetch_assoc()['studentCount'];

    // Count entries in the reginfo table where RegStat='Yes' for M.Sc CS students
    $regInfoQuery = "SELECT COUNT(*) AS regCount FROM reginfo WHERE RegStat='Yes' AND CIN IN (SELECT CIN FROM courseinfo WHERE Course = 'M.Sc CS')";
    $regInfoResult = $mysqli->query($regInfoQuery);
    $regCount = $regInfoResult->fetch_assoc()['regCount'];
	$placementInfoQuery = "SELECT COUNT(*) AS placementCount FROM placementinfo WHERE CIN IN (SELECT CIN FROM courseinfo WHERE Course = 'M.Sc CS')";
	$placementInfoResult = $mysqli->query($placementInfoQuery);
	$placementCount = $placementInfoResult->fetch_assoc()['placementCount'];

// Store the data in the courseCounts array
	$courseCounts['M.Sc CS'][$year] = array(
    'studentCount' => $studentCount,
    'regCount' => $regCount,
    'placementCount' => $placementCount
	);
	}
	// Prepare data for the B.Sc CS graph
$studentDataPointsBSc = array();
$regDataPointsBSc = array();
$placementDataPointsBSc = array();
foreach ($courseCounts['B.Sc CS'] as $year => $counts) {
$studentDataPointsBSc[] = array(
    'label' => $year,
    'y' => $counts['studentCount']
);

$regDataPointsBSc[] = array(
    'label' => $year,
    'y' => $counts['regCount']
);

$placementDataPointsBSc[] = array(
    'label' => $year,
    'y' => $counts['placementCount']
);
}

// Prepare data for the M.Sc CS graph
$studentDataPointsMSc = array();
$regDataPointsMSc = array();
$placementDataPointsMSc = array();
foreach ($courseCounts['M.Sc CS'] as $year => $counts) {
$studentDataPointsMSc[] = array(
    'label' => $year,
    'y' => $counts['studentCount']
);

$regDataPointsMSc[] = array(
    'label' => $year,
    'y' => $counts['regCount']
);

$placementDataPointsMSc[] = array(
    'label' => $year,
    'y' => $counts['placementCount']
);
}

?>
<!DOCTYPE HTML>
<html>
<head>
    <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
    <script>
        window.onload = function () {
            var chartBSc = new CanvasJS.Chart("chartContainerBSc", {
                animationEnabled: true,
                theme: "dark2",
                backgroundColor: "rgba(0, 0, 0, 0.11)",
                title: {
                    text: "B.Sc CS Students"
                },
                axisY: {
                    title: "Count"
                },
                legend: {
                    cursor: "pointer",
                    itemclick: toggleDataSeries
                },
                toolTip: {
                animationEnabled: true,
                borderThickness: 3,
                fontSize: 20,
                },
                data: [
                    {
                        type: "column",
                        name: "Student Count",
                        showInLegend: true,
                        dataPoints: <?php echo json_encode($studentDataPointsBSc, JSON_NUMERIC_CHECK); ?>
                    },
                    {
                        type: "column",
                        name: "Registration Count",
                        showInLegend: true,
                        dataPoints: <?php echo json_encode($regDataPointsBSc, JSON_NUMERIC_CHECK); ?>
                    },
                    {
                        type: "column",
                        name: "Placement Count",
                        showInLegend: true,
                        dataPoints: <?php echo json_encode($placementDataPointsBSc, JSON_NUMERIC_CHECK); ?>
                    }
                ]
            });

            chartBSc.render();

            var chartMSc = new CanvasJS.Chart("chartContainerMSc", {
                animationEnabled: true,
                theme: "dark2",
                backgroundColor: "rgba(0, 0, 0, 0.11)",
                title: {
                    text: "M.Sc CS Students"
                },
                axisY: {
                    title: "Count"
                },
                legend: {
                    cursor: "pointer",
                    itemclick: toggleDataSeries
                },
                toolTip: {
                animationEnabled: true,
                borderThickness: 3,
                fontSize: 20,
                },
                data: [
                    {
                        type: "column",
                        name: "Student Count",
                        showInLegend: true,
                        dataPoints: <?php echo json_encode($studentDataPointsMSc, JSON_NUMERIC_CHECK); ?>
                    },
                    {
                        type: "column",
                        name: "Registration Count",
                        showInLegend: true,
                        dataPoints: <?php echo json_encode($regDataPointsMSc, JSON_NUMERIC_CHECK); ?>
                    },
                    {
                        type: "column",
                        name: "Placement Count",
                        showInLegend: true,
                        dataPoints: <?php echo json_encode($placementDataPointsMSc, JSON_NUMERIC_CHECK); ?>
                    }
                ]
            });

            chartMSc.render();

            function toggleDataSeries(e) {
                if (typeof (e.dataSeries.visible) === "undefined" || e.dataSeries.visible) {
                    e.dataSeries.visible = false;
                } else {
                    e.dataSeries.visible = true;
                }
                chartBSc.render();
                chartMSc.render();
            }
        }
    </script>
</head>
<body>
    <div class="header">
    <span class="Lspan"><a href='TopRecruitment.php'><button class="icon"><i class="fa fa-arrow-left"></i></button></a></span>
    <span class="Cspan"><h1>Placement Statistics</h1></span>
    <span class="Rspan"><a href='PlacementPercentageGraph.php'><button class="icon"><i class="fa fa-arrow-right"></i></button></a></span>
    </div>
    <div id="chartContainerBSc" class="chart"></div>
    <div id="chartContainerMSc" class="chart"></div>
</body>
</html>
