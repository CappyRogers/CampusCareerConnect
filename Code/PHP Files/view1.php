<html>
<head>
	<title>Student database</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<style type="text/css">
		body {
	margin: 0;
	background-image:"bg3.jpg";
}

.sc {
	background: #FFFBF5;
	border: 2px solid #fff;
	border-radius: 30px;
	margin: 5px;
	padding: 8px;
}

.sc:hover {
	border: 2px solid #362FD9;
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
	transition: border 300ms linear, box-shadow 300ms linear;
}

.icon {
	background: #fff;
	margin-left: 5px;
	height: 50px;
	width: 50px;
	font-size: 26px;
	color: #362FD9;
	border-radius: 100px;
	border: 2px solid #362FD9;
	cursor: pointer;
	transition: background-color 300ms linear, border 300ms linear, color 300ms linear, box-shadow 300ms linear;
}

.icon:hover {
	background: #362FD9;
	border: 2px solid #fff;
	color: #fff;
	box-shadow: 0 2px 4px 0 #fff;
}

.result {
	margin: 280px 0 0 695px;
	background-color: whitesmoke;
	padding: 0;
}

.tablecss {
	background-color: #ECF2FF;
	margin: 0 auto;
	border-collapse: collapse;
	width: 80%;
	border: 1px solid #ddd;
}

#M_table {
	margin:justify;
	width: 55%;
	align:left;
}

th, td {
	padding: 8px;
	text-align: left;
	font-size: 14px;
	border: 1px solid #ddd;
}

th {
	background-color: #362FD9;
	font-weight: bold;
	color: #fff;
	position: sticky;
	top: 0;
}

tr:nth-child(even) {
	background-color: #FFFFFF;
}

tr:hover {
	background-color: #C5FAD5;
}

td:not(:first-child):not(:last-child) {
	border: 0;
}

.heady {
	background-color: #191e2c;
	border-bottom: 2px solid #ffffff;
	text-align: center;
	color: ghostwhite;
	width: 98%;
	padding: 10px;
}
		.it{
	width: 80%;
	padding: 10px;
	border: 2px solid #ccc;
	border-radius: 40px;
	box-sizing: border-box;
	margin-bottom: 20px;
	font-size: 16px;
	opacity: 0.7;
}

.divleft, .divright{
	height: auto;
	
}

.divleft{
	padding-left: 0px;
	width: auto;
	float: left;
	margin:top;
	background-color:red;
}

.divright{
	width: auto;
	float: right;
	background-color: #ECF2FF;
	border: 2px solid #ffffff;
	border-top: 0;
	background-color:red;
}

.innerdivright{
	visibility: hidden;
	margin-left:6px;
	width: 551px;
	height: 20%;
	float: right;
	background-color: #ECF2FF;
	border: 2px solid #ffffff;
	text-align: center;
	padding: 10px;
}

.innerdivleft{
	margin: auto;
	height: 500px;
	padding: 10px;
	width: 250px;
	float: left;
	background-color: #ECF2FF;
	border: 2px solid #ffffff;
}

button[type="submit"]{
	background-color: #4caf50;
	color: #fff;
	padding: 12px 20px;
	border-radius: 15px;
	width: 120px;
	cursor: pointer;
	font-size: 16px;
}

button[type="submit"]:hover{
	background-color: #388e3c;
	border: 1px solid #ffffff;
}

input[type="radio"]{
	visibility: hidden;
	height: 0;
	width: 0;
}

.checkbox-budget:checked + label,
.checkbox-budget:not(:checked) + label{
	position: relative;
	display: inline-block;
	padding: 0;
	padding-top: 10px;
	padding-bottom: 30px;
	height: 30px;
	width: 150px;
	font-size: 26px;
	line-height: 52px;
	font-weight: 500;
	letter-spacing: 1px;
	margin: 0 auto 20px 30px;
	text-align: center;
	border-radius: 30px;
	overflow: hidden;
	cursor: pointer;
	-webkit-transition: all 300ms linear;
	transition: all 300ms linear; 
	-webkit-text-stroke: 1px var(--white);
	text-stroke: 1px var(--white);
	-webkit-text-fill-color: ghostwhite;
}

.checkbox-budget:not(:checked) + label{
	background-color:#362FD9;
	box-shadow: 0 2px 4px 0 rgba(0, 0, 0, 0.1);
}

.checkbox-budget:checked + label{
	background-color: transparent;
	-webkit-text-fill-color: #362FD9;
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
}

.checkbox-budget:not(:checked) + label:hover{
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
}

	</style>
	<script type="text/javascript">
		function first()
		{
			document.getElementById("tbdiv").style.visibility= "visible";
			document.getElementById("tbdiv").innerHTML = '<input id="myText1" class="it" type="text" name="cin" placeholder="CIN [XX-XXX-X-XX-XXXX]" autocomplete="off" required><br><br><button type="submit">SEARCH</button>';
			document.getElementById("myText1").focus();
		}
		function second()
		{
			document.getElementById("tbdiv").style.visibility= "visible";
			document.getElementById("tbdiv").innerHTML = '<input id="myText2" class="it" type="text" name="name" placeholder="Full Name" autocomplete="off" required><br><br><button type="submit">SEARCH</button>';
			document.getElementById("myText2").focus();
		}
		function third()
		{
			document.getElementById("tbdiv").style.visibility= "visible";
			document.getElementById("tbdiv").innerHTML = '<input id="myText3" class="it" type="text" name="cname" placeholder="Company Name" autocomplete="off" required><br><br><button type="submit">SEARCH</button>';
			document.getElementById("myText3").focus();
		}
	</script>
</head>
<body>
	<div class="heady">
		<h1>DEPARTMENT OF COMPUTER SCIENCE</h1>
	</div>
	<div class="divleft">
		<a href='https://www.youtube.com/'><button class="icon"><i class="fa fa-home"></i></button></a>
		<form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
		<div class="innerdivleft">
			<h2><b>YEAR OF PASSING   2023</b></h2>
						<center>
						<br>
						<br>
						<input class="checkbox-budget" type="radio" name="choice" id="1" value="rcin" onclick="first()">
						<label class="for-checkbox-budget" for="1">CIN</label><br><br><br>
						<input class="checkbox-budget" type="radio" name="choice" id="2" value="rname" onclick="second()">
						<label class="for-checkbox-budget" for="2">Name</label><br><br><br>
						<input class="checkbox-budget" type="radio" name="choice" id="3" value="rcname" onclick="third()">
						<label class="for-checkbox-budget" for="3">Company</label>
		</center>
		<br>
		<br>
		</div>
		
		<div id="tbdiv" class="innerdivright">
		</div><br><br><br>
		<div>
		<?php
if ($_SERVER["REQUEST_METHOD"] == "POST")
{

$host="localhost";//host name  
$username="root"; //database username  
$word="";//database word  
$db_name="yop2023";//database name   
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
	echo'<script>alert("No results")</script>';
}
}       
?>
</div>
		</form>
	</div>
	<div class="divright">
		<div>
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
			echo "<h3><i>Maximum CGPA: &nbsp;</i>$max_bsc_cgpa&emsp;<i>Average CGPA: &nbsp;</i>$avg_bsc_cgpa&emsp;<i>Average CTC: &nbsp;</i>$bp LPA</h3>";
			//To Calculate the Max Package a B.Sc student got in the particular year.
			$maxpbsc="SELECT c.Company_Name, Package, AppointedRole from placementinfo p INNER JOIN company c ON p.Company_ID=c.Company_ID INNER JOIN courseinfo co ON co.CIN=p.CIN where co.course='B.Sc CS' AND p.Package=(Select MAX(Package) from placementinfo p INNER JOIN courseinfo co ON co.CIN=p.CIN WHERE co.course='B.Sc CS');";
			$bscp_result = mysqli_query($conn, $maxpbsc);
			echo "<table class='tablecss' border=1 cellspacing=0 cellpadding=3><caption><b>Top placement of the year:</b></caption>";
			echo "<tr><th>Company Name</th><th>Max Package</th><th>Appointed Role</th></tr>";
			while($bscp_row = mysqli_fetch_assoc($bscp_result))
			{
			    $a=$bscp_row['Company_Name'];
			    $b=$bscp_row['Package'];
			    $c=$bscp_row['AppointedRole'];
			    echo "<tr><td>$a</td><td>$b</td><td>$c</td></tr>";
			}
			echo "</table></div><br>";
			echo "<div class=\"sc\"><h2><center>Master of Science (M.Sc.)</center></h2>";
			echo "<h3><i>Maximum CGPA: &nbsp;</i>$max_msc_cgpa &emsp;<i>Average CGPA: &nbsp;</i>$avg_msc_cgpa&emsp;<i>Average CTC: &nbsp;</i>$mp LPA</h3>";
			//To Calculate the Max Package an M.Sc student got in the particular year.
			$maxpmsc="SELECT c.Company_Name, Package, AppointedRole from placementinfo p INNER JOIN company c ON p.Company_ID=c.Company_ID INNER JOIN courseinfo co ON co.CIN=p.CIN where co.course='M.Sc CS' AND p.Package=(Select MAX(Package) from placementinfo p INNER JOIN courseinfo co ON co.CIN=p.CIN WHERE co.course='M.Sc CS');";
			$mscp_result = mysqli_query($conn, $maxpmsc);
			echo "<table class='tablecss' border=1 cellspacing=0 cellpadding=3><caption><b>Top placement of the year:</b></caption>";
			echo "<tr><th>Company Name</th><th>Max Package</th><th>Appointed Role</th></tr>";
			while($mscp_row = mysqli_fetch_assoc($mscp_result))
			{
			    $ma=$mscp_row['Company_Name'];
			    $mb=$mscp_row['Package'];
			    $mc=$mscp_row['AppointedRole'];
			    echo "<tr><td>$ma</td><td>$mb</td><td>$mc</td></tr>";
			}
			echo "</table></div><br>";
			// Close the database connection
			mysqli_close($conn);
			?>
		</div>
		<?php
		$servername = "localhost";
		$username = "root";
		$password = "";
		$dbname = "yop2023";

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
		<!DOCTYPE HTML>
		<html>
		<head>
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
		    type: "line",
		    dataPoints: <?php echo json_encode($test, JSON_NUMERIC_CHECK); ?>
		  }]
		});
		chart.render();
		 
		}
		</script>
		</head>
		<body>
		<div id="chartContainer" style="height: 370px; width: 100%;"></div>
		<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
		</body>
		</html>
			</div>
</body>
</html>