<!DOCTYPE html>
<html lang="en">
<?php $menu = "project"; ?>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>INO | Open Project</title>


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
                        <h1>Open Project</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="index.php">Home</a></li>
                            <li class="breadcrumb-item active">Open Project</li>
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

                        if (isset($_POST['submit'])) { /* ถ้า POST มีการกด Submit ให้ทำส่วนล่าง */

                            $project_date  = $_POST['project_date']; /* ประกาศตัวแปลเก็บค่า  POST ที่รับมาจาก INPUT  */
                            $project_line = $_POST['project_line'];
                            $project_cate = $_POST['project_cate'];
                            $project_sub = $_POST['project_sub'];
                            $project_name = $_POST['project_name'];
                            $project_detail = $_POST['project_detail'];
                            $project_cost = $_POST['project_cost'];
                            $project_staff = $_POST['project_staff'];
                            $project_link = $_POST['project_link'];

                            $project_start = $_POST['project_start'];
                            $project_end = $_POST['project_end'];
                            $project_pay = $_POST['project_pay'];
                            $project_status = $_POST['project_status'];
                            $project_in = $_POST['project_in'];
                            $project_team = $_POST['project_team'];

                            $contact_name = $_POST['contact_name'];
                            $contact_company = $_POST['contact_company'];
                            $contact_position = $_POST['contact_position'];
                            $contact_email = $_POST['contact_email'];
                            $contact_phone = $_POST['contact_phone'];
                            $contact_detail = $_POST['contact_detail'];

                            $sale_name = $_POST['sale_name'];
                            $sale_company = $_POST['sale_company'];
                            $sale_position = $_POST['sale_position'];
                            $sale_email = $_POST['sale_email'];
                            $sale_phone = $_POST['sale_phone'];
                            $sale_detail = $_POST['sale_detail'];


                            // print_r($_POST);


                            $sql =  "INSERT INTO `tb_project` (`project_id`, `project_date`,`project_line`, `project_cate`, `project_sub`, `project_name`, `project_detail`, `project_cost`, `project_staff`,`project_link`, `contact_name`, `contact_company`, `contact_position`, `contact_email`, `contact_phone`,`contact_detail`, `sale_name`, `sale_company`, `sale_position`, `sale_email`, `sale_phone`, `sale_detail`, `project_start`, `project_end`, `project_pay`, `project_status`, `project_in`, `project_team`) 
    VALUES (NULL, '$project_date', '$project_line', '$project_cate', '$project_sub', '$project_name', '$project_detail', '$project_cost', '$project_staff', '$project_link', '$contact_name', '$contact_company', '$contact_position', '$contact_email', '$contact_phone', '$contact_detail', '$sale_name', '$sale_company', '$sale_position', '$sale_email', '$sale_phone', '$sale_detail', '$project_start', '$project_end', '$project_pay', '$project_status', '$project_in', '$project_team')";

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
                        window.location = "project.php";
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
                        window.location = "project_is.php";
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
                            <div class="col-md-6">
                                <div class="card card-primary">
                                    <div class="card-header">
                                        <h3 class="card-title">Project descriptions</h3>
                                    </div>

                                    <form action="#" method="POST" enctype="multipart/form-data">

                                        <div class="card-body">


                                            <div class="form-group">
                                                <label>Project Name</label>
                                                <input type="text" name="project_name" class="form-control" id="exampleInputEmail1" placeholder="" required>
                                                <input type="hidden" name="project_staff" value="<?php echo ($_SESSION['fullname']); ?>" class="form-control" id="exampleInputEmail1" placeholder="" required>
                                                <input type="hidden" name="contact_staff" value="<?php echo ($_SESSION['fullname']); ?>" class="form-control" id="exampleInputEmail1" placeholder="" required>
                                            </div>


                                            <div class="form-group">
                                                <label>Product/Solution</label>
                                                <input type="text" name="project_product" class="form-control" id="exampleInputEmail1" placeholder="" required>
                                            </div>

                                            <div class="form-group">
                                                <label>Brand</label>
                                                <input type="text" name="project_brand" class="form-control" id="exampleInputEmail1" placeholder="" required>
                                            </div>

                                            <div class="form-group">
                                                <label>Brand</label>
                                                <input type="text" name="project_brand" class="form-control" id="exampleInputEmail1" placeholder="" required>
                                            </div>


                                            <div class="row">
                                                <div class="col col-4">
                                                    <div class="form-group">
                                                        <label>Price</label>
                                                        <input type="text" name="project_price" class="form-control" id="price" placeholder="" required>
                                                    </div>

                                                </div>
                                                <div class="col col-4">
                                                    <div class="form-group">
                                                        <label>QTY</label>
                                                        <input type="text" name="project_qty" class="form-control" id="exampleInputEmail1" placeholder="" required>
                                                    </div>
                                                </div>
                                                <div class="col col-4">

                                                </div>
                                            </div>



                                            <div class="row">
                                                <div class="col col-4">
                                                    <div class="form-group">
                                                        <label>Sales No Vat</label>
                                                        <input type="text" name="project_sales_novat" class="form-control" id="salvn" placeholder="" required>
                                                    </div>
                                                </div>

                                                <script type="text/javascript">
                                                    function sum() {
                                                        var txtFirstNumberValue = document.getElementById('txt1').value;
                                                        var txtSecondNumberValue = document.getElementById('txt2').value;
                                                        var txtthdNumberValue = document.getElementById('txt3').value;
                                                        var result =
                                                            parseInt(txtFirstNumberValue) +
                                                            parseInt(txtSecondNumberValue);
                                                        if (!isNaN(result)) {
                                                            document.getElementById('txt3').value = result;
                                                        }
                                                    }
                                                </script>


                                                <div class="col col-4">
                                                    <div class="form-group">
                                                        <label>Sales Vat</label>
                                                        <input type="text" name="project_sales" class="form-control" id="txt1" onkeyup="sum();"  value="" placeholder="" required>
                                                    </div>
                                                </div>
                                                <div class="col col-4">
                                                    <div class="form-group">
                                                        <label>Cost No Vat</label>
                                                        <input type="text" name="project_cost_novat" class="form-control" id="txt2"  onkeyup="sum();" placeholder="" required>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col col-4">
                                                    <div class="form-group">
                                                        <label>Estimated GP (%)</label>
                                                        <input type="text" name="project_es_gp" class="form-control" id="txt3"  placeholder="" required>
                                                    </div>

                                                </div>
                                                <div class="col col-4">
                                                    <div class="form-group">
                                                        <label>GP (%)</label>
                                                        <input type="text" name="project_gp" class="form-control" id="exampleInputEmail1" placeholder="" required>
                                                    </div>
                                                </div>
                                                <div class="col col-4">
                                                    <div class="form-group">
                                                        <label>% Potential</label>
                                                        <input type="text" name="project_pot" class="form-control" id="exampleInputEmail1" placeholder="" required>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label>Estimated Sales</label>
                                                <input type="text" name="project_es_sales" class="form-control" id="exampleInputEmail1" placeholder="" required>
                                            </div>

                                            <!-- textarea -->
                                            <div class="form-group">
                                                <label>Meaning</label>
                                                <textarea class="form-control" name="project_mean" id="project_mean" rows="4" placeholder=""></textarea>
                                            </div>

                                            <!-- textarea -->
                                            <div class="form-group">
                                                <label>Remark</label>
                                                <textarea class="form-control" name="project_remark" id="project_remark" rows="4" placeholder=""></textarea>
                                            </div>
                                        </div>

                                        <div class="card-footer">
                                            Visit <a href="https://getdatepicker.com/5-4/">tempusdominus </a> for more
                                            examples and information about
                                            the plugin.
                                        </div>
                                        <!-- /.card-body -->
                                </div>
                                <!-- /.card -->
                                <!-- /.card -->
                            </div>
                            <!-- /.col (right) -->

                            <!-- /.col (left) -->
                            <div class="col-md-6">


                                <!-- /.col (left) -->
                                <div class="card card-warning">
                                    <div class="card-header">
                                        <h3 class="card-title">Project Perprotise</h3>
                                    </div>
                                    <div class="card-body">

                                        <div class="form-group">
                                            <label>Status Project<span class="text-danger">*</span></label>
                                            <select class="form-control select2" name="project_up_status" required style="width: 100%;">
                                                <option selected="selected">Select</option>
                                                <option>Win</option>
                                                <option>Lost</option>
                                            </select>
                                        </div>
                                        <!-- /.form-group -->

                                        <div class="form-group">
                                            <label>Status<span class="text-danger">*</span></label>
                                            <select class="form-control select2" name="project_status" required style="width: 100%;">
                                                <option selected="selected">Wait Approve</option>
                                                <option>On Process</option>
                                                <option>Complated</option>
                                            </select>
                                        </div>
                                        <!-- /.form-group -->

                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Quarter</label>
                                            <input type="text" name="project_quarter" class="form-control" value="" id="exampleInputEmail1" placeholder="2023/1">
                                        </div>
                                        <!-- /.form-group -->
                                    </div>
                                    <div class="card-footer">
                                        Visit <a href="https://getdatepicker.com/5-4/">tempusdominus </a> for more
                                        examples and information about
                                        the plugin.
                                    </div>
                                    <!-- /.card-body -->
                                </div>
                                <!-- /.card -->

                                <div class="card card-success">
                                    <div class="card-header">
                                        <h3 class="card-title">Customer descriptions</h3>
                                    </div>
                                    <div class="card-body">

                                        <div class="row">
                                            <div class="col col-4">
                                                <div class="form-group">
                                                    <label>Type<span class="text-danger">*</span></label>
                                                    <select class="form-control select2" name="project_status" required style="width: 100%;">
                                                        <option selected="selected">Customer</option>
                                                        <option>Partner</option>
                                                        <option>Staff</option>
                                                        <option>Customer</option>
                                                    </select>
                                                </div>
                                                <!-- /.form-group -->

                                            </div>
                                            <div class="col col-4">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Full Name</label>
                                                    <input type="text" name="contact_fullname" class="form-control" id="exampleInputEmail1" placeholder="">
                                                </div>
                                                <!-- /.form-group -->
                                            </div>
                                            <div class="col col-4">

                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col col-4">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Province</label>
                                                    <input type="text" name="contact_province" class="form-control" id="exampleInputEmail1" placeholder="">
                                                </div>
                                                <!-- /.form-group -->

                                            </div>
                                            <div class="col col-4">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Agency</label>
                                                    <input type="text" name="contact_agency" class="form-control" id="exampleInputEmail1" placeholder="ชื่อหน่วยงาน">
                                                </div>
                                                <!-- /.form-group -->
                                            </div>
                                            <div class="col col-4">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Position</label>
                                                    <input type="text" name="contact_position" class="form-control" id="exampleInputEmail1" placeholder="ตำแหน่ง">
                                                </div>
                                                <!-- /.form-group -->

                                            </div>
                                        </div>

                                        <!-- textarea -->
                                        <div class="form-group">
                                            <label>Address</label>
                                            <textarea class="form-control" name="contact_detail" id="contact_detail" rows="4" placeholder="รายละเอีดยที่อยู่บริษัท(ถ้ามี)....."></textarea>
                                        </div>

                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Phone Number</label>
                                            <div class="input-group">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text"><i class="fas fa-phone"></i></span>
                                                </div>
                                                <input type="text" class="form-control" name="contact_tel" data-inputmask='"mask": "(999) 999-9999"' data-mask>
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
                                                <input type="email" class="form-control" name="contact_email" id="contact_email" placeholder="Email">
                                            </div>
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