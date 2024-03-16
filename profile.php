<!DOCTYPE html>
<html lang="en">
<?php $menu = ""; ?>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>INO | Create Account</title>


    <!----------------------------- start header ------------------------------->
    <?php include("../ino/templated/head.php"); ?>
    <!----------------------------- end header --------------------------------->

    <!----------------------------- start menu ------------------------------->
    <?php include("../ino/templated/menu.php"); ?>
    <!----------------------------- end menu --------------------------------->

    <!----------------------------- start Time ------------------------------->
    <?php
    date_default_timezone_set('asia/bangkok');
    $date = date('d/m/Y');
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
                        <h1>Profile Account</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="index.php">Home</a></li>
                            <li class="breadcrumb-item active">Profile</li>
                        </ol>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>

        <?php
            /* แสดงข้อมูล */
            $rs = $conn->query("SELECT * FROM user WHERE id=" . $_SESSION['id']);
            /* ประกาศตัวแปลเก็บค่า เชื่อมต่อฐานข้อมูล อ่าน/เขียนค่าข้อมูล เรียกตารางออกมา โดยมีเงื่อนไข = การรับค่า Get ID มาจาก Form ที่มีการเขึยน form_edit-a.php?id_p=<?=$sr->id_p;?> */
            $r = $rs->fetch_object();
        ?>

        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <div class="row">
                            <div class="col-md-6 mx-auto">
                                <!-- Profile Image -->
                                <div class="card card-primary card-outline">
                                    <div class="card-body box-profile">
                                        <div class="text-center">
                                            <img class="profile-user-img img-fluid img-circle" src="../ino/img/002.png" alt="User profile picture">
                                        </div>

                                        <h3 class="profile-username text-center"><?= $r->fullname; ?></h3>

                                        <p class="text-muted text-center"><?= $r->email; ?></p>

                                        <ul class="list-group list-group-unbordered mb-3">
                                            <li class="list-group-item">
                                                <b>Full Name :</b>&nbsp;&nbsp;&nbsp;<a class="float-right"><?= $r->fullname; ?></a>
                                            </li>
                                            <li class="list-group-item">
                                                <b>Position :</b>&nbsp;&nbsp;&nbsp;<a class="float-right"><?= $r->position; ?></a>
                                            </li>
                                            <li class="list-group-item">
                                                <b>Number :</b> <a class="float-right"><?= $r->tel; ?></a>
                                            </li>
                                            <li class="list-group-item">
                                                <b>Team :</b> <a class="float-right"><?= $r->team; ?></a>
                                            </li>
                                            <li class="list-group-item">
                                                <b>Account Login :</b> <a class="float-right"><?= $r->username; ?></a>
                                            </li>
                                            <li class="list-group-item">
                                                <b>Password :</b> <a class="float-right">**********</a>
                                            </li>
                                        </ul>

                                        <a href="profile_edit.php?id=<?= $r->id; ?>" class="btn btn-primary btn-block"><b>Edit Information</b></a>
                                        <a href="profile_editp.php?id=<?= $r->id; ?>" class="btn btn-danger btn-block"><b>Edit Password</b></a>
                                    </div>
                                    <!-- /.card-body -->
                                </div>
                                <!-- /.card -->

                            </div>
                        </div>
                        <!-- /.row -->
                    </div><!-- /.container-fluid -->
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