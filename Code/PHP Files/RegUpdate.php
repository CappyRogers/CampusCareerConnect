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
			echo "<tr><th>CIN</th><th>Registration Status</th><th class='editbutton'></th></tr>";
			while($row=mysqli_fetch_assoc($res))
			{
			  $cin=$row['CIN'];
			  $regstat=$row['RegStat'];
			  echo "<tr><td>$cin</td><td>$regstat</td><td class='editbutton'><button name='edit' class='btn' type='button' onclick=\"openpopup('" . $cin . "','" . $regstat . "')\">EDIT</button></td></tr>";
			}
			$conn->close();
		?>
		<div id="popup" class="popup" style="position: fixed;">
		<button id="icon" onclick="closepopup()"><i class="fa fa-close"></i></button>
        <center><h1>Edit Entry:</h1><h3 class="warn">The changes will be reflected in the entire database.</h3></center>
		<form action="" method="POST" onsubmit="window.reload();">
        <input id="text1" style="text-align: center;" class="it" type="text" name="cin" placeholder="CIN(XX-XXX-X-XX-XXXX)" pattern="^\d{2}-\d{3}-\d-\d{2}-\d{4}$" autocomplete="off" disabled><br><br>
        <input type="radio" id="yes" name="registration" value="Yes">
		<label for="yes" class="radio">Yes</label><br><br><br>
		<input type="radio" id="no" name="registration" value="No">
		<label for="no" class="radio">No</label><br><br>
        <input type="hidden" id="prevcin" name="prevcin"></input>
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
		$regstat=$_POST['registration'];
		$prevcin=$_POST['prevcin'];
		// Creating connection
		$conn = mysqli_connect($servername, $username, $password, $dbname);
		if($conn)
		{
			$update_query = "UPDATE $tablename SET ";
		    $set_query = "";
		    $set_query .= "RegStat = '$regstat', ";
		 // removing the last comma and space from the query
			    $set_query = rtrim($set_query, ', ');
				$update_query .= $set_query;
				if($regstat=="No")
				{
					$checkplacement = "SELECT * FROM placementinfo WHERE CIN = '$prevcin'";
			        $checkplacementresult = mysqli_query($conn, $checkplacement);
			        $check_rows = mysqli_num_rows($checkplacementresult);
			        if($check_rows>0)
			        {
					
			        	$set_query = "";
			        	echo '<script>alert("Registration Status cannot be changed. Student is already placed.");</script>';
			        }
				}
				if (!empty($set_query))
				{
			    $update_query .= " WHERE CIN = '$prevcin'";
				$result = mysqli_query($conn, $update_query);
			    $num = mysqli_affected_rows($conn);
					if ($num>0) 
				  	{
			 	    	echo '<META HTTP-EQUIV="Refresh" Content="0; URL=' . $location . '">';
					}
					else
				 	{
				 	echo '<script>alert("No changes were applied to the database.");</script>';
				 	}
				}
		}
		}
		?>
	</div>
	<script type="text/javascript">
		let popup = document.getElementById("popup");
		function openpopup(cin,regstat){
			document.getElementById("text1").value=cin;
			 if(regstat=="Yes")
			 	document.getElementById("yes").checked=true;
			 else if(regstat=="No")
			 	document.getElementById("no").checked=true;
			document.getElementById("prevcin").value=cin;
			popup.classList.add("open-popup");
			document.getElementById("text1").focus();
		}
		function closepopup(){
			popup.classList.remove("open-popup");
		}
	</script>
</body>
</html>