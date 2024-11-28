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
        <a class="navbar-brand ps-3" href="risetpasar.php">Riset Pasar</a>
        <!-- Sidebar Toggle-->
        <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i
                class="fas fa-bars"></i></button>
    </nav>
    <div id="layoutSidenav">
        <div id="layoutSidenav_nav">
            <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                <div class="sb-sidenav-menu">
                    <div class="nav">
                        <a class="nav-link" href="risetpasar.php">
                            <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                            List Properti Hub
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
                    <h1 class="mt-4">Riset Pasar</h1>
                    <div class="card mb-4">
                        <div class="card-header">
                            <!-- Button to Open the Modal -->
                            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modalTambahRisetpasar">
                                Tambah Data
                            </button>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="datatablesSimple">
                                    <thead class="table-primary">
                                        <tr>
                                            <th>No</th>
                                            <th>Bulan</th>
                                            <th>Tahun</th>
                                            <th>Week Ke</th>
                                            <th>PIC Leads</th>
                                            <th>Wilayah</th>
                                            <th>Kota</th>
                                            <th>Kecamatan</th>
                                            <th>Bentuk</th>
                                            <th>Nama Agent / Owner</th>
                                            <th>Kontak HP Agent / Owner</th>
                                            <th>Biaya Sewa / Tahun</th>
                                            <th>Luas Tanah (m²)</th>
                                            <th>Luas Bangunan (m²)</th>
                                            <th>Status Properti</th>
                                            <th>Terdapat Halaman</th>
                                            <th>Lokasi Pinggir Jalan Raya</th>
                                            <th>Dokumen Legal SHM</th>
                                            <th>Dokumen Legal IMB / PBG</th>
                                            <th>Dokumen Legal PBB</th>
                                            <th>Diizinikan Buat Sekolah</th>
                                            <th>Opsi Sewa 5 Tahun</th>
                                            <th>Diizinkan oleh Developer / Pengembang</th>
                                            <th>Lokasi Google Maps</th>
                                            <th>Link Iklan</th>
                                            <th>Dokumentasi Foto-Foto Fasilitas</th>
                                            <th>Acc AM-Operations</th>
                                            <th>Jadwal Survei Lokasi</th>
                                            <th>Sudah Disurvei 020</th>
                                            <th>Skor > 4</th>
                                            <th>Approve By Bu</th>
                                            <th>Deal With Owner</th>
                                            <th>Aksi</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        // Ambil semua data dari tabel risetpasar
                                        $ambilSemuaData = mysqli_query($conn, "SELECT * FROM risetpasar");
                                        $i = 1;
                                        while ($data = mysqli_fetch_assoc($ambilSemuaData)) {
                                        ?>
                                            <tr>
                                                <td><?= $i++; ?></td>
                                                <td><?= $data['bulan']; ?></td>
                                                <td><?= $data['tahun']; ?></td>
                                                <td><?= $data['week_ke']; ?></td>
                                                <td><?= $data['pic_leads']; ?></td>
                                                <td><?= $data['wilayah']; ?></td>
                                                <td><?= $data['kota']; ?></td>
                                                <td><?= $data['kecamatan']; ?></td>
                                                <td><?= $data['bentuk']; ?></td>
                                                <td><?= $data['nama_agent_owner']; ?></td>
                                                <td><?= $data['kontak_hp_agent_owner']; ?></td>
                                                <td><?= $data['biaya_sewa_tahun']; ?></td>
                                                <td><?= $data['luas_tanah_m2']; ?></td>
                                                <td><?= $data['luas_bangunan_m2']; ?></td>
                                                <td><?= $data['status_properti']; ?></td>
                                                <td><?= $data['terdapat_halaman']; ?></td>
                                                <td><?= $data['lokasi_pinggir_jalan_raya']; ?></td>
                                                <td><?= $data['dokumen_legal_shm']; ?></td>
                                                <td><?= $data['dokumen_legal_imb_pbg']; ?></td>
                                                <td><?= $data['dokumen_legal_pbb']; ?></td>
                                                <td><?= $data['diizinikan_buat_sekolah']; ?></td>
                                                <td><?= $data['opsi_sewa_5_tahun']; ?></td>
                                                <td><?= $data['diizinkan_oleh_developer']; ?></td>
                                                <td><?= $data['lokasi_google_maps']; ?></td>
                                                <td><a href="<?= $data['link_iklan']; ?>" target="_blank"><?= $data['link_iklan']; ?></a></td>
                                                <td><a href="<?= $data['dokumentasi_foto_fasilitas']; ?>" target="_blank"><?= $data['dokumentasi_foto_fasilitas']; ?></a></td>
                                                <td><?= $data['acc_am_operations']; ?></td>
                                                <td><?= $data['jadwal_survei_lokasi']; ?></td>
                                                <td><?= $data['sudah_disurvei_020']; ?></td>
                                                <td><?= $data['skor_lebih_dari_4']; ?></td>
                                                <td><?= $data['approve_by_bu']; ?></td>
                                                <td><?= $data['deal_with_owner']; ?></td>
                                                <td>
                                                    <button class="btn btn-warning btn-sm" data-bs-toggle="modal" data-bs-target="#modalEditRisetPasar<?= $data['idrisetpasar']; ?>">Edit</button>
                                                    <button class="btn btn-danger btn-sm" data-bs-toggle="modal" data-bs-target="#modalDeleteRisetPasar<?= $data['idrisetpasar']; ?>">Hapus</button>
                                                </td>
                                            </tr>
                                            <!-- Modal Edit Data Riset Pasar -->
                                            <div class="modal fade" id="modalEditRisetPasar<?= $data['idrisetpasar']; ?>" tabindex="-1">
                                                <div class="modal-dialog modal-lg">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title">Edit Data Riset Pasar</h5>
                                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <form method="post">
                                                                <input type="hidden" name="idrisetpasar" value="<?= $data['idrisetpasar']; ?>">
                                                                <div class="row">
                                                                    <div class="col-md-6 mb-3">
                                                                        <label for="bulan" class="form-label">Bulan</label>
                                                                        <input type="text" class="form-control" name="bulan" value="<?= $data['bulan']; ?>">
                                                                    </div>
                                                                    <div class="col-md-6 mb-3">
                                                                        <label for="tahun" class="form-label">Tahun</label>
                                                                        <input type="number" class="form-control" name="tahun" value="<?= $data['tahun']; ?>">
                                                                    </div>
                                                                    <div class="col-md-6 mb-3">
                                                                        <label for="week_ke" class="form-label">Week Ke</label>
                                                                        <input type="number" class="form-control" name="week_ke" value="<?= $data['week_ke']; ?>">
                                                                    </div>
                                                                    <div class="col-md-6 mb-3">
                                                                        <label for="pic_leads" class="form-label">PIC Leads</label>
                                                                        <input type="text" class="form-control" name="pic_leads" value="<?= $data['pic_leads']; ?>">
                                                                    </div>
                                                                    <div class="col-md-6 mb-3">
                                                                        <label for="wilayah" class="form-label">Wilayah</label>
                                                                        <select class="form-control" name="wilayah">
                                                                            <option value="Jabodetabek" <?= $data['wilayah'] == 'Jabodetabek' ? 'selected' : ''; ?>>Jabodetabek</option>
                                                                            <option value="Non-Jabodetabek" <?= $data['wilayah'] == 'Non-Jabodetabek' ? 'selected' : ''; ?>>Non-Jabodetabek</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="col-md-6 mb-3">
                                                                        <label for="kota" class="form-label">Kota</label>
                                                                        <input type="text" class="form-control" name="kota" value="<?= $data['kota']; ?>">
                                                                    </div>
                                                                    <div class="col-md-6 mb-3">
                                                                        <label for="kecamatan" class="form-label">Kecamatan</label>
                                                                        <input type="text" class="form-control" name="kecamatan" value="<?= $data['kecamatan']; ?>">
                                                                    </div>
                                                                    <div class="col-md-6 mb-3">
                                                                        <label for="bentuk" class="form-label">Bentuk</label>
                                                                        <input type="text" class="form-control" name="bentuk" value="<?= $data['bentuk']; ?>">
                                                                    </div>
                                                                    <div class="col-md-6 mb-3">
                                                                        <label for="nama_agent_owner" class="form-label">Nama Agent / Owner</label>
                                                                        <input type="text" class="form-control" name="nama_agent_owner" value="<?= $data['nama_agent_owner']; ?>">
                                                                    </div>
                                                                    <div class="col-md-6 mb-3">
                                                                        <label for="kontak_hp_agent_owner" class="form-label">Kontak HP Agent / Owner</label>
                                                                        <input type="text" class="form-control" name="kontak_hp_agent_owner" value="<?= $data['kontak_hp_agent_owner']; ?>">
                                                                    </div>
                                                                    <div class="col-md-6 mb-3">
                                                                        <label for="biaya_sewa_tahun" class="form-label">Biaya Sewa / Tahun</label>
                                                                        <input type="number"  class="form-control" name="biaya_sewa_tahun" value="<?= $data['biaya_sewa_tahun']; ?>">
                                                                    </div>
                                                                    <div class="col-md-6 mb-3">
                                                                        <label for="luas_tanah" class="form-label">Luas Tanah (m²)</label>
                                                                        <input type="number"  class="form-control" name="luas_tanah" value="<?= $data['luas_tanah']; ?>">
                                                                    </div>
                                                                    <div class="col-md-6 mb-3">
                                                                        <label for="luas_bangunan" class="form-label">Luas Bangunan (m²)</label>
                                                                        <input type="number"  class="form-control" name="luas_bangunan" value="<?= $data['luas_bangunan']; ?>">
                                                                    </div>
                                                                    <div class="col-md-6 mb-3">
                                                                        <label for="status_properti" class="form-label">Status Properti</label>
                                                                        <select class="form-control" name="status_properti">
                                                                            <option value="Murah" <?= $data['status_properti'] == 'Murah' ? 'selected' : ''; ?>>Murah</option>
                                                                            <option value="Mahal" <?= $data['status_properti'] == 'Mahal' ? 'selected' : ''; ?>>Mahal</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="col-md-6 mb-3">
                                                                        <label for="terdapat_halaman" class="form-label">Terdapat Halaman</label>
                                                                        <select class="form-control" name="terdapat_halaman">
                                                                            <option value="Ya" <?= $data['terdapat_halaman'] == 'Ya' ? 'selected' : ''; ?>>Ya</option>
                                                                            <option value="Tidak" <?= $data['terdapat_halaman'] == 'Tidak' ? 'selected' : ''; ?>>Tidak</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="col-md-6 mb-3">
                                                                        <label for="lokasi_google_maps" class="form-label">Lokasi Google Maps</label>
                                                                        <textarea type="text" class="form-control" name="lokasi_google_maps"><?= $data['lokasi_google_maps']; ?></textarea>
                                                                    </div>
                                                                    <div class="col-md-6 mb-3">
                                                                        <label for="link_iklan" class="form-label">Link Iklan</label>
                                                                        <input type="url" class="form-control" name="link_iklan" value="<?= $data['link_iklan']; ?>">
                                                                    </div>
                                                                    <div class="col-md-6 mb-3">
                                                                        <label for="acc_am_operations" class="form-label">Acc AM-Operations</label>
                                                                        <select class="form-control" name="acc_am_operations">
                                                                            <option value="Ya" <?= $data['acc_am_operations'] == 'Ya' ? 'selected' : ''; ?>>Ya</option>
                                                                            <option value="Tidak" <?= $data['acc_am_operations'] == 'Tidak' ? 'selected' : ''; ?>>Tidak</option>
                                                                            <option value="Pending" <?= $data['acc_am_operations'] == 'Pending' ? 'selected' : ''; ?>>Pending</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="col-md-6 mb-3">
                                                                        <label for="jadwal_survei_lokasi" class="form-label">Jadwal Survei Lokasi</label>
                                                                        <input type="date" class="form-control" name="jadwal_survei_lokasi" value="<?= $data['jadwal_survei_lokasi']; ?>">
                                                                    </div>
                                                                    <div class="col-md-6 mb-3">
                                                                        <label for="sudah_disurvei_020" class="form-label">Sudah Disurvei 020</label>
                                                                        <select class="form-control" name="sudah_disurvei_020">
                                                                            <option value="" <?= ($data['sudah_disurvei_020'] == '') ? 'selected' : ''; ?>>Pilih Status</option>
                                                                            <option value="Sudah" <?= ($data['sudah_disurvei_020'] == 'Sudah') ? 'selected' : ''; ?>>Sudah</option>
                                                                            <option value="Belum" <?= ($data['sudah_disurvei_020'] == 'Belum') ? 'selected' : ''; ?>>Belum</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="col-md-6 mb-3">
                                                                        <label for="skor_lebih_dari_4" class="form-label">Skor > 4</label>
                                                                        <select class="form-control" name="skor_lebih_dari_4">
                                                                            <option value="" <?= ($data['skor_lebih_dari_4'] == '') ? 'selected' : ''; ?>>Pilih Status</option>
                                                                            <option value="Ya" <?= ($data['skor_lebih_dari_4'] == 'Ya') ? 'selected' : ''; ?>>Ya</option>
                                                                            <option value="Tidak" <?= ($data['skor_lebih_dari_4'] == 'Tidak') ? 'selected' : ''; ?>>Tidak</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="col-md-6 mb-3">
                                                                        <label for="approve_by_bu" class="form-label">Approve By Bu</label>
                                                                        <select class="form-control" name="approve_by_bu">
                                                                            <option value="" <?= ($data['approve_by_bu'] == '') ? 'selected' : ''; ?>>Pilih Status</option>
                                                                            <option value="Ya" <?= ($data['approve_by_bu'] == 'Ya') ? 'selected' : ''; ?>>Ya</option>
                                                                            <option value="Tidak" <?= ($data['approve_by_bu'] == 'Tidak') ? 'selected' : ''; ?>>Tidak</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="col-md-6 mb-3">
                                                                        <label for="deal_with_owner" class="form-label">Deal With Owner</label>
                                                                        <select class="form-control" name="deal_with_owner">
                                                                            <option value="" <?= ($data['deal_with_owner'] == '') ? 'selected' : ''; ?>>Pilih Status</option>
                                                                            <option value="Deal" <?= ($data['deal_with_owner'] == 'Deal') ? 'selected' : ''; ?>>Deal</option>
                                                                            <option value="Tidak Deal" <?= ($data['deal_with_owner'] == 'Tidak Deal') ? 'selected' : ''; ?>>Tidak Deal</option>
                                                                            <option value="On Progress" <?= ($data['deal_with_owner'] == 'On Progress') ? 'selected' : ''; ?>>On Progress</option>
                                                                        </select>
                                                                    </div>

                                                                </div>
                                                                <div class="modal-footer">
                                                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Batal</button>
                                                                    <button type="submit" class="btn btn-primary" name="update_riset">Simpan Perubahan</button>
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>




                                            <!-- Modal Delete -->
                                            <div class="modal fade" id="modalDeleteRisetPasar<?= $data['idrisetpasar']; ?>" tabindex="-1">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <form method="post">
                                                            <div class="modal-header">
                                                                <h5 class="modal-title">Hapus Data Riset Pasar</h5>
                                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                            </div>
                                                            <div class="modal-body">
                                                                Apakah Anda yakin ingin menghapus data riset pasar dengan ID
                                                                <strong><?= $data['idrisetpasar']; ?></strong>?
                                                                <input type="hidden" name="idrisetpasar" value="<?= $data['idrisetpasar']; ?>">
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Batal</button>
                                                                <button type="submit" class="btn btn-danger" name="hapus">Hapus</button>
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


                        <div class="modal fade" id="modalTambahRisetpasar" tabindex="-1">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title">Tambah Data Riset Pasar</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <form method="post">
                                            <div class="row">
                                                <div class="col-md-6 mb-3">
                                                    <label for="bulan" class="form-label">Bulan</label>
                                                    <input type="text" class="form-control" name="bulan">
                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <label for="tahun" class="form-label">Tahun</label>
                                                    <input type="number" class="form-control" name="tahun">
                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <label for="week_ke" class="form-label">Week Ke</label>
                                                    <input type="number" class="form-control" name="week_ke">
                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <label for="pic_leads" class="form-label">PIC Leads</label>
                                                    <input type="text" class="form-control" name="pic_leads">
                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <label for="wilayah" class="form-label">Wilayah</label>
                                                    <select type="text" class="form-control" name="wilayah">
                                                        <option value="Jabodetabek">Jabodetabek</option>
                                                        <option value="Non- Jabodetabek">Non- Jabodetabek</option>
                                                    </select>
                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <label for="kota" class="form-label">Kota</label>
                                                    <input type="text" class="form-control" name="kota">
                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <label for="kecamatan" class="form-label">Kecamatan</label>
                                                    <input type="text" class="form-control" name="kecamatan">
                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <label for="bentuk" class="form-label">Bentuk</label>
                                                    <input type="text" class="form-control" name="bentuk">
                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <label for="nama_agent_owner" class="form-label">Nama Agent / Owner</label>
                                                    <input type="text" class="form-control" name="nama_agent_owner">
                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <label for="kontak_hp_agent_owner" class="form-label">Kontak HP Agent / Owner</label>
                                                    <input type="text" class="form-control" name="kontak_hp_agent_owner">
                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <label for="biaya_sewa_tahun" class="form-label">Biaya Sewa / Tahun</label>
                                                    <input type="number"  class="form-control" id="biayaSewaTahun" name="biaya_sewa_tahun" oninput="updateStatusProperti()">
                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <label for="luas_tanah" class="form-label">Luas Tanah (m²)</label>
                                                    <input type="number"  class="form-control" name="luas_tanah">
                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <label for="luas_bangunan" class="form-label">Luas Bangunan (m²)</label>
                                                    <input type="number"  class="form-control" name="luas_bangunan">
                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <label for="status_properti" class="form-label">Status Properti</label>
                                                    <select class="form-select" id="statusProperti" name="status_properti">
                                                        <option value="Murah">Murah</option>
                                                        <option value="Mahal">Mahal</option>
                                                    </select>
                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <label for="terdapat_halaman" class="form-label">Terdapat Halaman</label>
                                                    <select class="form-select" name="terdapat_halaman">
                                                        <option value="Ya">Ya</option>
                                                        <option value="Tidak">Tidak</option>
                                                    </select>
                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <label for="lokasi_pjl" class="form-label">Lokasi Pinggir Jalan Raya</label>
                                                    <select class="form-select" name="lokasi_pjl">
                                                        <option value="Ya">Ya</option>
                                                        <option value="Tidak">Tidak</option>
                                                    </select>
                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <label for="dokumen_legal_shm" class="form-label">Dokumen Legal SHM</label>
                                                    <select class="form-select" name="dokumen_legal_shm">
                                                        <option value="Ya">Ya</option>
                                                        <option value="Tidak">Tidak</option>
                                                    </select>
                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <label for="dokumen_legal_imb_pbg" class="form-label">Dokumen Legal IMB / PBG</label>
                                                    <select class="form-select" name="dokumen_legal_imb_pbg">
                                                        <option value="Ya">Ya</option>
                                                        <option value="Tidak">Tidak</option>
                                                    </select>
                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <label for="dokumen_legal_pbb" class="form-label">Dokumen Legal PBB</label>
                                                    <select class="form-select" name="dokumen_legal_pbb">
                                                        <option value="Ya">Ya</option>
                                                        <option value="Tidak">Tidak</option>
                                                    </select>
                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <label for="diizinkan_buat_sekolah" class="form-label">Diizinkan Buat Sekolah</label>
                                                    <select class="form-select" name="diizinkan_buat_sekolah">
                                                        <option value="Diizinkan oleh Owner">Diizinkan oleh Owner</option>
                                                        <option value="Tidak Diizinkan oleh Owner">Tidak Diizinkan oleh Owner</option>
                                                    </select>

                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <label for="opsi_sewa_5_tahun" class="form-label">Opsi Sewa 5 Tahun</label>
                                                    <select class="form-select" name="opsi_sewa_5_tahun">
                                                        <option value="Diizinkan oleh Owner">Diizinkan oleh Owner</option>
                                                        <option value="Tidak Diizinkan oleh Owner">Tidak Diizinkan oleh Owner</option>
                                                    </select>
                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <label for="diizinkan_pengembang" class="form-label">Diizinkan oleh Developer</label>
                                                    <select class="form-select" name="diizinkan_pengembang">
                                                        <option value="Diizinkan oleh Developer">Diizinkan oleh Developer</option>
                                                        <option value="Tidak Diizinkan oleh Developer">Tidak Diizinkan oleh Developer</option>
                                                    </select>

                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <label for="lokasi_google_maps" class="form-label">Lokasi Google Maps</label>
                                                    <textarea type="text" class="form-control" name="lokasi_google_maps"></textarea>
                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <label for="link_iklan" class="form-label">Link Iklan</label>
                                                    <input type="url" class="form-control" name="link_iklan">
                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <label for="dokumentasi_foto" class="form-label">Dokumentasi Foto-Foto</label>
                                                    <input type="text" class="form-control" name="dokumentasi_foto">
                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <label for="acc_am_operations" class="form-label">Acc AM-Operations</label>
                                                    <select class="form-control" name="acc_am_operations">
                                                        <option value="">Pilih Status</option>
                                                        <option value="Ya">Ya</option>
                                                        <option value="Tidak">Tidak</option>
                                                        <option value="Pending">Pending</option>
                                                    </select>
                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <label for="jadwal_survei_lokasi" class="form-label">Jadwal Survei Lokasi</label>
                                                    <input type="date" class="form-control" name="jadwal_survei_lokasi">
                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <label for="sudah_disurvei_020" class="form-label">Sudah Disurvei 020</label>
                                                    <select class="form-control" name="sudah_disurvei_020">
                                                        <option value="">Pilih Status</option>
                                                        <option value="Sudah">Sudah</option>
                                                        <option value="Belum">Belum</option>
                                                    </select>
                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <label for="skor_lebih_dari_4" class="form-label">Skor > 4</label>
                                                    <select class="form-control" name="skor_lebih_dari_4">
                                                        <option value="">Pilih Status</option>
                                                        <option value="Ya">Ya</option>
                                                        <option value="Tidak">Tidak</option>
                                                    </select>
                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <label for="approve_by_bu" class="form-label">Approve By Bu</label>
                                                    <select class="form-control" name="approve_by_bu">
                                                        <option value="">Pilih Status</option>
                                                        <option value="Ya">Ya</option>
                                                        <option value="Tidak">Tidak</option>
                                                    </select>
                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <label for="deal_with_owner" class="form-label">Deal With Owner</label>
                                                    <select class="form-control" name="deal_with_owner">
                                                        <option value="">Pilih Status</option>
                                                        <option value="Deal">Deal</option>
                                                        <option value="Tidak Deal">Tidak Deal</option>
                                                        <option value="On Progress">On Progress</option>
                                                    </select>
                                                </div>

                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Batal</button>
                                                <button type="submit" class="btn btn-primary" name="tambahrisetpasar">Tambah</button>
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

    <script>
        function updateStatusProperti() {
            const biayaSewa = parseFloat(document.getElementById("biayaSewaTahun").value);
            const statusProperti = document.getElementById("statusProperti");

            if (!isNaN(biayaSewa)) {
                if (biayaSewa > 250000000) {
                    statusProperti.value = "Mahal";
                } else {
                    statusProperti.value = "Murah";
                }
            }
        }
    </script>
</body>



</html>