<?php session_start();?>
<html>
<head>
	<title>Data updation</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="update.css">
</head>
<body>
	<div class="heady">
        <span class="Lspan"><a href='Admin.php'><button class="iconhome"><i class="fa fa-home"></i></button></a>
		<a href='AdminUpdate.html'><button class="iconhome"><i class="fa fa-arrow-left"></i></button></a></span>
        <span><center><h1>Department of Computer Science</h1></center></span>
        <span class="Rspan"><h2>Graduation year : <?php $dbname = $_SESSION['dbname']; echo substr($dbname,3);?></h2></span>
</div>
	<div id="tablecontainer">
		<?php
		//error_reporting(0);
			$servername = "localhost";
			$username = "root";
			$password = "";
			
			$dbname = $_SESSION['dbname'];
			$tablename =$_SESSION['tablename'];

			// Create connection
			$conn = new mysqli($servername, $username, $password, $dbname);

			// Check connection
			if ($conn->connect_error) {
			    die("Connection failed: " . $conn->connect_error);
			}
			$sql="select * from $tablename";
			$res=mysqli_query($conn,$sql);
			echo "<table class='tablecss' border=2 cellspacing=0 cellpadding=4>";
			echo "<tr><th>CIN</th><th>Full Name</th><th>Email</th><th>CGPA</th><th class='editbutton'></th></tr>";
			while($row=mysqli_fetch_assoc($res))
			{
			  $cin=$row['CIN'];
			  $name=$row['Name'];
			  $email=$row['Email'];
			  $cgpa=$row['CGPA'];
			  echo "<tr><td>$cin</td><td>$name</td><td>$email</td><td>$cgpa</td><td class='editbutton'><button name='edit' class='btn' type='button' onclick=\"openpopup('" . $cin . "','" . $name . "','" . $email . "','" . $cgpa . "')\">EDIT</button></td></tr>";
			}
			$conn->close();
		?>
		<div id="popup" class="popup" style="position: fixed;">
		<button id="icon" onclick="closepopup()"><i class="fa fa-close"></i></button>
        <center><h1>Edit Entry:</h1><h3 class="warn">The changes will be reflected in the entire database.</h3></center>
		<form action="" method="POST" onsubmit="window.reload();">
		<input id="text0" class="it" type="text" name="cin" placeholder="CIN(XX-XXX-X-XX-XXXX)" pattern="^\d{2}-\d{3}-\d-\d{2}-\d{4}$" autocomplete="off" required><br><br>
        <input id="text1" class="it" type="text" name="name" placeholder="Full Name" pattern="[a-zA-Z\-\s']+" oninvalid="setCustomValidity('Digits or special characters are not allowed.')" oninput="setCustomValidity('')" autocomplete="off" required><br><br>
        <input id="text2" class="it" type="email" name="email" placeholder="Email" pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}" autocomplete="off" required><br><br>
        <input id="text3" class="it" type="number" name="cgpa" min="0" max="10" step=0.001 placeholder="CGPA" autocomplete="off" required><br><br>
        <input type="hidden" id="prevcin" name="prevcin"></input>
        <center><button class="submit" type="submit">Submit</button></center>
	    </form>
		</div>
		<?php
		error_reporting(0);
		$servername = "localhost";
		$username = "root";
		$password = "";
		$dbname =$_SESSION['dbname'];
		$tablename =$_SESSION['tablename'];
		if ($_SERVER["REQUEST_METHOD"] == "POST") {
  // Get form data
  $cin = $_POST["cin"];
  $name = $_POST["name"];
  $email = $_POST["email"];
  $cgpa = $_POST["cgpa"];
  $prevcin = $_POST["prevcin"];

  // Create database connection
  $conn = mysqli_connect($servername, $username, $password, $dbname);

  // Check if connection was successful
  if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
  }

  // Check if CIN already exists in the studentinfo table
  $check_cin_query = "SELECT * FROM $tablename WHERE CIN='$cin' AND CIN<>'$prevcin'";
  $check_cin_result = mysqli_query($conn, $check_cin_query);
  if (mysqli_num_rows($check_cin_result) > 0) {
    echo '<script>alert("Data cannot be updated.\nCIN is already registered with another student.");</script>';
	  echo '<META HTTP-EQUIV="Refresh" Content="0; URL=' . $location . '">';
  }

  // Check if Email already exists in the studentinfo table
  $check_email_query = "SELECT * FROM $tablename WHERE Email='$email' AND CIN<>'$prevcin'";
  $check_email_result = mysqli_query($conn, $check_email_query);
  if (mysqli_num_rows($check_email_result) > 0) {
	echo '<script>alert("Data cannot be updated.\nEmail is already registered with another student.");</script>';
	  echo '<META HTTP-EQUIV="Refresh" Content="0; URL=' . $location . '">';
  }
else{
  // Update studentinfo table
  $update_query = "UPDATE $tablename SET CIN='$cin', Name='$name', Email='$email', CGPA='$cgpa' WHERE CIN='$prevcin'";
  if (mysqli_query($conn, $update_query)) {
	  echo '<META HTTP-EQUIV="Refresh" Content="0; URL=' . $location . '">';
  } else {
	  echo '<script>alert("No changes made to the database");</script>';
	  echo '<META HTTP-EQUIV="Refresh" Content="0; URL=' . $location . '">';
  }
}


  // Close database connection
  mysqli_close($conn);
}
		?>
	</div>
	<script type="text/javascript">
		let popup = document.getElementById("popup");
		function openpopup(cin,name,email,cgpa){
			document.getElementById("text0").value=cin;
			document.getElementById("text1").value=name;
			document.getElementById("text2").value=email;
			document.getElementById("text3").value=cgpa;
			document.getElementById("prevcin").value=cin;
			popup.classList.add("open-popup");
			document.getElementById("text0").focus();
		}
		function closepopup(){
			popup.classList.remove("open-popup");
		}
	</script>
</body>
</html>