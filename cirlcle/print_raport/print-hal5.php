<?php 
session_start();
error_reporting(0);
include "../config/koneksi.php"; 
include "../config/fungsi_indotgl.php"; 
$frt = mysql_fetch_array(mysql_query("SELECT * FROM rb_header_print ORDER BY id_header_print DESC LIMIT 1")); 
?>
<head>
<title>Hal 5 - Raport Siswa</title>
<link rel="stylesheet" href="../bootstrap/css/printer.css">
</head>
<body onload="window.print()">
<img src="../dist/img/watermark_smp.png" class="watermark">
<?php
$t = mysql_fetch_array(mysql_query("SELECT * FROM rb_tahun_akademik where id_tahun_akademik='$_GET[tahun]'"));
$s = mysql_fetch_array(mysql_query("SELECT a.*, b.*, c.nama_guru as walikelas, c.nip, d.nm_pararel FROM rb_siswa a 
                                      JOIN rb_kelas b ON a.kode_kelas=b.kode_kelas 
                                        LEFT JOIN rb_guru c ON b.nip=c.nip JOIN rb_kls_pararel d on d.id_kls_pararel = a.id_kls_pararel  where a.nisn='$_GET[id]'"));
if (substr($_GET[tahun],4,5)=='1'){ $semester = 'Ganjil'; }else{ $semester = 'Genap'; }
$iden = mysql_fetch_array(mysql_query("SELECT * FROM rb_identitas_sekolah ORDER BY id_identitas_sekolah DESC LIMIT 1"));
echo "<table width=100%>
        <tr>
          <td width=140px>Nama Sekolah</td> <td>:</td> <td>  $iden[nama_sekolah] </td>
          <td width=140px>Kelas</td> <td> :</td><td> $s[kode_kelas]</td>       
        </tr>
        <tr>
          <td>Alamat </td> <td>:</td>                   
          <td>  $iden[alamat_sekolah] </td>
          <td width=140px>Kelas Pararel </td> <td>:</td>   <td width=150px> $s[nm_pararel]</td>     
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
      </table><br>";

echo "DESKRIPSI PENGETAHUAN DAN KETERAMPILAM
<table id='tablemodul1' width=100% style='margin-top:2px' border=1>
          <tr>
            <th width='160px' colspan='2'>Mata Pelajaran</th>
            <th width='140px'>Aspek</th>
            <th>Deskripsi</th>
          </tr>";
      $kelompok = mysql_query("SELECT * FROM rb_kelompok_mata_pelajaran");  
      while ($k = mysql_fetch_array($kelompok)){
      echo "<tr>
            <td colspan='7'><b>$k[nama_kelompok_mata_pelajaran]</b></td>
          </tr>";
        $mapel = mysql_query("SELECT * FROM  rb_jadwal_pelajaran a JOIN rb_mata_pelajaran b ON a.kode_pelajaran=b.kode_pelajaran 
                                  where a.kode_kelas='$_GET[kelas]' AND a.id_tahun_akademik='$_GET[tahun]' AND b.id_kelompok_mata_pelajaran='$k[id_kelompok_mata_pelajaran]'");
        $no = 1;
        while ($m = mysql_fetch_array($mapel)){
        $maxn = mysql_fetch_array(mysql_query("SELECT * FROM rb_ledger where kodejdwl='$m[kodejdwl]' AND nisn='$s[nisn]'"));
        echo "<tr>
                <td width='30px' rowspan=2 align=center>$no</td>
                <td width='160px' rowspan=2>$m[namamatapelajaran]</td>
                <td>Pengetahuan</td>
                <td>$maxn[desk_pengetahuan]</td>
            </tr>
            <tr>
                <td>Keterampilan</td>
                <td>$maxn[desk_keterampilan]</td>
            </tr>";
        $no++;
        }
      }

        echo "</table><br/>";
?>

<script type="text/javascript">
    setTimeout(function () {
      window.print();
    }, 500);
    window.onfocus = function () { setTimeout(function () { window.close(); }, 500); }
     window.onafterprint = function () {  window.close(); }
</script>
</body>