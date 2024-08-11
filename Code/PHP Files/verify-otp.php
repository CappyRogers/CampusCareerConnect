<?php
session_start();
$entered_otp = $_POST['otp'];
$mobile_number = $_SESSION['mobile_number'];
$otp = $_SESSION['otp'];
$auth_key = '393384Tdyn13Eua64207550P1';

if ($entered_otp == $otp) {
    // OTP verification succeeded
    echo 'OTP verification succeeded!';
    // Clear the OTP and mobile number from the session
    unset($_SESSION['otp']);
    unset($_SESSION['mobile_number']);
    // Redirect the user to the protected page
    header('http://localhost/phpmyadmin/');
} else {
    // OTP verification failed
    echo 'OTP verification failed!';
    // Send a new OTP to the user's mobile number
    $url = 'https://api.msg91.com/api/v5/otp/retry?authkey=' . $auth_key . '&mobile=' . $mobile_number;
    $response = file_get_contents($url);
    $result = json_decode($response, true);
    if ($result['type'] == 'success') {
        echo 'New OTP sent successfully!';
    } else {
        echo 'Failed to send new OTP: ' . $result['message'];
    }
}
?>
