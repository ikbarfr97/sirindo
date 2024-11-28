<?php 
session_start();

//koneksi database
$conn = mysqli_connect("localhost","root","ikbar246","dashboard");

//menambah barang baru
if(isset($_POST['addnewbarang'])){
    $hub = $_POST['hub'];
    $item = $_POST['item'];
    $code = $_POST['code'];
    $location = $_POST['location'];
    $brand = $_POST['brand'];
    $stock = $_POST['stock']; 

    $addtotable = mysqli_query($conn, "insert into stock (hub, item, code, location, brand, stock) values('$hub', '$item', '$code', '$location', '$brand', '$stock')");
    if($addtotable){
        header('location:barang.php');
    } else {
        echo 'Gagal Bang';
        header('location:barang.php');
    }
};


//menambah barang masuk
if(isset($_POST['barangmasuk'])){
    $barangnya = $_POST['barangnya'];
    $penerima = $_POST['penerima'];
    $qty = $_POST['qty'];
    $qtyb = $_POST['qtyb'];
    $qtyr = $_POST['qtyr'];

    $cekstocksekarang = mysqli_query($conn,"select * from stock where idbarang='$barangnya'");
    $ambildatanya = mysqli_fetch_array($cekstocksekarang);

    $stocksekarang = $ambildatanya['stock'];
    $tambahkanstocksekarangdenganquantity = $stocksekarang+$qty+$qtyb+$qtyr;

    $addtomasuk = mysqli_query($conn,"insert into masuk (idbarang, penerima, qty, qtyb, qtyr) values('$barangnya','$penerima','$qty','$qtyb','$qtyr')");
    $updatestockmasuk = mysqli_query($conn,"update stock set stock='$tambahkanstocksekarangdenganquantity' where idbarang='$barangnya'");
    if($addtomasuk&&$updatestockmasuk){
        header('location:masuk.php');
    } else {
        echo 'Gagal Bang';
        header('location:masuk.php');
    }
};

//menambah barang keluar

if(isset($_POST['addbarangkeluar'])){
    $barangnya = $_POST['barangnya']; 
    $penerima = $_POST['penerima'];
    $qty = $_POST['qty'];

    $cekstocksekarang = mysqli_query($conn,"select * from stock where idbarang='$barangnya'");
    $ambildatanya = mysqli_fetch_array($cekstocksekarang);

    $stocksekarang = $ambildatanya['stock'];
    if($stocksekarang >= $qty){
    //kalau barang cukup
        $tambahkanstocksekarangdenganquantity = $stocksekarang-$qty;

        $addtokeluar = mysqli_query($conn,"insert into keluar (idbarang, penerima, qty) values('$barangnya','$penerima','$qty')");
        $updatestockmasuk = mysqli_query($conn,"update stock set stock='$tambahkanstocksekarangdenganquantity' where idbarang='$barangnya'");
        if($addtokeluar&&$updatestockmasuk){
            header('location:keluar.php');
        } else {
            echo 'Gagal Bang';
            header('location:keluar.php');
        }
    } else {
        //kalau barang tidak cukup
        echo '
        <script>
            alert("Stock Saat Ini Tidak Mencukupi.");
            window.location.href="keluar.php";
        </script>
        ';
    }
};

//edit barang
if(isset($_POST['updatebarang'])){
    $idb = $_POST['idb'];
    $hub = $_POST['hub'];
    $item = $_POST['item'];
    $code = $_POST['code'];
    $location = $_POST['location'];
    $brand = $_POST['brand'];

    $update = mysqli_query($conn,"update stock set hub='$hub', item='$item', code='$code', location='$location', brand='$brand' where idbarang='$idb'");
    if($update){
        header('location:barang.php');
    } else {
        echo 'Gagal Bang';
        header('location:barang.php');
    }
};

//hapus barang
if (isset($_POST['hapusbarang'])) {
    $idb = $_POST['idb'];
    $now = date('Y-m-d H:i:s'); // Waktu saat ini

    $hapus = mysqli_query($conn, "UPDATE stock SET is_deleted = 1, deleted_at = '$now' WHERE idbarang = '$idb'");
    if ($hapus) {
        header('location:barang.php');
    } else {
        echo 'Gagal menghapus barang';
        header('location:barang.php');
    }
};

if (isset($_POST['restore'])) {
    $idb = $_POST['idb'];
    $now = date('Y-m-d H:i:s'); // Waktu saat ini

    $restore = mysqli_query($conn, "UPDATE stock SET is_deleted = 0, deleted_at = NULL, restored_at = '$now' WHERE idbarang = '$idb'");
    if ($restore) {
        header('location:barang_recycle.php');
    } else {
        echo 'Gagal Memulihkan Barang';
    }
}

if (isset($_POST['permanentDelete'])) {
    $idb = $_POST['idb'];

    $delete = mysqli_query($conn, "DELETE FROM stock WHERE idbarang = '$idb'");
    if ($delete) {
        header('location:barang_recycle.php');
    } else {
        echo 'Gagal Menghapus Permanen';
    }
}


//update barang masuk
if(isset($_POST['updatebarangmasuk'])){
    $idb = $_POST['idb'];
    $idm = $_POST['idm'];
    $deskripsi = $_POST['penerima'];
    $qty = $_POST['qty'];

    $lihatstock = mysqli_query($conn, "select * from stock where idbarang='$idb'");
    $stocknya = mysqli_fetch_array($lihatstock);
    $stockbarang = $stocknya['stock'];

    $qtyskrg = mysqli_query($conn, "select * from masuk where idmasuk='$idm'");
    $qtynya = mysqli_fetch_array($qtyskrg);
    $qtyskrg = $qtynya['qty'];

    if($qty>$qtykrg){
        $selisih = $qty-$qtyskrg;
        $kurangin = $stockskrg + $selisih;
        $kurangistocknya = mysqli_query($conn, "update stock set stock='$kurangin' where idbarang='$idb'");
        $updatenya = mysqli_query($conn, "update masuk set qty='$qty', penerima='$deskripsi' where idmasuk='$idm'");
        if($kurangistocknya&&$updatenya){
            header('location:masuk.php');
    } else {
        echo 'Gagal Bang';
        header('location:masuk.php');
        }
    } else {
            $selisih = $qtyskrg-$qty;
            $kurangin = $stockskrg - $selisih;
            $kurangistocknya = mysqli_query($conn, "update stock set stock='$kurangin' where idbarang='$idb'");
            $updatenya = mysqli_query($conn, "update masuk set qty='$qty', penerima='$deskripsi' where idmasuk='$idm'");
            if($kurangistocknya&&$updatenya){
                header('location:masuk.php');
        } else {
            echo 'Gagal Bang';
            header('location:masuk.php');
            }
    }
};

//menghapus barang masuk
if(isset($_POST['hapusbarangmasuk'])){
    $idb = $_POST['idb'];
    $qty = $_POST['kty'];
    $idm = $_POST['idm'];

    $getdatastock = mysqli_query($conn, "select * from stock barang where idbarang='$idb'");
    $data = mysqli_fetch_array($getdatastock);
    $stock = $data['stock'];

    $selisih = $stock-$qty;
    
    $update = mysqli_query($conn, "update stock set stock='$selisih' where idbarang='$idb'");
    $hapusdata = mysqli_query($conn, "delete from masuk where idmasuk='$idm'");

    if($update&&$hapusdata){
        header('location:masuk.php');
    } else {
        header('location:masuk.php');
    }
};

//barang keluar
if(isset($_POST['updatebarangkeluar'])){
    $idb = $_POST['idb'];
    $idk = $_POST['idk'];
    $penerima = $_POST['penerima'];
    $qty = $_POST['qty'];

    $lihatstock = mysqli_query($conn, "select * from stock where idbarang='$idb'");
    $stocknya = mysqli_fetch_array($lihatstock);
    $stockbarang = $stocknya['stock'];

    $qtyskrg = mysqli_query($conn, "select * from keluar where idkeluar='$idk'");
    $qtynya = mysqli_fetch_array($qtyskrg);
    $qtyskrg = $qtynya['qty'];

    if($qty>$qtykrg){
        $selisih = $qty-$qtyskrg;
        $kurangin = $stockskrg - $selisih;
        $kurangistocknya = mysqli_query($conn, "update stock set stock='$kurangin' where idbarang='$idb'");
        $updatenya = mysqli_query($conn, "update keluar set qty='$qty', penerima='$penerima' where idkeluar='$idk'");
        if($kurangistocknya&&$updatenya){
            header('location:keluar.php');
    } else {
        echo 'Gagal Bang';
        header('location:keluar.php');
        }
    } else {
            $selisih = $qtyskrg-$qty;
            $kurangin = $stockskrg + $selisih;
            $kurangistocknya = mysqli_query($conn, "update stock set stock='$kurangin' where idbarang='$idb'");
            $updatenya = mysqli_query($conn, "update keluar set qty='$qty', penerima='$penerima' where idkeluar='$idk'");
            if($kurangistocknya&&$updatenya){
                header('location:keluar.php');
        } else {
            echo 'Gagal Bang';
            header('location:keluar.php');
            }
    }
};

//menghapus barang keluar
if(isset($_POST['hapusbarangkeluar'])){
    $idb = $_POST['idb'];
    $qty = $_POST['kty'];
    $idk = $_POST['idk'];

    $getdatastock = mysqli_query($conn, "select * from stock barang where idbarang='$idb'");
    $data = mysqli_fetch_array($getdatastock);
    $stock = $data['stock'];

    $selisih = $stock+$qty;
    
    $update = mysqli_query($conn, "update stock set stock='$selisih' where idbarang='$idb'");
    $hapusdata = mysqli_query($conn, "delete from keluar where idkeluar='$idk'");

    if($update&&$hapusdata){
        header('location:keluar.php');
    } else {
        header('location:keluar.php');
    }
};

//tambah admin
if(isset($_POST['addadmin'])){
    $email = $_POST['email'];
    $password = $_POST['password'];

    $queryinsert = mysqli_query($conn, "insert into login (email, password) values ('$email','$password')");

    if($queryinsert){
        //jika berhasil
        header('location:admin.php');
    } else {
        //jika gagal
        header('location:admin.php');
    }
};

//edit admin
if(isset($_POST['updateadmin'])){
    $emailbaru = $_POST['emailadmin'];
    $passwordbaru = $_POST['passwordbaru'];
    $idnya = $_POST['id'];

    $queryupdate = mysqli_query($conn, "update login set email='$emailbaru', password='$passwordbaru' where iduser='$idnya'");

    if(isset($queryupdate)){
        //jika berhasil
        header('location:admin.php');
    } else {
        //jika gagal
        header('location:admin.php');
    }
};

//hapus admin
if(isset($_POST['hapusadmin'])){
    $id = $_POST['id'];

    $querydelete = mysqli_query($conn, "delete from login where iduser='$id'");

    if(isset($querydelete)){
        //jika berhasil
        header('location:admin.php');
    } else {
        //jika gagal
        header('location:admin.php');
    }
}

?>