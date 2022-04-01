<?php 
require 'koneksi.php';

// ambil data di URL
$id = $_GET["id_konsul"];

// query data berdasarkan id

$konsul = query("SELECT * FROM konsultasi WHERE id_konsul = $id")[0];


?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Dashboard</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href='https://fonts.googleapis.com/css?family=Roboto Slab' rel='stylesheet'>
        <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet'>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
		<link rel="stylesheet" href="./css/main.css">
        <link rel="stylesheet" href="./css/preview-consul-style.css">
    </head>
<body>
<?php include("sidebar-admin.php") ?>
<div class="main-content-wrapper">
            <div class="main-content">
                <div class="bot-border">    
                <h1>Konsultasi 1</h1>
                </div>
                <div class="form-wrapper">
                    <div class="form-header"></div>
                    <div class="form-content">
                    Konsul ke :<br>
                    <input type="text" class="input" onfocus="this.blur()" readonly="readonly" placeholder="<?= $konsul ["konsul_ke"];  ?>"><br><br>
                
                    Tanggal :<br>
                    <input type="text" class="input" onfocus="this.blur()" readonly="readonly" placeholder="<?= $konsul ["hari_tanggal"];  ?>"><br><br>
                    
                    Tanggal :<br>
                    <input type="text" class="input" onfocus="this.blur()" readonly="readonly" placeholder="<?= $konsul ["Tujuan"];  ?>"><br><br>
                    
                    Tanggal :<br>
                    <textarea type="text" class="input-lg" onfocus="this.blur()" readonly="readonly" placeholder="<?= $konsul ["hasil_konsul"];  ?>"></textarea><br>
                    
                    Tanggal :<br>
                    <textarea type="text" class="input-lg" onfocus="this.blur()" readonly="readonly" placeholder="<?= $konsul ["catatan_konsul"];  ?>"></textarea><br>
                
  
                        </div>
                    </div>
                </div>
            </div>
</body>
</html>