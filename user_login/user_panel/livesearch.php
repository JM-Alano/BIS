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
        .pagination {
            margin-top: 20px;
            display: flex;
            justify-content: center;
            gap: 5px;
        }
        .pagination a {
            padding: 5px 10px;
            border: 1px solid #ddd;
            text-decoration: none;
            color: #4A9D4f;
        }
        .pagination a.active {
            background-color: #4A9D4f;
            color: white;
            border: 1px solid #4A9D4f;
        }
        .pagination a:hover:not(.active) {
            background-color: #ddd;
        }
        .limit-selector {
            margin: 20px 0;
            text-align: left;
        }
        .limit-selector select {
            padding: 5px;
            border: 1px solid #4A9D4f;
            border-radius: 4px;
        }
    </style>
</head>
<body>
    <?php
    require("../../database/conn_db.php");
    
    // Get current page and items per page
    $page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
    $limit = isset($_GET['limit']) ? (int)$_GET['limit'] : 10;
    $offset = ($page - 1) * $limit;
    
    $input = $_POST['input']; 
    
    // Get total count of records
    $countQuery = "SELECT COUNT(*) as total FROM barangay_request WHERE id ";
    $countResult = mysqli_query($conn, $countQuery);
    $totalRows = $countResult->fetch_assoc()['total'];
    $totalPages = ceil($totalRows / $limit);
    
    // Get paginated data
    $query = "SELECT * FROM barangay_request WHERE id LIKE '{$input}%' LIKE '{$input}%' OR firstname LIKE '{$input}%' OR lastname LIKE '{$input}%' OR request_document LIKE '{$input}%' LIMIT $limit OFFSET $offset";
    $result = mysqli_query($conn, $query);

    if ($result->num_rows > 0) {
    ?>

    <!-- Limit selector -->
    <div class="limit-selector">
        <form method="get" action="">
            <label for="limit">Items per page:</label>
            <select name="limit" id="limit" onchange="this.form.submit()">
                <option value="5" <?php echo $limit == 5 ? 'selected' : ''; ?>>5</option>
                <option value="10" <?php echo $limit == 10 ? 'selected' : ''; ?>>10</option>
                <option value="20" <?php echo $limit == 20 ? 'selected' : ''; ?>>20</option>
                <option value="50" <?php echo $limit == 50 ? 'selected' : ''; ?>>50</option>
            </select>
            <input type="hidden" name="page" value="1">
        </form>
    </div>

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
                <td colspan="6">Showing <?php echo ($offset + 1) . " to " . min($offset + $limit, $totalRows) . " of " . $totalRows; ?> entries</td>
            </tr>
        </tfoot>
    </table>

    <!-- Pagination Controls -->
    <div class="pagination">
        <?php if ($page > 1): ?>
            <a href="?page=<?php echo $page - 1; ?>&limit=<?php echo $limit; ?>">Previous</a>
        <?php endif; ?>

        <?php 
        // Show page numbers
        $startPage = max(1, $page - 2);
        $endPage = min($totalPages, $page + 2);
        
        if ($startPage > 1) {
            echo '<a href="?page=1&limit='.$limit.'">1</a>';
            if ($startPage > 2) echo '<span>...</span>';
        }
        
        for ($i = $startPage; $i <= $endPage; $i++): ?>
            <a href="?page=<?php echo $i; ?>&limit=<?php echo $limit; ?>" class="<?php echo $i == $page ? 'active' : ''; ?>">
                <?php echo $i; ?>
            </a>
        <?php endfor; 
        
        if ($endPage < $totalPages) {
            if ($endPage < $totalPages - 1) echo '<span>...</span>';
            echo '<a href="?page='.$totalPages.'&limit='.$limit.'">'.$totalPages.'</a>';
        }
        ?>

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