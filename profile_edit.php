<!DOCTYPE html>
<html lang="en">
<?php $menu = "Update Profiles"; ?>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>INO | Update Profiles</title>


    <!----------------------------- start header ------------------------------->
    <?php include("../ino/templated/head.php"); ?>
    <!----------------------------- end header --------------------------------->

    <!----------------------------- start menu ------------------------------->
    <?php include("../ino/templated/menu.php"); ?>
    <!----------------------------- end menu --------------------------------->

    <!----------------------------- start Time ------------------------------->
    <?php
    date_default_timezone_set('asia/bangkok');
    $date = date('m/d/Y');
    $time = date("H:i:s", "1359780799");
    ?>
    <!----------------------------- start Time ------------------------------->

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>Update Profiles</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="index.php">Home</a></li>
                            <li class="breadcrumb-item active">Update Profiles</li>
                        </ol>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>



        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">

                        <!-- เพิ่มข้อมูล -->
                        <?php


                        /* แสดงข้อมูล */

                        $rs = $conn->query("SELECT * FROM user WHERE id=" . $_GET['id']);
                        /* ประกาศตัวแปลเก็บค่า เชื่อมต่อฐานข้อมูล อ่าน/เขียนค่าข้อมูล เรียกตารางออกมา โดยมีเงื่อนไข = การรับค่า Get ID มาจาก Form ที่มีการเขึยน form_edit-a.php?id_p=<?=$sr->id_p;?> */
                        $r = $rs->fetch_object();

                        /* แสดงข้อมูล */

                        if (isset($_POST['submit'])) { /* ถ้า POST มีการกด Submit ให้ทำส่วนล่าง */

                            $fullname  = $_POST['fullname'];
                            $position  = $_POST['position'];
                            $tel = $_POST['tel'];
                            $email = $_POST['email'];
                            $username = $_POST['username'];
                            $team = $_POST['team'];

                            // print_r($_POST);


                            $sql =  "UPDATE `user` SET `fullname` = '$fullname', `position` = '$position', `tel` = '$tel', `email` = '$email',`username` = '$username', `team` = '$team' WHERE contact_id=" . $_GET['id'];
                            $result = $conn->query($sql);

                            //  print_r($sql);
                            if ($result) {
                                // <!-- sweetalert -->
                                echo '<script>
                                        setTimeout(function(){
                                            swal({
                                                title: "Save Successfully!",
                                                text: "Thank You . ",
                                                type:"success"
                                            }, function(){
                                                window.location = "profile.php";
                                            })
                                        },1000);
                                    </script>';
                                // echo "<script>alert('ยินดีตอนรับ Admin เข้าสู่ระบบ'); window.location='../index.php'</script>";
                            } else {
                                // <!-- sweetalert -->
                                echo '<script>
                                        setTimeout(function(){
                                            swal({
                                                title: "Can Not Save Successfully!",
                                                text: "Checking Your Data",
                                                type:"warning"
                                            }, function(){
                                                window.location = "profile_edit.php";
                                            })
                                        },1000);
                                    </script>';
                                // echo "<script>alert('ยินดีตอนรับ Admin เข้าสู่ระบบ'); window.location='../index.php'</script>";
                            }
                        }




                        // echo '<pre>';
                        // print_r($_POST);
                        // print_r($_FILES);
                        // echo '</pre>';
                        ?>
                        <!-- เพิ่มข้อมูล -->
                        <div class="row">
                            <!-- /.col (left) -->
                            <div class="col-md-12">
                                <div class="card card-warning">
                                    <div class="card-header">
                                        <h3 class="card-title">Account Descriptions</h3>
                                    </div>
                                    <div class="card-body">

                                        <form action="#" method="POST" enctype="multipart/form-data">

                                            <div class="form-group">
                                                <label for="fullname">Full Name<span class="text-danger">*</span></label>
                                                <input type="text" name="fullname" class="form-control" id="fullname" placeholder="" value="<?= $r->fullname; ?>" required>
                                            </div>
                                            <!-- /.form-group -->

                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Phone Number</label>
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text"><i class="fas fa-phone"></i></span>
                                                    </div>
                                                    <input type="text" class="form-control" name="tel" id="tel" data-inputmask='"mask": "(999) 999-9999"' data-mask value="<?= $r->tel; ?>" required>
                                                </div>
                                                <!-- /.input group -->
                                            </div>

                                            <p>
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Email</label>
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text"><i class="fas fa-envelope"></i></span>
                                                    </div>
                                                    <input type="email" class="form-control" name="email" id="email" placeholder="Email" value="<?= $r->email; ?>" required>
                                                </div>
                                            </div>
                                            <!-- /.form-group -->

                                            <div class="form-group">
                                                <label for="position">Position<span class="text-danger">*</span></label>
                                                <input type="text" name="position" class="form-control" id="position" placeholder="" value="<?= $r->position; ?>" required>
                                            </div>
                                            <!-- /.form-group -->

                                            <div class="form-group">
                                                <label>Team<span class="text-danger">*</span></label>
                                                <select class="form-control select2" name="team" required style="width: 100%;">
                                                    <option value="<?= $r->team; ?>"><?= $r->team; ?></option>
                                                    <option>กรุงเทพมหานคร</option>
                                                    <option>ปทุมธานี</option>
                                                    <option>สมุทรปราการ</option>
                                                    <option>อ่างทอง</option>
                                                    <option>สมุทรสาคร</option>
                                                    <option>สิงห์บุรี</option>
                                                    <option>นนทบุรี</option>
                                                    <option>ภูเก็ต</option>
                                                    <option>สมุทรสงคราม</option>
                                                    <option>นครราชสีมา</option>
                                                    <option>เชียงใหม่</option>
                                                    <option>กาญจนบุรี</option>
                                                    <option>ตาก</option>
                                                    <option>อุบลราชธานี</option>
                                                    <option>สุราษฎร์ธานี</option>
                                                    <option>ชัยภูมิ</option>
                                                    <option>แม่ฮ่องสอน</option>
                                                    <option>เพชรบูรณ์</option>
                                                </select>
                                            </div>
                                            <!-- /.form-group -->

                                            
                                            <div class="form-group">
                                                <label for="username">User Account<span class="text-danger">*</span></label>
                                                <input type="text" name="username" class="form-control" id="username" placeholder="" value="<?= $r->username; ?>" required>
                                            </div>
                                            <!-- /.form-group -->

                                            <!-- Date range -->
                                            <div class="form-group mt-5">
                                                <button type="submit" name="submit" value="submit" class="btn btn-success">Save</button>
                                            </div>
                                            <!-- /.form group -->

                                        </form>

                                    </div>
                                    <div class="card-footer">
                                        Visit <a href="https://getdatepicker.com/5-4/">tempusdominus </a> for more
                                        examples and information about
                                        the plugin.
                                    </div>
                                    <!-- /.card-body -->
                                </div>
                                <!-- /.card -->
                            </div>
                            <!-- /.card -->
                        </div>
                        <!-- /.col (right) -->
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.container-fluid -->
        </section>
        <!-- /.content -->


    </div>
    <!-- /.content-wrapper -->


    <!----------------------------- start menu ------------------------------->
    <?php include("../ino/templated/footer.php"); ?>
    <!----------------------------- end menu --------------------------------->

    <!-- highlight -->
    <script src="code/dist/js/highlight.js"></script>

    <script>
        $("#myTable tr").highlight();
    </script>
    <!-- highlight -->