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
			$tablename = $_SESSION['tablename'];

			// Create connection
			$conn = new mysqli($servername, $username, $password, $dbname);

			// Check connection
			if ($conn->connect_error) {
			    die("Connection failed: " . $conn->connect_error);
			}
			$sql="select * from $tablename";
			$res=mysqli_query($conn,$sql);
			echo "<table class='tablecss' border=2 cellspacing=0 cellpadding=4>";
			echo "<tr><th>Company ID</th><th>Company Name</th><th class='editbutton'></th></tr>";
			while($row=mysqli_fetch_assoc($res))
			{
			  $cid=$row['Company_ID'];
			  $cname=$row['Company_Name'];
			  echo "<tr><td>$cid</td><td>$cname</td><td class='editbutton'><button name='edit' class='btn' type='button' onclick=\"openpopup('" . $cid . "','" . $cname . "')\">EDIT</button></td></tr>";
			}
			$conn->close();
		?>
		<div id="popup" class="popup" style="position: fixed;">
		<button id="icon" onclick="closepopup()"><i class="fa fa-close"></i></button>
        <center><h1>Edit Entry:</h1><h3 class="warn">The changes will be reflected in the entire database.</h3></center>
		<form action="" method="POST" onsubmit="window.reload();">
        <input id="text1" class="it" type="text" name="cid" placeholder="Company ID [C**]" pattern="C\d{2}" autocomplete="off" required><br><br>
        <input id="text2" class="it" type="text" name="cname" placeholder="Company Name" pattern="[a-zA-Z0-9\s&.'()-]+" oninvalid="setCustomValidity('Digits or special characters are not allowed.')" oninput="setCustomValidity('')" autocomplete="off" required><br><br>
        <input type="hidden" id="prevcid" name="prevcid"></input>
        <center><button class="submit" type="submit">Submit</button></center>
	    </form>
		</div>
		<?php
		//error_reporting(0);
		$servername = "localhost";
		$username = "root";
		$password = "";
		$dbname = $_SESSION['dbname'];
		$tablename = $_SESSION['tablename'];
		if ($_SERVER["REQUEST_METHOD"] == "POST") 
		{
		$cid=$_POST['cid'];
		$cname=$_POST['cname'];
		$prevcid=$_POST['prevcid'];
		// Creating connection
		$conn = mysqli_connect($servername, $username, $password, $dbname);
		if($conn)
		{
			$check_query = "SELECT COUNT(*) FROM $tablename WHERE Company_ID = '$cid' AND Company_ID != '$prevcid'";
			$check_result = mysqli_query($conn, $check_query);
			$check_row = mysqli_fetch_array($check_result);
			$check_query1 = "SELECT * FROM company WHERE Company_Name = '$cname'";
			$result1 = $conn->query($check_query1);
		if ($result1->num_rows > 0) 
		{
		// Company_ID already exists, so display an error message
		echo "<script>alert('Error: Data already exists in the Company Information Table');</script>";
		}
			else if ($check_row[0] == 0) {
			   // The new Company_ID is unique, so we can update the row
			   $update_query = "UPDATE $tablename SET ";
		    $set_query = "";
			$set_query .= "Company_ID = '$cid', ";
		    $set_query .= "Company_Name = '$cname', ";
		 // removing the last comma and space from the query
			    $set_query = rtrim($set_query, ', ');
				$update_query .= $set_query;
			    $update_query .= " WHERE Company_ID = '$prevcid'";
				$result = mysqli_query($conn, $update_query);
			    $num = mysqli_affected_rows($conn);
					if ($num>0) 
				  	{
			 	    	echo '<META HTTP-EQUIV="Refresh" Content="0; URL=' . $location . '">';
						$checkname = "SELECT * FROM $tablename WHERE Company_Name = '$cname'";
			            $checknameres = mysqli_query($conn, $checkname);
			            $checkname_rows = mysqli_num_rows($checknameres);
			            if ($checkname_rows > 1){
			                echo '<script>alert("More than 1 company with the same name exists in the table.");</script>';
			            }
					}
					else
				 	{
				 	echo '<script>alert("No changes were applied to the database.");</script>';
				 	}
			   // ... rest of the code
			}
			else {
			   // The new Company_ID already exists in the table, so we cannot update the row
			   echo '<script>alert("Another company with the same ID already exists in the table.");</script>';
			}

			
		}
		}
		?>
	</div>
	<script type="text/javascript">
		let popup = document.getElementById("popup");
		function openpopup(id,name){
			document.getElementById("text1").value=id;
			document.getElementById("text2").value=name;
			document.getElementById("prevcid").value=id;
			popup.classList.add("open-popup");
			document.getElementById("text1").focus();
		}
		function closepopup(){
			popup.classList.remove("open-popup");
		}
	</script>
</body>
</html>