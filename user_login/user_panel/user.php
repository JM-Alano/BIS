

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard | Barangayy Information System</title>
    <link rel = "stylesheet" href = "style_user/user_style_main.css"/>
    <link rel = "stylesheet" href = "style_user/dashboard_style.css"/>
    <link rel = "stylesheet" href = "style_user/layout_main.css"/>
    <link rel="icon" href="/BIS/favicon/favicon.ico" type="image/x-icon">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

</head>
<body>
    <?php
        
        require('../session.php');
        require('select_data_db.php');
        require('db_data_user.php');


    

    ?>
    
    <div class = "sidebar" >
        <div class = "logo_content">
            <div class = "logo">
            <img src="../../asset/image/logo/679b85db30f8c.png" alt="" id = "logo_user">
                <div class = "logo_name">BIS</div>
            </div>
            <span id = "btn_menu">
            <svg xmlns="http://www.w3.org/2000/svg"  viewBox="0 0 24 24" ;transform: ;msFilter:;><path d="M4 11h12v2H4zm0-5h16v2H4zm0 12h7.235v-2H4z"></path></svg>
            </span>
           
        </div>


            <ul class = "nav_list">
            
                    <li>
                        <a href="user.php" id = "selected">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" transform: ;msFilter:;"><path d="M4 13h6a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1H4a1 1 0 0 0-1 1v8a1 1 0 0 0 1 1zm-1 7a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1v-4a1 1 0 0 0-1-1H4a1 1 0 0 0-1 1v4zm10 0a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1v-7a1 1 0 0 0-1-1h-6a1 1 0 0 0-1 1v7zm1-10h6a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1h-6a1 1 0 0 0-1 1v5a1 1 0 0 0 1 1z"></path></svg><span class = "link_name">Dashboard</span></a>
                        <span class = "tooltip">Dashboard</span>
                    </li>

                    <li>
                        <a href="profile.php">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><!--!Font Awesome Free 6.7.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2025 Fonticons, Inc.--><path d="M224 256A128 128 0 1 0 224 0a128 128 0 1 0 0 256zm-45.7 48C79.8 304 0 383.8 0 482.3C0 498.7 13.3 512 29.7 512l388.6 0c16.4 0 29.7-13.3 29.7-29.7C448 383.8 368.2 304 269.7 304l-91.4 0z"/></svg><span class = "link_name">My Profile</span></a>
                        <span class = "tooltip">My Profile</span>
                    </li>
                    <li >
                        <a href="document.php">
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
                    <h1>DASHBOARD</h1>
                    <div class = "setting">
                      
                       
                        <div class = "svg">
                            <a href="../logout.php">
                            <svg  xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><!--!Font Awesome Free 6.7.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2025 Fonticons, Inc.--><path d="M288 32c0-17.7-14.3-32-32-32s-32 14.3-32 32l0 224c0 17.7 14.3 32 32 32s32-14.3 32-32l0-224zM143.5 120.6c13.6-11.3 15.4-31.5 4.1-45.1s-31.5-15.4-45.1-4.1C49.7 115.4 16 181.8 16 256c0 132.5 107.5 240 240 240s240-107.5 240-240c0-74.2-33.8-140.6-86.6-184.6c-13.6-11.3-33.8-9.4-45.1 4.1s-9.4 33.8 4.1 45.1c38.9 32.3 63.5 81 63.5 135.4c0 97.2-78.8 176-176 176s-176-78.8-176-176c0-54.4 24.7-103.1 63.5-135.4z"/></svg>
                            </a>
                       
                        </div>
                           
                            
                    </div>
                            


                </div>
                <div class = "date_today">
                    <span></span>
                        <p><?php
                            $date_today = date("F d, Y / l");
                            echo  $date_today;
                        ?></p>
                </div>
                
                <div class = "div_content">
                            
                    <div class = "dasdboard_profile">
                        <div class = "sub_dashboard_profile">
                            <div class = "item1">
                            <img src="/BIS/asset/image/user_profile/images.png" alt="" id = "profile_user_display">
                            </div>
                            
                            <div class = "item2">
                                <h4 id = "fullname_user_display"></h4><br>
                                <h3 id = "address_user_display" >Address</h3>
                                <h3>Paliparan 2 Dasmariñas City, Cavite</h3><br>
                                <h3 id = "contact_no_user_display">Contact</h3>
                            </div>
                        </div>

                        <div class = "sub2_dashboard_profile">
                         
                            <div class = "item2">
                                
                            </div>
                        </div>
                    </div>

                    <div class = "dashboard_profile2">
                           
                            <div class = "item1">
                            <h2 style = "text-align:center; margin-top:30px; color:#4A9D4f; ">Request Document</h2>
                            <div style = "border:none;"></div>
                            <div>
                                <h4><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512"><!--!Font Awesome Free 6.7.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M0 96l576 0c0-35.3-28.7-64-64-64L64 32C28.7 32 0 60.7 0 96zm0 32L0 416c0 35.3 28.7 64 64 64l448 0c35.3 0 64-28.7 64-64l0-288L0 128zM64 405.3c0-29.5 23.9-53.3 53.3-53.3l117.3 0c29.5 0 53.3 23.9 53.3 53.3c0 5.9-4.8 10.7-10.7 10.7L74.7 416c-5.9 0-10.7-4.8-10.7-10.7zM176 192a64 64 0 1 1 0 128 64 64 0 1 1 0-128zm176 16c0-8.8 7.2-16 16-16l128 0c8.8 0 16 7.2 16 16s-7.2 16-16 16l-128 0c-8.8 0-16-7.2-16-16zm0 64c0-8.8 7.2-16 16-16l128 0c8.8 0 16 7.2 16 16s-7.2 16-16 16l-128 0c-8.8 0-16-7.2-16-16zm0 64c0-8.8 7.2-16 16-16l128 0c8.8 0 16 7.2 16 16s-7.2 16-16 16l-128 0c-8.8 0-16-7.2-16-16z"/></svg>Barangay I.D</h4>
                                <a href="document.php"><button>Proceed</button></a>
                                </div>
                                <div>
                                    <h4><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" transform: ;msFilter:;"><path d="M19.965 8.521C19.988 8.347 20 8.173 20 8c0-2.379-2.143-4.288-4.521-3.965C14.786 2.802 13.466 2 12 2s-2.786.802-3.479 2.035C6.138 3.712 4 5.621 4 8c0 .173.012.347.035.521C2.802 9.215 2 10.535 2 12s.802 2.785 2.035 3.479A3.976 3.976 0 0 0 4 16c0 2.379 2.138 4.283 4.521 3.965C9.214 21.198 10.534 22 12 22s2.786-.802 3.479-2.035C17.857 20.283 20 18.379 20 16c0-.173-.012-.347-.035-.521C21.198 14.785 22 13.465 22 12s-.802-2.785-2.035-3.479zm-9.01 7.895-3.667-3.714 1.424-1.404 2.257 2.286 4.327-4.294 1.408 1.42-5.749 5.706z"></path></svg>
                                    Barangay Certificate</h4>
                                    <a href="document.php"><button>Proceed</button></a>
                                </div>
                                <div> <h4><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" transform: ;msFilter:;"><circle cx="6" cy="4" r="2"></circle><path d="M9 7H3a1 1 0 0 0-1 1v7h2v7h4v-7h2V8a1 1 0 0 0-1-1z"></path><circle cx="17" cy="4" r="2"></circle><path d="M20.21 7.73a1 1 0 0 0-1-.73h-4.5a1 1 0 0 0-1 .73L12 14h2l-1 4h2v4h4v-4h2l-1-4h2z"></path></svg>Barangay Indigency</h4>
                                <a href="document.php"><button>Proceed</button></a>
                                </div>
                              
                             
                                <div>
                                <h4><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" transform: ;msFilter:;"><path d="M2.047 14.667a.992.992 0 0 0 .466.607l1.909 1.104v2.199a1 1 0 0 0 1 1h2.199l1.104 1.91a1.002 1.002 0 0 0 1.366.366L12 20.75l1.91 1.104a1.002 1.002 0 0 0 1.366-.366l1.103-1.909h2.199a1 1 0 0 0 1-1V16.38l1.909-1.104a.999.999 0 0 0 .366-1.366L20.75 12l1.104-1.909a1 1 0 0 0-.366-1.366l-1.909-1.104V5.422a1 1 0 0 0-1-1H16.38l-1.103-1.909a1.004 1.004 0 0 0-.607-.466.994.994 0 0 0-.759.1L12 3.25l-1.909-1.104a.998.998 0 0 0-1.366.365l-1.104 1.91H5.422a1 1 0 0 0-1 1V7.62L2.513 8.725a1.001 1.001 0 0 0-.365 1.366L3.251 12l-1.104 1.909a1.003 1.003 0 0 0-.1.758z"></path></svg>Other Document</h4>
                                <a href="document.php"><button>Proceed</button></a>
                                </div>
                               
                              
                              
                            </div>
                            <div  class = "item2">
                                <div>
                                    <h1>Activity </h1>
                                    <div class = "status">
                                        <h2>Document type : </h2>
                                        <h2><?php  ?>
                                        <?php  $document = $row['request_document']; 
                                         if($document  == true){
                                            echo $document;
                                         }else if (empty($document)){
                                            echo "<h2 style = 'color:#00572060;'>No data</h2>";
                                         }

                                        ?></h2>

                                    </div>
                                    <div class = "status">
                                        <h2>Date Request : </h2>

                                        <h2><?php $date = $row['date_request'];
                                             if($date == true){
                                                echo date('M. d, Y',strtotime($date));
                                             }else if (empty($date)){
                                                echo "<h2 style = 'color:#00572060;'>No data</h2>";
                                             }
                                        ?>
                                         
                                        </h2>

                                    </div>
                                    <div class = "status">
                                        <h2>Purpose : </h2>
                                      

                                        <h2>
                                        <?php  $purpose = $row['purpose']; 
                                         if($purpose == true){
                                            echo $row['purpose'];
                                         }else if (empty($purpose)){
                                            echo "<h2 style = 'color:#00572060;'>No data</h2>";
                                         }

                                        ?></h2>

                                    </div>
                                   
                                    
                                    <div class = "status">
                                        <h2>Status :</h2>
                                        <h2>
                                        <?php
                                            $satus_document =  $row['status'] ;

                                            if ($satus_document == 0){
                                                echo "<h2 style = 'color:#00572060;'>No data</h2>";
                                            }
                                            else if ($satus_document == 1){
                                                echo "<h2 style = 'color:red;'>Pending</h2>";
                                            }
                                            else if ($satus_document == 2){
                                                echo "<h2 style = 'color:orange;'>Processing</h2>";
                                            }
                                            else if ($satus_document == 3){
                                                echo "<h2 style = 'color:blue;'>Ready to Pick-up</h2>";
                                            }
                                            else if ($satus_document == 4){
                                                echo "<h2 style = 'color:#00cc0e;'>Released</h2>";
                                            }
                                            else if ($satus_document == 5){
                                                echo "<p style = 'color:red;'>Invalid Purpose</p>";
                                            }
                                        ?>
                                        </h2>
                                    </div>
                                   
                                   
                                    
                       
                                </div>
                            </div>
                           
                    </div>
                            
                    <footer style = "height:10vh;">

                    </footer>
                          
                </div>
            <!-- ------------------------ -->
            </div>
          
           

     
<!-- -------------------------------------JAVASCRIPT--------------------------------------------- -->
        <!-- LOGOUT AND SIDEBAR FUNCTION SCRIPT -->
        <script src = "../javascript_folder/sidebar.js"></script>

        <!-- ADD ACCOUNT ADMIN  -->
        <script src = "admin_folder/btn_function.js"></script>


    
   
        
        <script>
                
                let fullname_user = document.getElementById("fullname_user").textContent;
                document.getElementById("fullname_user_display").innerHTML =  fullname_user;

                let address_user = document.getElementById("address_user").textContent;
                document.getElementById("address_user_display").innerHTML =  address_user;

                let contact_no_user = document.getElementById("contact_no_user").textContent;
                document.getElementById("contact_no_user_display").innerHTML =  contact_no_user;

                let profile_user = document.getElementById("profile_user").textContent;
                document.getElementById("profile_user_display").src =  profile_user;

                let logo_get_user = document.getElementById("logo_get_user").textContent;
                document.getElementById("logo_user").src =  logo_get_user;



               
        </script>

        
   
</body>
</html>