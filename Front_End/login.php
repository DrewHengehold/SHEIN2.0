<?php
session_start();
// Database connection details
$host="127.0.0.1";
$port=3306;
$socket="";
$user="root";
$password="";
$dbname="products";

// Create a database connection
$conn = new mysqli($host, $username, $password, $database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if (isset($_POST['uname']) && isset($_POST['psw'])) {
    $username = $_POST['uname'];
    $password = $_POST['psw'];

    // Perform a query to check the credentials
    $query = "SELECT * FROM users WHERE username='$username' AND password='$password'";
    $result = $conn->query($query);

    if ($result->num_rows == 1) {
        // Authentication successful
        $_SESSION['loggedin'] = true;
        echo "success"; // Send a success response to the JavaScript code
    } else {
        // Authentication failed
        echo "error"; // Send an error response to the JavaScript code
    }
}

$conn->close();