<?php
  header("Cache-Control: no-cache, no-store, must-revalidate"); // HTTP 1.1.
  header("Pragma: no-cache"); // HTTP 1.0.
  header("Expires: 0"); // Proxies.
?>

<!DOCTYPE html>
<html>
<head>
	<title>Admin Page</title>
	<style type="text/css">
		body {
			margin: 0;
			padding: 0;
			background-color: #f2f2f2;
			font-family: Arial, sans-serif;
		}
		.container {
			max-width: 800px;
			margin: 0 auto;
			padding: 20px;
			background-color: #fff;
			box-shadow: 0px 0px 10px rgba(0,0,0,0.1);
		}
		h1 {
			font-size: 36px;
			text-align: center;
			margin-bottom: 20px;
		}
		.btn-container {
			display: flex;
			justify-content: space-between;
			margin-bottom: 20px;
		}
		.btn {
			padding: 10px 20px;
			background-color: #4CAF50;
			color: #fff;
			font-size: 18px;
			border: none;
			border-radius: 4px;
			cursor: pointer;
			transition: background-color 0.3s ease;
		}
		.btn:hover {
			background-color: #3e8e41;
		}
		.btn.insert {
			background-color: #2196F3;
		}
		.btn.insert:hover {
			background-color: #0d8bf0;
		}
		.btn.delete {
			background-color: #F44336;
		}
		.btn.delete:hover {
			background-color: #d91a1a;
		}
		.btn.update {
			background-color: #FF9800;
		}
		.btn.update:hover {
			background-color: #e68a00;
		}
		.btn.advanced {
			background-color: #9E9E9E;
		}
		.btn.advanced:hover {
			background-color: #6b6b6b;
		}
		.btn.summary {
			background-color: #7B39E7;
		}
		.btn.summary:hover {
			background-color: #951BCA;
		}
		.form-container {
  max-width: 600px;
  margin: 0 auto;
  padding: 20px;
  background-color: #fff;
  box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
  }
  form {
	max-width: 500px;
	margin: 0 auto;
	background-color: #fff;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

label {
	display: block;
	margin-bottom: 5px;
	font-weight: bold;
}

select, input[type="text"] {
	width: 100%;
	padding: 8px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	margin-bottom: 20px;
	font-size: 16px;
}

button {
	padding: 10px 20px;
	background-color: #007bff;
	color: #fff;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	font-size: 16px;
}

button[type="submit"] {
  background-color: #28a745;
  margin-right: 10px;
  display: block;
  margin: 0 auto;
}


button[type="button"] {
	background-color: #ffc107;
}

button:hover {
	background-color: #0056b3;
}

button:active {
	background-color: #007bff;
}
#cin_fields {
			display: none;
		}
		.logout {
  padding: 10px 20px;
			background-color: #4CAF50;
			color: #fff;
			font-size: 18px;
			border: none;
			border-radius: 4px;
			cursor: pointer;
			transition: background-color 0.3s ease;
			position: absolute;
			top: 20px;
			right: 20px;
  }
.logout:hover {
 background-color: #3e8e41;
		
}
	</style>
	<script>
	
window.history.forward();

if (window.history && window.history.pushState) {
  window.history.pushState('forward', null, 'Homepage.html');
  window.onpopstate = function () {
    window.location.replace('Login.html');
  };
}
</script>

</head>
<body>
	<div class="container">
	
		<h1>Admin Dashboard</h1>
		<div class="btn-container">
			<a href="AdminInsert.html">
			<button class="btn insert">Insert</button>
			</a>
			<a href="AdminDelete.html">
			<button class="btn delete">Delete</button>
			</a>
			<a href="AdminUpdate.html">
			<button class="btn update">Update</button>
			</a>
			<a href="AccessLevel.php">
			<button class="btn advanced">Advanced Settings</button>
			</a>
			<a href="CompanyName.php">
			<button class="btn summary">Summary Report</button>
			</a>
			<?php 
		session_start();
		// check if user is logged in
		if (isset($_SESSION['loggedin']) && $_SESSION['loggedin'] === true) {
		// display logout button
		echo "<a href='logout.php'><button class='logout'>Logout</button></a>";
		}
		?>
		</div>
	</div><br><br><br>
	<div class="form-container">
			<form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>"
		<label for="year_of_passing">Year of Passing:</label>
		<select name="year_of_passing" id="year_of_passing">
			<option value="" disabled selected>--Select Database--</option>
            <option value="yop2022">Year of Passing :- 2022</option>
            <option value="yop2021">Year of Passing :- 2021</option>
            <option value="yop2020">Year of Passing :- 2020</option>
            <option value="yop2019">Year of Passing :- 2019</option>
            <option value="yop2018">Year of Passing :- 2018</option>
            <option value="yop2017">Year of Passing :- 2017</option>
            <option value="yop2016">Year of Passing :- 2016</option>
            <option value="yop2015">Year of Passing :- 2015</option>
            <option value="yop2014">Year of Passing :- 2014</option>
            <option value="yop2013">Year of Passing :- 2013</option>
            <option value="yop2012">Year of Passing :- 2012</option>
			<option value="yop2011">Year of Passing :- 2011</option>
			<option value="yop2010">Year of Passing :- 2010</option>
		</select>

		<div id="cin_fields">
			<label for="cin">CIN:</label>
			<input type="text" name="cin" id="cin" placeholder="XX-XXX-X-XX-XXXX" autocomplete="off" required>
			<span id="cin_error" style="color: red;"></span>
		</div>

		<button type="submit">Check if CIN exists and Placement Status</button>
		<div id="result"></div>
	</form>
	<script>
		document.getElementById("year_of_passing").addEventListener("change", function() {
			if (this.value) {
				document.getElementById("cin_fields").style.display = "block";
			} else {
				document.getElementById("cin_fields").style.display = "none";
			}
		});

		document.querySelector("form").addEventListener("submit", function(event) {
			const cinPattern = /^[0-9]{2}-[0-9]{3}-[0-9]{1}-[0-9]{2}-[0-9]{4}$/;
			const cinInput = document.getElementById("cin");
			const cinError = document.getElementById("cin_error");

			if (cinInput.value && !cinPattern.test(cinInput.value)) {
				event.preventDefault();
				cinError.textContent = "Please enter a valid CIN.";
			}
		});
	</script>
	</div>
	</form>
	<script>
		document.getElementById("show_cin_fields").addEventListener("click", function() {
			document.getElementById("cin_fields").style.display = "block";
		});
	</script>
		</div>
</body>
</html>
<?php
// Check if form submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {

    // Get the form data
    $dbname = $_POST["year_of_passing"];
    $cin = $_POST["cin"];

    // Database connection variables
    $servername = "localhost";
    $username = "root";
    $password = "";

    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }
	echo "<center>";
    // Check if CIN exists in studentinfo table
    $sql = "SELECT * FROM studentinfo WHERE cin='$cin'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        echo "<p>CIN: " . $cin . " exists in the database</p>";

        // CIN exists, check registration status in reginfo table
        $sql = "SELECT * FROM reginfo WHERE CIN='$cin' AND RegStat='Yes'";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            // CIN registered
            echo "<p>CIN: " . $cin . " had registered for placement drive</p>";
            $sql = "SELECT CIN, Company_Name, Package, AppointedRole 
                    FROM placementinfo p 
                    INNER JOIN company c 
                    ON p.Company_ID=c.Company_ID 
                    AND CIN='$cin'";
            $result = $conn->query($sql);
            if ($result->num_rows > 0) {
                // CIN placed
                echo "<h1>Placement Status</h1>";
                echo "<table border='1' cellpadding='4' cellspacing='0'>
                        <tr>
                            <th>CIN</th>
                            <th>Company Name</th>
                            <th>Appointed Role</th>
                            <th>Package</th>
                        </tr>";
                while ($row = $result->fetch_assoc()) {
                    echo "<tr>
                            <td>{$row['CIN']}</td>
                            <td>{$row['Company_Name']}</td>
                            <td>{$row['AppointedRole']}</td>
                            <td>{$row['Package']}</td>
                          </tr>";
                }
                echo "</table><br><br>";
            } else {
                echo "<p>CIN: " . $cin . " is not placed </p>";
            }
        } else {
            // CIN not registered
            echo "<p>CIN: " . $cin . " had not registered for placement drive</p>";
        }
    } else {
        // CIN does not exist
        echo "<p>CIN: " . $cin . " does not exist in the database</p>";
    }
	echo"</center>";

    // Close connection
    $conn->close();
}
?>
