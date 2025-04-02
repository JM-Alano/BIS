<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Table</title>
    <style>
        tfoot {
            font-weight: bold;
            background-color: #4A9D4f;
            color:white;
        }
        .status-count {
            margin-top: 10px;
            padding: 5px;
            background-color: #f8f9fa;
            border-radius: 4px;
            color:#4A9D4f;
        }
    </style>
</head>
<body>
    <?php 
    $user_id = $_SESSION['user_id']; 
    ?>

    <?php 
    require("../../database/conn_db.php");

    // Get the current page and limit from query parameters, set defaults if not provided
    $page = isset($_GET['page']) ? max(1, (int)$_GET['page']) : 1;
    $limit = isset($_GET['limit']) ? max(1, (int)$_GET['limit']) : 10;
    $offset = ($page - 1) * $limit;

    // Get the total number of records from the correct table
    $countQuery = "SELECT COUNT(*) AS total FROM barangay_request WHERE user_id = $user_id";
    $countResult = $conn->query($countQuery);
    $totalRows = $countResult->fetch_assoc()['total'];
    $totalPages = max(1, ceil($totalRows / $limit));

    // Get status counts
    $statusCounts = [
        'total' => 0,
        'no_data' => 0,
        'pending' => 0,
        'processing' => 0,
        'ready' => 0,
        'released' => 0,
        'invalid' => 0
    ];
    
    $statusQuery = "SELECT status, COUNT(*) as count FROM barangay_request WHERE user_id = $user_id GROUP BY status";
    $statusResult = $conn->query($statusQuery);
    
    if ($statusResult) {
        while ($row = $statusResult->fetch_assoc()) {
            $statusCounts['total'] += $row['count'];
            switch ($row['status']) {
                case 0: $statusCounts['no_data'] = $row['count']; break;
                case 1: $statusCounts['pending'] = $row['count']; break;
                case 2: $statusCounts['processing'] = $row['count']; break;
                case 3: $statusCounts['ready'] = $row['count']; break;
                case 4: $statusCounts['released'] = $row['count']; break;
                case 5: $statusCounts['invalid'] = $row['count']; break;
            }
        }
    }

    // Fetch records for the current page
    $sql = "SELECT * FROM barangay_request WHERE user_id = $user_id ORDER BY id DESC LIMIT $limit OFFSET $offset";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
    ?>

    <table>
        <caption>Request Information</caption>
        <thead>
            <tr>
                <th>Fullname</th>
                <th>Document Type</th>
                <th>Purpose</th>
                <th>Date <br> Requested</th>
                <th>Control No.</th>
                <th>Status</th>
            </tr>
        </thead>
        <tbody>
            <?php
            while ($row = $result->fetch_assoc()) {
                $id = $row['id'];
                $firstname = $row["firstname"];
                $middlename = $row["middlename"];
                $lastname = $row["lastname"];
                $document_type = $row["request_document"];
                $purpose = $row["purpose"];
                $date_requested = $row["date_request"];
                $status = $row["status"];
            ?>
            <tr class="table_hover">
                <td><?php echo $firstname . " " . $middlename . " " . $lastname; ?></td>
                <td><?php echo $document_type; ?></td>
                <td><?php echo $purpose; ?></td>
                <td><?php echo $date_requested; ?></td>
                <td><?php echo $id; ?></td>
                <td>
                    <?php
                    if ($status == 0) {
                        echo "<h4 style='color:#00572060;'>No data</h4>";
                    } else if ($status == 1) {
                        echo "<h4 style='color:red;'>Pending</h4>";
                    } else if ($status == 2) {
                        echo "<h4 style='color:orange;'>Processing</h4>";
                    } else if ($status == 3) {
                        echo "<h4 style='color:blue;'>Ready to Pick-up</h4>";
                    } else if ($status == 4) {
                        echo "<h4 style='color:#00cc0e;'>Released</h4>";
                    } else if ($status == 5) {
                        echo "<p style='color:red;'>Invalid Purpose</p>";
                    }
                    ?>
                </td>
            </tr>
            <?php
            }
            ?>
        </tbody>
        <tfoot>
            <tr>
                <td colspan="6">
                    <div>Total Records: <?php echo $statusCounts['total']; ?></div>
                    <div class="status-count">
                        Status Counts: 
                        No Data (<?php echo $statusCounts['no_data']; ?>) | 
                        Pending (<?php echo $statusCounts['pending']; ?>) | 
                        Processing (<?php echo $statusCounts['processing']; ?>) | 
                        Ready (<?php echo $statusCounts['ready']; ?>) | 
                        Released (<?php echo $statusCounts['released']; ?>) | 
                        Invalid (<?php echo $statusCounts['invalid']; ?>)
                    </div>
                </td>
            </tr>
        </tfoot>
    </table>

    <!-- Pagination Controls -->
    <div class="pagination">
        <?php if ($page > 1): ?>
            <a href="?page=<?php echo $page - 1; ?>&limit=<?php echo $limit; ?>">Previous</a>
        <?php endif; ?>

        <?php for ($i = 1; $i <= $totalPages; $i++): ?>
            <a href="?page=<?php echo $i; ?>&limit=<?php echo $limit; ?>" class="<?php echo $i == $page ? 'active' : ''; ?>">
                <?php echo $i; ?>
            </a>
        <?php endfor; ?>

        <?php if ($page < $totalPages): ?>
            <a href="?page=<?php echo $page + 1; ?>&limit=<?php echo $limit; ?>">Next</a>
        <?php endif; ?>
    </div>

    <?php 
    } else { ?>
        <style>
        .Data-not-found h1 {
            color: rgba(255, 0, 0, 0.37);
            position: absolute;
            top: 300px;
            left: 25%;
            font-size: 3.5rem;
        }
        </style>
        <div class="Data-not-found">
        <h1>DATA NOT FOUND</h1>
        </div>
    <?php
    }

    // Close the connection
    mysqli_close($conn);
    ?>

    <footer style="height:100px;">
    </footer>    
</body>
</html>