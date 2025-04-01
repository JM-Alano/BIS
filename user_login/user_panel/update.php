<?php
 require('../../database/conn_db.php');
    if(isset($_POST['save_Changes'])){
        $user_id = trim($_POST["user_id"]);

        $firstname = trim($_POST["firstname"]);
        $middlename = trim($_POST["middlename"]);
        $lastname = trim($_POST["lastname"]);

        $age = trim($_POST["age"]);
        $birthday = trim($_POST["birthday"]);
        $gender = trim($_POST["gender"]);
        
        $contact_no = trim($_POST["contact_no"]);
        $house_no = trim($_POST["house_no"]);
        $sitio_pook = trim($_POST["sitio_pook"]);

        $fileName = $_FILES["image"]["name"];
        $fileSize =$_FILES["image"]["size"];
        $tmpName = $_FILES["image"]["tmp_name"];

        $validImageExtension =  ['jpg', 'jpeg', 'png'];
        $imageExtension = explode('.', $fileName);
        $imageExtension = strtolower(end($imageExtension));

        
        if($_FILES["image"]["error"] == 4){
            // SQL query with INNER JOIN for UPDATE
                $sqls = "UPDATE user_account
                SET firstname = '$firstname' , middlename = '$middlename' ,
                lastname = '$lastname' , age = '$age' , birthday = '$birthday' 
            , gender = '$gender' , contact_no = '$contact_no' , house_no = '$house_no' ,
            sitio_pook = '$sitio_pook'
                WHERE user_id = $user_id";


            // Execute the query
            if (mysqli_query($conn, $sqls)) {

            echo"
            <script> 
                window.location.href = 'loading.php';

            </script> ";

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
              echo "<script>window.location.href = '/BIS/user_login/user_panel/profile.php';</script>";

            }else if($fileSize > 1000000){
              echo "<script>alert('Image Size Is too Large')</script>";
              echo "<script>window.location.href = '/BIS/user_login/user_panel/profile.php';</script>";
            }else{
              $newImageName = uniqid();
              $newImageName .= '.' . $imageExtension;
  
              move_uploaded_file($tmpName, '../../asset/image/user_profile/'. $newImageName );

              $sqls = "UPDATE user_account
              SET firstname = '$firstname' , middlename = '$middlename' ,
              lastname = '$lastname' , age = '$age' , birthday = '$birthday' 
          , gender = '$gender' , contact_no = '$contact_no' , house_no = '$house_no' ,
          sitio_pook = '$sitio_pook' ,profile='$newImageName'

              WHERE user_id = $user_id";

              if (mysqli_query($conn, $sqls)) {
            
                echo "<script>window.location.href = 'loading.php';</script>";
               
            } else {
                echo "Error updating record: " . mysqli_error($conn);
            }
            
            mysqli_close($conn);
            }

            }







    


}


?>