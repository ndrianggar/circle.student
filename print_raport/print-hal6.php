<?php 
session_start();
error_reporting(0);
include "../config/koneksi.php"; 
include "../config/fungsi_indotgl.php"; 
$skp = mysql_fetch_array(mysql_query("SELECT * FROM rb_nilai_sikap_semester where id_tahun_akademik='$_GET[tahun]' AND nisn='$_GET[id]' AND kode_kelas='$_GET[kelas]'")); 
?>
<html>
<head>
<title>Hal 6 - Raport Siswa</title>
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
echo "<table width=100% style='font-size:13px;'>
        <tr>
          <td width=130px>Nama Sekolah</td> <td>:</td> <td>$iden[nama_sekolah] </td>
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
      </table><br>";

echo "<b>C. Extrakulikuler</b>
      <table id='tablemodul1' width=100% border=1>
          <tr>
            <th width='5%' align='center'>No</th>
            <th width='30%' align='center'>Kegiatan Extrakulikuler</th>
            <th width='20%' align='center'>Nilai</th>
            <th width='20%' align='center'>Predikat</th>
          </tr>";

          $extra = mysql_query("SELECT * FROM rb_nilai_extrakulikuler where id_tahun_akademik='$_GET[tahun]' AND nisn='$_GET[id]' AND kode_kelas='$_GET[kelas]'");
          $no = 1;
          if (mysql_num_rows($extra)>0) {
            while ($ex = mysql_fetch_array($extra)){
              if ($ex[nilai] <= 79){
                  $predikat="C";
              }elseif ($ex[nilai] <= 85) {
                  $predikat="B";
              }elseif ($ex[nilai] <= 100) {
                  $predikat="A";
              }

              echo "<tr>
                      <td align='center'>$no</td>
                      <td align='center'>$ex[kegiatan]</td>
                      <td align='center'>$ex[nilai]</td>
                      <td align='center'>$predikat</td>
                    </tr>";
                $no++;
            }
          }else{
            echo "
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
            ";
          }
          
      echo "</table>";


    echo" 
          Keterangan :
     <table id='tablemodul1' width=25% border=1>
        <tr>
          <td  width='80'>Range</td>
          <td  width='80'>Predikat</td>
        </tr>
        <tr>
          <td width='80'>86 - 100 </td> 
          <td align='center' width='80'> A </td>       
        </tr>
        <tr>
        <td  width='80'>80 - 85</td>
        <td align='center' width='80'> B </td></tr>
         <tr>
        <td  width='80'>70 - 79</td>
        <td align='center'width='80'> C</td></tr>
        </table>";




echo "<b>D. Prestasi</b>
      <table id='tablemodul1' width=100% border=1>
          <tr>
            <th width='40px'>No</th>
            <th width='30%'>Jenis Kegiatan</th>
            <th>Keterangan</th>
          </tr>";

          $prestasi = mysql_query("SELECT * FROM rb_nilai_prestasi where id_tahun_akademik='$_GET[tahun]' AND nisn='$_GET[id]' AND kode_kelas='$_GET[kelas]'");
          $no = 1;
          if (mysql_num_rows($prestasi)>0) {
            while ($pr = mysql_fetch_array($prestasi)){
              echo "<tr>
                      <td>$no</td>
                      <td>$pr[jenis_kegiatan]</td>
                      <td>$pr[keterangan]</td>
                    </tr>";
                $no++;
            }
          }else{
            echo "
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
            ";
          }
      echo "</table>";

echo "<b>E. Ketidakhadiran</b>
      <table id='tablemodul1' width=100% border=1>
        <tr>
          <td align='center' width='300'>Sakit</td>
          <td align='center' width='300'>Izin</td>
          <td align='center' width='300'>Tanpa Keterangan</td>
        </tr>"; 
           $mapel = mysql_query("SELECT * FROM  rb_jadwal_pelajaran a JOIN rb_mata_pelajaran b ON a.kode_pelajaran=b.kode_pelajaran where a.kode_kelas='$_GET[kelas]' AND id_kls_pararel = '$s[id_kls_pararel]' AND a.id_tahun_akademik='$_GET[tahun]'");$no = 1; $n = 0;
          while ($m = mysql_fetch_array($mapel)){ 
            $absen = mysql_fetch_array(mysql_query("SELECT COUNT(IF(kode_kehadiran='H',1, NULL)) 'hadir', COUNT(IF(kode_kehadiran='S',1, NULL)) 'sakit', COUNT(IF(kode_kehadiran='I',1, NULL)) 'izin', COUNT(IF(kode_kehadiran='A',1, NULL)) 'alpa' FROM rb_absensi_siswa where nisn = '$_GET[id]' and  kodejdwl='$m[kodejdwl]'"));
            $sakit+= $absen[sakit];
            $izin+= $absen[izin];
            $alpa+= $absen[alpa];

          }

// echo "  <tr>
//           <td align='center'>$sakit</td>
//           <td align='center'>$izin</td>
//           <td align='center'>$alpa</td>
//         </tr>  
//       </table>";
          echo "  <tr>
          <td align='center'>1</td>
          <td align='center'>1</td>
          <td align='center'>$alpa</td>
        </tr>  
      </table>";

echo "<b>F. Catatan Wali Kelas</b>
      <table id='tablemodul1' width=100% height=80px border=1>
        <tr><td></td></tr>
      </table>";



?>

<table border="0" width="100%" style="bottom: 10px; position: absolute;">
  <tr>
    <td width="300" align="left">Orang Tua / Wali</td>
    <td width="260" align="left">Wali Kelas</td>

       <?php//permintaan mr sodik tgl 210519
             $kls = $_GET[kelas];
            if($kls=="VII" || $kls=="VIII"){
              $tanggal ="Jakarta, 28 Juni 2019";
              }elseif ($kls =="IX"){
                $tanggal= "Jakarta, 29 Mei 2019";
              }else{
                $tanggal= "Tanggal Di Tentukan";
              }
              ?>
    <td width="260"align="left"> <?php echo $tanggal ?> <br> Kepala Sekolah</td>
  </tr>
  <tr>
    <td align="left"><br /><br /><br /><br /><br /><br />
      ................................... <br /><br /></td>
    <td width="300" align="left" valign="top"><br /><br /><br /><br /><br />
      <b><?php echo $s[walikelas]; ?><br />
      NIP : <?php echo $s[nip]; ?></b>
    </td>
    <td align="left" valign="top"><br /><br /><br /><br /><br />
       <?php
          $kelas = $_GET[kelas];
           if ($kelas == "VII" || $kelas == "VIII" || $kelas == "IX") {
            $kepsek = mysql_fetch_array(mysql_query("select * from rb_users where jabatan = 'kepala sekolah' and unit = 'SMP PUTRA'"));
          }elseif ($kelas== "X" || $kelas== "XI" || $kelas == "XII") {
            $kepsek = mysql_fetch_array(mysql_query("select * from rb_users where jabatan = 'kepala sekolah' and unit = 'SMA PUTRA'"));
          }elseif ($kelas == "VII SMP" || $kelas== "VIII SMP" || $kelas== "XI SMP") {
            $kepsek = mysql_fetch_array(mysql_query("select * from rb_users where jabatan = 'kepala sekolah' and unit = 'SMP PUTRI'")); 

          }elseif ($kelas == "X.IPA" || $kelas == "XI.IPA" || $kelas == "XI.IPS") {
            $kepsek = mysql_fetch_array(mysql_query("select * from rb_users where jabatan = 'kepala sekolah' and unit = 'SMA PUTRI'"));
          }    
          ?>
      <b><?php echo $kepsek[nama_lengkap];?><br>
      NIP : <?php echo $kepsek[username]; ?></b>
    </td>
  </tr>
</table> 
</body>
<script type="text/javascript">
    setTimeout(function () {
      window.print();
    }, 500);
    window.onfocus = function () { setTimeout(function () { window.close(); }, 500); }
     window.onafterprint = function () {  window.close(); }
</script>
</html>