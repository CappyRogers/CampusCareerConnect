
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
			echo "<tr><th>CIN</th><th>Company ID</th><th>Package (CTC)</th><th>Appointed Role</th><th class='editbutton'></th></tr>";
			while($row=mysqli_fetch_assoc($res))
			{
			  $cin=$row['CIN'];
			  $cid=$row['Company_ID'];
			  $package=$row['Package'];
			  $role=$row['AppointedRole'];
			  echo "<tr><td>$cin</td><td>$cid</td><td>$package</td><td>$role</td><td class='editbutton'><button name='edit' class='btn' type='button' onclick=\"openpopup('" . $cin . "','" . $cid . "','" . $package . "','" . $role . "')\">EDIT</button></td></tr>";
			}
			$conn->close();
		?>
		<div id="popup" class="popup" style="position: fixed;">
    <button id="icon" onclick="closepopup()"><i class="fa fa-close"></i></button>
    <center>
        <h1>Edit Entry:</h1>
        <h3 class="warn">The changes will be reflected in the entire database.</h3>
    </center>
    <form action="" method="POST" onsubmit="window.reload();">
        <form action="" method="POST" onsubmit="window.reload();">
<?php
// Connect to the database
$conn = mysqli_connect('localhost', 'root', '', $dbname);

// Fetch CINs from the reginfo table where RegStat="Yes"
$query = "SELECT CIN FROM reginfo WHERE RegStat='Yes'";
$result = mysqli_query($conn, $query);

// Generate the dropdown options
?>
<label for="cin"></label>
<select name="cin" id="text0" class="it" required>
<option value="" disabled selected>Select CIN</option>
  <?php while ($row = mysqli_fetch_assoc($result)) {
        $cin = $row['CIN']; ?>
    <option value="<?php echo $cin; ?>"><?php echo $cin; ?></option>
  <?php } ?>
</select>
<br><br>
        <label for="companyid"></label>
        <select name="cid"  class="it" id="text1" required>
            <option value="" disabled selected>Select Company</option>
            <?php
            // Connect to the database
            $conn = mysqli_connect('localhost', 'root', '', $dbname);

            // Fetch the data
            $query = "SELECT CONCAT(Company_Name, '(', Company_ID, ')') AS company_option, Company_ID FROM company";
            $result = mysqli_query($conn, $query);

            // Get the selected Company_ID value (if any)
            $selected_company_id = isset($_POST['companyid']) ? $_POST['companyid'] : '';

            // Generate the dropdown options
            while ($row = mysqli_fetch_assoc($result)) {
                $option_value = $row['company_option'];
                $company_id = $row['Company_ID'];
                $company_name = substr($option_value, 0, strpos($option_value, '('));
                ?>
                <option value="<?php echo $company_id; ?>"<?php if ($company_id == $selected_company_id) { echo ' selected'; } ?>><?php echo $option_value; ?></option>
            <?php } ?>
        </select><br><br>
        <input id="text2" class="it" type="number" name="package" placeholder="CTC (in digits)" oninvalid="setCustomValidity('Please enter digits only.')" oninput="setCustomValidity('')" autocomplete="off" required><br><br>
        <input id="text3" class="it" type="text" name="role" placeholder="Appointed Role" pattern="[a-zA-Z0-9\s&.'()-]+" oninvalid="setCustomValidity('Digits or special characters are not allowed.')" oninput="setCustomValidity('')" autocomplete="off" required><br><br>
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
		$cin=$_POST['cin'];	
		$cid=$_POST['cid'];
		$package=$_POST['package'];
		$role=$_POST['role'];
		$prevcin=$_POST['prevcin'];
		// Creating connection
		$conn = mysqli_connect($servername, $username, $password, $dbname);
		if($conn)
		{
			$checkcin = "SELECT * FROM studentinfo WHERE CIN='$cin'";
			$checkcinresult = mysqli_query($conn, $checkcin);
			$check_rows = mysqli_num_rows($checkcinresult);
			if($check_rows==0)
			{
				echo '<script>alert("CIN does not exist in Student Information Table.");</script>';
			}
			else
			{
				$update_query = "UPDATE $tablename SET ";
			    $set_query = "";
			    $set_query .= "CIN = '$cin', ";
				$set_query .= "Company_ID = '$cid', ";
			    $set_query .= "Package = '$package', ";
			    $set_query .= "AppointedRole = '$role', ";

				// removing the last comma and space from the query
			    $set_query = rtrim($set_query, ', ');
				$update_query .= $set_query;

				$checkcin = "SELECT * FROM $tablename WHERE CIN='$cin' AND CIN<>'$prevcin'";
			    $checkcinresult = mysqli_query($conn, $checkcin);
			    $check_rows = mysqli_num_rows($checkcinresult);
			    if($check_rows>0)
			    {
			        echo '<script>alert("CIN already exists in another row of Placement Information Table.");</script>';
			    }
			    else
			    {
			    	$checkreg = "SELECT * FROM reginfo WHERE CIN='$cin' AND regstat='No'";
			    	$checkregresult = mysqli_query($conn, $checkreg);
			    	$check_rows = mysqli_num_rows($checkregresult);
			    	if($check_rows>0)
			    	{
			        	echo '<script>alert("Record cannot be updated.\nStudent with the input CIN has not registered in the Placement Drive.");</script>';
			    	}
			    	else
			    	{
			    		$checkcompany = "SELECT * FROM company WHERE Company_ID='$cid'";
			    		$checkcompanyresult = mysqli_query($conn, $checkcompany);
			    		$check_rows = mysqli_num_rows($checkcompanyresult);
			    		if($check_rows>0)
			    		{
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
			    		else
			    		{
			    			echo '<script>alert("Company_ID does not exist in the Company Table");</script>';
			    		}
			    	}
			    }
			}
		}
	}
?>



	</div>
	<script type="text/javascript">
		let popup = document.getElementById("popup");
		function openpopup(cin,id,package,role){
			document.getElementById("text0").value=cin;
			document.getElementById("text1").value=id;
			document.getElementById("text2").value=package;
			document.getElementById("text3").value=role;
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