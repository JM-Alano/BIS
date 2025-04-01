<?php
require("../database/conn_db.php");

if ($_SESSION['status_input'] == 'invalid_input' || empty($_SESSION['status_input'])){
    // set default session invalid
    $_SESSION['status_input'] = 'invalid_input';
}

if ($_SESSION['status_input'] == 'valid_input'){
    header('location: loading.php');
}

if (isset($_POST['user_login'])) {
    $email = trim($_POST['ename']);
    $password = trim($_POST['pname']);
  
    if(empty($username) || empty($password)){
        echo "Please Fill up this form ";
        echo "
            <script> 
                document.getElementById('validation').style.display = 'block';
                document.getElementById('pwd').style.outline = '1px rgb(253, 42, 42) solid';
            </script>";
    } else {
        // Use prepared statements to prevent SQL injection
        $query = "SELECT * FROM user_account WHERE password = ? AND email = ?";

        // Prepare the SQL statement
        if ($stmt = mysqli_prepare($conn, $query)) {
            // Bind the parameters
            mysqli_stmt_bind_param($stmt, "ss", $password, $email);
            
            // Execute the prepared statement
            mysqli_stmt_execute($stmt);
            
            // Get the result
            $result = mysqli_stmt_get_result($stmt);
            
            // Check if a matching record was found
            if (mysqli_num_rows($result) > 0) {
                $rowValidate = mysqli_fetch_array($result);
                
                $_SESSION['status_input'] = 'valid_input';
                $_SESSION['user_id'] = $rowValidate['user_id'];
                
                header('location: loading.php');
            } else {
                $_SESSION['status_input'] = 'invalid_input';
                echo "Invalid Credential do not match our records. ";
                echo "<script>document.getElementById('validation').style.display = 'block'</script>";
            }
            
            // Close the prepared statement
            mysqli_stmt_close($stmt);
        } else {
            // Handle query preparation failure
            echo "Failed to prepare the query.";
        }
    }
}
?>
