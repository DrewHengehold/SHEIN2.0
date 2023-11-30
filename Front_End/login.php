<?php




$db_conn_str = "(DESCRIPTION = (ADDRESS = (PROTOCOL = TCP)
                                           (HOST = cedar.humboldt.edu)
                                           (PORT = 1521))
                                       (CONNECT_DATA = (SID = STUDENT)))";
        
$conn = oci_connect('cedar.humboldt.edu', '', $db_conn_str);

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