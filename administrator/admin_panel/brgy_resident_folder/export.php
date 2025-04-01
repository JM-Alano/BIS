<?php
// Headers for download
header("Content-Type: text/csv");
header("Content-Disposition: attachment; filename=Barangay-Resident-list.csv");

// Open output stream to write the file
$output = fopen('php://output', 'w');

// Column headers for the CSV file
$columns = ["Firstname", "Middlename", "Lastname", "House no.", "Place of birth", "Birthday", "Age", "Civil status", "Gender", "Voter status", "email", "Contact Number", "Occupation", "Citezenship" , "Sitio Pook"];
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
$sql = "SELECT firstname, middlename, lastname, house_no, place_of_birth, birthday, age, civil_status, gender, voter_status, email, contact_no, occupation, citizenship, sitio_pook FROM barangay_resident";
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
