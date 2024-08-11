<?php
$dbname = $_POST['database-select'];
$tablename = $_POST['table-select'];
session_start();
$_SESSION['dbname'] = $dbname;
$_SESSION['tablename'] = $tablename;
if ($tablename == "studentinfo") {
  // Redirect to the users page
  header('Location:StudentInsert.php');
  exit();
}
if ($tablename == 'courseinfo') {
  // Redirect to the users page
  header('Location:CourseInsert.php');
  exit();
}
if ($tablename == 'placementinfo') {
  // Redirect to the users page
  header('Location:PlacementInsert.php');
  exit();
}
if ($tablename == 'reginfo') {
  // Redirect to the users page
  header('Location:RegInsert.php');
  exit();
}
if ($tablename == 'company') {
  // Redirect to the users page
  header('Location:CompanyInsert.php');
  exit();
}
?>