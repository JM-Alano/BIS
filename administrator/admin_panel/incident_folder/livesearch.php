<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
        
        <?php
            require("../../../database/conn_db.php");

            
            
            if(isset($_POST['input'])){
                
               
                $input = $_POST['input']; 

                $query = "SELECT * FROM barangay_incident WHERE name_involve LIKE '{$input}%' OR id LIKE '{$input}%' OR date LIKE '{$input}%' OR time LIKE '{$input}%' OR address LIKE '{$input}%' OR vehicle LIKE '{$input}%' OR license LIKE '{$input}%' OR plate_no LIKE '{$input}%' OR cause_incident LIKE '{$input}%' OR status LIKE '{$input}%'";

                
                $result = mysqli_query($conn,$query);

                if ($result->num_rows > 0) {?>


                    
            <table style = "margin-top:60px;">
                    <caption>Barangay Incident List</caption>
                    <tr>
                     
                        <th>Names</th>
                        <th>Address</th>
                     
                        <th>Date/Time</th>
                        <th>Vehicle</th>
                        <th>Status</th>
                        <th>Action</th>
                      
                    </tr>
                    <?php
                         while($row = $result->fetch_assoc()) {
                            $id = $row ["id"];
                          
                            $date = $row ["date"];
                            $time = $row ["time"];
                            $name_involve = $row ["name_involve"];

                            $name_involve = $row ["name_involve"];
                            $address = $row ["address"];
                            $vehicle = $row ["vehicle"];
                            
                            $license = $row ["license"];
                            $plate_no = $row ["plate_no"];
                          
                            $status = $row ["status"];

                            $cause_incident = $row ["cause_incident"];

                            ?>
                             <tr class = "table_hover">
                                    <td hidden><?php echo  $date ?></td>
                                    <td hidden><?php echo  $time ?></td>
                                    <td hidden><?php echo  $name_involve ?></td>
                                    <td hidden><?php echo  $address ?></td>
                                    <td hidden><?php echo  $vehicle ?></td>
                                    <td hidden><?php echo   $license  ?></td>
                                    <td hidden><?php echo  $plate_no ?></td>
                                    <td hidden><?php echo  $cause_incident ?></td>
                                    <td hidden><?php echo  $status ?></td>

                                    <td><?php echo  $name_involve ?></td>
                            
                                    <td><?php echo  $address ?></td>
                                    <td><?php echo  $date . " / " .  $time ?></td>
                                    <td><?php echo  $vehicle ?></td>
                                    
                                    <td><?php  $status;

                                        if($status == 1){
                                            echo "<p style='color:red;'>Active</p>";
                                        }elseif($status == 2){
                                            echo "<p style='color:green;'>Settled</p>";
                                        }
                                        elseif($status == 3){
                                            echo "<p style='color:orange;'>Schedule</p>";
                                        }
                                    
                                    ?></td>
                               
                                <td>
                                


                                      <!-- Action Buttons -->
                                <div id = "form_up_del_official">
                                       
                                       <button  id = "view_resident_btn"  class = "view_btn" data-id= <?php echo $row ["id"] ?>><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512"><!--!Font Awesome Free 6.7.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M288 32c-80.8 0-145.5 36.8-192.6 80.6C48.6 156 17.3 208 2.5 243.7c-3.3 7.9-3.3 16.7 0 24.6C17.3 304 48.6 356 95.4 399.4C142.5 443.2 207.2 480 288 480s145.5-36.8 192.6-80.6c46.8-43.5 78.1-95.4 93-131.1c3.3-7.9 3.3-16.7 0-24.6c-14.9-35.7-46.2-87.7-93-131.1C433.5 68.8 368.8 32 288 32zM144 256a144 144 0 1 1 288 0 144 144 0 1 1 -288 0zm144-64c0 35.3-28.7 64-64 64c-7.1 0-13.9-1.2-20.3-3.3c-5.5-1.8-11.9 1.6-11.7 7.4c.3 6.9 1.3 13.8 3.2 20.7c13.7 51.2 66.4 81.6 117.6 67.9s81.6-66.4 67.9-117.6c-11.1-41.5-47.8-69.4-88.6-71.1c-5.8-.2-9.2 6.1-7.4 11.7c2.1 6.4 3.3 13.2 3.3 20.3z"/></svg>
                                       </button>
                                              
                                               
                                          
                                           <button  id = "update_official_btn" class = "update_btn" data-id= <?php echo $row ["id"] ?>><svg xmlns="http://www.w3.org/2000/svg"  viewBox="0 0 512 512"><!--!Font Awesome Free 6.7.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M471.6 21.7c-21.9-21.9-57.3-21.9-79.2 0L362.3 51.7l97.9 97.9 30.1-30.1c21.9-21.9 21.9-57.3 0-79.2L471.6 21.7zm-299.2 220c-6.1 6.1-10.8 13.6-13.5 21.9l-29.6 88.8c-2.9 8.6-.6 18.1 5.8 24.6s15.9 8.7 24.6 5.8l88.8-29.6c8.2-2.7 15.7-7.4 21.9-13.5L437.7 172.3 339.7 74.3 172.4 241.7zM96 64C43 64 0 107 0 160L0 416c0 53 43 96 96 96l256 0c53 0 96-43 96-96l0-96c0-17.7-14.3-32-32-32s-32 14.3-32 32l0 96c0 17.7-14.3 32-32 32L96 448c-17.7 0-32-14.3-32-32l0-256c0-17.7 14.3-32 32-32l96 0c17.7 0 32-14.3 32-32s-14.3-32-32-32L96 64z"/></svg></button>
                                           <button id = "delete_official_btn" class = "delete_btn_blotter" data-id= <?php echo $row ["id"] ?>><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><!--!Font Awesome Free 6.7.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M135.2 17.7L128 32 32 32C14.3 32 0 46.3 0 64S14.3 96 32 96l384 0c17.7 0 32-14.3 32-32s-14.3-32-32-32l-96 0-7.2-14.3C307.4 6.8 296.3 0 284.2 0L163.8 0c-12.1 0-23.2 6.8-28.6 17.7zM416 128L32 128 53.2 467c1.6 25.3 22.6 45 47.9 45l245.8 0c25.3 0 46.3-19.7 47.9-45L416 128z"/></svg></button>
                                       </div>
                                   
                                </td>
                                
                           
                            </tr>
                            

                          
                            <?php
                        
                        } 
                        
                    ?>
               
                
            </table>
             
                                    
       

                    
                    <?php
                    } else {
                        ?>
                            <style>
                                    .Data-not-found h1{
                                        color:rgba(255, 0, 0, 0.37);
                                        position:absolute;
                                        top:300px;
                                        left:25%;
                                        font-size:3.5rem;
                                    }
                            </style>
                            <div class = "Data-not-found">
                                <h1>DATA NOT FOUND</h1>
                            </div>

                        <?php
                       
                    }
                }
                    // -- close connection 
                    mysqli_close($conn);
                    ?>          
        
                     
<!-- MODAL DELETE -->
<div id="delete-modal" class="delete-modal">
    <div class="delete-modal-content">
        <span><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><!--!Font Awesome Free 6.6.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M256 512A256 256 0 1 0 256 0a256 256 0 1 0 0 512zm0-384c13.3 0 24 10.7 24 24l0 112c0 13.3-10.7 24-24 24s-24-10.7-24-24l0-112c0-13.3 10.7-24 24-24zM224 352a32 32 0 1 1 64 0 32 32 0 1 1 -64 0z"/></svg></span>
        <h2>Delete Confirmation</h2>
        <h3>Are you sure you want to delete this record!</h3>
        <div class="div-delete">   
            <button id="confirm-delete" class="btn-delete">Delete</button>
            <button id="cancel-delete" class="btn-delete">Cancel</button>
        </div>
    </div>
</div>

<!-- MODAL UPDATE -->
<div id="edit-modal_update" class="edit-modal_blotter">
    <div class="edit-modal-content_blotter">
        <span onclick="this.parentElement.parentElement.style.display='none';" class="update-close-btn">&times;</span>
        <?php include("update_temp.php");?> 
    </div>
</div>

<!-- MODAL VIEW -->
<div id="view-modal" class="view-modal_blotter">
    <div class="view-modal-content_blotter">
        <span onclick="this.parentElement.parentElement.style.display='none';" class="update-close-btn">&times;</span>
        <?php include('view_temp.php')?> 
    </div>
</div>
        
        
        </body>
        </html>