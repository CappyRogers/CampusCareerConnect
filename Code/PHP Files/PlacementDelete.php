<?php session_start();?>
<html>
<head>
	<title>Data deletion</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="delete.css">
</head>
<body>
	<div class="heady">
        <span class="Lspan"><a href='Admin.php'><button class="iconhome"><i class="fa fa-home"></i></button></a>
		<a href='AdminDelete.html'><button class="iconhome"><i class="fa fa-arrow-left"></i></button></a></span>
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
			echo "<tr><th>CIN</th><th>Company ID</th><th>Package (CTC)</th><th>Appointed Role</th><th></th></tr>";
			while($row=mysqli_fetch_assoc($res))
			{
			  $cin=$row['CIN'];
			  $cid=$row['Company_ID'];
			  $package=$row['Package'];
			  $role=$row['AppointedRole'];
			  echo "<tr><td>$cin</td><td>$cid</td><td>$package</td><td>$role</td><td class='deletebutton'><button name='delete' class='btn' type='button' onclick=\"openpopup('" . $cin . "')\">DELETE</button></td></tr>";
			}
			$conn->close();
		?>
		<div id="popup" class="popup" style="position: fixed;">
		<button id="icon" onclick="closepopup()"><i class="fa fa-close"></i></button>
        <center><h1>Delete Entry:</h1><h3 class="warn">The data corresponding to this CIN will be deleted from the entire database.</h3></center>
		<form action="" method="POST" onsubmit="window.reload();">
        <input id="text1" class="it" type="text" name="cin" placeholder="CIN(XX-XXX-X-XX-XXXX)" pattern="^\d{2}-\d{3}-\d-\d{2}-\d{4}$" autocomplete="off" disabled><br><br>
        <input type="hidden" id="prevcin" name="prevcin"></input>
        <center><button class="submit" type="submit">Confirm</button></center>
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
		$cin=$_POST['prevcin'];
		// Create connection
		$conn = mysqli_connect($servername, $username, $password, $dbname);
		if($conn)
		{
			$check_query= "DELETE from $tablename where CIN= '$cin'";
			
			$result = $conn->query($check_query);
			$num = mysqli_affected_rows($conn);
			if ($num>0) 
			{
		    // CIN row deleted
		    echo '<META HTTP-EQUIV="Refresh" Content="0; URL=' . $location . '">';
			}
			else
			{
				echo '<script>alert("The entry could not be deleted.");</script>';
			}
		}
		}
		?>
	</div>
	<script type="text/javascript">
		let popup = document.getElementById("popup");
		function openpopup(cin){
			document.getElementById("text1").value=cin;
			document.getElementById("prevcin").value=cin;
			popup.classList.add("open-popup");
			document.getElementById("text1").focus();
		}
		function closepopup(){
			popup.classList.remove("open-popup");
		}
	</script>

</body>