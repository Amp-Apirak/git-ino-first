 
 <!-- Start Configrate  -->
<?php
     include("connection/connection.php"); 
?>
<!-- End Configrate  -->

 <!-- เพิ่มข้อมูล -->
 <?php
                        if (isset($_POST['submit'])) { /* ถ้า POST มีการกด Submit ให้ทำส่วนล่าง */
                        $user_crt  = $_POST['user_crt']; /* ประกาศตัวแปลเก็บค่า  POST ที่รับมาจาก INPUT  */
                        $name = $_POST['name'];
                        $position = $_POST['position'];
                        $team = $_POST['team'];
                        $role = $_POST['role'];
                        $email = $_POST['email'];
                        $tel = $_POST['tel'];
                        $company = $_POST['company'];
                        $username = $_POST['username'];
                        $password = sha1($_POST['password']);

                        // print_r($_POST);
                        //check duplicat
                        $sql = "SELECT * From user WHERE username = '$username' OR email = '$email'";
                        //$stmt->bindParam(':username', $username , PDO::PARAM_STR);
                        $result = $conn->query($sql);
                        $num = mysqli_num_rows($result);
                        //ถ้า username ซ้ำ ให้เด้งกลับไปหน้าสมัครสมาชิก ปล.ข้อความใน sweetalert ปรับแต่งได้ตามความเหมาะสม
                        if($num > 0){
                            echo '<script>
                                        setTimeout(function() {
                                        swal({
                                            title: "Username or email ซ้ำ มีผู้ใช้งานอยู่ในระบบแล้ว !! ",  
                                            text: "กรุณาสมัครใหม่อีกครั้ง",
                                            type: "warning"
                                        }, function() {
                                            window.location = "account_is.php"; //หน้าที่ต้องการให้กระโดดไป
                                        });
                                        }, 1000);
                                </script>';
                                    }else{ 
                                            //ถ้า username ไม่ซ้ำ เก็บข้อมูลลงตาราง
                                                //sql insert
                                                $sql = "INSERT INTO `user` (`id`, `user_crt`,`fullname`,
                                                `position`, `team`, `role`, `email`, `tel`,`company`, `username`,
                                                `password`)
                                                VALUES (NULL, '$user_crt', '$fullname', '$position', '$team',
                                                '$role', '$email', '$tel', '$company', '$username', '$password')";

                                                $result = $conn->query($sql);
                                                if($result){
                                                    echo '<script>
                                                        setTimeout(function() {
                                                        swal({
                                                            title: "สมัครสมาชิกสำเร็จ",
                                                            text: "",
                                                            type: "success"
                                                        }, function() {
                                                            window.location = "account.php"; //หน้าที่ต้องการให้กระโดดไป
                                                        });
                                                        }, 1000);
                                                    </script>';
                                                }else{
                                                echo '<script>
                                                        setTimeout(function() {
                                                        swal({
                                                            title: "เกิดข้อผิดพลาด",
                                                            type: "error"
                                                        }, function() {
                                                            window.location = "account_is.php"; //หน้าที่ต้องการให้กระโดดไป
                                                        });
                                                        }, 1000);
                                                    </script>';
                                    }
                                                $conn = null; //close connect db
                                } //else chk dup
                                    
                            } //isset 
                                    //devbanban.com
?>