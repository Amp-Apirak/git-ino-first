<!DOCTYPE html>
<html lang="en">
<?php $menu = "project"; ?>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>INOvation | Project description</title>


    <!----------------------------- start header ------------------------------->
    <?php include("../ino/templated/head.php"); ?>
    <!----------------------------- end header --------------------------------->

    <!----------------------------- start menu ------------------------------->
    <?php include("../ino/templated/menu.php"); ?>
    <!----------------------------- end menu --------------------------------->


    <?php
        /* การลบข้อมูล */
        if (isset($_GET['files_id'])) {

            $result = $conn->query("DELETE FROM tb_files WHERE files_id=" . $_GET['files_id']);

            if ($result) {
                
                    echo '<script>
                            setTimeout(function(){
                                swal({
                                    title: "Save Successfully!",
                                    text: "Thank You . ",
                                    type:"success"
                                }, function(){
                                    window.location = "project_view.php?id='.$_GET['id'].'";
                                })
                            },1000);
                        </script>';
            
                } else {
                
                    echo '<script>
                            setTimeout(function(){
                                swal({
                                    title: "Can Not Save Successfully!",
                                    text: "Checking Your Data",
                                    type:"warning"
                                }, function(){
                                    window.location = "project_view.php?id='.$_GET['id'].'";
                                })
                            },1000);
                        </script>';
            
                }
            }
    /* การลบข้อมูล */
    ?>
    <!----------------------------- start Project description ------------------------------->
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>Project description</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Project description</li>
                        </ol>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>

        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <div class="callout callout-info">
                            <h5><i class="fas fa-info"></i> Note:</h5>
                            This page is a project details page and a project sales budget page for evaluating the
                            status of a job.
                        </div>

                        <!-- /.Get ID From -->
                        <?php
                            if (isset($_GET['id'])) {
                            $_sql = "SELECT * FROM project INNER JOIN contact On project.project_id = contact.project_id WHERE project.project_id=". $_GET['id'];
                            $query_search = mysqli_query($conn, $_sql);
                            // print_r($_sql);
                            // print_r($query_search);
                            while ($res_search = mysqli_fetch_array($query_search)) { 
                                
                        ?>



                        <!-- Main content -->
                        <div class="invoice p-3 mb-3">
                            <!-- title row -->
                            <div class="row">
                                <div class="col-12">
                                    <h4>
                                        <i class="image">
                                            <img src="../ino/img/pit.png" width=“60px” height='50' alt="User Image">
                                            <!-- class="img-circle elevation-2" -->
                                        </i> Point IT
                                        <small class="float-right">Date:
                                            <?php echo $res_search["project_crt"]; ?></small>
                                    </h4>
                                </div>
                                <!-- /.col -->
                            </div>
                            <!-- info row -->
                            <div class="row invoice-info">
                                <div class="col-sm-4 invoice-col">
                                    From
                                    <address>
                                        <strong><?php echo $res_search["project_staff"]; ?></strong><br>
                                        19 ซอย สุภาพงษ์ 1 แยก 6 แขวง หนองบอน เขต ประเวศ <br>
                                        กรุงเทพมหานคร 10250 <br>

                                        Phone: (804) 123-5432<br>
                                        Email: info@pointit.co.th
                                    </address>
                                </div>
                                <!-- /.col -->
                                <div class="col-sm-4 invoice-col">
                                    To
                                    <address>
                                        <strong><?php echo $res_search["contact_fullname"]; ?></strong><br>
                                        <?php echo $res_search["contact_company"]; ?>
                                        <?php echo $res_search["contact_detail"]; ?><br>
                                        <?php echo $res_search["contact_position"]; ?>
                                        <?php echo $res_search["contact_agency"]; ?><br>
                                        Phone: <?php echo $res_search["contact_tel"]; ?><br>
                                        Email: <?php echo $res_search["contact_email"]; ?>
                                    </address>
                                </div>
                                <!-- /.col -->
                                <div class="col-sm-4 invoice-col">
                                    <b>Invoice #007612</b><br>
                                    <br>
                                    <b>Order ID:</b> 4F3S8J<br>
                                    <b>Payment Due:</b> 2/22/2014<br>
                                    <b>Account:</b> 968-34567
                                </div>
                                <!-- /.col -->
                            </div>
                            <!-- /.row -->

                            <!-- Table row -->
                            <div class="row">
                                <div class="col-8 table-responsive">
                                    Pipeline
                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th scope="col" class="text-nowrap  " height="" width="">Price/Unit</th>
                                                <th scope="col" class="text-nowrap  " height="" width="">Sales No Vat</th>
                                                <th scope="col" class="text-nowrap  " height="" width="">Sales Vat</th>
                                                <th scope="col" class="text-nowrap  " height="" width="">Estimated GP</th>
                                                <th scope="col" class="text-nowrap  " height="" width="">% GP</th>
                                                <th scope="col" class="text-nowrap  " height="" width="">% Potential</th>
                                                <th scope="col" class="text-nowrap  " height="" width="">Estimated Sales</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>Call of Duty</td>
                                                <td>455-981-221</td>
                                                <td>El snort testosterone trophy driving gloves handsome</td>
                                                <td>El snort testosterone trophy driving gloves handsome</td>
                                                <td>El snort testosterone trophy driving gloves handsome</td>
                                                <td>El snort testosterone trophy driving gloves handsome</td>

                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- /.col -->
                                <div class="col-4 table-responsive">
                                    Estimated Timeline
                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th>Qty</th>
                                                <th>Month</th>
                                                <th>Cost#</th>
                                                <th>Year</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>Call of Duty</td>
                                                <td>455-981-221</td>
                                                <td>El snort testosterone trophy driving gloves handsome</td>

                                            </tr>
                                        </tbody>
                                    </table>
                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th>total</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- /.col -->
                            </div>
                            <!-- /.row -->

                            <div class="row">
                                <!-- accepted payments column -->
                                <div class="col-6">
                                    <p class="lead">Payment Methods:</p>
                                    <img src="../../dist/img/credit/visa.png" alt="Visa">
                                    <img src="../../dist/img/credit/mastercard.png" alt="Mastercard">
                                    <img src="../../dist/img/credit/american-express.png" alt="American Express">
                                    <img src="../../dist/img/credit/paypal2.png" alt="Paypal">

                                    <p class="text-muted well well-sm shadow-none" style="margin-top: 10px;">
                                        Etsy doostang zoodles disqus groupon greplin oooj voxy zoodles, weebly ning
                                        heekya handango imeem
                                        plugg
                                        dopplr jibjab, movity jajah plickers sifteo edmodo ifttt zimbra.
                                    </p>
                                </div>
                                <!-- /.col -->
                                <div class="col-6">
                                    <p class="lead">Amount Due 2/22/2014</p>

                                    <div class="table-responsive">
                                        <table class="table">
                                            <tr>
                                                <th style="width:50%">Subtotal:</th>
                                                <td>$250.30</td>
                                            </tr>
                                            <tr>
                                                <th>Tax (9.3%)</th>
                                                <td>$10.34</td>
                                            </tr>
                                            <tr>
                                                <th>Shipping:</th>
                                                <td>$5.80</td>
                                            </tr>
                                            <tr>
                                                <th>Total:</th>
                                                <td>$265.24</td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                                <!-- /.col -->
                            </div>
                            <!-- /.row -->

                            <!-- this row will not appear when printing -->
                            <div class="row no-print">
                                <div class="col-12">
                                    <a href="invoice-print.html" rel="noopener" target="_blank"
                                        class="btn btn-default"><i class="fas fa-print"></i> Print</a>
                                    <button type="button" class="btn btn-success float-right"><i
                                            class="far fa-credit-card"></i> Submit
                                        Payment
                                    </button>
                                    <button type="button" class="btn btn-primary float-right"
                                        style="margin-right: 5px;">
                                        <i class="fas fa-download"></i> Generate PDF
                                    </button>
                                </div>
                            </div>
                        </div>
                        <!-- /.invoice -->
                        <?php } ?>
                        <?php } ?>
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </section>
        <!-- /.content -->
    </div>
    <!----------------------------- End Project description ------------------------------->











    <!----------------------------- start menu ------------------------------->
    <?php include("../ino/templated/footer.php"); ?>
    <!----------------------------- end menu --------------------------------->

    <!-- Ekko Lightbox -->
    <script src="../ino/code/plugins/ekko-lightbox/ekko-lightbox.min.js"></script>
    <script src="../ino/code/plugins/filterizr/jquery.filterizr.min.js"></script>

    <script>
    $(function() {
        $(document).on('click', '[data-toggle="lightbox"]', function(event) {
            event.preventDefault();
            $(this).ekkoLightbox({
                alwaysShowClose: true
            });
        });

        $('.filter-container').filterizr({
            gutterPixels: 3
        });
        $('.btn[data-filter]').on('click', function() {
            $('.btn[data-filter]').removeClass('active');
            $(this).addClass('active');
        });
    })
    </script>

    <script src="../ino/code/dist/js/lightbox.min.js"></script>


    <!-- highlight -->
    <script src="code/dist/js/highlight.js"></script>

    <script>
    $("#myTable tr").highlight();
    </script>
    <!-- highlight -->