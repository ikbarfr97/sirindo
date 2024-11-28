<?php
require 'function.php';
require 'cek.php';

//dapatkan id barang
$idbarang = $_GET['id'];

//informasi barang
$get = mysqli_query($conn, "select * from stock where idbarang='$idbarang'");
$fetch = mysqli_fetch_assoc($get);

//set variable
$hub = $fetch['hub'];
$item = $fetch['item'];
$code = $fetch['code'];
$location = $fetch['location'];
$brand = $fetch['brand'];
$stock = $fetch['stock'];
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Detail Barang</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
    <link href="css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
</head>

<body class="sb-nav-fixed">
    <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
        <!-- Navbar Brand-->
        <a class="navbar-brand ps-3" href="barang.php">Ikbar Dashboard</a>
        <!-- Sidebar Toggle-->
        <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i
                class="fas fa-bars"></i></button>
    </nav>
    <div id="layoutSidenav">
        <div id="layoutSidenav_nav">
            <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                <div class="sb-sidenav-menu">
                    <div class="nav">
                        <a class="nav-link" href="barang.php">
                            <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                            Stok Barang
                        </a>
                        <a class="nav-link" href="masuk.php">
                            <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                            Barang Masuk
                        </a>
                        <a class="nav-link" href="keluar.php">
                            <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                            Barang Keluar
                        </a>
                         
                        <a class="nav-link" href="logout.php">
                            Logout
                        </a>
                    </div>
                </div>
            </nav>
        </div>
        <div id="layoutSidenav_content">
            <main>
                <div class="container-fluid">
                    <h1 class="mt-4">Detail Hub</h1>
                    <div class="card mb-4 mt-4">
                        <div class="card-header">
                            <h2><?=$hub;?></h2>
                        </div>
                        <div class="card-body">

                            <div class="row">
                                <div class="col-md-3">Item</div>
                                <div class="col-md-9">: <?=$item;?></div>
                            </div>
                            <div class="row">
                                <div class="col-md-3">Asset Code</div>
                                <div class="col-md-9">: <?=$code;?></div>
                            </div>
                            <div class="row">
                                <div class="col-md-3">Location</div>
                                <div class="col-md-9">: <?=$location;?></div>
                            </div>
                            <div class="row">
                                <div class="col-md-3">Brand</div>
                                <div class="col-md-9">: <?=$brand;?></div>
                            </div>
                            <div class="row">
                                <div class="col-md-3">Jumlah</div>
                                <div class="col-md-9">: <?=$stock;?></div>
                            </div>
                            <hr>

                            <h3>Barang Masuk</h3>
                            <div class="table-responsive">
                                <table class="tables table-bordered" id="barangmasuk" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>Tanggal</th>
                                            <th>Penerima</th>
                                            <th>Quantity Good</th>
                                            <th>Quantity Bad</th>
                                            <th>Quantity Required</th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                        <?php
                                $ambildatamasuk = mysqli_query($conn, "select * from masuk where idbarang='$idbarang'");
                                $i = 1;
                                while($fetch=mysqli_fetch_array($ambildatamasuk)){
                                    $tanggal = $fetch['tanggal'];
                                    $penerima = $fetch['penerima'];
                                    $qty = $fetch['qty'];  
                                    $qtyb = $fetch['qtyb'];  
                                    $qtyr = $fetch['qtyr'];  

                                ?>

                                        <tr>
                                            <td><?=$i++;?></td>
                                            <td><?=$tanggal;?></td>
                                            <td><?=$penerima;?></td>
                                            <td><?=$qty;?></td>
                                            <td><?=$qtyb;?></td>
                                            <td><?=$qtyr;?></td>
                                        </tr>

                                        <?php
                                };
                                ?>

                                    </tbody>
                                </table>

                                <br><br>

                                <h3>Barang Keluar</h3>
                                <div class="table-responsive">
                                    <table class="tables table-bordered" id="barangkeluar" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>No</th>
                                                <th>Tanggal</th>
                                                <th>Penerima</th>
                                                <th>Quantity Move</th>
                                            </tr>
                                        </thead>
                                        <tbody>

                                            <?php
                                $ambildatakeluar = mysqli_query($conn, "select * from keluar where idbarang='$idbarang'");
                                $i = 1;
                                while($fetch=mysqli_fetch_array($ambildatakeluar)){
                                    $tanggal = $fetch['tanggal'];
                                    $penerima = $fetch['penerima'];
                                    $quantity = $fetch['qty'];  

                                ?>

                                            <tr>
                                                <td><?=$i++;?></td>
                                                <td><?=$tanggal;?></td>
                                                <td><?=$penerima;?></td>
                                                <td><?=$quantity;?></td>
                                            </tr>

                                            <?php
                                };
                                ?>

                                        </tbody>
                                    </table>
                                    <br>
                                    <a href="index.php" class="btn btn-info">Kembali</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
            <footer class="py-4 bg-light mt-auto">
                <div class="container-fluid px-4">
                    <div class="d-flex align-items-center justify-content-between small">
                        <div class="text-muted">Copyright &copy; Dashboard 2024</div>
                        <div>
                            <a href="#">Privacy Policy</a>
                            &middot;
                            <a href="#">Terms &amp; Conditions</a>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </div>

    <script>
    $(document).ready(function() {
        $('#mauexport').DataTable({
            dom: 'Bfrtip',
            buttons: [
                'excel', 'pdf', 'print'
            ]
        });
    });
    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous">
    </script>
    <script src="js/scripts.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
    <script src="assets/demo/chart-area-demo.js"></script>
    <script src="assets/demo/chart-bar-demo.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
        crossorigin="anonymous"></script>
    <script src="js/datatables-simple-demo.js"></script>
</body>

<!-- The Modal -->
<div class="modal fade" id="myModal" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title">Tambah Barang</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>

            <!-- Modal body -->
            <form method="post">
                <div class="modal-body">
                    <input type="text" name="hub" placeholder="Nama Hub" class="form-control" required>
                    <br>
                    <input type="text" name="item" placeholder="Item" class="form-control" required>
                    <br>
                    <input type="number" name="stock" placeholder="Stock" class="form-control" required>
                    <br>
                    <button type="submit" class="btn btn-primary" name="addnewbarang">Submit</button>
                </div>
            </form>

        </div>
    </div>
</div>

</html>