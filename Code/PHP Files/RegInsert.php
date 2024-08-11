<?php session_start();?>
<html>
<head>
<title>Data insertion</title>   
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="insert.css">
<style>
.radio{
     		  background: #82AAE3;
     		  color: #3E54AC;
     		  font-size: 22;
			  align-items: center;
			  justify-content: space-evenly;
			  margin: auto;
			  border-radius: 5px;
			  cursor: pointer;
			  padding: 5 10px;
			  border: 2px solid transparent;
			  transition: all 200ms linear;
     	}
     	.radio:hover{
     		  background: #82AAE3;
     		  color: #fff;
			  border: 2px solid #fff;
			  box-shadow: 0 5px 5px rgba(0, 0, 0, 0.2);
			  transition: all 200ms linear;
     	}
</style>
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
	echo "<th>"."CIN"."</th>"."<th>"."Registration Status"."</th>";

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
<center><h1>Insert Details</h1></center>
<form action="" method="POST">
    <?php
        // Connect to the database
        $conn = mysqli_connect('localhost', 'root', '', $dbname);

        // Fetch the CIN from studentinfo table
        $query = "SELECT CIN FROM studentinfo";
        $result = mysqli_query($conn, $query);

        // Generate the dropdown options
    ?>
    <label for="cin"></label>
    <select class="it" name="cin" id="cin" class="it" required>
        <option value="" disabled selected>Select CIN</option>
        <?php while ($row = mysqli_fetch_assoc($result)) {
            $cin = $row['CIN']; ?>
            <option class="it" value="<?php echo $cin; ?>"><?php echo $cin; ?></option>
        <?php } ?>
    </select>
    <br><br>
    <label for="degree"><h3 class="warn">Has the student registered for placement drive?</h3></label>
    <br>
    <input type="radio" id="Yes" name="regstat" value="Yes" required>
    <label for="Yes" class="radio">Yes</label>
    &emsp;&emsp;&emsp;
    <input type="radio" id="No" name="regstat" value="No" required>
    <label for="No" class="radio">No</label>
    <br><br>
    <center><button class="submit" type="submit">Submit</button></center>
</form>
<div id="validation-message" style="display: none; color: red;">
    Please select exactly one choice
</div>
</div>
    <script>
      const form = document.querySelector('form');
      const validationMessage = document.getElementById('validation-message');
      const radioButtons = document.querySelectorAll('input[name="regstat"]');

      form.addEventListener('submit', (event) => {
        let selectedCount = 0;
        radioButtons.forEach((radioButton) => {
          if (radioButton.checked) {
            selectedCount++;
          }
        });
        if (selectedCount !== 1) {
          event.preventDefault();
          validationMessage.style.display = 'block';
        }
      });
    </script>
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
$regstat = $_POST['regstat'];
// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
if($conn)
{
	$check_query="SELECT * from studentinfo where CIN='$cin'";
	$result = $conn->query($check_query);
	if ($result->num_rows > 0) 
	{
	$check_query= "SELECT * from reginfo where CIN= '$cin'";
	$result = $conn->query($check_query);
	if ($result->num_rows > 0) 
	{
    // CIN already exists, so display an error message
    echo "<script>alert('Error: CIN already exists in the Registration Information Table.');</script>";
	}
	else
	{
		$insert_query = "INSERT INTO reginfo (CIN,RegStat) VALUES ('$cin','$regstat')";
		if (mysqli_query($conn, $insert_query)) 
		{
		// Reload the page to update the table
		header("Location: ".$_SERVER['PHP_SELF']);
		echo '<META HTTP-EQUIV="Refresh" Content="0; URL=' . $location . '">';
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
			<style type='text/css'>
				.popup {
					position: fixed;
					top: 50%;
					left: 50%;
					transform: translate(-50%, -50%);
					width: 400px;
					height: 200px;
					background-color: white;
					padding: 20px;
					box-shadow: 0px 0px 10px rgba(0,0,0,0.5);
					z-index: 9999;
					font-family: Arial;
					font-size: 16px;
				}
				.popup-overlay {
				position: fixed;
				top: 0;
				left: 0;
				width: 100%;
				height: 100%;
				background-color: rgba(0, 0, 0, 0.5);
				filter: blur(10 px);
				z-index: 9998;
		}

			</style>
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
</html>