<?php

    require("../../../database/conn_db.php");
   
    if(isset($_POST['update'])){
        $brgy_name = $_POST['brgy'];
        $municipal = $_POST['municipal'];
        $address = $_POST['address'];
        $phone_no = $_POST['phone'];
        $email = $_POST['email'];
        

        $fileName = $_FILES["image"]["name"];
        $fileSize =$_FILES["image"]["size"];
        $tmpName = $_FILES["image"]["tmp_name"];

        $validImageExtension =  ['jpg', 'jpeg', 'png'];
        $imageExtension = explode('.', $fileName);
        $imageExtension = strtolower(end($imageExtension));

        if($_FILES["image"]["error"] == 4){

          $sql = "UPDATE barangay_information SET barangay_name= '$brgy_name', municipality = '$municipal' , address  = '$address' , email = '$email' , phone_no = '$phone_no' WHERE id=1";

              $result = mysqli_query($conn, $sql);
              if ($result == true) {
                
                  include('loading.php');
                 
                } 
            }else{
              $fileName = $_FILES["image"]["name"];
              $fileSize =$_FILES["image"]["size"];
              $tmpName = $_FILES["image"]["tmp_name"];
    
              $validImageExtension =  ['jpg', 'jpeg', 'png'];
              $imageExtension = explode('.', $fileName);
              $imageExtension = strtolower(end($imageExtension));
    
              if(!in_array($imageExtension, $validImageExtension)){
                echo "
                  <script>alert('Invalid Image Extension ')</script>
                 
                ";
                echo "<script>window.location.href = '/BIS/administrator/admin_panel/brgy_info.php'</script>";
              }else if($fileSize > 1000000){
                echo "<script>alert('Image Size Is too Large')</script>";
                echo "<script>window.location.href = '/BIS/administrator/admin_panel/brgy_info.php'</script>";
              }else{
                $newImageName = uniqid();
                $newImageName .= '.' . $imageExtension;
    
                move_uploaded_file($tmpName, '../../../asset/image/logo/'. $newImageName );
  
                $sql = "UPDATE barangay_information SET barangay_name= '$brgy_name', municipality = '$municipal' , address  = '$address' , email = '$email' , phone_no = '$phone_no' , logo='$newImageName' WHERE id=1";
  
  
                if (mysqli_query($conn, $sql)) {
              
                  include('loading.php');
                 
              } else {
                  echo "Error updating record: " . mysqli_error($conn);
              }
              
              mysqli_close($conn);
              }
  
              }

             
            }
         
    
?>