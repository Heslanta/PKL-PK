<?php 
require 'koneksi.php';

// ambil data di URL
$id = $_GET["id_konsul"];

// query data berdasarkan id
$data = query("SELECT * FROM konsultasi WHERE id_konsul = $id")[0];
    
// cek apakah tombol submit udah ditekan atau belum
if( isset($_POST["submit"]) ){

    // cek berhasil ubah atau tidak
    if(ubahkonsul($_POST) > 0 ) {
        echo "
        <script>
            alert('data berhasil diubah!');
            document.location.href = 'AdminBeranda.php';
        </script>
        ";
    } else {
        // echo " <script>
        // alert('data gagal diubah!');
        // document.location.href = 'AdminBeranda.php';
        // </script>";
    }


}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ubah Data Konsultasi</title>
</head>
<body>
    <h1>Ubah Data Konsultasi</h1>

    <form action="" method="post">
        <input type="hidden" name="id_konsul" value="<?= $data["id_konsul"]; ?>">
        <ul>
            <li>
                <label for="konsul_ke">Konsul ke : </label>
                <input type="text" name="konsul_ke" id="konsul_ke" value="<?= $data["konsul_ke"]; ?>" required>
            </li>
            <li>
                <label for="hari_tanggal">Tanggal : </label>
                <input type="date" name="hari_tanggal" id="hari_tanggal" value="<?= $data["hari_tanggal"]; ?>">
            </li>
            <li>
                <label for="Tujuan">Nomor Telpon : </label>
                <input type="text" name="Tujuan" id="Tujuan" value="<?= $data["Tujuan"]; ?>">
                
            </li>
            <li>
                <label for="hasil_konsul">Hasil Konsul : </label>
                <textarea rows="6" id="hasil_konsul" name="hasil_konsul"  placeholder=""><?= $data["hasil_konsul"]; ?></textarea>
            </li>
            <li>
                <label for="catatan_konsul">Catatan Konsul : </label>
                <textarea rows="6" id="catatan_konsul" name="catatan_konsul"  placeholder=""><?= $data["catatan_konsul"]; ?></textarea>
            </li>
            <li>
                <button type="submit" name="submit">Submit</button>
            </li>
        </ul>
    </form>
</body>
</html>