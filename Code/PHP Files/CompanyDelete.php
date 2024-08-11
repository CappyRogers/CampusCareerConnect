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
			echo "<tr><th>Company ID</th><th>Company Name</th><th></th></tr>";
			while($row=mysqli_fetch_assoc($res))
			{
			  $cid=$row['Company_ID'];
			  $cname=$row['Company_Name'];
			  echo "<tr><td>$cid</td><td>$cname</td><td class='deletebutton'><button name='delete' class='btn' type='button' onclick=\"openpopup('" . $cid . "')\">DELETE</button></td></tr>";
			}
			$conn->close();
		?>
		<div id="popup" class="popup" style="position: fixed;">
		<button id="icon" onclick="closepopup()"><i class="fa fa-close"></i></button>
        <center><h1>Delete Entry:</h1><h3 class="warn">The data corresponding to this Company_ID will be deleted from the entire database.</h3></center>
		<form action="" method="POST" onsubmit="window.reload();">
        <input id="text1" class="it" type="text" name="cid" placeholder="Company ID [C**]" pattern="C\d{2}" autocomplete="off" disabled><br><br>
        <input type="hidden" id="prevcid" name="prevcid"></input>
        <center><button class="submit" type="submit">Confirm</button></center>
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
		$cid=$_POST['prevcid'];
		// Create connection
		$conn = mysqli_connect($servername, $username, $password, $dbname);
		if($conn)
		{
			$check_query= "DELETE from $tablename where Company_ID= '$cid'";
			
			$result = $conn->query($check_query);
			$num = mysqli_affected_rows($conn);
			if ($num>0) 
			{
		    // Company_ID row deleted
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
		function openpopup(cid){
			document.getElementById("text1").value=cid;
			document.getElementById("prevcid").value=cid;
			popup.classList.add("open-popup");
			document.getElementById("text1").focus();
		}
		function closepopup(){
			popup.classList.remove("open-popup");
		}
	</script>

</body>