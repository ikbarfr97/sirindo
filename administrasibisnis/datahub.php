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
        <a class="navbar-brand ps-3" href="datahub.php">Administrasi Bisnis</a>
        <!-- Sidebar Toggle-->
        <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i
                class="fas fa-bars"></i></button>
    </nav>
    <div id="layoutSidenav">
        <div id="layoutSidenav_nav">
            <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                <div class="sb-sidenav-menu">
                    <div class="nav">
                        <a class="nav-link" href="datahub.php">
                            <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                            Data Hub
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
                    <h1 class="mt-4">Data Hub</h1>
                    <div class="card mb-4">
                        <div class="card-header">
                            <!-- Button to Open the Modal -->
                            <button type="button" class="btn btn-primary " data-bs-toggle="modal" data-bs-target="#modalTambahHub">
                                Tambah Data Hub
                            </button>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="datatablesSimple">
                                    <thead class="table-primary">
                                        <tr>
                                            <th>No</th>
                                            <th>Lokasi</th>
                                            <th>Status</th>
                                            <th>Region</th>
                                            <th>Kepala Sekolah</th>
                                            <th>Wakil Kepala Operasional</th>
                                            <th>No Admin Hub</th>
                                            <th>Start 'Sewa'</th>
                                            <th>Nama Pemilik</th>
                                            <th>Luas Bangunan (m²)</th>
                                            <th>PKS Sewa Menyewa</th>
                                            <th>Legalitas Bangunan</th>
                                            <th>Budget Pengeluaran Hub</th>
                                            <th>Aksi</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $ambilSemuaDataHub = mysqli_query($conn, "SELECT * FROM datahub");
                                        $i = 1;
                                        while ($p = mysqli_fetch_assoc($ambilSemuaDataHub)) {
                                        ?>
                                            <tr>
                                                <td><?= $i++; ?></td>
                                                <td><?= $p['lokasi']; ?></td>
                                                <td><?= $p['status']; ?></td>
                                                <td><?= $p['region']; ?></td>
                                                <td><?= $p['kepala_sekolah']; ?></td>
                                                <td><?= $p['wakil_kepala_operasional']; ?></td>
                                                <td><?= $p['no_admin_hub']; ?></td>
                                                <td><?= $p['start_sewa']; ?></td>
                                                <td><?= $p['nama_pemilik']; ?></td>
                                                <td><?= $p['luas_bangunan']; ?></td>
                                                <td><?= $p['pks_sewa_menyewa']; ?></td>
                                                <td><?= $p['legalitas_bangunan']; ?></td>
                                                <td><?= $p['budget_pengeluaran_hub']; ?></td>
                                                <td>
                                                    <button class="btn btn-warning btn-sm" data-bs-toggle="modal"
                                                        data-bs-target="#modalEditHub<?= $p['iddatahub']; ?>">Edit</button>
                                                    <button class="btn btn-danger btn-sm" data-bs-toggle="modal"
                                                        data-bs-target="#modalDeleteHub<?= $p['iddatahub']; ?>">Hapus</button>
                                                </td>
                                            </tr>

                                            <!-- Modal Edit -->
                                            <div class="modal fade" id="modalEditHub<?= $p['iddatahub']; ?>" tabindex="-1">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <form method="post">
                                                            <div class="modal-header">
                                                                <h5 class="modal-title">Edit Data Hub</h5>
                                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                            </div>
                                                            <div class="modal-body">
                                                                <input type="hidden" name="id" value="<?= $p['iddatahub']; ?>">

                                                                <div class="mb-3">
                                                                    <label for="lokasi" class="form-label">Lokasi</label>
                                                                    <input type="text" class="form-control" name="lokasi" value="<?= $p['lokasi']; ?>" required>
                                                                </div>
                                                                <div class="mb-3">
                                                                    <label for="status" class="form-label">Status</label>
                                                                    <select class="form-select" name="status" required>
                                                                        <option value="SID" <?= $p['status'] == 'SID' ? 'selected' : ''; ?>>SID</option>
                                                                        <option value="SID - Relokasi" <?= $p['status'] == 'SID - Relokasi' ? 'selected' : ''; ?>>SID - Relokasi</option>
                                                                        <option value="SID JV" <?= $p['status'] == 'SID JV' ? 'selected' : ''; ?>>SID JV</option>
                                                                        <option value="Mitra" <?= $p['status'] == 'Mitra' ? 'selected' : ''; ?>>Mitra</option>
                                                                        <option value="Tidak Beroperasi" <?= $p['status'] == 'Tidak Beroperasi' ? 'selected' : ''; ?>>Tidak Beroperasi</option>
                                                                    </select>
                                                                </div>

                                                                <div class="mb-3">
                                                                    <label for="region" class="form-label">Region</label>
                                                                    <select class="form-select" name="region" required>
                                                                        <option value="Central" <?= $p['region'] == 'Central' ? 'selected' : ''; ?>>Central</option>
                                                                        <option value="East" <?= $p['region'] == 'East' ? 'selected' : ''; ?>>East</option>
                                                                        <option value="West" <?= $p['region'] == 'West' ? 'selected' : ''; ?>>West</option>
                                                                    </select>
                                                                </div>

                                                                <div class="mb-3">
                                                                    <label for="kepala_sekolah" class="form-label">Kepala Sekolah</label>
                                                                    <input type="text" class="form-control" name="kepala_sekolah" value="<?= $p['kepala_sekolah']; ?>" required>
                                                                </div>
                                                                <div class="mb-3">
                                                                    <label for="wakil_kepala_operasional" class="form-label">Wakil Kepala Operasional</label>
                                                                    <input type="text" class="form-control" name="wakil_kepala_operasional" value="<?= $p['wakil_kepala_operasional']; ?>" required>
                                                                </div>
                                                                <div class="mb-3">
                                                                    <label for="no_admin_hub" class="form-label">No Admin Hub</label>
                                                                    <input type="text" class="form-control" name="no_admin_hub" value="<?= $p['no_admin_hub']; ?>" required>
                                                                </div>
                                                                <div class="mb-3">
                                                                    <label for="start_sewa" class="form-label">Start 'Sewa'</label>
                                                                    <input type="date" class="form-control" name="start_sewa" value="<?= $p['start_sewa']; ?>" required>
                                                                </div>
                                                                <div class="mb-3">
                                                                    <label for="nama_pemilik" class="form-label">Nama Pemilik</label>
                                                                    <input type="text" class="form-control" name="nama_pemilik" value="<?= $p['nama_pemilik']; ?>" required>
                                                                </div>
                                                                <div class="mb-3">
                                                                    <label for="luas_bangunan" class="form-label">Luas Bangunan (m²)</label>
                                                                    <input type="number" step="0.01" class="form-control" name="luas_bangunan" value="<?= $p['luas_bangunan']; ?>" required>
                                                                </div>
                                                                <div class="mb-3">
                                                                    <label for="pks_sewa_menyewa" class="form-label">PKS Sewa Menyewa</label>
                                                                    <input type="text" class="form-control" name="pks_sewa_menyewa" value="<?= $p['pks_sewa_menyewa']; ?>" required>
                                                                </div>
                                                                <div class="mb-3">
                                                                    <label for="legalitas_bangunan" class="form-label">Legalitas Bangunan</label>
                                                                    <input type="text" class="form-control" name="legalitas_bangunan" value="<?= $p['legalitas_bangunan']; ?>" required>
                                                                </div>
                                                                <div class="mb-3">
                                                                    <label for="budget_pengeluaran_hub" class="form-label">Budget Pengeluaran Hub</label>
                                                                    <input type="number" min="0" class="form-control" name="budget_pengeluaran_hub" value="<?= $p['budget_pengeluaran_hub']; ?>" required>
                                                                </div>
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Batal</button>
                                                                <button type="submit" class="btn btn-primary" name="update_hub">Simpan</button>
                                                            </div>

                                                        </form>
                                                    </div>
                                                </div>
                                            </div>

                                            <!-- Modal Delete -->
                                            <div class="modal fade" id="modalDeleteHub<?= $p['iddatahub']; ?>" tabindex="-1">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <form method="post">
                                                            <div class="modal-header">
                                                                <h5 class="modal-title">Hapus Data Hub</h5>
                                                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                                    aria-label="Close"></button>
                                                            </div>
                                                            <div class="modal-body">
                                                                Apakah Anda yakin ingin menghapus data hub dengan lokasi
                                                                <strong><?= $p['lokasi']; ?></strong>?
                                                                <input type="hidden" name="id" value="<?= $p['iddatahub']; ?>">
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-secondary"
                                                                    data-bs-dismiss="modal">Batal</button>
                                                                <button type="submit" class="btn btn-danger" name="hapusdatahub">Hapus</button>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>

                                        <?php } ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>

                        <!-- Modal Tambah Data Hub -->
                        <div class="modal fade" id="modalTambahHub" tabindex="-1">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title">Tambah Data Hub</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <form method="post">
                                            <div class="mb-3">
                                                <label for="lokasi" class="form-label">Lokasi</label>
                                                <input type="text" class="form-control" name="lokasi" required>
                                            </div>
                                            <div class="mb-3">
                                                <label for="status" class="form-label">Status</label>
                                                <select type="text" class="form-select" name="status" required>
                                                    <option value="SID">SID</option>
                                                    <option value="SID - Relokasi">SID - Relokasi</option>
                                                    <option value="SID JV">SID JV</option>
                                                    <option value="Mitra">Mitra</option>
                                                    <option value="Tidak Beroperasi">Tidak Beroperasi</option>
                                                </select>
                                            </div>
                                            <div class="mb-3">
                                                <label for="region" class="form-label">Region</label>
                                                <select type="text" class="form-select" name="region" required>
                                                    <option value="Central">Central</option>
                                                    <option value="East">East</option>
                                                    <option value="West">West</option>
                                                </select>
                                            </div>
                                            <div class="mb-3">
                                                <label for="kepala_sekolah" class="form-label">Kepala Sekolah</label>
                                                <input type="text" class="form-control" name="kepala_sekolah" required>
                                            </div>
                                            <div class="mb-3">
                                                <label for="wakil_kepala_operasional" class="form-label">Wakil Kepala Operasional</label>
                                                <input type="text" class="form-control" name="wakil_kepala_operasional" required>
                                            </div>
                                            <div class="mb-3">
                                                <label for="no_admin_hub" class="form-label">No Admin Hub</label>
                                                <input type="text" class="form-control" name="no_admin_hub" required>
                                            </div>
                                            <div class="mb-3">
                                                <label for="start_sewa" class="form-label">Start 'Sewa'</label>
                                                <input type="date" class="form-control" name="start_sewa" required>
                                            </div>
                                            <div class="mb-3">
                                                <label for="nama_pemilik" class="form-label">Nama Pemilik</label>
                                                <input type="text" class="form-control" name="nama_pemilik" required>
                                            </div>
                                            <div class="mb-3">
                                                <label for="luas_bangunan" class="form-label">Luas Bangunan (m²)</label>
                                                <input type="number" step="0.01" class="form-control" name="luas_bangunan" required>
                                            </div>
                                            <div class="mb-3">
                                                <label for="pks_sewa_menyewa" class="form-label">PKS Sewa Menyewa</label>
                                                <input type="text" class="form-control" name="pks_sewa_menyewa" required>
                                            </div>
                                            <div class="mb-3">
                                                <label for="legalitas_bangunan" class="form-label">Legalitas Bangunan</label>
                                                <input type="text" class="form-control" name="legalitas_bangunan" required>

                                            </div>
                                            <div class="mb-3">
                                                <label for="budget_pengeluaran_hub" class="form-label">Budget Pengeluaran Hub</label>
                                                <input type="number" min="0" class="form-control" name="budget_pengeluaran_hub" required>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Batal</button>
                                                <button type="submit" class="btn btn-primary" name="tambahdatahub">Tambah</button>
                                            </div>
                                        </form>
                                    </div>
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


</html>