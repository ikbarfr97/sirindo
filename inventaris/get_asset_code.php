<?php
// Koneksi ke database
$conn = mysqli_connect("localhost","root","","ikbardashboard");

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['idbarang'])) {
    $idbarang = $_POST['idbarang'];

    // Query untuk mendapatkan Asset Code berdasarkan ID barang
    $query = mysqli_query($conn, "select code from stock where idbarang='$idbarang'");
    $result = mysqli_fetch_assoc($query);

    // Mengembalikan data sebagai JSON
    echo json_encode(['asset_code' => $result['code']]);
}

mysqli_close($conn);

?>