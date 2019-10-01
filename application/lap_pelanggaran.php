<style type="text/css">
  @media print {
    table{
      font-size: 14px;
    }
    body * {
      
    }
    #section-to-print, #section-to-print * {
      visibility: visible;
    }
    #section-to-print {
      position: absolute;
      left: 0;
      top: 0;
    }
     #header {visibility: visible;}
    top-center { content: "This page is intentionally left blank." }
  }
</style>
<?php 
session_start();
error_reporting(0);
include "../config/koneksi.php"; 
?>
<?php
$r=mysql_fetch_array(mysql_query("SELECT * FROM rb_prospel where tgl_pel ='$_GET[blnPel]'"));

?>
<div class="row col-lg-12">
  <div class="box" id="section-to-print" style="border: 0px;">
    <div class="box-header">
      <h4 class="text-center">Laporan Pelanggaran Siswa | <?php echo date('d-M-Y', strtotime($_GET[blnPel])) ?></h4>
    </div>
	<div class="box-header">
	  <!-- <h3 class="box-title" align="right">Responsive Hover Table</h3> -->
	   <div class="box-tools">
	    <div class="input-group" style="width: 150px;">
	     <input type="text" name="blnPel" class="form-control input-sm pull-right" id="getblnPelanggaran"placeholder="-Pilih Bulan-" onchange="gantiBulan()" value="<?php echo $_GET[blnPel]?>">
	     
	    </div>
	  </div>
	</div>
</br>

    <table class="table table-striped" id="pel">
      <tr>
        <th style="text-align: center;">No</th>
        <th>Nama Siswa</th>
        <th>Kelas Pararel</th>
        <th>Jenis Pelanggaran</th>
        <th style="text-align: center;">Jumlah Pelanggaran</th>
        <th style="text-align: center;">Unit</th>

      </tr>
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
          <td>".str_replace(',', '', $row[nm_jnspel])."</td>
          <td align='center'>".str_replace(',','',

          $row[jumlahpel])."</td>
          <td>".$row[unit]."</td>
        
         </tr>
 
      ";
    }?>

                         

    </table>
  
  </div>
  <?php
  echo "<button class='btn btn-primary pull-right'><span class='glyphicon glyphicon-print'></span> <a target='_BLANK' class='btn btn-success btn-xs' href='print_raport/laPer.php?blnPel=$_GET[blnPel]'>PRINT</a></button>";?>

</div>

