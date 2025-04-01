

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document | Barangayy Information System</title>
    <link rel = "stylesheet" href = "style_user/user_style_main.css"/>
    <link rel = "stylesheet" href = "style_user/doc_style.css"/>
    <link rel = "stylesheet" href = "style_user/layout_main.css"/>
    <link rel="icon" href="/BIS/favicon/favicon.ico" type="image/x-icon">
</head>
<body>
    <?php
    
        require('../session.php');
        require('select_data_db.php');
        // require('db_data_user.php');
        require('db_data_user.php');

    ?>
    <div class = "sidebar">
    <div class = "logo_content">
                    <div class = "logo">
                    <img src="../../asset/image/logo/6736e31f2c7d1.png" alt="" id = "logo_user">
                        <div class = "logo_name">BARANGAY <span style = "color:#F5E402;" id = "baranagay_name_user">
                        
                     
                         </span>
                
        </div>
        </div>
            <span id = "btn_menu">
            <svg xmlns="http://www.w3.org/2000/svg"  viewBox="0 0 24 24" ;transform: ;msFilter:;><path d="M4 11h12v2H4zm0-5h16v2H4zm0 12h7.235v-2H4z"></path></svg>
            </span>
           <hr><br>
        </div>


            <ul class = "nav_list">
            
                    <li>
                        <a href="user.php" >
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" transform: ;msFilter:;"><path d="M4 13h6a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1H4a1 1 0 0 0-1 1v8a1 1 0 0 0 1 1zm-1 7a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1v-4a1 1 0 0 0-1-1H4a1 1 0 0 0-1 1v4zm10 0a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1v-7a1 1 0 0 0-1-1h-6a1 1 0 0 0-1 1v7zm1-10h6a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1h-6a1 1 0 0 0-1 1v5a1 1 0 0 0 1 1z"></path></svg><span class = "link_name">Dashboard</span></a>
                        <span class = "tooltip">Dashboard</span>
                    </li>

                    <li>
                        <a href="profile.php">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><!--!Font Awesome Free 6.7.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2025 Fonticons, Inc.--><path d="M224 256A128 128 0 1 0 224 0a128 128 0 1 0 0 256zm-45.7 48C79.8 304 0 383.8 0 482.3C0 498.7 13.3 512 29.7 512l388.6 0c16.4 0 29.7-13.3 29.7-29.7C448 383.8 368.2 304 269.7 304l-91.4 0z"/></svg><span class = "link_name">My Profile</span></a>
                        <span class = "tooltip">My Profile</span>
                    </li>
                    <li >
                        <a href="document.php" id = "selected">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><!--!Font Awesome Free 6.6.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M211 7.3C205 1 196-1.4 187.6 .8s-14.9 8.9-17.1 17.3L154.7 80.6l-62-17.5c-8.4-2.4-17.4 0-23.5 6.1s-8.5 15.1-6.1 23.5l17.5 62L18.1 170.6c-8.4 2.1-15 8.7-17.3 17.1S1 205 7.3 211l46.2 45L7.3 301C1 307-1.4 316 .8 324.4s8.9 14.9 17.3 17.1l62.5 15.8-17.5 62c-2.4 8.4 0 17.4 6.1 23.5s15.1 8.5 23.5 6.1l62-17.5 15.8 62.5c2.1 8.4 8.7 15 17.1 17.3s17.3-.2 23.4-6.4l45-46.2 45 46.2c6.1 6.2 15 8.7 23.4 6.4s14.9-8.9 17.1-17.3l15.8-62.5 62 17.5c8.4 2.4 17.4 0 23.5-6.1s8.5-15.1 6.1-23.5l-17.5-62 62.5-15.8c8.4-2.1 15-8.7 17.3-17.1s-.2-17.4-6.4-23.4l-46.2-45 46.2-45c6.2-6.1 8.7-15 6.4-23.4s-8.9-14.9-17.3-17.1l-62.5-15.8 17.5-62c2.4-8.4 0-17.4-6.1-23.5s-15.1-8.5-23.5-6.1l-62 17.5L341.4 18.1c-2.1-8.4-8.7-15-17.1-17.3S307 1 301 7.3L256 53.5 211 7.3z"/></svg><span class = "link_name">Document</span></a>
                        <span class = "tooltip">Document</span>
                    </li>
                   
                    <li >
                        <a href="new_password.php">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><!--!Font Awesome Free 6.7.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2025 Fonticons, Inc.--><path d="M336 352c97.2 0 176-78.8 176-176S433.2 0 336 0S160 78.8 160 176c0 18.7 2.9 36.8 8.3 53.7L7 391c-4.5 4.5-7 10.6-7 17l0 80c0 13.3 10.7 24 24 24l80 0c13.3 0 24-10.7 24-24l0-40 40 0c13.3 0 24-10.7 24-24l0-40 40 0c6.4 0 12.5-2.5 17-7l33.3-33.3c16.9 5.4 35 8.3 53.7 8.3zM376 96a40 40 0 1 1 0 80 40 40 0 1 1 0-80z"/></svg><span class = "link_name">Change Password</span></a>
                        <span class = "tooltip">Change Password</span>
                    </li>
                   

            </ul>
         

        </div>

        <div class = "dashboard_content">
                <div class = "text">
                    <h1>DOCUMENT</h1>
                    <div class = "setting">
                      
                       
                    <div class = "svg">
                            <a href="../logout.php">
                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><!--!Font Awesome Free 6.7.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2025 Fonticons, Inc.--><path d="M288 32c0-17.7-14.3-32-32-32s-32 14.3-32 32l0 224c0 17.7 14.3 32 32 32s32-14.3 32-32l0-224zM143.5 120.6c13.6-11.3 15.4-31.5 4.1-45.1s-31.5-15.4-45.1-4.1C49.7 115.4 16 181.8 16 256c0 132.5 107.5 240 240 240s240-107.5 240-240c0-74.2-33.8-140.6-86.6-184.6c-13.6-11.3-33.8-9.4-45.1 4.1s-9.4 33.8 4.1 45.1c38.9 32.3 63.5 81 63.5 135.4c0 97.2-78.8 176-176 176s-176-78.8-176-176c0-54.4 24.7-103.1 63.5-135.4z"/></svg>
                            </a>
                       
                        </div>
                           
                            
                    </div>
                            


                </div>
             
               
                <div class = "div_content">
                
                <button class = "add_button" id = "add_btn">+ ADD</button>
               
                <div style = "margin-bottom:200px;">

                    <?php 
                        require('table_document.php');
                    ?>
                </div>                  
    
                   <!-- IMPORT FORM -->
                   <div id="modal_document" class="modal_document">
                                <!-- Modal content -->
                                <div class="modal-content_document">
                                <span onclick="this.parentElement.parentElement.style.display='none';" class = "closesss">&times;</span>
                                        <?php include('document_form.php')?>
                                </div>
                   </div>
                            
                           
         
                </div>
            <!-- ------------------------ -->
            </div>
          
         
           
        </div>

     
<!-- -------------------------------------JAVASCRIPT--------------------------------------------- -->
             <!-- SIDEBAR FUNCTION SCRIPT -->
             <script src = "../javascript_folder/sidebar.js"></script>
        
        <script>
                


                let logo_get_user = document.getElementById("logo_get_user").textContent;
                document.getElementById("logo_user").src =  logo_get_user;

                
                
                let baranagy_name_get_user = document.getElementById("baranagay_name_get_user").textContent;
                document.getElementById("baranagay_name_user").innerHTML =  baranagy_name_get_user;


        </script>

        <script src = "documnet.js"></script>
</body>
</html>