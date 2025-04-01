<?php
require("../database/conn_db.php");

if ($_SESSION['status'] == 'invalid' || empty($_SESSION['status'])){
    // set default session invalid
    $_SESSION['status'] = 'invalid';
}

if ($_SESSION['status'] == 'valid'){
    header('location: admin_panel/dashboard.php');
}

if (isset($_POST['login'])) {
    $email = trim($_POST['email']);
    $password = trim($_POST['pname']);
  
    if(empty($username) || empty($password)){
        echo "Please Fill up this form ";
        echo "
            <script> 
                document.getElementById('validation').style.display = 'block';
                document.getElementById('pwd').style.outline = '1px rgb(253, 42, 42) solid';
            </script>";
    } else {
        // Use a prepared statement to prevent SQL injection
        $query = "SELECT * FROM Admin_account WHERE password = ? AND email = ?";
        
        // Prepare the SQL statement
        if ($stmt = mysqli_prepare($conn, $query)) {
            // Bind parameters to the prepared statement
            mysqli_stmt_bind_param($stmt, "ss", $password ,  $email);
            
            // Execute the statement
            mysqli_stmt_execute($stmt);
            
            // Get the result
            $result = mysqli_stmt_get_result($stmt);
            
            // Check if a row was returned (valid login)
            if (mysqli_num_rows($result) > 0) {
                $rowValidate = mysqli_fetch_array($result);
                
                $_SESSION['status'] = 'valid';
                $_SESSION['admin_id'] = $rowValidate['user_id'];
                
                header('location: loading.php');
            } else {
                $_SESSION['status'] = 'invalid';
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
