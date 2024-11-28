<?php
session_start();

//koneksi database
$conn = mysqli_connect("localhost", "root", "ikbar246", "dashboard");

if (isset($_POST['tambahrisetpasar'])) {
    // Ambil data dari form
    $bulan = $_POST['bulan'];
    $tahun = $_POST['tahun'];
    $week_ke = $_POST['week_ke'];
    $pic_leads = $_POST['pic_leads'];
    $wilayah = $_POST['wilayah'];
    $kota = $_POST['kota'];
    $kecamatan = $_POST['kecamatan'];
    $bentuk = $_POST['bentuk'];
    $nama_agent_owner = $_POST['nama_agent_owner'];
    $kontak_hp_agent_owner = $_POST['kontak_hp_agent_owner'];
    $biaya_sewa_tahun = $_POST['biaya_sewa_tahun'];
    $luas_tanah_m2 = $_POST['luas_tanah_m2'];
    $luas_bangunan_m2 = $_POST['luas_bangunan_m2'];
    $status_properti = $_POST['status_properti'];
    $terdapat_halaman = $_POST['terdapat_halaman'];
    $lokasi_pinggir_jalan_raya = $_POST['lokasi_pinggir_jalan_raya'];
    $dokumen_legal_shm = $_POST['dokumen_legal_shm'];
    $dokumen_legal_imb_pbg = $_POST['dokumen_legal_imb_pbg'];
    $dokumen_legal_pbb = $_POST['dokumen_legal_pbb'];
    $diizinikan_buat_sekolah = $_POST['diizinikan_buat_sekolah'];
    $opsi_sewa_5_tahun = $_POST['opsi_sewa_5_tahun'];
    $diizinkan_oleh_developer = $_POST['diizinkan_oleh_developer'];
    $lokasi_google_maps = $_POST['lokasi_google_maps'];
    $link_iklan = $_POST['link_iklan'];
    $dokumentasi_foto_fasilitas = $_POST['dokumentasi_foto_fasilitas'];
    $acc_am_operations = $_POST['acc_am_operations'];
    $jadwal_survei_lokasi = $_POST['jadwal_survei_lokasi'];
    $sudah_disurvei_020 = $_POST['sudah_disurvei_020'];
    $skor_lebih_dari_4 = $_POST['skor_lebih_dari_4'];
    $approve_by_bu = $_POST['approve_by_bu'];
    $deal_with_owner = $_POST['deal_with_owner'];

    $addtotable = mysqli_query($conn, "
        INSERT INTO risetpasar 
        (bulan, tahun, week_ke, pic_leads, wilayah, kota, kecamatan, bentuk, nama_agent_owner, kontak_hp_agent_owner, biaya_sewa_tahun, luas_tanah_m2, luas_bangunan_m2, status_properti, terdapat_halaman, lokasi_pinggir_jalan_raya, dokumen_legal_shm, dokumen_legal_imb_pbg, dokumen_legal_pbb, diizinikan_buat_sekolah, opsi_sewa_5_tahun, diizinkan_oleh_developer, lokasi_google_maps, link_iklan, dokumentasi_foto_fasilitas, acc_am_operations, jadwal_survei_lokasi, sudah_disurvei_020, skor_lebih_dari_4, approve_by_bu, deal_with_owner)
        VALUES 
        ('$bulan', '$tahun', '$week_ke', '$pic_leads', '$wilayah', '$kota', '$kecamatan', '$bentuk', '$nama_agent_owner', '$kontak_hp_agent_owner', '$biaya_sewa_tahun', '$luas_tanah_m2', '$luas_bangunan_m2', '$status_properti', '$terdapat_halaman', '$lokasi_pinggir_jalan_raya', '$dokumen_legal_shm', '$dokumen_legal_imb_pbg', '$dokumen_legal_pbb', '$diizinikan_buat_sekolah', '$opsi_sewa_5_tahun', '$diizinkan_oleh_developer', '$lokasi_google_maps', '$link_iklan', '$dokumentasi_foto_fasilitas', '$acc_am_operations', '$jadwal_survei_lokasi', '$sudah_disurvei_020', '$skor_lebih_dari_4', '$approve_by_bu', '$deal_with_owner')
    ");

    if ($addtotable) {
        header('Location: risetpasar.php');
    } else {
        echo 'Gagal menambahkan data riset pasar';
        header('Location: risetpasar.php');
    }
}


// Menangani proses edit
if (isset($_POST['update_riset'])) {
    $idrisetpasar = $_POST['idrisetpasar'];
    $bulan = $_POST['bulan'];
    $tahun = $_POST['tahun'];
    $week_ke = $_POST['week_ke'];
    $pic_leads = $_POST['pic_leads'];
    $wilayah = $_POST['wilayah'];
    $kota = $_POST['kota'];
    $kecamatan = $_POST['kecamatan'];
    $bentuk = $_POST['bentuk'];
    $nama_agent_owner = $_POST['nama_agent_owner'];
    $kontak_hp_agent_owner = $_POST['kontak_hp_agent_owner'];
    $biaya_sewa_tahun = $_POST['biaya_sewa_tahun'];
    $luas_tanah_m2 = $_POST['luas_tanah_m2'];
    $luas_bangunan_m2 = $_POST['luas_bangunan_m2'];
    $status_properti = $_POST['status_properti'];
    $terdapat_halaman = $_POST['terdapat_halaman'];
    $lokasi_pinggir_jalan_raya = $_POST['lokasi_pinggir_jalan_raya'];
    $dokumen_legal_shm = $_POST['dokumen_legal_shm'];
    $dokumen_legal_imb_pbg = $_POST['dokumen_legal_imb_pbg'];
    $dokumen_legal_pbb = $_POST['dokumen_legal_pbb'];
    $diizinikan_buat_sekolah = $_POST['diizinikan_buat_sekolah'];
    $opsi_sewa_5_tahun = $_POST['opsi_sewa_5_tahun'];
    $diizinkan_oleh_developer = $_POST['diizinkan_oleh_developer'];
    $lokasi_google_maps = $_POST['lokasi_google_maps'];
    $link_iklan = $_POST['link_iklan'];
    $dokumentasi_foto_fasilitas = $_POST['dokumentasi_foto_fasilitas'];
    $acc_am_operations = $_POST['acc_am_operations'];
    $jadwal_survei_lokasi = $_POST['jadwal_survei_lokasi'];
    $sudah_disurvei_020 = $_POST['sudah_disurvei_020'];
    $skor_lebih_dari_4 = $_POST['skor_lebih_dari_4'];
    $approve_by_bu = $_POST['approve_by_bu'];
    $deal_with_owner = $_POST['deal_with_owner'];

    $updateQuery = mysqli_query($conn, "
        UPDATE risetpasar 
        SET 
        bulan = '$bulan',
        tahun = '$tahun',
        week_ke = '$week_ke',
        pic_leads = '$pic_leads',
        wilayah = '$wilayah',
        kota = '$kota',
        kecamatan = '$kecamatan',
        bentuk = '$bentuk',
        nama_agent_owner = '$nama_agent_owner',
        kontak_hp_agent_owner = '$kontak_hp_agent_owner',
        biaya_sewa_tahun = '$biaya_sewa_tahun',
        luas_tanah_m2 = '$luas_tanah_m2',
        luas_bangunan_m2 = '$luas_bangunan_m2',
        status_properti = '$status_properti',
        terdapat_halaman = '$terdapat_halaman',
        lokasi_pinggir_jalan_raya = '$lokasi_pinggir_jalan_raya',
        dokumen_legal_shm = '$dokumen_legal_shm',
        dokumen_legal_imb_pbg = '$dokumen_legal_imb_pbg',
        dokumen_legal_pbb = '$dokumen_legal_pbb',
        diizinikan_buat_sekolah = '$diizinikan_buat_sekolah',
        opsi_sewa_5_tahun = '$opsi_sewa_5_tahun',
        diizinkan_oleh_developer = '$diizinkan_oleh_developer',
        lokasi_google_maps = '$lokasi_google_maps',
        link_iklan = '$link_iklan',
        dokumentasi_foto_fasilitas = '$dokumentasi_foto_fasilitas',
        acc_am_operations = '$acc_am_operations',
        jadwal_survei_lokasi = '$jadwal_survei_lokasi',
        sudah_disurvei_020 = '$sudah_disurvei_020',
        skor_lebih_dari_4 = '$skor_lebih_dari_4',
        approve_by_bu = '$approve_by_bu',
        deal_with_owner = '$deal_with_owner'
        WHERE idrisetpasar = '$idrisetpasar'
    ");

    if ($updateQuery) {
        header('Location: risetpasar.php'); 
    } else {
        echo 'Gagal memperbarui data. Error: ' . mysqli_error($conn);

    }
}

//hapus 
if (isset($_POST['hapus'])) {
    $idrisetpasar = $_POST['idrisetpasar'];

    $hapus = mysqli_query($conn, "delete from risetpasar where idrisetpasar='$idrisetpasar'");
    if ($hapus) {
        header('location:risetpasar.php');
    } else {
        echo 'Gagal Bang';
        header('location:risetpasar.php');
    }
};
