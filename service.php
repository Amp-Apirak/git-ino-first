<!DOCTYPE html>
<html lang="en">
<?php $menu = "service"; ?>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>INO | Service</title>

    <!-- highlight -->
    <style>
    .highlight {
        background-color: #FFFF88;
    }
    </style>
    <!-- highlight -->


    <!----------------------------- start header ------------------------------->
    <?php include ("../ino/templated/head.php");?>
    <!----------------------------- end header --------------------------------->

    <!----------------------------- start menu ------------------------------->
    <?php include ("../ino/templated/menu.php");?>
    <!----------------------------- end menu --------------------------------->

    <!----------------------------- Del ------------------------------->
    <?php
        /* การลบข้อมูล */
        if (isset($_GET['id'])) {

            $result = $conn->query("DELETE FROM project INNER JOIN estime  WHERE cat_id=" . $_GET['projecr_id']);

            if ($result) {
                // <!-- sweetalert -->
                echo '<script>
                        setTimeout(function(){
                            swal({
                                title: "Successfully!",
                                text: "Delect Infomation Complatrd.",
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
                                title: "Can Not Successfully!",
                                text: "Type again",
                                type:"warning"
                            }, function(){
                                window.location = "project.php";
                            })
                        },1000);
                    </script>';
            //     echo "<script>alert('ยินดีตอนรับ Admin เข้าสู่ระบบ'); window.location='../index.php'</script>";
            }
        }
        /* การลบข้อมูล */
    ?>
    <!----------------------------- End Del ------------------------------->


    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">

        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>Service Pattern</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="index.php">Home</a></li>
                            <li class="breadcrumb-item active">Service Pattern</li>
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
                                    $cat_scat = "";
                                    $cat_sub = "";
                                    $cat_item = "";
                                    $site = "";


                                    $search_backup = "";
                                    $cat_scat_backup = "";
                                    $cat_sub_backup = "";
                                    $cat_item_backup = "";
                                    $site_backup = "";

                        
                                    $_sql_cat_scat = "SELECT DISTINCT cat_scat FROM category ";
                                    $_sql_cat_sub = "SELECT DISTINCT cat_sub FROM category ";
                                    $_sql_cat_item = "SELECT DISTINCT cat_item  FROM category ";
                                    $_sql_site = "SELECT DISTINCT site  FROM category ";


                                    $query_cat_scat = mysqli_query($conn, $_sql_cat_scat);
                                    $query_cat_sub = mysqli_query($conn, $_sql_cat_sub);
                                    $query_cat_item = mysqli_query($conn, $_sql_cat_item);
                                    $query_site = mysqli_query($conn, $_sql_site);


                                    $_sql = "SELECT * FROM category";
                                    $_where = "";

                                        if (isset($_POST['search'])) {

                                            $search = $_POST['searchservice'];
                                            $cat_scat = $_POST['cat_scat'];
                                            $cat_sub = $_POST['cat_sub'];
                                            $cat_item = $_POST['cat_item'];
                                            $site = $_POST['site'];


                                            $search_backup = $_POST['search_backup'];
                                            $cat_scat_backup = $_POST['cat_scat_backup'];
                                            $cat_sub_backup = $_POST['cat_sub_backup'];
                                            $cat_item_backup = $_POST['cat_item_backup'];
                                            $site_backup = $_POST['site_backup'];


                                        //print_r($search);

                                            if ($search != $search_backup || $cat_scat != $cat_scat_backup || $cat_sub != $cat_sub_backup || $cat_item  != $cat_item_backup 
                                            || $site  != $site_backup  )
                                        
                                            if (!empty($search)) {
                                                $_where = $_where . " WHERE cat_scat LIKE '%$search%' OR cat_sub LIKE '%$search%' OR cat_item LIKE '%$search%'  OR cat_case LIKE '%$search%' OR cat_resovle LIKE '%$search%' OR site LIKE '%$search%' OR problem LIKE '%$search%' OR site LIKE '%$search%'";
                                            }
                                            if ($cat_scat != "") {
                                                if (empty($_where)) {
                                                    $_where = $_where . " WHERE cat_scat = '$cat_scat' ";
                                                } else {
                                                    $_where = $_where . " AND cat_scat = '$cat_scat'";
                                                }
                                            }
                                            if ($cat_sub != "") {
                                                if (empty($_where)) {
                                                    $_where = $_where . " WHERE cat_sub = '$cat_sub' ";
                                                } else {
                                                    $_where = $_where . " AND cat_sub = '$cat_sub'";
                                                }
                                            }
                                            if ($cat_item != "") {
                                                if (empty($_where)) {
                                                    $_where = $_where . " WHERE cat_item = '$cat_item' ";
                                                } else {
                                                    $_where = $_where . " AND  cat_item = '$cat_item'"; 
                                                }
                                            }
                                            if ($site != "") {
                                                if (empty($_where)) {
                                                    $_where = $_where . " WHERE site = '$site' ";
                                                } else {
                                                    $_where = $_where . " AND  site = '$site'"; 
                                                }
                                            }
                                        }
                                        

                                    $query_search = mysqli_query($conn, $_sql .$_where); 

                                 //print_r($query_search);
                                 //print_r($_where);
                                 //print_r($_sql);
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
                                            <form action="service.php" method="POST">
                                                <div class="row">
                                                    <div class="col-sm-3">
                                                        <div class="form-group ">
                                                            <input type="text" class="form-control " id="searchservice" name="searchservice" value="<?php echo $search; ?>" placeholder="ค้นหา...">
                                                            <input type="hidden" class="form-control " id="search_backup" name="search_backup" value="<?php echo $search; ?>">
                                                            <input type="hidden" class="form-control " id="cat_scat_backup" name="cat_scat_backup" value="<?php echo $cat_scat; ?>">
                                                            <input type="hidden" class="form-control " id="cat_sub_backup" name="cat_sub_backup" value="<?php echo $cat_sub; ?>">
                                                            <input type="hidden" class="form-control " id="cat_item_backup" name="cat_item_backup" value="<?php echo $cat_item; ?>">
                                                            <input type="hidden" class="form-control " id="site_backup" name="site_backup" value="<?php echo $site; ?>">
                                                    
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
                                                            <label>Service Category</label>
                                                            <select class="custom-select select2" name="cat_scat">
                                                                <option value="">Select</option>
                                                                <?php while ($r = mysqli_fetch_array($query_cat_scat)) { ?>
                                                                <option value="<?php echo $r["cat_scat"]; ?>"
                                                                    <?php if ($r['cat_scat'] == $cat_scat) : ?>
                                                                    selected="selected" <?php endif; ?>>
                                                                    <?php echo $r["cat_scat"]; ?></option>
                                                                <?php } ?>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-2">
                                                        <div class="form-group">
                                                            <label>Category</label>
                                                            <select class="custom-select select2"
                                                                name="cat_sub">
                                                                <option value="">Select</option>
                                                                <?php while ($rg = mysqli_fetch_array($query_cat_sub)) { ?>
                                                                <option value="<?php echo $rg["cat_sub"]; ?>"
                                                                    <?php if ($rg['cat_sub'] == $cat_sub) : ?>
                                                                    selected="selected" <?php endif; ?>>
                                                                    <?php echo $rg["cat_sub"]; ?></option>
                                                                <?php } ?>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-2">
                                                        <div class="form-group">
                                                            <label>Sub-Category</label>
                                                            <select class="custom-select select2" name="cat_item">
                                                                <option value="">Select</option>
                                                                <?php while ($re = mysqli_fetch_array($query_cat_item)) { ?>
                                                                <option value="<?php echo $re["cat_item"]; ?>"
                                                                    <?php if ($re['cat_item'] == $cat_item) : ?>
                                                                    selected="selected" <?php endif; ?>>
                                                                    <?php echo $re["cat_item"]; ?></option>
                                                                <?php } ?>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-2">
                                                        <div class="form-group">
                                                            <label>Site By</label>
                                                            <select class="custom-select select2" name="site">
                                                                <option value="">Select</option>
                                                                <?php while ($rd = mysqli_fetch_array($query_site)) { ?>
                                                                <option value="<?php echo $rd["site"]; ?>"
                                                                    <?php if ($rd['site'] == $site) : ?>
                                                                    selected="selected" <?php endif; ?>>
                                                                    <?php echo $rd["site"]; ?></option>
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

                        <?php if ($_SESSION["role"] == "Administrator") { ?>
                        <div class="col-md-12 pb-3">
                            <a href="category_add.php" class="btn btn-success btn-sm float-right"> Add <i class=""></i></a>
                        </div><br>
                        <?php } ?>


                        <?php if ($_SESSION["role"] == "Administrator") { ?>
                        <div class="card">
                            <div class="card-header">
                                <div class="container-fluid">
                                    <h3 class="card-title">Service Pattern</h3>
                                </div>
                            </div>

                            <!-- /.card-header -->
                            <div class="card-body">
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">Site Name</th>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">Service</th>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">Category</th>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">Subcat</th>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">Problome</th>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">Case</th>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">Resolve</th>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">Create By</th>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">Create Date</th>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">Action</th>
                                        </tr>
                                    </thead>

                                    <tbody id="myTable">
                                        <?php while ($res_search = mysqli_fetch_array($query_search)) { ?>
                                        <tr>
                                            <td scope="col" class="text-nowrap  " height="" width=""><?php echo $res_search["site"];?> <button type="button" name="<?php echo $res_search["site"]; ?>"class="btn btn-sm btn-outline-info  btncoppy"><small>Copy</small></button></td>
                                            <td scope="col" class="text-nowrap text-center " height="" width=""><a href="#?id=<?php echo $res_search["cat_id"]; ?>"><?php echo $res_search["cat_scat"]; ?></a> <button type="button" name="<?php echo $res_search["cat_scat"]; ?>"class="btn btn-outline-info btn-sm btncoppy"><small>Copy</small></button></td>
                                            <td scope="col" class="text-nowrap text-center " height="" width=""><?php echo $res_search["cat_sub"];?> <button type="button" name="<?php echo $res_search["cat_sub"]; ?>"class="btn btn-outline-info btn-sm btncoppy"><small>Copy</small></button></td>
                                            <td scope="col" class="text-nowrap text-center " height="" width=""><?php echo $res_search["cat_item"];?> <button type="button" name="<?php echo $res_search["cat_item"]; ?>"class="btn btn-outline-info btn-sm btncoppy"><small>Copy</small></button></td>
                                            <td scope="col" class="text-nowrap  " height="" width=""><?php echo $res_search["problem"];?> <button type="button" name="<?php echo $res_search["problem"]; ?>"class="btn btn-outline-info btn-sm btncoppy"><small>Copy</small></button></td>
                                            <td scope="col" class="text-nowrap  " height="" width=""><?php echo $res_search["cat_case"]; ?> <button type="button" name="<?php echo $res_search["cat_case"]; ?>"class="btn btn-outline-info btn-sm btncoppy"><small>Copy</small></button></td>
                                            <td scope="col" class="text-nowrap  " height="" width=""><?php echo $res_search["cat_resovle"]; ?> <button type="button" name="<?php echo $res_search["cat_resovle"]; ?>"class="btn btn-outline-info btn-sm btncoppy"><small>Copy</small></button></td>
                                            <td scope="col" class="text-nowrap  " height="" width=""><?php echo $res_search["cate_staff"]; ?> </td>
                                            <td scope="col" class="text-nowrap  " height="" width=""><?php echo $res_search["cate_crt"]; ?></td>

                                            <td>
                                                <a href="service_copy.php?id=<?php echo $res_search["cat_id"]; ?>" class="btn btn-success btn-sm "><i class="fas fa-copy"></i></a>
                                                <a href="service_edit.php" class="btn btn-info btn-sm " data-toggle="modal" data-target="#modal-lg"><i class="fas fa-pencil-alt"></i></a>
                                                <a href="service.php?id=" class="btn btn-danger btn-sm swalDefaultSuccess"><i class="fas fa-trash"></i></a>
                                            </td>
                                        </tr>
                                        <?php } ?>
                                    </tbody>

                                    <tfoot>
                                        <tr>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">Site Name</th>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">Service</th>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">Category</th>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">Subcat</th>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">Problome</th>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">Case</th>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">Resolve</th>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">Create By</th>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">Create Date</th>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">Action</th>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                            <!-- /.card-body -->
                        </div>
                        <!-- /.card -->


                        <!-------------------------------- User Role ---------------------------------------------->
                        <?php }else{ ?>

                        <div class="card">
                            <div class="card-header">
                                <div class="container-fluid">
                                    <h3 class="card-title">Service Pattern</h3>
                                </div>
                            </div>

                            <!-- /.card-header -->
                            <div class="card-body">
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">ProjectName</th>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">Product/Solution</th>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">Brand</th>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">Remark</th>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">UpdateStatus</th>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">Quarter</th>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">status</th>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">Customer</th>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">Contact Phone</th>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">Contact Email</th>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">Company</th>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">Address</th>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">Createdate</th>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">Creater</th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                        <?php while ($res_search = mysqli_fetch_array($query_search)) { ?>
                                        <tr id="myTable">
                                            <td scope="col" class="text-nowrap  " height="" width=""><?php echo $res_search["site"]; ?></td>
                                            <td scope="col" class="text-nowrap  " height="" width=""><?php echo $res_search["project_product"]; ?></td>
                                            <td scope="col" class="text-nowrap  " height="" width=""><?php echo $res_search["project_brand"];?></td>
                                            <td scope="col" class="text-nowrap  " height="" width=""><?php echo $res_search["project_remark"]; ?></td>
                                            <td scope="col" class="text-nowrap  " height="" width=""><?php echo $res_search["project_up_status"]; ?></td>
                                            <td scope="col" class="text-nowrap text-center " height="" width=""><?php echo $res_search["project_quarter"]; ?></td>
                                            <td scope="col" class="text-nowrap  " height="" width=""><?php echo $res_search["project_status"]; ?></td>
                                            <td scope="col" class="text-nowrap  " height="" width=""><?php echo $res_search["contact_fullname"]; ?></td>
                                            <td scope="col" class="text-nowrap  " height="" width=""><?php echo $res_search["contact_tel"]; ?></td>
                                            <td scope="col" class="text-nowrap  " height="" width=""><?php echo $res_search["contact_email"]; ?></td>
                                            <td scope="col" class="text-nowrap  " height="" width=""><?php echo $res_search["contact_company"]; ?></td>
                                            <td scope="col" class="text-nowrap  " height="" width=""><?php echo $res_search["contact_detail"]; ?></td>
                                            <td scope="col" class="text-nowrap  " height="" width=""><?php echo $res_search["project_crt"]; ?></td>
                                            <td scope="col" class="text-nowrap  " height="" width=""><?php echo $res_search["project_staff"]; ?></td>
                                        </tr>
                                        <?php } ?>

                                    </tbody>

                                    <tfoot>
                                        <tr>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">ProjectName</th>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">Product/Solution</th>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">Brand</th>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">Remark</th>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">UpdateStatus</th>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">Quarter</th>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">status</th>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">Customer</th>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">Contact Phone</th>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">Contact Email</th>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">Company</th>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">Address</th>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">Createdate</th>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">Creater</th>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                            <!-- /.card-body -->
                        </div>
                        <?php } ?>

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
    //<!-- Fillter -->
    $(document).ready(function() {
        $("#myInput").on("keyup", function() {
            var value = $(this).val().toLowerCase();
            $("#myTable tr").filter(function() {
                $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
            });
        });
        // <!-- Fillter -->
        // <!-- Copy -->
        $(document).on('click', '.btncoppy', function() {
            var copyText = $(this).attr("name");
            console.log(copyText);
            var el = $('<input style="position: absolute; bottom: -120%" type="text" value="' +
                copyText + '"/>').appendTo('body');
            el[0].select();
            document.execCommand("copy");
            el.remove();
        });
    });

    
    $("#myTable tr").highlight("<?php echo $search;?>");
    </script>
    <!-- highlight -->




    <!----------------------------- start Modal Add user ------------------------------->
    <div class="modal fade" id="editbtn">
        <div class="modal-dialog editbtn">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Add User</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="project_add.php" method="POST" enctype="multipart/form-data">
                        <div class="card-body">
                            <div class="form-group">
                                <label for="fullname">Full Name<span class="text-danger">*</span></label>
                                <input type="text" name="fullname" class="form-control" id="fullname" placeholder=""
                                    required>
                            </div>
                            <!-- /.form-group -->

                            <div class="form-group">
                                <label for="site">Position<span class="text-danger">*</span></label>
                                <input type="text" name="site" class="form-control" id="site"
                                    placeholder="" required>
                            </div>
                            <!-- /.form-group -->

                            <div class="form-group">
                                <label>Team<span class="text-danger">*</span></label>
                                <select class="form-control select2" name="project_product" required
                                    style="width: 100%;">
                                    <option selected="selected">Select</option>
                                    <option>Innovation</option>
                                    <option>Infrastructure</option>
                                    <option>Projecting</option>
                                    <option>Stock</option>
                                    <option>Service Solution</option>
                                    <option>Service bank</option>
                                </select>

                                <input type="hidden" name="user_crt" value="<?php echo $date; ?> <?php echo $time; ?>"
                                    class="form-control datetimepicker-input" data-target="#reservationdate" />
                                <input type="hidden" name="user_staff" class="form-control"
                                    value="<?php echo ($_SESSION['fullname']);?>" placeholder="">

                            </div>
                            <!-- /.form-group -->

                            <div class="form-group">
                                <label>Role<span class="text-danger">*</span></label>
                                <select class="form-control select2" name="project_status" required
                                    style="width: 100%;">
                                    <option selected="selected">Select</option>
                                    <option>Administrator</option>
                                    <option>Engineer</option>
                                    <option>Viewer</option>
                                </select>
                            </div>
                            <!-- /.form-group -->

                            <div class="form-group">
                                <label for="exampleInputEmail1">Phone Number</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fas fa-phone"></i></span>
                                    </div>
                                    <input type="text" class="form-control" name="tel" id="tel"
                                        data-inputmask='"mask": "(999) 999-9999"' data-mask required>
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
                                    <input type="email" class="form-control" name="email" id="email" placeholder="Email"
                                        required>
                                </div>
                            </div>
                            <!-- /.form-group -->

                            <div class="form-group">
                                <label for="exampleInputEmail1">Username</label>
                                <input type="text" name="username" class="form-control" id="exampleInputEmail1"
                                    placeholder="">
                            </div>
                            <!-- /.form-group -->

                            <div class="form-group">
                                <label for="exampleInputEmail1">Password</label>
                                <input type="password" name="password" class="form-control" id="exampleInputEmail1"
                                    placeholder="">
                            </div>
                            <!-- /.form-group -->

                        </div>

                </div>
                <div class="modal-footer justify-content-between">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="submit" name="submit" value="submit" class="btn btn-success">Save</button>
                </div>
                </form>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->
    <!----------------------------- end Modal Add user --------------------------------->