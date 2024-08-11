<?php
$dbname = $_POST['database-select'];
$tablename = $_POST['table-select'];
session_start();
$_SESSION['dbname'] = $dbname;
$_SESSION['tablename'] = $tablename;
if ($tablename == "studentinfo") {
  // Redirect to the users page
  header('Location:StudentDelete.php');
  exit();
}
if ($tablename == 'placementinfo') {
  // Redirect to the users page
  header('Location:PlacementDelete.php');
  exit();
}
if ($tablename == 'company') {
  // Redirect to the users page
  header('Location:CompanyDelete.php');
  exit();
}
?>