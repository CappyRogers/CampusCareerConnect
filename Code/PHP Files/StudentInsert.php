<?php session_start();?>
<html>
<head>
<title>Data insertion</title>   
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
$dbname = $_SESSION['dbname'];
$tablename = $_SESSION['tablename'];

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
	  echo "<th>CIN</th><th>Name</th><th>Email</th><th>CGPA</th>";

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
<div id="pop" class="pop" style="margin-top:180px; position:fixed;">
  <button id="icon" onclick="closepopup()"><i class="fa fa-close"></i></button>
        <center><h1>Insert Details</h1></center>
		<form action="" method="POST" onsubmit="window.reload();">
        <input class="it" type="text" name="cin" placeholder="CIN(XX-XXX-X-XX-XXXX)" pattern="^\d{2}-\d{3}-\d-\d{2}-\d{4}$" autocomplete="off" required><br><br>
        <input class="it" type="text" name="name" placeholder="Full name" pattern="[a-zA-Z\-\s']+" autocomplete="off" required><br><br>
        <input class="it" type="text" name="email" placeholder="Email" pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}" autocomplete="off" required><br><br>
        <input class="it" type="number" name="cgpa" min="0" max="10" step=0.001 placeholder="CGPA" autocomplete="off" required>
        <center><button class="submit" type="submit">Submit</button></center>
	    </form>
</div>
<?php
error_reporting(0);
$servername = "localhost";
$username = "root";
$password = "";
$dbname = $_SESSION['dbname'];
$tablename = $_SESSION['tablename'];
if ($_SERVER["REQUEST_METHOD"] == "POST") 
{
$cin=$_POST['cin'];
$name=$_POST['name'];
$email=$_POST['email'];
$cgpa=$_POST['cgpa'];
// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
if($conn)
{
	$check_query= "SELECT * from studentinfo where CIN= '$cin'";
	$result = $conn->query($check_query);
	if ($result->num_rows > 0) 
	{
    // CIN already exists, so display an error message
    echo "<script>alert('Error: CIN already exists in the Student Information Table');</script>";
	}
	else
	{
		$check_query = "SELECT * FROM studentinfo WHERE email = '$email'";
		$result = $conn->query($check_query);
		if ($result->num_rows > 0) 
		{
        // Email ID is not unique, so display an error message
      echo "<script>alert('Error: Email ID must be unique.');</script>";
		} 
		else
		{
		$insert_query = "INSERT INTO studentinfo (CIN, Name, Email, CGPA) VALUES ('$cin', '$name','$email','$cgpa')";
		if (mysqli_query($conn, $insert_query)) 
		{
		echo "New record created successfully";
		// Reload the page to update the table
		header("Location: ".$_SERVER['PHP_SELF']);
		echo '<META HTTP-EQUIV="Refresh" Content="0; URL=' . $location . '">';
		}
		}
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
<html>