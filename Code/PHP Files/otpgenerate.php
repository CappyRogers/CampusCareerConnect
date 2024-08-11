<?php
session_start();
$cin=$_SESSION["uname"];
$conn = mysqli_connect('localhost', 'root', '', 'admincredentials');
$sql = "SELECT mobile_number FROM logininfo WHERE CIN='$cin' and otp_requires='Yes'";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_assoc($result);
$mobile_number = $row['mobile_number'];

// Generate a random OTP
$otp = mt_rand(1000, 9999);

// Send the OTP using MSG91's API
$auth_key = '393384Tdyn13Eua64207550P1';
$url = 'https://api.msg91.com/api/v5/otp?authkey=' . $auth_key . '&mobile=' . $mobile_number . '&otp=' . $otp;

$response = file_get_contents($url);
$result = json_decode($response, true);

if ($result['type'] == 'success') {
    echo 'OTP sent successfully!';
} else {
    echo 'Failed to send OTP: ' . $result['message'];
}

// Save the OTP in a session variable for verification
$_SESSION['otp'] = $otp;
$_SESSION['mobile_number'] = $mobile_number;
?>
