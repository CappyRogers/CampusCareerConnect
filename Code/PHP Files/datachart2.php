<!DOCTYPE html>
<html>
<head>
    <title>Dynamic Chart Example</title>
    <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
    <link rel="stylesheet" href="displaytable.css">
</head>
<body>
<div class="container">
<div class="box">
<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname ="yop2023"; //$_SESSION['dbname'];
$tablename ="placementinfo"; //$_SESSION['tablename'];
$count=0;
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
//To Calculate the Max Package an B.Sc student got in the particular year.
echo "<h1 class='H1'>Top placement of the year</h1>";
$maxpmsc="SELECT DISTINCT c.Company_Name, Package, AppointedRole from placementinfo p INNER JOIN company c ON p.Company_ID=c.Company_ID INNER JOIN courseinfo co ON co.CIN=p.CIN where co.course='B.Sc CS' AND p.Package=(Select MAX(Package) from placementinfo p INNER JOIN courseinfo co ON co.CIN=p.CIN WHERE co.course='B.Sc CS');";
$mscp_result = mysqli_query($conn, $maxpmsc);
echo "<table class='tablecss'>";
echo "<tr><th>Company Name</th><th>Max Package (in LPA)</th><th>Appointed Role</th></tr>";
while($mscp_row = mysqli_fetch_assoc($mscp_result))
{
    $ma=$mscp_row['Company_Name'];
    $mb=$mscp_row['Package'];
    $mc=$mscp_row['AppointedRole'];
    echo "<tr><td>$ma</td><td>$mb</td><td>$mc</td></tr>";
}
echo "</table><br>";
// Get the entries of the table
echo "<h1 class='H1'>Placement offers</h1>";
$sql = "SELECT DISTINCT c.Company_Name, Package, AppointedRole from placementinfo p INNER JOIN company c ON p.Company_ID=c.Company_ID INNER JOIN courseinfo co ON co.CIN=p.CIN where co.course='B.Sc CS' ORDER BY Package DESC";
$result = $conn->query($sql);
$offer_counter=0;

if ($result->num_rows > 0) {
    // Output table header
  echo "<table class='tablecss'><tr>";
    echo "<tr><th>Serial No.</th><th>Company Name</th><th>Package (in LPA)</th><th>Appointed Role</th></tr>";
    // Output table rows
    while($row = $result->fetch_assoc()) {
        $offer_counter++;
        echo "<tr><td>$offer_counter</td><td>$row[Company_Name]</td><td>$row[Package]</td><td>$row[AppointedRole]</td></tr>";
        $sql = "SELECT COUNT(*) FROM placementinfo p INNER JOIN company c ON p.Company_ID=c.Company_ID INNER JOIN courseinfo co ON co.CIN=p.CIN where co.course='B.Sc CS' and p.Package='$row[Package]' and p.AppointedRole='$row[AppointedRole]' and c.Company_Name='$row[Company_Name]';";
        $row = mysqli_fetch_row(mysqli_query($conn,$sql));
        $num = $row[0];
        $test[] = array("label" => $offer_counter, "y" => $num);
        // $test[$count]["label"]=$offer_counter;
        // $test[$count]["y"]=$num;
        $count=$count+1;
    }
    echo "</table>";
} else {
    echo "0 results";
}
// Close connection
$conn->close();
?>
</div>
<div id="chartContainer"></div>
</div>
        <script>
        window.onload = function () {
        var chart = new CanvasJS.Chart("chartContainer", {
            animationEnabled: true,
          data: [{
            type: "pie",
            toolTipContent: "Offer No. {label}: <strong>{y} placements</strong>",
            indexLabel: "Offer No. {label}",
            dataPoints: <?php echo json_encode($test, JSON_NUMERIC_CHECK); ?>
          }]
        });
        chart.render();
         
        }

        let popup = document.getElementById("tbdiv");
        function openpopup(){
            popup.classList.add("open-popup");
        }
        function closepopup(){
            popup.classList.remove("open-popup");
        }
        </script>
</body>
</html>
