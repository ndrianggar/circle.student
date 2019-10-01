
<?php 
session_start();
error_reporting(0);
include "../config/koneksi.php"; 
?>
<?php
$r=mysql_fetch_array(mysql_query("SELECT * FROM rb_prospel where tgl_pel ='$_GET[blnPel]'"));

?>
<!DOCTYPE html>
<html>
<head>
  <title></title>
  <link rel="stylesheet" href="../bootstrap/css/printer.css">
  <style type="text/css"> 
@media print {
thead { display: table-header-group; }
tfoot { display: table-footer-group; }
}
@media screen {
thead { display: block; }
tfoot { display: block; }
}

</style>
</head>
<body onload="window.print()">

</body>
</html>
<div class="row col-lg-12">
  <div class="box" id="section-to-print" style="border: 0px;">
    <div class="box-header">
    <h1 colspan="5" align="center" style="text-align:center; ">Laporan Pelanggaran Siswa | <?php echo date('d-M-Y', strtotime($_GET[blnPel])) ?></h1>
    </div>
  <div class="box-header">
    <!-- <h3 class="box-title" align="right">Responsive Hover Table</h3> -->
     <div class="box-tools">
      <div class="input-group" style="width: 150px;">
       
      </div>
    </div>
  </div>
</br>

    <table class="table table-striped" id="tablestd" width="100%" style="font-size: 12px;">
      <thead>
      <tr>
        <th style="text-align: center;">No</th>
        <th>Nama Siswa</th>
        <th>Kelas Pararel</th>
        <th>Jenis Pelanggaran</th>
        <th style="text-align: center;">Jumlah Pelanggaran</th>
        <th style="text-align: center;">Unit</th>

      </tr></thead>
    <?php

    if(!empty($_SESSION[unit])){

     $siswa = mysql_query("SELECT id_jns_pel,nm_pararel,nama,`id_siswa`,unit , GROUP_CONCAT(`nm_jnspel`,'<p>') as nm_jnspel, GROUP_CONCAT(pel,'<p>') AS jumlahpel FROM (SELECT a.id_siswa,a.`id_jns_pel`,d.nm_jnspel, b.nama, c.nm_pararel,a.unit, COUNT(a.id_jns_pel) as pel FROM rb_prospel a INNER JOIN rb_siswa b on a.id_siswa=b.id_siswa  INNER JOIN rb_kls_pararel c ON b.id_kls_pararel = c.id_kls_pararel LEFT JOIN rb_jns_pel d ON a.id_jns_pel = d.id_jns_pel WHERE a.unit = '$_SESSION[unit]' AND DATE_FORMAT(tgl_pel, '%Y-%m')='$_GET[blnPel]' GROUP BY a.id_jns_pel,a.id_siswa) as nm_jnspel GROUP BY id_siswa
");  
    }else{
    $siswa = mysql_query("SELECT id_jns_pel,nm_pararel,nama,`id_siswa`,unit, GROUP_CONCAT(`nm_jnspel`,'<p>') as nm_jnspel, GROUP_CONCAT(pel,'<p>') AS jumlahpel FROM (SELECT a.id_siswa,a.`id_jns_pel`,d.nm_jnspel, b.nama, c.nm_pararel, a.unit, COUNT(a.id_jns_pel) as pel FROM rb_prospel a INNER JOIN rb_siswa b on a.id_siswa=b.id_siswa  INNER JOIN rb_kls_pararel c ON b.id_kls_pararel = c.id_kls_pararel LEFT JOIN rb_jns_pel d ON a.id_jns_pel = d.id_jns_pel WHERE DATE_FORMAT(tgl_pel, '%Y-%m')='$_GET[blnPel]' GROUP BY a.id_jns_pel,a.id_siswa) as nm_jnspel GROUP BY id_siswa
");  
    }
 
    $no=1;
    while ($row=mysql_fetch_array($siswa)) {
   
      echo "
        <tr>

          <td align='center'>".$no++."</td>
          <td>".$row[nama]."</td>
          <td>".$row[nm_pararel]."</td>
          <td><br>".str_replace(',', '', $row[nm_jnspel])."</td>
          <td align='center'><br>".str_replace(',','',

          $row[jumlahpel])."</td>
          <td>".$row[unit]."</td>
        
         </tr>
 
      ";
    }?>

                         

    </table>
  
  </div>
  
 

</div>

<script type="text/javascript">
    setTimeout(function () {
      window.print();
    }, 500);
    window.onfocus = function () { setTimeout(function () { window.close(); }, 500); }
     window.onafterprint = function () {  window.close(); }
</script>
</body>
</html>