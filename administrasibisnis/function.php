<?php 
session_start();

//koneksi database
$conn = mysqli_connect("localhost","root","ikbar246","dashboard");

// Menangani proses penambahan data hub
if (isset($_POST['tambahdatahub'])) {
    // Ambil data dari form
    $lokasi = $_POST['lokasi'];
    $status = $_POST['status'];
    $region = $_POST['region'];
    $kepala_sekolah = $_POST['kepala_sekolah'];
    $wakil_kepala_operasional = $_POST['wakil_kepala_operasional'];
    $no_admin_hub = $_POST['no_admin_hub'];
    $start_sewa = $_POST['start_sewa'];
    $nama_pemilik = $_POST['nama_pemilik'];
    $luas_bangunan = $_POST['luas_bangunan'];
    $pks_sewa_menyewa = $_POST['pks_sewa_menyewa'];
    $legalitas_bangunan = $_POST['legalitas_bangunan'];
    $budget_pengeluaran_hub = $_POST['budget_pengeluaran_hub'];

    // Query untuk memasukkan data ke database
    $addtotable = mysqli_query($conn, "
        INSERT INTO datahub 
        (lokasi, status, region, kepala_sekolah, wakil_kepala_operasional, no_admin_hub, start_sewa, nama_pemilik, luas_bangunan, pks_sewa_menyewa, legalitas_bangunan, budget_pengeluaran_hub)
        VALUES 
        ('$lokasi', '$status', '$region', '$kepala_sekolah', '$wakil_kepala_operasional', '$no_admin_hub', '$start_sewa', '$nama_pemilik', '$luas_bangunan', '$pks_sewa_menyewa', '$legalitas_bangunan', '$budget_pengeluaran_hub')
    ");

    // Periksa apakah query berhasil
    if ($addtotable) {
        header('Location: datahub.php'); // Redirect ke halaman utama
    } else {
        echo 'Gagal menambahkan data hub';
        header('Location: datahub.php');
    }
}




// Menangani proses edit data hub
if (isset($_POST['update_hub'])) {
    // Ambil data dari form
    $id = $_POST['id']; // ID sebagai acuan data yang akan diedit
    $lokasi = $_POST['lokasi'];
    $status = $_POST['status'];
    $region = $_POST['region'];
    $kepala_sekolah = $_POST['kepala_sekolah'];
    $wakil_kepala_operasional = $_POST['wakil_kepala_operasional'];
    $no_admin_hub = $_POST['no_admin_hub'];
    $start_sewa = $_POST['start_sewa'];
    $nama_pemilik = $_POST['nama_pemilik'];
    $luas_bangunan = $_POST['luas_bangunan'];
    $pks_sewa_menyewa = $_POST['pks_sewa_menyewa'];
    $legalitas_bangunan = $_POST['legalitas_bangunan'];
    $budget_pengeluaran_hub = $_POST['budget_pengeluaran_hub'];

    // Query untuk memperbarui data di database
    $updateQuery = mysqli_query($conn, "
        UPDATE datahub 
        SET 
            lokasi = '$lokasi', 
            status = '$status', 
            region = '$region', 
            kepala_sekolah = '$kepala_sekolah', 
            wakil_kepala_operasional = '$wakil_kepala_operasional', 
            no_admin_hub = '$no_admin_hub', 
            start_sewa = '$start_sewa', 
            nama_pemilik = '$nama_pemilik', 
            luas_bangunan = '$luas_bangunan', 
            pks_sewa_menyewa = '$pks_sewa_menyewa', 
            legalitas_bangunan = '$legalitas_bangunan', 
            budget_pengeluaran_hub = '$budget_pengeluaran_hub'
        WHERE iddatahub = '$id'
    ");

    // Periksa apakah query berhasil
    if ($updateQuery) {
        header('Location: datahub.php'); // Redirect ke halaman utama
    } else {
        echo 'Gagal memperbarui data hub';
        header('Location: datahub.php');
    }
}

//hapus 
if(isset($_POST['hapusdatahub'])){
    $iddatahub = $_POST['id'];

    $hapus = mysqli_query($conn, "delete from datahub where iddatahub='$iddatahub'");
    if($hapus){
        header('location:datahub.php');
    } else {
        echo 'Gagal Bang';
        header('location:datahub.php');
    }
};



?>