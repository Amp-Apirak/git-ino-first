<!DOCTYPE html>
<html lang="en">
<?php $menu = "document"; ?>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>INO | Add Document</title>


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
                        <h1>Open Document</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="index.php">Home</a></li>
                            <li class="breadcrumb-item active">Open Document</li>
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
                            <div class="col-md-12">
                                <div class="card card-primary">
                                    <div class="card-header">
                                        <h3 class="card-title">Document descriptions</h3>
                                    </div>

                                    <form action="#" method="POST" enctype="multipart/form-data">

                                        <div class="card-body">
                                            <?php
                                                $project_name = "";
                                                $_sql_project_name = "SELECT DISTINCT project_name FROM project";
                                                $query_project_name = mysqli_query($conn, $_sql_project_name);
                                            ?>
                                            
                                            <div class="form-group">
                                                <label>Project name</label>
                                                    <select class="custom-select select2" name="project_name">
                                                        <option selected="selected"></option>
                                                            <?php while ($r = mysqli_fetch_array($query_project_name)) { ?>
                                                                <option value="<?php echo $r["project_name"]; ?>" <?php if ($r['project_name'] == $project_name) : ?> selected="selected" <?php endif; ?>><?php echo $r["project_name"]; ?></option>
                                                             <?php } ?>
                                                    </select>
                                                <input type="hidden" name="project_crt" value="<?php echo $date; ?>" class="form-control datetimepicker-input" data-target="#reservationdate"/>
                                            </div>
                                            <!-- /.form-group -->

                                            <?php
                                                $task_name = "";
                                                $_sql_task_name = "SELECT DISTINCT task_name FROM task_project";
                                                $query_task_name = mysqli_query($conn, $_sql_task_name);
                                            ?>
                                        
                                            <div class="form-group">
                                                <label>Task Project</label>
                                                    <select class="custom-select select2" name="task_name">
                                                        <option selected="selected"></option>
                                                            <?php while ($r = mysqli_fetch_array($query_task_name)) { ?>
                                                                <option value="<?php echo $r["task_name"]; ?>" <?php if ($r['task_name'] == $task_name) : ?> selected="selected" <?php endif; ?>><?php echo $r["task_name"]; ?></option>
                                                             <?php } ?>
                                                    </select>
                                                <input type="hidden" name="project_crt" value="<?php echo $date; ?>" class="form-control datetimepicker-input" data-target="#reservationdate"/>
                                            </div>
                                            <!-- /.form-group -->

                                            <?php
                                                $folder_name = "";
                                                $_sql_folder_name = "SELECT DISTINCT folder_name FROM folder_doc";
                                                $query_folder_name = mysqli_query($conn, $_sql_folder_name);
                                            ?>
                                        
                                            <div class="form-group">
                                                <label>Folder <span class="text-danger">*</span></label>
                                                    <select class="custom-select select2" name="folder_name">
                                                    <option selected="selected"></option>
                                                            <?php while ($r = mysqli_fetch_array($query_folder_name)) { ?>
                                                                <option value="<?php echo $r["folder_name"]; ?>" <?php if ($r['folder_name'] == $folder_name) : ?> selected="selected" <?php endif; ?>><?php echo $r["folder_name"]; ?></option>
                                                             <?php } ?>
                                                    </select>

                                                    <div class="input-group-append"><span class="input-group-text">Upload</span></div>
                                                <input type="hidden" name="doc_crt" value="<?php echo $date; ?>" class="form-control datetimepicker-input" data-target="#reservationdate"/>
                                                <input type="hidden" name="doc_staff" value="<?php echo $date; ?>" class="form-control datetimepicker-input" data-target="#reservationdate"/>
                                            </div>
                                            <!-- /.form-group-->

                                            <div class="form-group">
                                                <label>Type <span class="text-danger">*</span></label>
                                                <select class="form-control select2" name="doc_type" style="width: 100%;">
                                                    <option selected="selected"></option>
                                                    <option>Word</option>
                                                    <option>Excel</option>
                                                    <option>Presentation</option>
                                                    <option>PDF</option>
                                                    <option>Images</option>
                                                    <option>other</option>
                                                </select>
                                            </div>
                                            <!-- /.form-group -->

                                            <div class="form-group">
                                                <label>Status<span class="text-danger">*</span></label>
                                                <select class="form-control select2" name="doc_type"  style="width: 100%;">
                                                    <option selected="selected"></option>
                                                    <option>Complated</option>
                                                    <option>Wait Approve</option>
                                                    <option>Process</option>
                                                </select>
                                            </div>
                                            <!-- /.form-group -->

                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Document Name<span class="text-danger">*</span></label>
                                                <input type="text" name="doc_name" class="form-control" id="exampleInputEmail1" placeholder="Document Name" required>
                                            </div>
                                            <!-- /.form-group -->

                                            <!-- textarea -->
                                            <div class="form-group">
                                                <label>Document descriptions</label>
                                                <textarea class="form-control" name="doc_remark" id="project_detail" rows="12" placeholder="อธิบายโครงการ "></textarea>
                                            </div>

                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Link Form Drive</label>
                                                <input type="text" name="doc_link" class="form-control" id="exampleInputEmail1" placeholder="Link Google Drive">
                                            </div>
                                            <!-- /.form-group -->


                                            <div class="form-group">
                                                <label>ผู้ดูแลโครงการ<span class="text-danger">*</span></label>
                                                <select class="form-control select2" name="project_staff" required
                                                    style="width: 100%;">
                                                    <option selected="selected">คุณภัทราอร อมรโอภาคุณ</option>
                                                    <option>คุณภัทราอร อมรโอภาคุณ</option>
                                                    <option>คุณอภิรักษ์ บางพุก</option>
                                                    <option>คุณธีรชาติ ติยพงศ์พัฒนา </option>
                                                    <option>คุณโอฬาร สินธุพันธุ์</option>
                                                    <option>คุณผาณิต เผ่าพันธ์</option>
                                                </select>
                                            </div>
                                            <!-- /.form-group -->

                                            <div class="form-group">
                                                <label>ทีม</label>
                                                <select class="form-control select2" name="project_team" 
                                                    style="width: 100%;" >
                                                    <option selected="selected">Innovation</option>
                                                    <option>Services</option>
                                                    <option>Innovation</option>
                                                    <option>Sale Maketing</option>
                                                    <option>Infrastructure</option>
                                                </select>
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
                                <!-- /.card -->
                            </div>
                            <!-- /.col (right) -->
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