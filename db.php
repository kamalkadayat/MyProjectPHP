<?php

$connection = @mysqli_connect("localhost","root","","hotelms");

$hostname = "localhost";
$username = "root";
$password = "";
$database = "hotelms";

$connection = new mysqli($hostname, $username, $password, $database);

if ($connection->connect_error) {
    die("Connection failed: " . $connection->connect_error);
}

// // Connect to the database
// $connection = new mysqli('localhost', 'root', '', 'hotelms');

// // Check connection
// if ($connection->connect_error) {
//     die("Connection failed: " . $connection->connect_error);
// }
// if ($_SERVER["REQUEST_METHOD"] == "POST") {
//     $username = $_POST["username"];
//     $password = $_POST["password"];

//     // Hash the entered password (use bcrypt for better security)
//     $hashed_password = password_hash($password, PASSWORD_DEFAULT);

//     // Query the database for the user
//     $sql = "SELECT id, email, password FROM user WHERE email = ?";
//     $stmt = $connection->prepare($sql);
//     $stmt = $connection->prepare($sql);

// if ($stmt === false) {
//     die("Prepare failed: " . $mysqli->error);
// }

// $username = "email"; // Replace with the actual username you're searching for

// if (!$stmt->bind_param("s", $username)) {
//     die("Bind failed: " . $stmt->error);
// }

// if (!$stmt->execute()) {
//     die("Execute failed: " . $stmt->error);
// }

// // Now you can fetch the results
//     $stmt->bind_param("s", $db_username);
//     $stmt->execute();
//     $stmt->bind_result($user_id, $db_username, $db_password);
//     $stmt->fetch();
//     $stmt->close();

//     // Verify the entered password against the hashed password from the database
//     if (password_verify($password, $db_password)) {
//         // Successful login - create a session and redirect
//         session_start();
//         $_SESSION["user_id"] = $user_id;
//         $_SESSION["email"] = $db_username;
//         header("Location: dashboard.php");
//         exit();
//     } else {
//         // Invalid login credentials
//         $error_message = "Invalid username or password.";
//     }
// }
// ?>