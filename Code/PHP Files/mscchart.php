<html>
<head>
    <title>Postgraduate data</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
    <link rel="stylesheet" href="displaytable.css">
    <style>
	/* Add custom styles for the header */
       .header {
  background-image: linear-gradient(to right, #35ab9b, #29baa2, #1cc8a7, #10d7ab, #0ee6ad);
  padding: 5px;
  display: flex;
  align-items: center;
  margin-top: 0;
  position: fixed;
  top: 0;
  width: 100%;
  z-index: 9999;
}

.header .title {
  font-size: 30px;
  font-weight: bold;
  margin-left: auto;
  margin-right:auto;
}
.header .home-button i {
  font-size: 24px; /* Increase the font size to adjust the icon size */
  cursor: pointer;
}

.header .back-button i {
  font-size: 24px; /* Increase the font size to adjust the icon size */
  cursor: pointer;
}
    </style>
</head>
<body>
<div class="header">
    <div class="home-button">
       <span class="Lspan"><a href='Homepage.html'><button class="iconhome"><i class="fa fa-home"></i></button></a>
    </div>
    <div class="back-button">
        <a href='javascript:history.back()'><button class="iconhome"><i class="fa fa-arrow-left"></i></button></a></span>
    </div>
    <div class="title">Graduation year : <?php $dbname = $_POST['db']; echo substr($dbname,3);?></div>
</div>
<div class="container">
<div class="box">
<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname =$_POST['db']; //$_SESSION['dbname'];
$tablename ="placementinfo"; //$_SESSION['tablename'];
$count=0;
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
//To Calculate the Max Package an M.Sc student got in the particular year.
echo "<h1 class='H1'>Top placement of the year</h1>";
$maxpmsc="SELECT DISTINCT c.Company_Name, Package, AppointedRole from placementinfo p INNER JOIN company c ON p.Company_ID=c.Company_ID INNER JOIN courseinfo co ON co.CIN=p.CIN where co.course='M.Sc CS' AND p.Package=(Select MAX(Package) from placementinfo p INNER JOIN courseinfo co ON co.CIN=p.CIN WHERE co.course='M.Sc CS');";
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
$sql = "SELECT DISTINCT c.Company_Name, Package, AppointedRole from placementinfo p INNER JOIN company c ON p.Company_ID=c.Company_ID INNER JOIN courseinfo co ON co.CIN=p.CIN where co.course='M.Sc CS' ORDER BY Package DESC";
$result = $conn->query($sql);
$offer_counter=0;

if ($result->num_rows > 0) {
    // Output table header
  echo "<table class='tablecss'><tr>";
    echo "<tr><th>Offer ID</th><th>Company Name</th><th>Package (in LPA)</th><th>Appointed Role</th></tr>";
    // Output table rows
    while($row = $result->fetch_assoc()) {
        $offer_counter++;
        echo "<tr><td>$offer_counter</td><td>$row[Company_Name]</td><td>$row[Package]</td><td>$row[AppointedRole]</td></tr>";
        $sql = "SELECT COUNT(*) FROM placementinfo p INNER JOIN company c ON p.Company_ID=c.Company_ID INNER JOIN courseinfo co ON co.CIN=p.CIN where co.course='M.Sc CS' and p.Package='$row[Package]' and p.AppointedRole='$row[AppointedRole]' and c.Company_Name='$row[Company_Name]';";
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
            //theme: "dark2",
            backgroundColor: "",
            toolTip: {
                animationEnabled: true,
                borderThickness: 3,
                fontSize: 20,
             },
          data: [{
            type: "doughnut",
            innerRadius: 120,
            cursor: "pointer",
            toolTipContent: "Offer ID {label}: <strong>{y} placements</strong>",
            indexLabel: "Offer ID {label}",
            indexLabelFontColor: "#fff",
            indexLabelLineThickness: 5,
            indexLabelBackgroundColor: "rgba(0, 0, 0, 0.61)",
            indexLabelFontSize: 12,
            dataPoints: <?php echo json_encode($test, JSON_NUMERIC_CHECK); ?>
          }]
        });
        chart.render(); 
		 var logoImage = document.createElement('img');
            logoImage.src = 'logo.png'; // Set the src attribute to the path of your logo image file
            logoImage.style.position = 'absolute'; // Set the position to absolute
            logoImage.style.top = '50%'; // Set the top position to 50%
            logoImage.style.left = '50%'; // Set the left position to 50%
            logoImage.style.transform = 'translate(-50%, -50%)'; // Translate the logo image to center
            logoImage.style.maxWidth = '35%'; // Set the maximum width for the logo image (adjust as needed)
            document.getElementById('chartContainer').appendChild(logoImage);
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
