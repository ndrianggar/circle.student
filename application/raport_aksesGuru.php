<style type="text/css">
  @media print {
    table{
      font-size: 14px;
    }
    body * {
      visibility: hidden;
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
<div class="row col-lg-12">
  <div class="box" id="section-to-print" style="border: 0px;">
    <div class="box-header">
      <h4 class="text-center">Laporan Tingkat Keaktifan Guru | <?php
        $date=date_create("$_GET[bulan]");
        echo date_format($date,"M Y");
        ?></h4>
    </div>
    <table class="table table-striped">
      <tr>
        <th style="text-align: center;">No</th>
        <th>Nama</th>
        <th style="text-align: center;">Jumlah Akses</th>
        <th style="text-align: center;">Jumlah Materi</th>
        <th style="text-align: center;">Kehadiran</th>
      </tr>
    <?php
    $dataGuru = mysql_query("SELECT * FROM rb_guru where unit = '".$_GET[unit]."' ORDER BY nama_guru ASC");$no=1;
    while ($row=mysql_fetch_array($dataGuru)) {
      $akses = mysql_fetch_array(mysql_query("SELECT b.nama_guru, COUNT(a.`identitas`) AS akses FROM rb_users_aktivitas a INNER JOIN rb_guru b ON a.identitas = b.nip where a.status='guru' and a.identitas = '".$row[nip]."' AND DATE_FORMAT(a.tanggal, '%Y-%m') = '".$_GET[bulan]."' GROUP BY a.`identitas`"));
      $materi =mysql_fetch_array(mysql_query("SELECT c.namamatapelajaran, d.nama_guru, COUNT(a.`id_materi_kategori`) As materi FROM `rb_quiz_materi` a INNER JOIN rb_quiz_materi_kategori b ON a.id_materi_kategori = b.id_materi_kategori INNER JOIN rb_mata_pelajaran c ON b.kode_pelajaran = c.kode_pelajaran INNER JOIN rb_guru d ON c.nip = d.nip WHERE d.nip = '".$row[nip]."'"));
      $absen = mysql_fetch_array(mysql_query("SELECT b.nama_guru,  COUNT(IF(kode_kehadiran='H',1, NULL)) 'Kehadiran' FROM `rb_absensi_guru` a INNER JOIN rb_guru b ON a.nip = b.nip WHERE DATE_FORMAT(`tanggal`, '%Y-%m') = '".$_GET[bulan]."' AND a.nip  = '".$row[nip]."'"));
      // echo "SELECT b.nama_guru, COUNT(a.nip) As Kehadiran FROM `rb_absensi_guru` a INNER JOIN rb_guru b ON a.nip = b.nip WHERE DATE_FORMAT(`tanggal`, "%Y-%m") = '2018-09';
      if (empty($akses[akses]||$akses<0)) {
        $jumAkses = 0;
      }else{
        $jumAkses = $akses[akses];
      }
      echo "
        <tr>
          <td align='center'>".$no++."</td>
          <td>".$row[nama_guru]."</td>
          <td align='center'>".$jumAkses."</td>
          <td align='center'>".$materi[materi]."</td>
          <td align='center'>".$absen[Kehadiran]."</td>
        </tr>
      ";
    }?>
    </table>
  </div>
  <button class="btn btn-primary pull-right" onclick="print()"><i class="fa fa-print"></i> PRINT</button>
</div>

