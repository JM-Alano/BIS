<?php
require("../../database/conn_db.php");

// Get and sanitize the search input to avoid SQL injection
$input = isset($_GET['input']) ? $conn->real_escape_string($_GET['input']) : '';

// Check if there is an input to search
if ($input != '') {
    // SQL query to search for matching records based on the input
    $sql = "SELECT * FROM barangay_request 
            WHERE request_document LIKE '%$input%' 
            OR firstname LIKE '%$input%' 
                OR lastname LIKE '%$input%' 
                OR control_no LIKE '%$input%' 
                OR purpose LIKE '%$input%'
            ORDER BY id DESC";

    $result = $conn->query($sql);

    // Set headers to initiate CSV file download
    header('Content-Type: text/csv');
    header('Content-Disposition: attachment;filename="barangay_cert_export.csv"');

    $output = fopen('php://output', 'w');

    // Write CSV headers
    fputcsv($output, ['Fullname', 'Gender', 'Control No.', 'Purpose', 'Date', 'Status']);

    // If results are found, write them to the CSV
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $fullname = $row['firstname'] . " " . $row['middlename'] . " " . $row['lastname'];
            $gender = $row['gender'];
            $control_no = $row['control_no'];
            $purpose = $row['purpose'];
            $date_request = date('m/d/Y', strtotime($row['date_request']));
            
            $status_map = [
                'No data' => 'No data',
                'Pending' => 'Pending',
                'Processing' => 'Processing',
                'Ready to Pick-up' => 'Ready to Pick-up',
                'Released' => 'Released',
                'Invalid Purpose' => 'Invalid Purpose'
            ];
            
            $status = $status_map[$row['status']] ?? 'Unknown';
            

            // Write each record to CSV
            fputcsv($output, [$fullname, $gender, $control_no, $purpose, $date_request, $status]);
        }
    } else {
        // If no results, indicate it in the CSV file
        fputcsv($output, ['No matching records found.', '', '', '', '', '']);
    }

    // Close the file output and the database connection
    fclose($output);
} else {
    // If no search input provided, you might want to handle this case
    echo "<script>alert('Please enter a search term.');
        window.location.href = '/BIS/administrator/admin_panel/certificate.php';
    </script>";
}

$conn->close();
exit;
?>
