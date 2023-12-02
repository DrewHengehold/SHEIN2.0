<?php
$db_conn_str = "(DESCRIPTION = (ADDRESS = (PROTOCOL = TCP)
                                           (HOST = cedar.humboldt.edu)
                                           (PORT = 1521))
                                       (CONNECT_DATA = (SID = STUDENT)))";
        

// Create a database connection
$conn = oci_connect('djh133', 'Yellowstone1313#', $db_conn_str);

if (!$conn) {
    echo("Connection failed");
    exit;
}

?>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">

<head>
    <link rel="stylesheet" href="login.css">
    <title>login</title>
</head>

<body style="background-image: linear-gradient(to bottom right, rgb(223, 235, 234), rgb(190, 252, 228)); background-attachment: fixed;">  
    <div>
        <form action="login.php" method="post" id="loginForm">
            <div class="container">
                <label for="uname"><b>Username</b></label>
                <input type="text" placeholder="Enter Username" name="uname" required>
            
                <label for="psw"><b>Password</b></label>
                <input type="password" placeholder="Enter Password" name="psw" required>
            
                <button class="thisbutton" type="button" id="login">Login</button>
                
                <button onclick = "window.location.href = 'createprofile.html';"class="thisbutton" type="button" id="create">Create Account</button>
            </div>
        </form>
    </div>
</body>
</html>

<?php

if (isset($_POST['uname']) && isset($_POST['psw'])) {
    $username = $_POST['uname'];
    $password = $_POST['psw'];

    // Perform a query to check the credentials
    $query = "SELECT * FROM new_user WHERE username='$username' AND password='$password'";

    if ($result->num_rows == 1) {
        // Authentication successful
        $_SESSION['loggedin'] = true;
        echo "success"; // Send a success response to the JavaScript code
    } else {
        // Authentication failed
        echo "error"; // Send an error response to the JavaScript code
    }
}

?>
