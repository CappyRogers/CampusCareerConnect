<?php
// start session
session_start();

// destroy session
session_destroy();

// redirect user back to login page
header('Location: Login.html');
exit;
?>
