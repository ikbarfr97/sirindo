<?php
require 'function.php';
require 'cek.php';
?>
<html>

<head>
    <title>Barang Masuk</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
    <link rel="stylesheet" type="text/css"
        href="https://cdn.datatables.net/buttons/1.6.5/css/buttons.dataTables.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js">
    </script>
</head>

<body>
    <div class="container">
        <h2>Barang Masuk</h2>
        <h4>(Inventory)</h4>
        <div class="data-tables datatable-dark">

            <table class="tables table-bordered" id="mauexport" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Hub</th>
                        <th>Item</th>
                        <th>Asset Code</th>
                        <th>Penerima</th>
                        <th>Quantity Good</th>
                        <th>Quantity Bad</th>
                        <th>Quantity Required</th>
                    </tr>
                </thead>
                <tbody>

                    <?php
                                $ambilsemuadata = mysqli_query($conn,"select masuk.*, stock.* from masuk inner join stock on masuk.idbarang = stock.idbarang");
                                $i = 1;
                                while($data=mysqli_fetch_array($ambilsemuadata)){
                                    $hub = $data['hub'];
                                    $item = $data['item'];
                                    $code = $data['code'];
                                    $penerima = $data['penerima'];
                                    $qty = $data['qty'];
                                    $qtyb = $data['qtyb'];
                                    $qtyr = $data['qtyr'];
                                    $idb = $data['idbarang'];

                                ?>

                    <tr>
                        <td><?=$i++;?></td>
                        <td><?php echo $hub;?></td>
                        <td><?php echo $item;?></td>
                        <td><?php echo $code;?></td>
                        <td><?php echo $penerima;?></td>
                        <td><?php echo $qty;?></td>
                        <td><?php echo $qtyb;?></td>
                        <td><?php echo $qtyr;?></td>
                    </tr>

                    <?php
                                };
                                ?>

                </tbody>
            </table>
            <a href="index.php" class="btn btn-info">Kembali</a>

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

    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.6.5/js/dataTables.buttons.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.6.5/js/buttons.flash.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.6.5/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.6.5/js/buttons.print.min.js"></script>



</body>

</html>