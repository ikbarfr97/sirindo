<?php
session_start();

//koneksi database
$conn = mysqli_connect("localhost", "root", "ikbar246", "dashboard");


if (isset($_POST['tambahhubvisualisasi'])) {
    // Ambil data dari form
    $hub = $_POST['hub'];

    // Query untuk memasukkan data ke database
    $addtotable = mysqli_query($conn, "
        INSERT INTO visualisasi 
        (hub)
        VALUES 
        ('$hub')
    ");

    // Periksa apakah query berhasil
    if ($addtotable) {
        header('Location: visualisasi.php'); // Redirect ke halaman utama
    } else {
        echo 'Gagal menambahkan data hub';
        header('Location: visualisasi.php');
    }
}

if (isset($_POST['tambahhubrealisasi'])) {
    // Ambil data dari form
    $hub = $_POST['hub'];

    // Query untuk memasukkan data ke database
    $addtotable = mysqli_query($conn, "
        INSERT INTO realisasi 
        (hub)
        VALUES 
        ('$hub')
    ");

    // Periksa apakah query berhasil
    if ($addtotable) {
        header('Location: realisasi.php'); // Redirect ke halaman utama
    } else {
        echo 'Gagal menambahkan data hub';
        header('Location: realisasi.php');
    }
}

if (isset($_POST['hapus_hub_visualisasi'])) {
    $hub_id = $_POST['hub_id'];

    // Hapus foto-foto yang terkait dengan hub
    $delete_foto_query = "DELETE FROM visualisasi_foto WHERE idvisualisasi = '$hub_id'";
    $delete_foto_result = mysqli_query($conn, $delete_foto_query);

    // Hapus data hub
    $delete_hub_query = "DELETE FROM visualisasi WHERE idvisualisasi = '$hub_id'";
    $delete_hub_result = mysqli_query($conn, $delete_hub_query);

    if ($delete_hub_result) {
        header('Location: visualisasi.php'); // Redirect ke halaman utama
    } else {
        echo 'Gagal menambahkan data hub';
        header('Location: visualisasi.php');
    }
}

if (isset($_POST['hapus_hub_realisasi'])) {
    $hub_id = $_POST['hub_id'];

    // Hapus foto-foto yang terkait dengan hub
    $delete_foto_query = "DELETE FROM realisasi_foto WHERE idrealisasi = '$hub_id'";
    $delete_foto_result = mysqli_query($conn, $delete_foto_query);

    // Hapus data hub
    $delete_hub_query = "DELETE FROM realisasi WHERE idrealisasi = '$hub_id'";
    $delete_hub_result = mysqli_query($conn, $delete_hub_query);

    if ($delete_hub_result) {
        header('Location: realisasi.php'); // Redirect ke halaman utama
    } else {
        echo 'Gagal menambahkan data hub';
        header('Location: realisasi.php');
    }
}




// Menangani proses penambahan foto ke visualisasi hub
if (isset($_POST['upload_foto_visualisasi'])) {
    // Ambil data dari form
    $idvisualisasi = $_POST['idvisualisasi']; // ID visualisasi hub
    $judul = $_POST['judul']; // Judul foto
    $foto = $_FILES['foto']; // Foto yang diupload

    if ($foto['error'] == 0) {
        $target_dir = "uploads/";
        $target_file = $target_dir . basename($foto['name']);
        $imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));

        if (in_array($imageFileType, ['jpg', 'jpeg', 'png', 'gif'])) {
            if (move_uploaded_file($foto['tmp_name'], $target_file)) {
                $add_foto_query = mysqli_query($conn, "
                    INSERT INTO visualisasi_foto (idvisualisasi, judul, foto) 
                    VALUES ('$idvisualisasi', '$judul', '$target_file')
                ");

                // Periksa apakah query berhasil
                if ($add_foto_query) {
                    header('Location: visualisasi.php'); // Redirect ke halaman visualisasi setelah foto berhasil ditambahkan
                } else {
                    echo 'Gagal menambahkan foto ke database';
                }
            } else {
                echo 'Gagal mengupload foto, coba lagi';
            }
        } else {
            echo 'Hanya file gambar yang diizinkan (jpg, jpeg, png, gif)';
        }
    } else {
        echo 'Tidak ada file yang diupload';
    }
}

if (isset($_POST['hapusfoto_visualisasi'])) {
    // Ambil ID foto yang akan dihapus
    $idfoto = $_POST['idfoto'];

    // Ambil informasi foto dari database untuk mencari file-nya
    $query = "SELECT foto FROM visualisasi_foto WHERE id = '$idfoto'";
    $result = mysqli_query($conn, $query);

    if (mysqli_num_rows($result) > 0) {
        // $foto = mysqli_fetch_assoc($result);
        // $foto_path = $foto['foto']; // Lokasi file gambar

        // // Hapus file gambar dari server (jika ada)
        // if (file_exists($foto_path)) {
        //     unlink($foto_path); // Menghapus file gambar
        // }

        // Hapus data foto dari database
        $delete_query = "DELETE FROM visualisasi_foto WHERE id = '$idfoto'";
        if (mysqli_query($conn, $delete_query)) {
            // Redirect setelah berhasil menghapus
            header("Location: visualisasi.php"); // Ganti dengan halaman yang sesuai
        } else {
            echo "Gagal menghapus data foto.";
        }
    } else {
        echo "Foto tidak ditemukan.";
    }
}


if (isset($_POST['upload_foto_realisasi'])) {
    // Ambil data dari form
    $idrealisasi = $_POST['idrealisasi']; // ID realisasi hub
    $judul = $_POST['judul']; // Judul foto
    $foto = $_FILES['foto']; // Foto yang diupload

    if ($foto['error'] == 0) {
        $target_dir = "uploads/";
        $target_file = $target_dir . basename($foto['name']);
        $imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));

        if (in_array($imageFileType, ['jpg', 'jpeg', 'png', 'gif'])) {
            if (move_uploaded_file($foto['tmp_name'], $target_file)) {
                $add_foto_query = mysqli_query($conn, "
                    INSERT INTO realisasi_foto (idrealisasi, judul, foto) 
                    VALUES ('$idrealisasi', '$judul', '$target_file')
                ");

                // Periksa apakah query berhasil
                if ($add_foto_query) {
                    header('Location: realisasi.php'); // Redirect ke halaman realisasi setelah foto berhasil ditambahkan
                } else {
                    echo 'Gagal menambahkan foto ke database';
                }
            } else {
                echo 'Gagal mengupload foto, coba lagi';
            }
        } else {
            echo 'Hanya file gambar yang diizinkan (jpg, jpeg, png, gif)';
        }
    } else {
        echo 'Tidak ada file yang diupload';
    }
}

if (isset($_POST['hapusfoto_realisasi'])) {
    // Ambil ID foto yang akan dihapus
    $idfoto = $_POST['idfoto'];

    // Ambil informasi foto dari database untuk mencari file-nya
    $query = "SELECT foto FROM realisasi_foto WHERE id = '$idfoto'";
    $result = mysqli_query($conn, $query);

    if (mysqli_num_rows($result) > 0) {
        // $foto = mysqli_fetch_assoc($result);
        // $foto_path = $foto['foto']; // Lokasi file gambar

        // // Hapus file gambar dari server (jika ada)
        // if (file_exists($foto_path)) {
        //     unlink($foto_path); // Menghapus file gambar
        // }

        // Hapus data foto dari database
        $delete_query = "DELETE FROM realisasi_foto WHERE id = '$idfoto'";
        if (mysqli_query($conn, $delete_query)) {
            // Redirect setelah berhasil menghapus
            header("Location: realisasi.php"); // Ganti dengan halaman yang sesuai
        } else {
            echo "Gagal menghapus data foto.";
        }
    } else {
        echo "Foto tidak ditemukan.";
    }
}
