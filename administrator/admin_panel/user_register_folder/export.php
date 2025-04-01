<?php
// Headers for download
header("Content-Type: text/csv");
header("Content-Disposition: attachment; filename=Barangay-User Registered-list.csv");

// Open output stream to write the file
$output = fopen('php://output', 'w');

// Column headers for the CSV file
$columns = ["Firstname", "Middlename", "Lastname", "Username", "Password", "Gender", "Age", "Birthday", "Date Registered", "House No", "Sitio Pook", "Contact No","Profile" ,""];
fputcsv($output, $columns);

// Database connection
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "barangay_information_system";
$port = "3306";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname, $port);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}   

// Query to fetch data from the database
$sql = "SELECT firstname, middlename, lastname, username, password, gender, age, birthday, date_registered , house_no, sitio_pook, contact_no, profile FROM user_account";
$result = mysqli_query($conn, $sql);

// Fetch rows and write to CSV
if (mysqli_num_rows($result) > 0) {
    while ($row = mysqli_fetch_assoc($result)) {
        fputcsv($output, $row); // Write each row of data to the CSV file
    }
}

// Close the database connection
mysqli_close($conn);

// Close the file
fclose($output);
?>
