<style>
  #table-container {
    width: 50%;
    float: left;
  }

  #edit-container {
    width:300px;
    float: right;
	margin-right:200px;
	margin-top:120px;
	background-color: #f2f2f2; 
	padding: 10px; border: 2px solid #ccc;
  }

  table {
    border-collapse: collapse;
    width: 100%;
    border: 1px solid #ddd;
  }

  th, td {
    padding: 8px;
    text-align: left;
    font-size: 14px;
    border: 1px solid #ddd;
  }

  th {
    background-color: #AA96DA;
    font-weight: bold;
    position: sticky;
    top: 0;
    border: 1px solid #ddd;
  }

  tr:nth-child(even) {
    background-color:#FFFFD2 ;
  }

  tr:hover {
    background-color:#C5FAD5 ;
  }

  td:first-child {
    border-left: 0;
  }

  td:last-child {
    border-right: 0;
  }

  td {
    border-top: 0;
    border-bottom: 0;
  }
  .it{
			width: 100%;
	        padding: 10px;
	        border: 2px solid #ccc;
	        border-radius: 40px;
	        box-sizing: border-box;
	        margin-bottom: 20px;
	        font-size: 16px;
		}
		button[type="submit"]{
        background-color: #4caf50;
        color: #fff;
        padding: 12px 20px;
        border: none;
        border-radius: 30px;
        width: 120px;
        margin-left: 5px;
        cursor: pointer;
        font-size: 16px;
        margin-right: 10px;
      }

      button[type="submit"]:hover
      {
        background-color: #388e3c;
      }
</style>

<div id="table-container">
<?php
// Replace with your database credentials
$servername = "localhost";
$username = "root";
$password = "";
session_start();
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
    echo "<table><tr>";
    /*foreach($column_names as $column_name) {
        echo "<th>" . $column_name . "</th>";
    }
    echo "</tr>";*/
	echo "<th>"."CIN"."</th>"."<th>"."Name"."</th>"."<th>"."Email"."</th>"."<th>"."CGPA"."</th>";

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
<div id="edit-container">
        <center><h1>Insert Details</h1></center>
		<form action="" method="POST" onsubmit="window.reload();">
        <input class="it" type="text" name="cin" placeholder="CIN(XX-XXX-X-XX-XXXX)" pattern="^\d{2}-\d{3}-\d-\d{2}-\d{4}$" autocomplete="off" required><br><br>
        <input class="it" type="text" name="name" placeholder="Full name" autocomplete="off" required><br><br>
        <input class="it" type="text" name="email" placeholder="Email" autocomplete="off" required><br><br>
        <input class="it" type="number" name="cgpa" min="0" max="10" step=0.001 placeholder="CGPA" autocomplete="off" required><br><br>
        <center><button type="submit">Submit</button></center>
	    </form>
<?php
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
    echo "Error: CIN already exists in the database.";
	}
	else
	{
		$check_query = "SELECT * FROM studentinfo WHERE email = '$email'";
		$result = $conn->query($check_query);
		if ($result->num_rows > 0) 
		{
        // Email ID is not unique, so display an error message
        echo "Error: Email ID must be unique.";
		} 
		else
		{
		$insert_query = "INSERT INTO studentinfo (CIN, Name, Email, CGPA) VALUES ('$cin', '$name','$email','$cgpa')";
		if (mysqli_query($conn, $insert_query)) 
		{
		echo "New record created successfully";
		// Reload the page to update the table
		header("Location: ".$_SERVER['PHP_SELF']);
		}
		}
	}
}
}
?>
</div>
