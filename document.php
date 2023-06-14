<!DOCTYPE html>
<html lang="en">
<?php $menu = "document"; ?>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>INO | Document</title>


    <!----------------------------- start header ------------------------------->
    <?php include ("../ino/templated/head.php");?>
    <!----------------------------- end header --------------------------------->

    <!----------------------------- start menu ------------------------------->
    <?php include ("../ino/templated/menu.php");?>
    <!----------------------------- end menu --------------------------------->

    <?php
        /* การลบข้อมูล */
        if (isset($_GET['id'])) {

            $result = $conn->query("DELETE FROM doc WHERE doc_id=" . $_GET['id']);

            if ($result) {
                // <!-- sweetalert -->
                echo '<script>
                        setTimeout(function(){
                            swal({
                                title: "Successfully!",
                                text: "Delect Infomation Complatrd.",
                                type:"success"
                            }, function(){
                                window.location = "document.php";
                            })
                        },1000);
                    </script>';
                // echo "<script>alert('ยินดีตอนรับ Admin เข้าสู่ระบบ'); window.location='../index.php'</script>";
            } else {
                // <!-- sweetalert -->
                echo '<script>
                        setTimeout(function(){
                            swal({
                                title: "Can Not Successfully!",
                                text: "Type again",
                                type:"warning"
                            }, function(){
                                window.location = "document.php";
                            })
                        },1000);
                    </script>';
            //     echo "<script>alert('ยินดีตอนรับ Admin เข้าสู่ระบบ'); window.location='../index.php'</script>";
            }
        }
        /* การลบข้อมูล */
    ?>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">

        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>Document Management</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="index.php">Home</a></li>
                            <li class="breadcrumb-item active">Document Management</li>
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
                        <!-- Start ค้นหาและ ดึงข้อมูล -->
                        <?php
                                    $search = "";
                                    $doc_type = "";
                                    $doc_name = "";
                                    $doc_status = "";

                                    $search_backup = "";
                                    $doc_type_backup = "";
                                    $doc_name_backup = "";
                                    $doc_status_backup = "";
                        
                                    $_sql_doc_type = "SELECT DISTINCT doc_type FROM doc";
                                    $_sql_doc_name = "SELECT DISTINCT doc_name FROM doc";
                                    $_sql_doc_status = "SELECT DISTINCT doc_status  FROM doc";

                                    $query_doc_type = mysqli_query($conn, $_sql_doc_type);
                                    $query_doc_name = mysqli_query($conn, $_sql_doc_name);
                                    $query_doc_status = mysqli_query($conn, $_sql_doc_status);

                                    $_sql = "SELECT * FROM doc";
                                    $_where = "";

                                        if (isset($_POST['search'])) {

                                            $search = $_POST['searchservice'];
                                            $doc_type = $_POST['doc_type'];
                                            $doc_name = $_POST['doc_name'];
                                            $doc_status = $_POST['doc_status'];

                                            $search_backup = $_POST['search_backup'];
                                            $doc_type_backup = $_POST['doc_type_backup'];
                                            $doc_name_backup = $_POST['doc_name_backup'];
                                            $doc_status_backup = $_POST['doc_status_backup'];

                                        // print_r($_sqlCount);

                                            if ($search != $search_backup || $doc_type != $doc_type_backup || $doc_name != $doc_name_backup || $doc_status  != $doc_status_backup )
                                        
                                            if (!empty($search)) {
                                                $_where = $_where . " WHERE fullname  LIKE '%$search%' OR doc_type LIKE '%$search%' OR doc_name LIKE '%$search%' 
                                                OR email LIKE '%$search%' OR doc_status LIKE '%$search%' OR company LIKE '%$search%' OR tel LIKE '%$search%' OR username LIKE '%$search%'";
                                            }
                                            if ($doc_type != "") {
                                                if (empty($_where)) {
                                                    $_where = $_where . " WHERE doc_type = '$doc_type' ";
                                                } else {
                                                    $_where = $_where . " AND doc_type = '$doc_type'";
                                                }
                                            }
                                            if ($doc_name != "") {
                                                if (empty($_where)) {
                                                    $_where = $_where . " WHERE doc_name = '$doc_name' ";
                                                } else {
                                                    $_where = $_where . " AND doc_name = '$doc_name'";
                                                }
                                            }
                                            if ($doc_status != "") {
                                                if (empty($_where)) {
                                                    $_where = $_where . " WHERE doc_status = '$doc_status' ";
                                                } else {
                                                    $_where = $_where . " AND  doc_status = '$doc_status'"; 
                                                }
                                            }

                                        }
                                        

                                    $query_search = mysqli_query($conn, $_sql .$_where); 
                                // print_r($query_search);
                                ?>

                                <section class="content">
                                    <div class="row">

                                        <div class="col-md-12">
                                            <div class="card card-outline card-info">
                                                <div class="card-header ">
                                                    <h3 class="card-title font1">
                                                        Search
                                                    </h3>
                                                </div>
                                                <div class="card-body">
                                                    <form action="document.php" method="POST">
                                                        <div class="row">
                                                            <div class="col-sm-3">
                                                                <div class="form-group ">
                                                                    <input type="text" class="form-control " id="searchservice"
                                                                        name="searchservice" value="<?php echo $search; ?>"
                                                                        placeholder="ค้นหา...">
                                                                    <input type="hidden" class="form-control "
                                                                        id="search_backup" name="search_backup"
                                                                        value="<?php echo $search; ?>">
                                                                    <input type="hidden" class="form-control "
                                                                        id="doc_type_backup" name="doc_type_backup"
                                                                        value="<?php echo $doc_type; ?>">
                                                                    <input type="hidden" class="form-control " id="doc_name_backup"
                                                                        name="doc_name_backup" value="<?php echo $doc_name; ?>">
                                                                    <input type="hidden" class="form-control " id="doc_status_backup"
                                                                        name="doc_status_backup" value="<?php echo $doc_status; ?>">
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-3">
                                                                <div class="form-group ">
                                                                    <button type="submit" class="btn btn-primary" id="search"
                                                                        name="search">Search</button>
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-5">
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-sm-2">
                                                                <div class="form-group">
                                                                    <label>Document type</label>
                                                                    <select class="custom-select select2" name="doc_type">
                                                                        <option value="">Select</option>
                                                                        <?php while ($r = mysqli_fetch_array($query_doc_type)) { ?>
                                                                        <option value="<?php echo $r["doc_type"]; ?>"
                                                                            <?php if ($r['doc_type'] == $doc_type) : ?>
                                                                            selected="selected" <?php endif; ?>>
                                                                            <?php echo $r["doc_type"]; ?></option>
                                                                        <?php } ?>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-2">
                                                                <div class="form-group">
                                                                    <label>Document name</label>
                                                                    <select class="custom-select select2" name="doc_name">
                                                                        <option value="">Select</option>
                                                                        <?php while ($rg = mysqli_fetch_array($query_doc_name)) { ?>
                                                                        <option value="<?php echo $rg["doc_name"]; ?>"
                                                                            <?php if ($rg['doc_name'] == $doc_name) : ?>
                                                                            selected="selected" <?php endif; ?>>
                                                                            <?php echo $rg["doc_name"]; ?></option>
                                                                        <?php } ?>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-2">
                                                                <div class="form-group">
                                                                    <label>Status</label>
                                                                    <select class="custom-select select2" name="doc_status">
                                                                        <option value="">Select</option>
                                                                        <?php while ($re = mysqli_fetch_array($query_doc_status)) { ?>
                                                                        <option value="<?php echo $re["doc_status"]; ?>"
                                                                            <?php if ($re['doc_status'] == $doc_status) : ?>
                                                                            selected="selected" <?php endif; ?>>
                                                                            <?php echo $re["doc_status"]; ?></option>
                                                                        <?php } ?>
                                                                    </select>
                                                                </div>
                                                            </div>

                                                        </div>
                                                    </form>
                                                </div>
                                                <div class="card-footer">
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                        </div>

                                </section>

                                <div class="col-md-12 pb-3">
                                    <a href="doc_add.php" class="btn btn-success btn-sm float-right"> Add <i class=""></i></a>
                                </div><br>


                                <div class="card">
                                    <div class="card-header">
                                        <div class="container-fluid">
                                            <h3 class="card-title">Document Management</h3>
                                    </div>
                                </div>

                                <!-- /.card-header -->
                                <div class="card-body">
                                    <table id="example1" class="table table-bordered table-striped">

                                        <thead>
                                            <tr>
                                                <th scope="col" class="text-nowrap text-center " height="" width="">Project</th>
                                                <th scope="col" class="text-nowrap text-center " height="" width="">Task Project</th>
                                                <th scope="col" class="text-nowrap text-center " height="" width="">Folder</th>
                                                <th scope="col" class="text-nowrap text-center " height="" width="">Document type</th>
                                                <th scope="col" class="text-nowrap text-center " height="" width="">Document Name</th>
                                                <th scope="col" class="text-nowrap text-center " height="" width="">Document Detail</th>
                                                <th scope="col" class="text-nowrap text-center " height="" width="">Document status</th>
                                                <th scope="col" class="text-nowrap text-center " height="" width="">Document Link</th>
                                                <th scope="col" class="text-nowrap text-center " height="" width="">Create Date</th>
                                                <th scope="col" class="text-nowrap text-center " height="" width="">Creater</th>
                                                <th scope="col" class="text-nowrap text-center " height="" width="">Action
                                                </th>
                                            </tr>
                                        </thead>

                                        <tbody>
                                            <?php while ($res_search = mysqli_fetch_array($query_search)) { ?>
                                            <tr id="myTable">
                                                <td scope="col" class="text-nowrap  " height="" width=""><?php echo $res_search["project_name"]; ?></td>
                                                <td scope="col" class="text-nowrap  " height="" width=""><?php echo $res_search["task_name"]; ?></td>
                                                <td scope="col" class="text-nowrap  " height="" width=""><?php echo $res_search["folder_name"];?></td>
                                                <td scope="col" class="text-nowrap  " height="" width=""><?php echo $res_search["doc_type"];?></td>
                                                <td scope="col" class="text-nowrap  " height="" width=""><a target ="_blank" href="file/<?php echo $res_search["folder_name"]; ?>/<?php echo $res_search["file_upfile"];?>"><?php echo $res_search["doc_name"];?>  &nbsp;  <i class="nav-icon fa fa-folder-open"></i></a></td>
                                                <td scope="col" class="text-nowrap  " height="" width=""><?php echo $res_search["doc_remark"]; ?></td>
                                                <td scope="col" class="text-nowrap  " height="" width=""><?php echo $res_search["doc_status"]; ?></td>
                                                <td scope="col" class="text-nowrap  " height="" width=""><?php echo $res_search["doc_link"]; ?></td>
                                                <td scope="col" class="text-nowrap  " height="" width=""><?php echo $res_search["doc_crt"]; ?></td>
                                                <td scope="col" class="text-nowrap  " height="" width=""><?php echo $res_search["doc_staff"]; ?></td>
                                                <td>
                                                    <a href="doc_edit.php?id=<?php echo $res_search["doc_id"]; ?>" class="btn btn-info btn-sm "> <i class="fas fa-pencil-alt"></i></a>
                                                    <a href="document.php?id=<?php echo $res_search["doc_id"]; ?>" class="btn btn-danger btn-sm swalDefaultSuccess"><i class="fas fa-trash"></i></a>
                                                </td>
                                            </tr>
                                            <?php } ?>
                                        </tbody>

                                        <tfoot>
                                            <tr>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">Project</th>
                                                <th scope="col" class="text-nowrap text-center " height="" width="">Task Project</th>
                                                <th scope="col" class="text-nowrap text-center " height="" width="">Folder</th>
                                                <th scope="col" class="text-nowrap text-center " height="" width="">Document type</th>
                                                <th scope="col" class="text-nowrap text-center " height="" width="">Document Name</th>
                                                <th scope="col" class="text-nowrap text-center " height="" width="">Document Detail</th>
                                                <th scope="col" class="text-nowrap text-center " height="" width="">Document status</th>
                                                <th scope="col" class="text-nowrap text-center " height="" width="">Document Link</th>
                                                <th scope="col" class="text-nowrap text-center " height="" width="">Create Date</th>
                                                <th scope="col" class="text-nowrap text-center " height="" width="">Creater</th>
                                                <th scope="col" class="text-nowrap text-center " height="" width="">Action
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                                <!-- /.card-body -->
                        </div>
                        <!-- /.card -->
                    </div>
                    <!-- /.col -->
                </div>
                <!-- /.row -->
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->


    <!----------------------------- start menu ------------------------------->
    <?php include ("../ino/templated/footer.php");?>
    <!----------------------------- end menu --------------------------------->

    <!-- highlight -->
    <script src="code/dist/js/highlight.js"></script>

    <script>
    $("#myTable tr").highlight();
    </script>
    <!-- highlight -->



    


