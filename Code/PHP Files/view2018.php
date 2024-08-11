<html>
<head>
	<title>Student database</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="https://cdn.jsdelivr.net/npm/kute.js@2.1.2/dist/kute.min.js"></script>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@600&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="view.css">
	<script type="text/javascript">
		function first()
		{
			document.getElementById("tbdiv").style.visibility= "visible";
			document.getElementById("tbdiv").innerHTML = '<input id="myText1" class="it" type="text" name="cin" placeholder="CIN [XX-XXX-X-XX-XXXX]" autocomplete="off" required>&emsp;<button type="submit">Search</button>';
			document.getElementById("myText1").focus();
		}
		function second()
		{
			document.getElementById("tbdiv").style.visibility= "visible";
			document.getElementById("tbdiv").innerHTML = '<input id="myText2" class="it" type="text" name="name" placeholder="Full Name" autocomplete="off" required>&emsp;<button type="submit">Search</button>';
			document.getElementById("myText2").focus();
		}
		function third()
		{
			document.getElementById("tbdiv").style.visibility= "visible";
			document.getElementById("tbdiv").innerHTML = '<input id="myText3" class="it" type="text" name="cname" placeholder="Company Name" autocomplete="off" required>&emsp;<button type="submit">Search</button>';
			document.getElementById("myText3").focus();
		}
	</script>
	<style>
  button[type=submit] {
    background-color: #4CAF50; /* Set the background color */
    color: white; /* Set the text color */
    border: none; /* Remove the border */
    padding: 10px 20px; /* Add some padding */
    text-align: center; /* Center the text */
    text-decoration: none; /* Remove underline */
    display: inline-block; /* Display as inline-block */
    font-size: 16px; /* Set the font size */
    cursor: pointer; /* Add a cursor on hover */
    border-radius: 5px; /* Add rounded corners */
  }
  
  button[type=submit]:hover {
    background-color: #3e8e41; /* Change the background color on hover */
  }
</style>
</head>
<body class="spacer layer1">
	<div class="heady">
		<span class="Lspan">
		<a href='Homepage.html'><button class="icon"><i class="fa fa-home"></i>
		</button></a></span>
		<span><center><h1>Department of Computer Science</h1></center></span>
		<span class="Rspan"><h2>Graduation year : 2018</h2></span>
	</div>
	<div class="divleft">
		<form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
		<div class="innerdivleft">
						<input class="checkbox-budget" type="radio" name="choice" id="1" value="rcin" onclick="first(); openpopup()">
						<label class="for-checkbox-budget" for="1">CIN</label><br><br><br><br>
						<input class="checkbox-budget" type="radio" name="choice" id="2" value="rname" onclick="second(); openpopup()">
						<label class="for-checkbox-budget" for="2">Name</label><br><br><br><br>
						<input class="checkbox-budget" type="radio" name="choice" id="3" value="rcname" onclick="third(); openpopup()">
						<label class="for-checkbox-budget" for="3">Company</label>
		</div>	
		
		
			<div class="spacer">
			<section class="blobby">
			
				<h1 class="hay">Welcome to CampusCareerConnect</h1>
				<div id="tbdiv" class="popup">
		</div>
				<svg id="visual" viewBox="0 0 900 600" width="900" height="500" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1">
					<g transform="translate(446.06822918729074 275.2351448509659)"><path id="blob1" d="M70.1 -101.6C99.7 -90.1 138.5 -85.6 161.7 -65C184.9 -44.4 192.4 -7.8 191.2 30.2C190 68.3 180 107.8 155.7 133.7C131.4 159.6 92.7 171.9 55 179.5C17.2 187.1 -19.7 190 -47 175.1C-74.3 160.2 -91.9 127.6 -111.5 99.6C-131.1 71.7 -152.7 48.3 -167.6 17.4C-182.5 -13.6 -190.9 -52.3 -174.5 -76.1C-158 -99.9 -116.9 -108.8 -83.7 -118.7C-50.5 -128.5 -25.2 -139.3 -2.5 -135.4C20.3 -131.5 40.6 -113.1 70.1 -101.6" fill="#b2a4ff"></path></g>
					<g transform="translate(476.78495351422765 245.5087537549126)" style="visibility: hidden;"><path id="blob2" d="M47.1 -65.6C62 -43.6 75.8 -29.7 102.3 -0.2C128.7 29.3 167.9 74.4 164.4 108.5C160.9 142.6 114.8 165.8 63.2 192.8C11.6 219.9 -45.5 250.9 -84.2 235.2C-123 219.4 -143.3 157 -169.4 102.4C-195.5 47.8 -227.2 1.1 -215.8 -33.6C-204.4 -68.2 -149.8 -90.8 -106.6 -107.9C-63.4 -124.9 -31.7 -136.5 -7.8 -127.1C16.1 -117.8 32.1 -87.6 47.1 -65.6" fill="#b2a4ff"></path></g>
				</svg>
				<script>
					var tween = KUTE.fromTo('#blob1', {path: '#blob1' }, { path: '#blob2' }, {repeat: 999, duration: 2000, yoyo: true}).start();
				</script>
			</section>
			</div>
<div class="displaytable">
		<?php
if ($_SERVER["REQUEST_METHOD"] == "POST")
{

$host="localhost";//host name  
$username="root"; //database username  
$word="";//database word  
$db_name="yop2018";//database name   
$con=mysqli_connect("$host", "$username", "$word","$db_name")or die("cannot connect");//connection string
$opt=$_REQUEST['choice'];
if($opt=="rcin")
{
	$cin=$_REQUEST['cin'];
	$sql="select Name,course,AppointedRole from studentinfo s inner join placementinfo p on s.cin=p.cin inner join company c on c.company_id=p.company_id inner join courseinfo co on co.cin=s.cin where s.cin='$cin'";
}
elseif($opt=="rname")
{
	$name=$_REQUEST['name'];
	$sql="select Name,course,AppointedRole from studentinfo s inner join placementinfo p on s.cin=p.cin inner join company c on c.company_id=p.company_id inner join courseinfo co on co.cin=s.cin where upper(s.Name)='$name'";
}
elseif($opt=="rcname")
{
	$cname=$_REQUEST['cname']; 
	$sql="select Name,course,AppointedRole from studentinfo s inner join placementinfo p on s.cin=p.cin inner join company c on c.company_id=p.company_id inner join courseinfo co on co.cin=s.cin where upper(c.Company_Name)='$cname'";
}   

$in_ch=mysqli_query($con,$sql);
$rowcount = mysqli_num_rows($in_ch);
$count=0;
if($rowcount>0)  
   { 
		echo "<table id='M_table' class='tablecss' border=2 cellspacing=0 cellpadding=4>";
		echo "<tr><th>S.No</th><th>Name</th><th>Course</th><th>Appointed Role</th></tr>";
		while($row=mysqli_fetch_assoc($in_ch))
		{
			$count++;
			$b=$row['Name'];
			$c=$row['course'];
			$e=$row['AppointedRole'];
			echo "<tr><td>$count</td><td>$b</td><td>$c</td><td>$e</td></tr>";
		}
		echo "</table><br><br>";
	}
else
{
	echo'<script>alert("No results found.")</script>';
}
}       
?>
</div>
</form>
</div>
	<div class="divright layer2">
		<div>
			<?php
			// Create a connection to the database
			$servername = "localhost";
			$username = "root";
			$password = "";
			$dbname = "yop2018";

			$conn = mysqli_connect($servername, $username, $password, $dbname);

			// Check if the connection is successful
			if (!$conn) {
			    die("Connection failed: " . mysqli_connect_error());
			}

			$avgbp="SELECT ROUND(AVG(Package),0) as 'Package' FROM placementinfo p inner join courseinfo c on c.CIN=p.CIN where c.course='B.Sc CS'";
			$avgbp_result=mysqli_query($conn, $avgbp);
			$bp_row = mysqli_fetch_assoc($avgbp_result);
			$bp=$bp_row['Package'];

			$avgmp="SELECT ROUND(AVG(Package),0) as 'Package' FROM placementinfo p inner join courseinfo c on c.CIN=p.CIN where c.course='M.Sc CS'";
			$avgmp_result=mysqli_query($conn, $avgmp);
			$mp_row = mysqli_fetch_assoc($avgmp_result);
			$mp=$mp_row['Package'];

			// Calculate the maximum and average CGPA of B.Sc CS students
			$bsc_query = "SELECT max(CGPA) AS max_cgpa, ROUND(avg(CGPA),2) AS avg_cgpa from studentinfo s INNER JOIN courseinfo c ON s.CIN=c.CIN where course='B.Sc CS';";
			$bsc_result = mysqli_query($conn, $bsc_query);
			$bsc_row = mysqli_fetch_assoc($bsc_result);
			$max_bsc_cgpa = $bsc_row['max_cgpa'];
			$avg_bsc_cgpa = $bsc_row['avg_cgpa'];

			// Calculate the maximum and average CGPA of M.Sc CS students
			$msc_query = "SELECT max(CGPA) AS max_cgpa, ROUND(avg(CGPA),2) AS avg_cgpa from studentinfo s INNER JOIN courseinfo c ON s.CIN=c.CIN where course='M.Sc CS';";
			$msc_result = mysqli_query($conn, $msc_query);
			$msc_row = mysqli_fetch_assoc($msc_result);
			$max_msc_cgpa = $msc_row['max_cgpa'];
			$avg_msc_cgpa = $msc_row['avg_cgpa'];
			echo "<div class=\"sc\"><h2><center>Bachelor of Science (B.Sc.)</center></h2>";
			//Total students BSC
			$querystringbsc = "select COUNT(*) as 'Total Students' from studentinfo s inner join courseinfo c on c.CIN = s.CIN WHERE c.course = 'B.Sc CS'";
      $rowcountbsc = mysqli_fetch_row(mysqli_query($conn,$querystringbsc));
      $total_recordsbsc = $rowcountbsc[0];
      //Registered Students BSC
      $querystring2bsc = "select COUNT(*) as 'Registered Students' from studentinfo s inner join courseinfo c on c.CIN = s.CIN inner join reginfo r on r.CIN = s.CIN WHERE c.course = 'B.Sc CS' and r.RegStat = 'Yes'";
      $rowcount2bsc = mysqli_fetch_row(mysqli_query($conn,$querystring2bsc));
      $reg_recordsbsc = $rowcount2bsc[0];
      //Placement percent BSC
      $querystring3bsc = "SELECT COUNT(*) as 'Placed' from placementinfo p inner join courseinfo c on p.CIN = c.CIN where c.course = 'B.Sc CS'";
      $rowcount3bsc = mysqli_fetch_row(mysqli_query($conn,$querystring3bsc));
      $placed_recordsbsc = $rowcount3bsc[0];
	  if($reg_recordsbsc==0)
	  {
		  echo "No student registered for placement drive";
	  }
	  else
	  {
      $placed_bsc = round(($placed_recordsbsc/$reg_recordsbsc)*100);
      echo "<h3><i>Total students: &nbsp;</i>$total_recordsbsc &emsp;<i>Registered students: &nbsp;</i>$reg_recordsbsc&emsp;<br><i>Placement percent: &nbsp;</i>$placed_bsc %</h3>";
			echo "<h3><i>Maximum CGPA: &nbsp;</i>$max_bsc_cgpa&emsp;<i>Average CGPA: &nbsp;</i>$avg_bsc_cgpa&emsp;<br><i>Average CTC: &nbsp;</i>$bp LPA</h3>";
			//To Calculate the Max Package a B.Sc student got in the particular year.
			$maxpbsc="SELECT DISTINCT c.Company_Name, Package, AppointedRole from placementinfo p INNER JOIN company c ON p.Company_ID=c.Company_ID INNER JOIN courseinfo co ON co.CIN=p.CIN where co.course='B.Sc CS' AND p.Package=(Select MAX(Package) from placementinfo p INNER JOIN courseinfo co ON co.CIN=p.CIN WHERE co.course='B.Sc CS');";
			$bscp_result = mysqli_query($conn, $maxpbsc);
			echo "<table class='tablecss' border=1 cellspacing=0 cellpadding=3><caption style='color:white; font-size:20px;'><b>Top placement of the year:</b></caption>";
			echo "<tr><th>Company Name</th><th>Max Package</th><th>Appointed Role</th></tr>";
			while($bscp_row = mysqli_fetch_assoc($bscp_result))
			{
			    $a=$bscp_row['Company_Name'];
			    $b=$bscp_row['Package'];
			    $c=$bscp_row['AppointedRole'];
			    echo "<tr><td>$a</td><td>$b</td><td>$c</td></tr>";
			}
			echo "</table>";
			echo "<br>";
			echo '<form method="POST" action="bscchart.php">
			<input type="hidden" name="db" value="yop2018">
			<button type="submit" style="width: 100%; height:auto; background-color: #362FD9; 
			color: white; cursor: pointer;">
			Click to see detailed placement statistics
			</button>
		</form>';
			echo "</div><br>";
	  }
			echo "<div class=\"sc\"><h2><center>Master of Science (M.Sc.)</center></h2>";
			//Total students MSC
			$querystringmsc = "select COUNT(*) as 'Total Students' from studentinfo s inner join courseinfo c on c.CIN = s.CIN WHERE c.course = 'M.Sc CS'";
      $rowcountmsc = mysqli_fetch_row(mysqli_query($conn,$querystringmsc));
      $total_recordsmsc = $rowcountmsc[0];

      //Registered students MSC
      $querystring2msc = "select COUNT(*) as 'Registered Students' from studentinfo s inner join courseinfo c on c.CIN = s.CIN inner join reginfo r on r.CIN = s.CIN WHERE c.course = 'M.Sc CS' and r.RegStat = 'Yes'";
      $rowcount2msc = mysqli_fetch_row(mysqli_query($conn,$querystring2msc));
      $reg_recordsmsc = $rowcount2msc[0];
      //Placement percent MSC
      $querystring3msc = "SELECT COUNT(*) as 'Placed' from placementinfo p inner join courseinfo c on p.CIN = c.CIN where c.course = 'M.Sc CS'";
      $rowcount3msc = mysqli_fetch_row(mysqli_query($conn,$querystring3msc));
      $placed_recordsmsc = $rowcount3msc[0];
	  if($reg_recordsmsc==0)
	  {
		echo "No student registered for placement drive";
	  }
	  else{
      $placed_msc = round(($placed_recordsmsc/$reg_recordsmsc)*100);
      echo "<h3><i>Total students: &nbsp;</i>$total_recordsmsc &emsp;<i>Registered students: &nbsp;</i>$reg_recordsmsc&emsp;<br><i>Placement percent: &nbsp;</i>$placed_msc %</h3>";
			echo "<h3><i>Maximum CGPA: &nbsp;</i>$max_msc_cgpa &emsp;<i>Average CGPA: &nbsp;</i>$avg_msc_cgpa&emsp;<br><i>Average CTC: &nbsp;</i>$mp LPA</h3>";
			//To Calculate the Max Package an M.Sc student got in the particular year.
			$maxpmsc="SELECT DISTINCT c.Company_Name, Package, AppointedRole from placementinfo p INNER JOIN company c ON p.Company_ID=c.Company_ID INNER JOIN courseinfo co ON co.CIN=p.CIN where co.course='M.Sc CS' AND p.Package=(Select MAX(Package) from placementinfo p INNER JOIN courseinfo co ON co.CIN=p.CIN WHERE co.course='M.Sc CS');";
			$mscp_result = mysqli_query($conn, $maxpmsc);
			echo "<table class='tablecss' border=1 cellspacing=0 cellpadding=3><caption style='color:white; font-size:20px;'><b>Top placement of the year:</b></caption>";
			echo "<tr><th>Company Name</th><th>Max Package</th><th>Appointed Role</th></tr>";
			while($mscp_row = mysqli_fetch_assoc($mscp_result))
			{
			    $ma=$mscp_row['Company_Name'];
			    $mb=$mscp_row['Package'];
			    $mc=$mscp_row['AppointedRole'];
			    echo "<tr><td>$ma</td><td>$mb</td><td>$mc</td></tr>";
			}
			echo "</table>";
			echo "<br>";
			echo '<form method="POST" action="mscchart.php">
			<input type="hidden" name="db" value="yop2018">
			<button type="submit" style="width: 100%; height:auto; background-color: #362FD9; 
			color: white; cursor: pointer;">
			Click to see detailed placement statistics
			</button>
		</form>';
			echo "</div><br>";
	  }
			// Close the database connection
			mysqli_close($conn);
			?>
		</div>
		<?php
		$servername = "localhost";
		$username = "root";
		$password = "";
		$dbname = "yop2018";

		$conn = mysqli_connect($servername, $username, $password, $dbname);
		$test = array();
		$count=0;
		$sql="select Company_Name, count(p.Company_ID) as Total from placementinfo p INNER JOIN company c on p.Company_ID=c.Company_ID group by p.Company_ID ORDER BY Total DESC LIMIT 5";
		$res=mysqli_query($conn,$sql);
		while($row=mysqli_fetch_array($res))
		{
		  $test[$count]["label"]=$row["Company_Name"];
		  $test[$count]["y"]=$row["Total"];
		  $count=$count+1;
		}   
		?>
		<script>
		 window.onload = function () {
        var chart = new CanvasJS.Chart("chartContainer", {
            title: {
                text: "Top 5 Recruiting Companies"
            },
            axisY: {
                title: "Total number of recruitments"
            },
            data: [{
                type: "column", // Use "column" type for bar chart
                dataPoints: <?php echo json_encode($test, JSON_NUMERIC_CHECK); ?>,
                // Customize the colors of the bars
                color: "#576CBC", // You can specify any valid CSS color code here
                indexLabel: "{y}", // Display the value of y on top of each bar
                indexLabelFontColor: "#FFF", // Set the font color of the index labels
                indexLabelPlacement: "outside" // Set the placement of the index labels
            }]
        });

        // Set the background color of the chart
        chart.backgroundColor = "red"; // Set the desired background color

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
		<div id="chartContainer" style="height: 40%; width: 100%; background-color: red;"></div>
		<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
		</div>
		<div style="width:100%;">
		<?php
		$servername = "localhost";
		$username = "root";
		$password = "";
		$dbname = "yop2018";

		$conn = mysqli_connect($servername, $username, $password, $dbname);
		$query = "SELECT Company_Name FROM company";
$result = mysqli_query($conn, $query);
$companyNames = array();
while ($row = mysqli_fetch_assoc($result)) {
  $companyNames[] = $row['Company_Name'];
		echo '<table id="companyTable">';
}
echo '<tbody>';
echo '<tr>'; // Start a new row
$count = 0; // Counter for number of company names
foreach ($companyNames as $companyName) {
  echo '<td>' . $companyName . '</td>';
  $count++;
  // Add '|' character after every 5th company name
  if ($count % 14 == 0) {
    echo '</tr><tr>'; // Close current row and start a new row
  } 
}
echo '</tr>'; // Close the last row
echo '</tbody>';
echo '</table>';
?>
</div>
</body>
</html>