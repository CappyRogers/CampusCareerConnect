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

    // Close connection
    $conn->close();
}
?>