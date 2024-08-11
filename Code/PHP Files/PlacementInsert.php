<?php session_start();?>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="insert.css">
</head>
<body>
<div class="heady">
        <span class="Lspan"><a href='Admin.php'><button class="iconhome"><i class="fa fa-home"></i></button></a>
		<a href='AdminInsert.html'><button class="iconhome"><i class="fa fa-arrow-left"></i></button></a></span>
        <span><center><h1>Department of Computer Science</h1></center></span>
        <span class="Rspan"><h2>Graduation year : <?php $dbname = $_SESSION['dbname']; echo substr($dbname,3);?></h2></span>
</div>
<div id="table-container">
	<div id="edit-container">
			<button type="button" class="btn" onclick="openpopup()">INSERT</button>
		</div>
<?php
// Replace with your database credentials
$servername = "localhost";
$username = "root";
$password = "";
//session_start();
$dbname =$_SESSION['dbname'];
$tablename =$_SESSION['tablename'];

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get all the column names of the table
$sql = "SHOW COLUMNS FROM $tablename";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $column_names = array();
    while($row = $result->fetch_assoc()) {
        $column_names[] = $row["Field"];
    }
}

// Get all the entries of the table
$sql = "SELECT * FROM $tablename";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // Output table header
  echo "<table class='tablecss'><tr>";
	echo "<th>CIN</th><th>Company ID</th><th>Package(in INR)</th><th>Appointed Role</th>";
    // Output table rows
    while($row = $result->fetch_assoc()) {
        echo "<tr>";
        foreach($column_names as $column_name) {
            echo "<td>" . $row[$column_name] . "</td>";
        }
        echo "</tr>";
    }
    echo "</table>";
} else {
    echo "0 results";
}
// Close connection
$conn->close();
?>
</div>
<div id="pop" class="pop" style="position: fixed;">
<button id="icon" onclick="closepopup()"><i class="fa fa-close"></i></button>
<form action="" method="POST" onsubmit="window.reload();">
<center><h1>Insert Entry:</h1></center>
<?php
// Connect to the database
$conn = mysqli_connect('localhost', 'root', '', $dbname);

// Fetch CINs from the reginfo table where RegStat="Yes"
$query = "SELECT CIN FROM reginfo WHERE RegStat='Yes'";
$result = mysqli_query($conn, $query);

// Generate the dropdown options
?>
<label for="cin"></label>
<select class="it" name="cin" id="cin" required>
<option  value="" disabled selected>Select CIN</option>
  <?php while ($row = mysqli_fetch_assoc($result)) {
        $cin = $row['CIN']; ?>
    <option class="it" value="<?php echo $cin; ?>"><?php echo $cin; ?></option>
  <?php } ?>
</select>
<?php
// Fetch the data for the remaining fields from the company table
$query = "SELECT CONCAT(Company_Name, '(', Company_ID, ')') AS company_option, Company_ID FROM company";
$result = mysqli_query($conn, $query);

// Get the selected Company_ID value (if any)
$selected_company_id = isset($_POST['companyid']) ? $_POST['companyid'] : '';

// Generate the remaining input fields and dropdown options
?>
<label for="companyid"></label>
<select class="it" name="companyid" id="companyid" required>
<option value="" disabled selected>Select Company</option>
  <?php while ($row = mysqli_fetch_assoc($result)) {
        $option_value = $row['company_option'];
        $company_id = $row['Company_ID'];
        $company_name = substr($option_value, 0, strpos($option_value, '(')); ?>
    <option class="it" value="<?php echo $company_id; ?>"><?php echo $option_value; ?></option>
  <?php } ?>
</select>
<input class="it" type="number" name="package" placeholder="Annual Package(in INR)" oninvalid="setCustomValidity('Please enter digits only.')" oninput="setCustomValidity('')" autocomplete="off" required>
<input class="it" type="text" name="role" placeholder="Appointed Role" autocomplete="off" required>
<button class="submit" type="submit">Submit</button>
</form>
</div>
<?php
error_reporting(0);
$servername = "localhost";
$username = "root";
$password = "";
$dbname =$_SESSION['dbname'];
$tablename =$_SESSION['tablename'];
if ($_SERVER["REQUEST_METHOD"] == "POST") 
{
$cin=$_POST['cin'];
$companyid=$_POST['companyid'];
$package=$_POST['package'];
$role=$_POST['role'];
// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
if($conn)
{	
$check_query="SELECT * from studentinfo where CIN='$cin'";
$result = $conn->query($check_query);
if($result->num_rows > 0)
{
$check_query="SELECT * from placementinfo where CIN='$cin'";
$result = $conn->query($check_query);
if($result->num_rows > 0)
{
	// CIN already exists, so display an error message
    echo "<script>alert('Error: CIN already exists in the Placement Information Table.');</script>";
}
else
{
	$check_query="SELECT * from reginfo where cin='$cin' AND RegStat='Yes'";
	$result=$conn->query($check_query);
	if($result->num_rows>0)
	{
		$check_query="SELECT * from company where Company_ID='$companyid'";
		$result=$conn->query($check_query);
		if($result->num_rows>0)
		{
			 $insert_query = "INSERT INTO placementinfo (CIN, Company_ID,Package,AppointedRole) 
			 VALUES ('$cin', '$companyid','$package','$role')";
			if (mysqli_query($conn, $insert_query))
			{
			echo "New record created successfully";
			header("Location: ".$_SERVER['PHP_SELF']);
			echo '<META HTTP-EQUIV="Refresh" Content="0; URL=' . $location . '">';
			}
		}
		else
	{
		$error_msg = "Company ID: ".$companyid. " does not exist in Company Information Table"."<br>"
		."Redirecting you in <span id='countdown'>5</span> seconds.";

		// Output HTML and JavaScript code to display the popup window with countdown and redirect after 5 seconds
		echo "<!DOCTYPE html>
		<html>
		<head>
			<title>Error Message</title>
		</head>
		<body>
		<div class='popup-overlay'></div>

			<div class='popup'>
				<h1>Error Message</h1>
				<p>$error_msg</p>
			</div>

			<script type='text/javascript'>
				// Set the countdown duration in seconds
				var countdown_duration = 5;

				// Get the countdown element
				var countdown_element = document.getElementById('countdown');

				// Update the countdown every second
				var countdown_timer = setInterval(function() {
					countdown_duration--;
					countdown_element.innerHTML = countdown_duration;
					if (countdown_duration <= 0) {
						// Redirect to a certain page after the countdown is complete
						clearInterval(countdown_timer);
						window.location.href = 'AdminInsert.html';
					}
				}, 1000);
			</script>

		</body>
		</html>";
	}
	}
	else
	{
		echo "Error: CIN ".$cin." has not registered for placement drive";
	}
}
}
	else
	{
		$error_msg = "CIN: ".$cin. " does not exist in Student Information Table"."<br>"
		."Redirecting you in <span id='countdown'>5</span> seconds.";

		// Output HTML and JavaScript code to display the popup window with countdown and redirect after 5 seconds
		echo "<!DOCTYPE html>
		<html>
		<head>
			<title>Error Message</title>
			
		</head>
		<body>
		<div class='popup-overlay'></div>

			<div class='popup'>
				<h1>Error Message</h1>
				<p>$error_msg</p>
			</div>

			<script type='text/javascript'>
				// Set the countdown duration in seconds
				var countdown_duration = 5;

				// Get the countdown element
				var countdown_element = document.getElementById('countdown');

				// Update the countdown every second
				var countdown_timer = setInterval(function() {
					countdown_duration--;
					countdown_element.innerHTML = countdown_duration;
					if (countdown_duration <= 0) {
						// Redirect to a certain page after the countdown is complete
						clearInterval(countdown_timer);
						window.location.href = 'AdminInsert.html';
					}
				}, 1000);
			</script>
			</div>
		</body>
		</html>";
	}
}
}
?>
<script type="text/javascript">
		let popup = document.getElementById("pop");
		function openpopup(){
			popup.classList.add("open-pop");
		}
		function closepopup(){
			popup.classList.remove("open-pop");
		}
	</script>
</body>
