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
    <title>Data Hub</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
    <link href="css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    <style>
        a {
            text-decoration: none;
            color: black;
        }
    </style>
</head>

<body class="sb-nav-fixed">
    <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
        <!-- Navbar Brand-->
        <a class="navbar-brand ps-3" href="visualisasi.php">Visualisasi Desain</a>
        <!-- Sidebar Toggle-->
        <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i
                class="fas fa-bars"></i></button>
    </nav>
    <div id="layoutSidenav">
        <div id="layoutSidenav_nav">
            <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                <div class="sb-sidenav-menu">
                    <div class="nav">
                        <a class="nav-link" href="visualisasi.php">
                            <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                            Visualisasi Desain
                        </a>
                        <a class="nav-link" href="realisasi.php">
                            <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                            Realisasi Desain
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
                    <h1 class="mt-4">Visualisasi Design</h1>
                    <div class="mb-4">
                        <input type="text" id="searchInput" class="form-control" placeholder="Cari hub" onkeyup="searchHub()">
                    </div>
                    <button type="button" class="btn btn-primary m-1" data-bs-toggle="modal" data-bs-target="#modaltambahhub">
                        Tambah Hub
                    </button>

                    <div class="modal fade" id="modaltambahhub" tabindex="-1">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title">Tambah Data Hub</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <form method="post">
                                        <div class="row">
                                            <div class="col-md-12 mb-3">
                                                <label for="" class="form-label">Nama Hub</label>
                                                <input type="text" class="form-control" name="hub" required>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Batal</button>
                                            <button type="submit" class="btn btn-primary" name="tambahhubvisualisasi">Tambah</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="row" id="hubContainer">
                        <?php
                        // Ambil data visualisasi hub
                        $query = "SELECT * FROM visualisasi";
                        $result = mysqli_query($conn, $query);

                        while ($hub = mysqli_fetch_assoc($result)) {
                            $hub_id = $hub['idvisualisasi'];
                            $hub_name = $hub['hub'];

                            // Ambil foto terkait hub
                            $foto_query = "SELECT * FROM visualisasi_foto WHERE idvisualisasi = '$hub_id'";
                            $foto_result = mysqli_query($conn, $foto_query);
                            $foto_count = mysqli_num_rows($foto_result); // Hitung jumlah foto
                        ?>
                            <div class="col-md-12 mb-4">
                                <div class="card">
                                    <div class="card-header d-flex justify-content-between align-items-center">
                                        <h5 class="card-title"><?= $hub_name; ?></h5>
                                        <div class="ms-auto d-flex gap-2">
                                            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modalUploadFoto<?= $hub_id; ?>">
                                                Upload Foto
                                            </button>
                                            <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#modalHapusHub<?= $hub_id; ?>">
                                                Hapus Hub
                                            </button>
                                        </div>

                                        <div class="modal fade" id="modalHapusHub<?= $hub_id; ?>" tabindex="-1" aria-labelledby="modalHapusHubLabel<?= $hub_id; ?>" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="modalHapusHubLabel<?= $hub_id; ?>">Konfirmasi Hapus Hub</h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                    </div>
                                                    <div class="modal-body">
                                                        Apakah Anda yakin ingin menghapus hub "<strong><?= $hub_name; ?></strong>" dan semua data terkait?
                                                    </div>
                                                    <div class="modal-footer">
                                                        <form method="post" action="">
                                                            <input type="hidden" name="hub_id" value="<?= $hub_id; ?>">
                                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Batal</button>
                                                            <button type="submit" class="btn btn-danger" name="hapus_hub_visualisasi">Hapus</button>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="card-body">
                                        <div class="row">
                                            <?php
                                            if ($foto_count > 0) {
                                                while ($foto = mysqli_fetch_assoc($foto_result)) { ?>
                                                    <div class="col-4 mb-3">
                                                        <!-- Gambar dengan Tooltip dan Tombol Hapus -->
                                                        <div class="card" style="position: relative;">
                                                            <a href="#" data-bs-toggle="modal" data-bs-target="#fotoModal<?= $foto['id']; ?>">
                                                                <img src="<?= $foto['foto']; ?>" alt="<?= $foto['judul']; ?>" class="img-fluid" data-bs-toggle="tooltip" data-bs-placement="top" title="<?= $foto['judul']; ?>">
                                                            </a>

                                                            <!-- Tombol Hapus Gambar -->
                                                            <form method="post" style="position: absolute; top: 5px; right: 5px;">
                                                                <input type="hidden" name="idfoto" value="<?= $foto['id']; ?>">
                                                                <button type="submit" class="btn btn-danger btn-sm" name="hapusfoto_visualisasi" title="Hapus Foto" onclick="return confirm('Anda yakin ingin menghapus foto ini?');">X</button>
                                                            </form>

                                                        </div>
                                                    </div>

                                                    <!-- Modal Foto Besar -->
                                                    <div class="modal fade" id="fotoModal<?= $foto['id']; ?>" tabindex="-1" aria-labelledby="fotoModalLabel<?= $foto['id']; ?>" aria-hidden="true">
                                                        <div class="modal-dialog modal-lg">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <h5 class="modal-title" id="fotoModalLabel<?= $foto['id']; ?>"><?= $foto['judul']; ?></h5>
                                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                                </div>
                                                                <div class="modal-body">
                                                                    <img src="<?= $foto['foto']; ?>" alt="<?= $foto['judul']; ?>" class="img-fluid w-100">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                <?php }
                                            } else { ?>
                                                <!-- Tampilkan pesan "No Picture" jika tidak ada foto -->
                                                <div class="col-4 mb-3 text-center">
                                                    <p>No Picture</p>
                                                </div>
                                            <?php } ?>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Modal Upload Foto (per hub) -->
                            <div class="modal fade" id="modalUploadFoto<?= $hub_id; ?>" tabindex="-1" aria-labelledby="modalUploadFotoLabel<?= $hub_id; ?>" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <form method="post" enctype="multipart/form-data">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="modalUploadFotoLabel<?= $hub_id; ?>">Upload Foto untuk <?= $hub_name; ?></h5>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                                <input type="hidden" name="idvisualisasi" value="<?= $hub_id; ?>">
                                                <div class="mb-3">
                                                    <label for="foto" class="form-label">Pilih Foto</label>
                                                    <input type="file" class="form-control" name="foto" required>
                                                </div>
                                                <div class="mb-3">
                                                    <label for="judul" class="form-label">Judul Foto</label>
                                                    <input type="text" class="form-control" name="judul" required>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Batal</button>
                                                <button type="submit" class="btn btn-primary" name="upload_foto_visualisasi">Upload</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        <?php } ?>
                    </div>
                </div>
            </main>

            <script>
                var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'));
                tooltipTriggerList.map(function(tooltipTriggerEl) {
                    return new bootstrap.Tooltip(tooltipTriggerEl);
                });

                function searchHub() {
                    const input = document.getElementById('searchInput').value.toLowerCase();
                    const hubCards = document.querySelectorAll('#hubContainer > .col-md-12');

                    hubCards.forEach((card) => {
                        const hubName = card.querySelector('.card-title').textContent.toLowerCase();
                        if (hubName.includes(input)) {
                            card.style.display = ''; // Tampilkan kartu
                        } else {
                            card.style.display = 'none'; // Sembunyikan kartu
                        }
                    });
                }
            </script>






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

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            // Fungsi pencarian
            function searchHub() {
                const searchTerm = document.getElementById('searchInput').value.toLowerCase();
                const hubs = document.querySelectorAll('.hub-card');

                console.log('Searching for:', searchTerm); // Debugging search term

                hubs.forEach(function(hub) {
                    const hubName = hub.getAttribute('data-hub-name');
                    const fotoCards = hub.querySelectorAll('.foto-card');
                    let matchFound = hubName.includes(searchTerm); // Match hub name

                    // Cari foto yang juga cocok dengan pencarian
                    fotoCards.forEach(function(foto) {
                        const fotoName = foto.getAttribute('data-foto-name');
                        if (fotoName.includes(searchTerm)) {
                            matchFound = true;
                        }
                    });

                    console.log('Hub: ' + hubName + ' - Match found: ' + matchFound); // Debugging match check

                    // Tampilkan atau sembunyikan hub berdasarkan hasil pencarian
                    if (matchFound) {
                        hub.style.display = 'block';
                    } else {
                        hub.style.display = 'none';
                    }
                });
            }

            // Tambahkan event listener untuk input pencarian
            document.getElementById('searchInput').addEventListener('keyup', searchHub);
        });
    </script>

</body>


</html>