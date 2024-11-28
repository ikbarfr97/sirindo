<?php
require 'function.php';
require 'cek.php';
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Barang Masuk</title>
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
        <a class="navbar-brand ps-3" href="barang.php">Inventaris Asset</a>
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
                            Stock Barang
                        </a>
                        <a class="nav-link" href="masuk.php">
                            <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                            Barang Masuk
                        </a>
                        <a class="nav-link" href="keluar.php">
                            <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                            Barang Keluar
                        </a>
                         
                        <a class="nav-link" href="barang_recycle.php">
                            <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                            Recycle Bin Barang
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
                    <h1 class="mt-4">Barang Masuk</h1>
                    <div class="card mb-4">
                        <div class="card-header">
                            <!-- Button to Open the Modal -->
                            <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                data-bs-target="#myModal">
                                Tambah Barang
                            </button>
                            <a href="expmasuk.php" class="btn btn-info">Export Data</a>
                            <br>
                            <div class="row mt-2">
                                <div class="col">
                                    <form method="post" class="form-inline">
                                        <input type="date" name="tgl_mulai" class="form-control">
                                        <input type="date" name="tgl_selesai" class="form-control ml-2">
                                        <button type="submit" name="filter_tgl"
                                            class="btn btn-info ml-2">Filter</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <table id="datatablesSimple">
                                <thead>
                                    <tr>
                                        <th>Tanggal</th>
                                        <th>Hub</th>
                                        <th>Item</th>
                                        <th>Asset Code</th>
                                        <th>Penerima</th>
                                        <th>Quantity Good</th>
                                        <th>Quantity Bad</th>
                                        <th>Quantity Required</th>
                                        <th>Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <?php
                                    if (isset($_POST['filter_tgl'])) {
                                        $mulai = $_POST['tgl_mulai'];
                                        $selesai = $_POST['tgl_selesai'];

                                        if ($mulai != null || $selesai != null) {
                                            $ambilsemuadatastock = mysqli_query($conn, "select * from masuk m, stock s where s.idbarang = m.idbarang and tanggal BETWEEN '$mulai' and DATE_ADD('$selesai', INTERVAL 1 DAY)");
                                        } else {
                                            $ambilsemuadatastock = mysqli_query($conn, "select * from masuk m, stock s where s.idbarang = m.idbarang");
                                        }
                                    } else {
                                        $ambilsemuadatastock = mysqli_query($conn, "select * from masuk m, stock s where s.idbarang = m.idbarang");
                                    }

                                    while ($data = mysqli_fetch_array($ambilsemuadatastock)) {
                                        $idb = $data['idbarang'];
                                        $idm = $data['idmasuk'];
                                        $tanggal = $data['tanggal'];
                                        $hub = $data['hub'];
                                        $item = $data['item'];
                                        $code = $data['code'];
                                        $penerima = $data['penerima'];
                                        $qty = $data['qty'];
                                        $qtyb = $data['qtyb'];
                                        $qtyr = $data['qtyr'];

                                    ?>

                                        <tr>
                                            <td><?= $tanggal; ?></td>
                                            <td><?= $hub; ?></td>
                                            <td><?= $item; ?></td>
                                            <td><?= $code; ?></td>
                                            <td><?= $penerima; ?></td>
                                            <td><?= $qty; ?></td>
                                            <td><?= $qtyb; ?></td>
                                            <td><?= $qtyr; ?></td>
                                            <td>
                                                <button type="button" class="btn btn-warning" data-bs-toggle="modal"
                                                    data-bs-target="#edit<?= $idm; ?>">
                                                    Edit
                                                </button>
                                                <button type="button" class="btn btn-danger" data-bs-toggle="modal"
                                                    data-bs-target="#delete<?= $idm; ?>">
                                                    Delete
                                                </button>
                                            </td>
                                        </tr>

                                        <!-- Edit Modal -->
                                        <div class="modal fade" id="edit<?= $idm; ?>" tabindex="-1">
                                            <div class="modal-dialog">
                                                <div class="modal-content">

                                                    <!-- Modal Header -->
                                                    <div class="modal-header">
                                                        <h4 class="modal-title">Edit Barang</h4>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                            aria-label="Close"></button>
                                                    </div>

                                                    <!-- Modal body -->
                                                    <form method="post">
                                                        <div class="modal-body">
                                                            <input type="text" name="hub" value="<?= $hub; ?>"
                                                                class="form-control" readonly>
                                                            <br>
                                                            <input type="text" name="item" value="<?= $item; ?>"
                                                                class="form-control" readonly>
                                                            <br>
                                                            <input type="text" name="code" value="<?= $code; ?>"
                                                                class="form-control" readonly>
                                                            <br>
                                                            <input type="text" name="penerima" value="<?= $penerima; ?>"
                                                                class="form-control" required>
                                                            <br>
                                                            <input type="hidden" name="idb" value="<?= $idb; ?>">
                                                            <input type="hidden" name="idm" value="<?= $idm; ?>">
                                                            <button type="submit" class="btn btn-primary"
                                                                name="updatebarangmasuk">Submit</button>
                                                        </div>
                                                    </form>

                                                </div>
                                            </div>
                                        </div>

                                        <!-- Delete Modal -->
                                        <div class="modal fade" id="delete<?= $idm; ?>" tabindex="-1">
                                            <div class="modal-dialog">
                                                <div class="modal-content">

                                                    <!-- Modal Header -->
                                                    <div class="modal-header">
                                                        <h4 class="modal-title">Hapus Barang</h4>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                            aria-label="Close"></button>
                                                    </div>

                                                    <!-- Modal body -->
                                                    <form method="post">
                                                        <div class="modal-body">
                                                            Apakah Anda yakin ingin menghapus <?= $hub; ?>?
                                                            <input type="hidden" name="idb" value="<?= $idb; ?>">
                                                            <input type="hidden" name="kty" value="<?= $qty; ?>">
                                                            <input type="hidden" name="idm" value="<?= $idm; ?>">
                                                            <br>
                                                            <br>
                                                            <button type="submit" class="btn btn-danger"
                                                                name="hapusbarangmasuk">Hapus</button>
                                                        </div>
                                                    </form>

                                                </div>
                                            </div>
                                        </div>

                                    <?php
                                    };
                                    ?>

                                </tbody>
                            </table>
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
            <div class="modal-header">
                <h4 class="modal-title">Tambah Barang Masuk</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>

            <!-- Modal body -->
            <form method="post">
                <div class="modal-body">
                    <!-- Hub Selection -->
                    <select id="hubSelect" class="form-control">
                        <option value="">Pilih Hub</option>
                        <?php
                        $hubs = [];
                        // Modify SQL query to select distinct hubs
                        $ambilsemuadatanya = mysqli_query($conn, "SELECT DISTINCT hub FROM stock");
                        while ($fetcharray = mysqli_fetch_array($ambilsemuadatanya)) {
                            $hub = $fetcharray['hub'];
                            // Fetch items for each hub
                            $itemQuery = mysqli_query($conn, "SELECT * FROM stock WHERE hub = '$hub'");
                            while ($itemData = mysqli_fetch_array($itemQuery)) {
                                $idbarang = $itemData['idbarang'];
                                $item = $itemData['item'];
                                $code = $itemData['code'];
                                $hubs[$hub][] = ['id' => $idbarang, 'item' => $item, 'code' => $code];
                            }
                        ?>
                            <option value="<?= $hub; ?>"><?= $hub; ?></option>
                        <?php
                        }
                        ?>
                    </select>
                    <br>
                    <!-- Item Selection -->
                    <select id="itemSelect" name="barangnya" class="form-control">
                        <option value="">Pilih Item</option>
                    </select>
                    <br>
                    <!-- Code Display -->
                    <input type="text" id="codeField" placeholder="Asset Code" class="form-control" readonly>
                    <br>

                    <input type="number" name="qty" placeholder="Quantity Good" class="form-control" required>
                    <br>
                    <input type="number" name="qtyb" placeholder="Quantity Bad" class="form-control" required>
                    <br>
                    <input type="number" name="qtyr" placeholder="Quantity Required" class="form-control" required>
                    <br>
                    <input type="text" name="penerima" placeholder="Penerima" class="form-control" required>
                    <br>
                    <button type="submit" class="btn btn-primary" name="barangmasuk">Submit</button>
                </div>
            </form>
        </div>
    </div>
</div>

<script>
    // Preloaded data as a JavaScript object (output by PHP)
    const hubData = <?php echo json_encode($hubs); ?>;

    document.addEventListener("DOMContentLoaded", function() {
        const hubSelect = document.getElementById("hubSelect");
        const itemSelect = document.getElementById("itemSelect");
        const codeField = document.getElementById("codeField");

        // Handle hub selection
        hubSelect.addEventListener("change", function() {
            const selectedHub = this.value;
            itemSelect.innerHTML = '<option value="">Select Item</option>'; // Reset item options
            codeField.value = ''; // Reset code field

            // Populate item options based on selected hub
            if (hubData[selectedHub]) {
                hubData[selectedHub].forEach(item => {
                    const option = document.createElement("option");
                    option.value = item.id;
                    option.textContent = item.item;
                    itemSelect.appendChild(option);
                });
            }
        });

        // Handle item selection
        itemSelect.addEventListener("change", function() {
            const selectedHub = hubSelect.value;
            const selectedItemId = this.value;

            // Find and display the code for the selected item
            const selectedItem = hubData[selectedHub].find(item => item.id == selectedItemId);
            if (selectedItem) {
                codeField.value = selectedItem.code;
            }
        });
    });
</script>

</html>