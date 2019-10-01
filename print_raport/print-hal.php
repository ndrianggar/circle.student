<?php 
session_start();
error_reporting(0);
include "../config/koneksi.php"; 
include "../config/fungsi_indotgl.php"; 

 
    $si = mysql_fetch_array(mysql_query("SELECT * FROM rb_identitas_sekolah WHERE unit ='$_SESSION[unit]' ORDER BY id_identitas_sekolah DESC LIMIT 1"));
    $s = mysql_fetch_array(mysql_query("SELECT * FROM rb_siswa where nisn='$_GET[id]'"));
?>
<html>
<head>
<title>Cover Raport Siswa</title>
<link rel="stylesheet" href="../bootstrap/css/printer.css">
</head>
<body onload="window.print()">
    <center>
        <img width='170px' src='logo.png'><br><br><br>
        <h1 align=center>LAPORAN HASIL BELAJAR SISWA <br>IBNU HAJAR BOARDING SCHOOL</h1><br><br><br>
        <h1></h1>Alamat Sekolah : <?php echo $si[alamat_sekolah];?>
        <!-- Alamat Sekolah : Jl. Mushola Fathul Ulum, RT.3/RW.2, Munjul, Cipayung, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13850 --><br><br><br>
        <img width='170px' src='logo-<?php if($_GET[kelas]=="VII"||$_GET[kelas]=="VIII"||$_GET[kelas]=="IX"){echo"smp";}else{echo"sma";} ?>-ihbs.png'><br><br><br><br><br>

        
        <table>
        	<tr><td width='140px'>Nama Peserta Didik</td><td> : <?php echo $s[nama]; ?></td></tr>
        	<tr><td>No Induk</td><td> : <?php echo "$s[nipd]"; ?></td></tr>
        </table><br><br><br><br>

        <p style='font-size:22px; font-weight:bold'>DEPARTEMEN PENDIDIKAN NASIONAL <br>REPUBLIK INDONESIA</p>
    </center>
</body>
<script type="text/javascript">
    setTimeout(function () {
      window.print();
    }, 500);
    window.onfocus = function () { setTimeout(function () { window.close(); }, 500); }
     window.onafterprint = function () {  window.close(); }
</script>
</html>