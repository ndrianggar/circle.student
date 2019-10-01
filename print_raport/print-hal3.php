<?php 
session_start();
error_reporting(0);
include "../config/koneksi.php"; 
include "../config/fungsi_indotgl.php"; 
$skp = mysql_fetch_array(mysql_query("SELECT * FROM rb_nilai_sikap_semester where id_tahun_akademik='$_GET[tahun]' AND nisn='$_GET[id]' AND kode_kelas='$_GET[kelas]'")); 
?>
<html>
<head>
<title>Hal 3 - Raport Siswa</title>
<link rel="stylesheet" href="../bootstrap/css/printer.css">
</head>
<body onload="window.print()">
<!-- <img src="../dist/img/watermark_smp.png" class="watermark"> -->
<?php
$t = mysql_fetch_array(mysql_query("SELECT * FROM rb_tahun_akademik where id_tahun_akademik='$_GET[tahun]'"));
$s = mysql_fetch_array(mysql_query("SELECT a.*, b.*, c.nama_guru as walikelas, c.nip, d.nm_pararel FROM rb_siswa a 
                                      JOIN rb_kelas b ON a.kode_kelas=b.kode_kelas 
                                        LEFT JOIN rb_guru c ON b.nip=c.nip JOIN rb_kls_pararel d on d.id_kls_pararel = a.id_kls_pararel  where a.nisn='$_GET[id]'"));
if (substr($_GET[tahun],4,5)=='1'){ $semester = 'Ganjil'; }else{ $semester = 'Genap'; }
$iden = mysql_fetch_array(mysql_query("SELECT * FROM rb_identitas_sekolah where unit='$_SESSION[unit]' ORDER BY id_identitas_sekolah DESC LIMIT 1"));
echo "<table width=100% style>
        <tr>
          <td width=130px>Nama Sekolah</td> <td>:</td> <td> $_SESSION[unit] $iden[nama_sekolah] </td>
          <td width=130px>Kelas</td> <td> :</td><td> $s[kode_kelas]</td>       
        </tr>
        <tr>
          <td>Alamat </td> <td>:</td>                   
          <td>  $iden[alamat_sekolah] </td>
          <td width=130px>Kelas Pararel </td> <td>:</td>   <td width=150px> $s[nm_pararel]</td>     
        </tr>
        <tr>
          <td>Nama Peserta Didik </td> <td>:</td>       
          <td>  <b>$s[nama]</b> </td>     
          <td>Semester </td> <td>:</td> <td> $semester</td>      
        </tr>
        <tr>
          <td>No Induk/NISN </td> <td>:</td>            
          <td>  $s[nipd] / $s[nisn]</td>        
           <td>Tahun Pelajaran </td> <td>:</td> <td> $t[keterangan]</td>
        </tr>
      </table><br>


      <h2 align=center>CAPAIAN HASIL BELAJAR</h2>
      <b>A. SIKAP</b><br><br>";
echo "<b>1. Sikap Spiritual</b>
      <table id='tablemodul1' width=100% border=1>
          <tr>
            <th width='190px'>Predikat</th>
            <th>Deskripsi</th>
          </tr>
          <tr>
            <th style='padding:60px'>$skp[spiritual_predikat]</th>
            <th>$skp[spiritual_deskripsi]</th>
          </tr>
      </table><br/>";

echo "<b>2. Sikap Sosial</b>
      <table id='tablemodul1' width=100% border=1>
          <tr>
            <th width='190px'>Predikat</th>
            <th>Deskripsi</th>
          </tr>
          <tr>
            <th style='padding:60px'>$skp[sosial_predikat]</th>
            <th>$skp[sosial_deskripsi]</th>
          </tr>
      </table><br/>";
?>

</body>
<script type="text/javascript">
    setTimeout(function () {
      window.print();
    }, 500);
    window.onfocus = function () { setTimeout(function () { window.close(); }, 500); }
     window.onafterprint = function () {  window.close(); }
</script>
</html>