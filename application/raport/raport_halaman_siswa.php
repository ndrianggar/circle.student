<?php 
session_start();
error_reporting(0);
include "../config/koneksi.php"; 
include "../config/fungsi_indotgl.php"; 
?>
<link rel="stylesheet" href="../bootstrap/css/printer.css">
<style type="text/css">
    .img-banner{
        width: 120px;
        position: absolute;
        top: 5px;
        left: 10px;
        /*z-index: ;*/
    }

    table tr th{
        padding: 5px;
        text-align: center;
    }

    table tr td{
        padding: 5px;
    }

    #btnPrint{
      z-index: 5px; position: absolute; right: 3px;
    }

    .watermark{
        width: 90%;
        height: auto;
        position: absolute;
        top: 10%;
        left: 5%;
        /*margin-top : 50px;*/
        /*top: 50%;
        left: 50%;
        margin-left: -1240px;
        margin-top: -1754px;*/
        z-index: 1;
        opacity: 0.2;
        filter: alpha(opacity=30);
      }
</style>
<div class="container">
<?php

$t = mysql_fetch_array(mysql_query("SELECT * FROM rb_tahun_akademik where id_tahun_akademik='$_GET[tahun]'"));
$s = mysql_fetch_array(mysql_query("SELECT a.*, b.*, c.nama_guru as walikelas, c.nip, d.nm_pararel FROM rb_siswa a 
                                      JOIN rb_kelas b ON a.kode_kelas=b.kode_kelas 
                                        LEFT JOIN rb_guru c ON b.nip=c.nip JOIN rb_kls_pararel d on d.id_kls_pararel = a.id_kls_pararel  where a.nisn='$_GET[id]'"));
if (substr($_GET[tahun],4,5)=='1'){ $semester = 'Ganjil'; }else{ $semester = 'Genap'; }

if ($_SESSION[kode_kelas] == "VII" || $_SESSION[kode_kelas] == "VIII" || $_SESSION[kode_kelas]== "IX"){
  $iden = mysql_fetch_array(mysql_query("SELECT * FROM rb_identitas_sekolah WHERE unit ='SMP PUTRA' ORDER BY id_identitas_sekolah DESC LIMIT 1"));

}elseif($_SESSION[kode_kelas== "X"] || $_SESSION[kode_kelas] == "XI" || $_SESSION[kode_kelas]== "XII"){
 $iden = mysql_fetch_array(mysql_query("SELECT * FROM rb_identitas_sekolah WHERE unit ='SMA PUTRA' ORDER BY id_identitas_sekolah DESC LIMIT 1"));

}elseif($_SESSION[kode_kelas]=="VII SMP"||$_SESSION[kode_kelas]=="VIII SMP"||$_SESSION[kode_kelas]=="XI SMP"){
    $iden = mysql_fetch_array(mysql_query("SELECT * FROM rb_identitas_sekolah WHERE unit ='SMP PUTRI' ORDER BY id_identitas_sekolah DESC LIMIT 1"));
}elseif($_SESSION[kode_kelas]=="VII SMP"||$_SESSION[kode_kelas]=="VIII SMP"||$_SESSION[kode_kelas]=="XI SMP"){
  $iden = mysql_fetch_array(mysql_query("SELECT * FROM rb_identitas_sekolah WHERE unit = 'SMA PUTRA' ORDER BY id_identitas_sekolah DESC LIMIT 1"));
}else{
 	$iden = mysql_fetch_array(mysql_query("SELECT * FROM rb_identitas_sekolah ORDER BY id_identitas_sekolah DESC LIMIT 1"));
 }
?>
  <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="50000">
    <!-- Indicators -->
    <!-- <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol> -->

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
    <div class="item active">
        <div class='col-xs-12' align="center">
            <div class='box' style="width: 926px; height: 1369px; z-index: 1">
                <button type="button" onclick="window.open('print_raport/print-hal.php?id=<?php echo $_SESSION[id] ?>&kelas=<?php echo $_SESSION[kode_kelas] ?>&tahun=<?php echo $_GET[tahun] ?>','_blank')" id="btnPrint" class="btn btn-primary pull-right"><i class="fa fa-print"></i> PRINT</button>
                <div class='box-body'>
                    <center>
                        <img width='170px' src='print_raport/logo.png'><br><br><br>
                        <h1 align=center>LAPORAN HASIL BELAJAR SISWA <br>IBNU HAJAR BOARDING SCHOOL</h1><br><br><br>
                        <h1></h1>
                        Alamat Sekolah : <?php echo $iden[alamat_sekolah];?><!-- Jl. Mushola Fathul Ulum, RT.3/RW.2, Munjul, Cipayung, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13850 --><br><br><br>
                        <img width='170px' src='print_raport/logo-<?php if($_GET[kelas] =="VII"||$_GET[kelas] =="VIII"||$_GET[kelas] =="IX"){
                            echo "smp";
                        }else{echo"sma";} ?>-ihbs.png'><br><br><br><br><br>

                        
                        <table>
                            <tr><td width='140px'>Nama Peserta Didik</td><td> : <?php echo $s[nama]; ?></td></tr>
                            <tr><td>No Induk</td><td> : <?php echo "$s[nipd]"; ?></td></tr>
                        </table><br><br><br><br>

                        <p style='font-size:22px; font-weight:bold'>DEPARTEMEN PENDIDIKAN NASIONAL <br>REPUBLIK INDONESIA</p>
                    </center>
                </div>
            </div>
        </div>
    </div>
    <div class="item">
        <div class='col-xs-12' align="center">
            <div class='box' style="width: 926px; height: 1369px; z-index: 1">
                <button type="button" onclick="window.open('print_raport/print-hal1.php?id=<?php echo $_SESSION[id] ?>&kelas=<?php echo $_SESSION[kode_kelas] ?>&tahun=<?php echo $_GET[tahun] ?>','_blank')" id="btnPrint" class="btn btn-primary pull-right"><i class="fa fa-print"></i> PRINT</button>
                <div class='box-body'>
                    <center><img width='170px' src='print_raport/logo.png'></center><br>
                    <h1 align=center>LAPORAN HASIL BELAJAR SISWA <br>IBNU HAJAR BOARDING SCHOOL <br> BOARDING SCHOOL</h1><br><br><br><br><br>
                    <?php
                    if ($_SESSION[kode_kelas]=="VII"||$_SESSION[kode_kelas]=="VIII"||$_SESSION[kode_kelas]=="IX") {
                        $s = mysql_fetch_array(mysql_query("SELECT * FROM rb_identitas_sekolah WHERE unit ='SMP PUTRA' ORDER BY id_identitas_sekolah DESC LIMIT 1"));
                    }elseif($_SESSION[kode_kelas]== "X" || $_SESSION[kode_kelas]=="XI" || $_SESSION[kode_kelas]== "XII") {
                        $s = mysql_fetch_array(mysql_query("SELECT * FROM rb_identitas_sekolah WHERE unit = 'SMA PUTRA' ORDER BY id_identitas_sekolah DESC LIMIT 1"));
                    }elseif($_SESSION[kode_kelas]== "VII SMP" || $_SESSION[kode_kelas]=="VIII SMP" || $_SESSION[kode_kelas]== "IX SMP"){
                   $s = mysql_fetch_array(mysql_query("SELECT * FROM rb_identitas_sekolah WHERE unit = 'SMP PUTRI' ORDER BY id_identitas_sekolah DESC LIMIT 1"));
                    }else{
                    $s = mysql_fetch_array(mysql_query("SELECT * FROM rb_identitas_sekolah WHERE unit = 'SMA PUTRI' ORDER BY id_identitas_sekolah DESC LIMIT 1"));
                    }
                     $si = mysql_fetch_array(mysql_query("SELECT * FROM rb_siswa a LEFT JOIN rb_agama b ON a.id_agama=b.id_agama  LEFT JOIN rb_jenis_kelamin c ON a.id_jenis_kelamin=c.id_jenis_kelamin where nisn='$_GET[id]'"));
                    ?>
                    <table border=0 style='font-size:23px; padding:0px 40px; margin: 15%;' width='80%'>
                        <tr><td width='200px'>Nama Peserta Didik</td>   <td width='10px'> : </td><td> <?php echo "$si[nama]"; ?></td></tr>
                        <tr><td>No Induk</td>             <td width='10px'> : </td><td> <?php echo "$si[nipd]"; ?></td></tr>
                        <tr><td>Nama Sekolah</td>         <td width='10px'> : </td><td> <?php echo "$s[nama_sekolah]"; ?></td></tr>
                        <tr><td>NSS</td>                  <td width='10px'> : </td><td> <?php echo "$s[nss]"; ?></td></tr>
                        <tr><td>Alamat Sekolah</td>       <td width='10px'> : </td><td> <?php echo "$s[alamat_sekolah]"; ?></td></tr>
                        <tr><td></td>                     <td width='10px'>   </td><td> <?php echo "Kode Pos $s[kode_pos], Telp. $s[no_telpon]"; ?></td></tr>
                        <tr><td>Desa/Kelurahan</td>       <td width='10px'> : </td><td> <?php echo "$s[kelurahan]"; ?></td></tr>
                        <tr><td>Kecamatan/Distrik</td>    <td width='10px'> : </td><td> <?php echo "$s[kecamatan]"; ?></td></tr>
                        <tr><td>Kabupaten/Kota</td>       <td width='10px'> : </td><td> <?php echo "$s[kabupaten_kota]"; ?></td></tr>
                        <tr><td>Provinsi</td>             <td width='10px'> : </td><td> <?php echo "$s[provinsi]"; ?></td></tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div class="item">
        <div class='col-xs-12' align="center">
            <div class='box' style="width: 926px; height: 1369px; z-index: 1">
                <button type="button" onclick="window.open('print_raport/print-hal2.php?id=<?php echo $_SESSION[id] ?>&kelas=<?php echo $_SESSION[kode_kelas] ?>&tahun=<?php echo $_GET[tahun] ?>','_blank')" id='btnPrint' class="btn btn-primary pull-right"><i class="fa fa-print"></i> PRINT</button>
                <div class='box-body'>
                    <img src="dist/img/watermark_smp.png" class="watermark">
                    <h1 align=center>IDENTITAS SISWA</h1><br>

                    <table style='font-size:15px:' width='100%'>
                        <tr><td width='10px' align="right">1.</td>  <td width='190px'>Nama Siswa (Lengkap) </td>   <td width='10px'> : </td><td> <?php echo "$si[nama]"; ?></td></tr>
                        <tr><td align="right">2.</td>  <td width='190px'>Nomor Induk</td>                          <td width='10px'> : </td><td> <?php echo "$si[nipd]"; ?></td></tr>
                        <tr><td align="right">3.</td>  <td width='190px'>Tempat danTanggal Lahir</td>                      <td width='10px'> : </td><td> <?php echo "$si[tempat_lahir], "; if ($s[tanggal_lahir] != '0000-00-00') {
                           echo date('d-m-Y',strtotime($s[tanggal_lahir])); 
                        } ?></td></tr>
                        <tr><td align="right">4.</td>  <td width='190px'>Jenis Kelamin</td>                             <td width='10px'> : </td><td> <?php echo "$si[jenis_kelamin]"; ?></td></tr>
                        <tr><td align="right">5.</td>  <td width='190px'>Agama</td>                                     <td width='10px'> : </td><td> <?php echo "$si[nama_agama]"; ?></td></tr>
                        <tr><td align="right">6.</td>  <td width='190px'>Anak ke</td>                                   <td width='10px'> : </td><td> <?php echo "-"; ?></td></tr>
                        <tr><td align="right">7.</td>  <td width='190px'>Status dalam Keluarga</td>                     <td width='10px'> : </td><td> <?php echo "Anak Kandung"; ?></td></tr>
                        <tr><td align="right">8.</td>  <td width='190px'>Alamat Siswa</td>                      <td width='10px'> : </td><td> <?php echo "$si[alamat]"; ?></td></tr>
                        <tr><td></td>  <td width='190px'>Telepon</td>                       <td width='10px'> : </td><td> <?php echo "$s[telepon]"; ?></td></tr>
                        
                        <tr><td align="right">9.</td> <td width='190px'>Diterima di sekolah ini</td>                   <td width='10px'> </td><td> <?php echo ""; ?></td></tr>
                        <tr><td></td> <td width='190px'>a.Di Kelas</td>                                     <td width='10px'> : </td><td> <?php echo "$si[kode_kelas]"; ?></td></tr>
                        <tr><td></td> <td width='190px'>b.Pada Tanggal</td>                                 <td width='10px'> : </td><td> <?php echo tgl_raport(date('Y-m-d')); ?></td></tr>
                        <!-- <tr><td></td> <td width='190px'>c.Semester</td>                                 <td width='10px'> : </td><td> <?php echo tgl_raport(date('Y-m-d')); ?></td></tr> -->
                        
                        <tr><td align="right">10.</td> <td width='190px'>Sekolah Asal</td>                    <td width='10px'> </td><td></td></tr>
                        <tr><td></td> <td width='190px'>a.Nama Sekolah</td>                    <td width='10px'> : </td><td> <?php echo ""; ?></td></tr>
                        <tr><td></td> <td width='190px'>b.Alamat</td>                    <td width='10px'> : </td><td> <?php echo ""; ?></td></tr>

                        <tr><td align="right">11.</td> <td width='190px'>Ijazah SMP/MTs/Paket B</td>                    <td width='10px'> </td><td></td></tr>
                        <tr><td></td> <td width='190px'>a.Tahun</td>                    <td width='10px'> : </td><td> <?php echo ""; ?></td></tr>
                        <tr><td></td> <td width='190px'>b.Nomor</td>                    <td width='10px'> : </td><td> <?php echo ""; ?></td></tr>

                        <tr><td align="right">12.</td> <td width='190px'>Orang Tua</td>                                 <td width='10px'> </td><td></td></tr>
                        <tr><td></td> <td width='190px'>a. Nama Ayah</td>                                 <td width='10px'> : </td><td> <?php echo "$si[nama_ayah]"; ?></td></tr>
                        <tr><td></td> <td width='190px'>b. Nama Ibu</td>                                  <td width='10px'> : </td><td> <?php echo "$si[nama_ibu]"; ?></td></tr>
                        
                        <tr><td align="right">13</td> <td width='190px'>Alamat Orang Tua</td>                                    <td width='10px'> : </td><td> <?php echo "$si[alamat]"; ?></td></tr>
                        <tr><td></td> <td width='190px'>Telepon</td>                          <td width='10px'> : </td><td> <?php echo "$si[no_telpon_ayah]"; ?></td></tr>
                        
                        <tr><td align="right">14.</td> <td width='190px'>Pekerjaan Orang Tua</td>                       <td width='10px'> </td><td></td></tr>
                        <tr><td></td> <td width='190px'>a. Pekerjaan Ayah</td>                                      <td width='10px'> : </td><td> <?php echo "$si[pekerjaan_ayah]"; ?></td></tr>
                        <tr><td></td> <td width='190px'>b. Pekerjaan Ibu</td>                                       <td width='10px'> : </td><td> <?php echo "$si[pekerjaan_ibu]"; ?></td></tr>
                        
                        <tr><td align="right">15.</td> <td width='190px'>Nama Wali</td>                                 <td width='10px'> : </td><td> <?php echo "$si[nama_wali]"; ?></td></tr>
                        <tr><td align="right">16.</td> <td width='190px'>Alamat Wali</td>                                    <td width='10px'> : </td><td> <?php echo "$si[alamat]"; ?></td></tr>
                        <tr><td></td> <td width='190px'>Telepon</td>                             <td width='10px'> : </td><td> <?php echo "-"; ?></td></tr>
                        <tr><td align="right">17.</td> <td width='190px'>Pekerjaan Wali</td>                                 <td width='10px'> : </td><td> <?php echo "$si[pekerjaan_wali]"; ?></td></tr>
                    </table>
                    <br><br><br>
                    <table border=0 width='70%' style='float:right'>
                        <tr>
                            <td><?php 
                                if (trim($si[foto])==''){
                                  echo "<img style='width:95px; padding:3px; border:1px solid #000' src='foto_siswa/no-image.jpg'>";
                                }else{
                                  echo "<img style='width:95px; padding:3px; border:1px solid #000' src='foto_siswa/$si[foto]'>";
                                } ?>
                            </td>
                            <td width='68%'>Jakarta/Depok <?php echo tgl_raport(date('Y-m-d')); ?> <br>
                                Kepala <?php echo $_SESSION[unit] ?> IBNU HAJAR BOARDING SCHOOL,<br><br><br><br><br><br><br>
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
                                  NIP : <?php echo $kepsek[username]; ?></b></td></tr>
                            <td align="center" valign="top"><br /><br /><br /><br /><br />
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div class="item">
        <div class='col-xs-12' align="center">
            <div class='box' style="width: 926px; height: 1369px; z-index: 1">
                <button type="button" onclick="window.open('print_raport/print-hal3.php?id=<?php echo $_SESSION[id] ?>&kelas=<?php echo $_SESSION[kode_kelas] ?>&tahun=<?php echo $_GET[tahun] ?>','_blank')" id='btnPrint' class="btn btn-primary pull-right"><i class="fa fa-print"></i> PRINT</button>
                <div class='box-body'>
                <img src="dist/img/watermark_smp.png" class="watermark">
                    <?php
                    $skp = mysql_fetch_array(mysql_query("SELECT * FROM rb_nilai_sikap_semester where id_tahun_akademik='$_GET[tahun]' AND nisn='$_GET[id]' AND kode_kelas='$_GET[kelas]'")); 
                    $t = mysql_fetch_array(mysql_query("SELECT * FROM rb_tahun_akademik where id_tahun_akademik='$_GET[tahun]'"));
                    $s = mysql_fetch_array(mysql_query("SELECT a.*, b.*, c.nama_guru as walikelas, c.nip, d.nm_pararel FROM rb_siswa a 
                                                          JOIN rb_kelas b ON a.kode_kelas=b.kode_kelas 
                                                            LEFT JOIN rb_guru c ON b.nip=c.nip JOIN rb_kls_pararel d on d.id_kls_pararel = a.id_kls_pararel  where a.nisn='$_GET[id]'"));
                    if (substr($_GET[tahun],4,5)=='1'){ $semester = 'Ganjil'; }else{ $semester = 'Genap'; }

                    if ($_SESSION[kode_kelas]=="VII"||$_SESSION[kode_kelas]=="VIII"||$_SESSION[kode_kelas]=="IX") {
                        $iden = mysql_fetch_array(mysql_query("SELECT * FROM rb_identitas_sekolah WHERE unit ='SMP PUTRA' ORDER BY id_identitas_sekolah DESC LIMIT 1"));

                    }elseif($_SESSION[kode_kelas]=="X"||$_SESSION[kode_kelas]=="VIII"||$_SESSION[kode_kelas]=="IX") {
                        $iden = mysql_fetch_array(mysql_query("SELECT * FROM rb_identitas_sekolah WHERE unit = 'SMA PUTRA' ORDER BY id_identitas_sekolah DESC LIMIT 1"));

                    }elseif($_SESSION[kode_kelas]== "VII SMP" || $_SESSION[kode_kelas]=="VIII SMP" || $_SESSION[kode_kelas] == "IX SMP"){
                      $iden = mysql_fetch_array(mysql_query("SELECT * FROM rb_identitas_sekolah WHERE unit = 'SMP PUTRI' ORDER BY id_identitas_sekolah DESC LIMIT 1"));
                    
                    }else {
                    	$iden = mysql_fetch_array(mysql_query("SELECT * FROM rb_identitas_sekolah WHERE unit = 'SMA PUTRI' ORDER BY id_identitas_sekolah DESC LIMIT 1"));
                    }
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
                          <b class='pull-left'>A. SIKAP</b><br><br>";
                    echo "<b class='pull-left'>1. Sikap Spiritual</b>
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

                    echo "<b class='pull-left'>2. Sikap Sosial</b>
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

                </div>
            </div>
        </div>
    </div>
     <div class="item">
        <div class='col-xs-12' align="center">
            <div class='box' style="width: 926px; height: 1369px; z-index: 1">
                <button type="button" onclick="window.open('print_raport/print-hal4.php?id=<?php echo $_SESSION[id] ?>&kelas=<?php echo $_SESSION[kode_kelas] ?>&tahun=<?php echo $_GET[tahun] ?>&ie=<?php echo $_SESSION[id_kls_pararel] ?>','_blank')" id='btnPrint' class="btn btn-primary pull-right"><i class="fa fa-print"></i> PRINT</button>
                <img src="dist/img/watermark_smp.png" class="watermark">
                <div class='box-body'>
                    <table width=100% style>
                        <tr>
                          <td width=130px>Nama Sekolah</td> <td>:</td> <td><?php echo $_SESSION[unit]. $iden[nama_sekolah] ?></td>
                          <td width=130px>Kelas</td> <td> :</td><td><?php echo $s[kode_kelas] ?></td>       
                        </tr>
                        <tr>
                          <td>Alamat </td> <td>:</td>                   
                          <td><?php echo $iden[alamat_sekolah] ?></td>
                          <td width=130px>Kelas Pararel </td> <td>:</td>   <td width=150px><?php echo $s[nm_pararel] ?></td>     
                        </tr>
                        <tr>
                          <td>Nama Peserta Didik </td> <td>:</td>       
                          <td>  <b><?php echo $s[nama] ?></b> </td>     
                          <td>Semester </td> <td>:</td> <td><?php echo $semester ?></td>      
                        </tr>
                        <tr>
                          <td>No Induk/NISN </td> <td>:</td>            
                          <td><?php echo $s[nipd] ."/". $s[nisn]?></td>        
                           <td>Tahun Pelajaran </td> <td>:</td> <td><?php echo $t[keterangan] ?></td>
                        </tr>
                    </table>
                    <table id='tablemodul1' width=100% border=1>
                        <tr>
                            <th rowspan='3'>No</th>
                            <th width='160px' rowspan='3'>Mata Pelajaran</th>
                            <th rowspan='3'>KKM</th>
                            <th colspan='5'>Nilai Hasil Belajar</th>
                        </tr>
                        </tr>
                            <th colspan='2' style='text-align:center'>Pengetahuan</th>
                            <th colspan='2' style='text-align:center'>Keterampilan</th>
                            <th colspan='2' style='text-align:center'>Sikap</th>
                        </tr>
                        <tr>
                            <th>Angka</th>
                            <th width='130px'>Huruf</th>
                            <th>Angka</th>
                            <th width='130px'>Huruf</th>
                            <th>Predikat</th>
                        </tr>
                        <tr>
                            <td colspan='2'><b>Kelompok A</b></td><td></td><td></td><td></td><td></td><td></td><td></td>
                        </tr>
                        <tr>
                            <td align='center'>1</td><td><b><font size='2'>Pendidikan Agama Islam</font></b></td><td></td><td></td><td></td><td></td><td></td><td></td>
                        </tr>
                    <?php
                     $mapel = mysql_query("SELECT a.*, b.kodejdwl FROM rb_mata_pelajaran a LEFT JOIN rb_jadwal_pelajaran b ON a.kode_pelajaran = b.kode_pelajaran WHERE a.tingkat = '$_GET[kelas]' AND b.id_tahun_akademik = '$_GET[tahun]' AND a.sub_mapel = 'PAI' GROUP BY a.namamatapelajaran");
                    $no = 1; $h = 1;
                    while ($m = mysql_fetch_array($mapel)){                                
                    $rapn = mysql_fetch_array(mysql_query("SELECT kodejdwl, nisn, (sum(uh)+sum(tugas))/4 as total FROM ((SELECT kodejdwl, nisn, sum(nilai1)/count(nisn) as uh, sum(nilai2)/count(nisn) as tugas FROM `rb_nilai_pengetahuan_semester` where nisn='$_GET[id]' GROUP BY kodejdwl) UNION (SELECT kodejdwl, nisn, nilai1, (nilai2*2) FROM rb_nilai_pengetahuan_semester where nisn='$_GET[id]')) as a where a.kodejdwl='$m[kodejdwl]' GROUP by a.kodejdwl"));

                    $countKD = mysql_fetch_array(mysql_query("SELECT count(`id_nilai_pengetahuan`) as countKD FROM `rb_nilai_pengetahuan_semester` WHERE nisn='$_GET[id]' and `kodejdwl` = '$m[kodejdwl]' AND tahun='$_GET[tahun]'"));

                    $range =  mysql_fetch_array(mysql_query("SELECT sum(nilai1)/$countKD[countKD] as uh, sum(nilai2)/$countKD[countKD] as tugas FROM `rb_nilai_pengetahuan_semester` WHERE  nisn='$_GET[id]' and `kodejdwl` = '$m[kodejdwl]'"));
                    $ee = mysql_fetch_array(mysql_query("SELECT * FROM rb_nilai_pengetahuan_semester where id_nilai_pengetahuan_semester='$_GET[editsemester]'"));
                   $sms = mysql_fetch_array(mysql_query("SELECT * FROM rb_ledger where kode_pelajaran = '$m[kode_pelajaran]' AND nisn='$_GET[id]' AND tahun = '$_GET[tahun]'"));
                    // $total = ($range[uh]+$range[tugas]+$sms[nilai1]+$sms[nilai2])/4;
                    // $total = ($sms[nilai1]*6+$sms[nilai2]*4)/10;
                    $total = $sms[pengetahuan];

                    $grandTotal += number_format($total);

                    $cekpredikat = mysql_num_rows(mysql_query("SELECT * FROM rb_predikat where kode_kelas='$_GET[kelas]'"));
                        if ($cekpredikat >= 1){
                            $grade3 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapn[raport])." >=nilai_a) AND (".number_format($rapn[raport])." <= nilai_b) AND kode_kelas='$_GET[kelas]'"));
                        }else{
                            $grade3 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapn[raport])." >=nilai_a) AND (".number_format($rapn[raport])." <= nilai_b) AND kode_kelas='0'"));
                        }
                    $rangeGlobal = mysql_fetch_array(mysql_query("SELECT (nilai1+nilai2+nilai3+nilai4+nilai5+nilai6)/6 as raport FROM rb_nilai_keterampilan where kodejdwl='$m[kodejdwl]' AND nisn='$s[nisn]' AND tahun='$_GET[tahun]'"));

                    $contKd = mysql_fetch_array(mysql_query("SELECT count(kd) as count FROM rb_nilai_keterampilan where kode_pelajaran ='$m[kode_pelajaran]' AND nisn='$s[nisn]' AND tahun='$_GET[tahun]'"));
                    
                    $rapnk = mysql_fetch_array(mysql_query("SELECT SUM((nilai1+nilai2+nilai3+nilai4+nilai5+nilai6)/6)/$contKd[count]  as total FROM rb_nilai_keterampilan where kode_pelajaran ='$m[kode_pelajaran]' AND nisn='$s[nisn]' AND tahun='$_GET[tahun]'"));
                    $cekpredikat2 = mysql_num_rows(mysql_query("SELECT * FROM rb_predikat where kode_kelas='$_GET[id]'"));
                    if ($cekpredikat2 >= 1){
                      $grade3 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapn[total])." >=nilai_a) AND (".number_format($rapn[total])." <= nilai_b) AND kode_kelas='$_GET[kelas]'"));
                    }else{
                      $grade3 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapn[total])." >=nilai_a) AND (".number_format($rapn[total])." <= nilai_b) AND kode_kelas='0'"));
                    }  

                    $totalKeterampilan+= number_format($rapnk[total]);  

                    // $rapnk = mysql_fetch_array(mysql_query("SELECT sum(GREATEST(nilai1,nilai2,nilai3,nilai4,nilai5,nilai6))/count(nisn) as raport FROM rb_nilai_keterampilan where kodejdwl='$m[kodejdwl]' AND nisn='$s[nisn]'"));
                    // $cekpredikat2 = mysql_num_rows(mysql_query("SELECT * FROM rb_predikat where kode_kelas='$_GET[kelas]'"));
                    //     if ($cekpredikat2 >= 1){
                    //         $grade = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapnk[raport])." >=nilai_a) AND (".number_format($rapnk[raport])." <= nilai_b) AND kode_kelas='$_GET[kelas]'"));
                    //     }else{
                    //         $grade = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapnk[raport])." >=nilai_a) AND (".number_format($rapnk[raport])." <= nilai_b) AND kode_kelas='0'"));
                    //     }
 
                    $des = mysql_fetch_array(mysql_query("SELECT * FROM rb_ledger where kode_pelajaran='$m[kode_pelajaran]' AND nisn='$_GET[id]' AND kode_kelas='$_GET[kelas]' AND tahun='$_GET[tahun]'"));   
                    if ($des[sikap]=='B') {
                        $sikap= "A";
                    }elseif ($des[sikap]=='S') {
                         $sikap = "B";
                    }elseif ($des[sikap]=='R') {
                        $sikap = "C";
                    }else{
                        $sikap = "";
                    }
                    $huruf = array('','a','b','c','d','e','f','g','h','i');
                    
                    echo "<tr>
                            <td align=center></td>
                            <td>$huruf[$h]. $m[namamatapelajaran]</td>
                            <td align=center>$m[kkm]</td>
                            <td align=center>".number_format($total)."</td>
                            <td style='font-size:13px;'>".ucwords(terbilang(number_format($total)))."</td>
                            <td align=center>".number_format($sms[keterampilan])."</td>
                            <td style='font-size:13px;'>".ucwords(terbilang(number_format($sms[keterampilan])))."</td>
                            <td align=center>$sikap</td>
                        </tr>";
                    $h++;
                    }

                    // Nilai Umum
                   $mapel = mysql_query("SELECT a.*, b.kodejdwl FROM rb_mata_pelajaran a LEFT JOIN rb_jadwal_pelajaran b ON a.kode_pelajaran = b.kode_pelajaran WHERE a.tingkat = '$_GET[kelas]' AND b.id_tahun_akademik = '$_GET[tahun]' AND a.sub_mapel != 'PAI' AND a.id_kelompok_mata_pelajaran = '1' GROUP BY a.namamatapelajaran");
                    $no = 2; $h = 1;
                    while ($m = mysql_fetch_array($mapel)){                                
                    $rapn = mysql_fetch_array(mysql_query("SELECT kodejdwl, nisn, (sum(uh)+sum(tugas))/4 as total FROM ((SELECT kodejdwl, nisn, sum(nilai1)/count(nisn) as uh, sum(nilai2)/count(nisn) as tugas FROM `rb_nilai_pengetahuan_semester` where nisn='$_GET[id]' GROUP BY kodejdwl) UNION (SELECT kodejdwl, nisn, nilai1, (nilai2*2) FROM rb_nilai_pengetahuan_semester where nisn='$_GET[id]')) as a where a.kodejdwl='$m[kodejdwl]' GROUP by a.kodejdwl"));

                    $countKD = mysql_fetch_array(mysql_query("SELECT count(`id_nilai_pengetahuan`) as countKD FROM `rb_nilai_pengetahuan_semester` WHERE nisn='$_GET[id]' and `kodejdwl` = '$m[kodejdwl]' AND tahun='$_GET[tahun]'"));

                    $range =  mysql_fetch_array(mysql_query("SELECT sum(nilai1)/$countKD[countKD] as uh, sum(nilai2)/$countKD[countKD] as tugas FROM `rb_nilai_pengetahuan_semester` WHERE  nisn='$_GET[id]' and `kodejdwl` = '$m[kodejdwl]' AND tahun='$_GET[tahun]'"));
                    $ee = mysql_fetch_array(mysql_query("SELECT * FROM rb_nilai_pengetahuan_semester where id_nilai_pengetahuan_semester='$_GET[editsemester]'"));
                  $sms = mysql_fetch_array(mysql_query("SELECT * FROM rb_ledger where kode_pelajaran = '$m[kode_pelajaran]' AND nisn='$_GET[id]' AND tahun ='$_GET[tahun]'"));

                    // $total = ($range[uh]+$range[tugas]+$sms[nilai1]+$sms[nilai2])/4;
                    // $total = ($sms[nilai1]*6+$sms[nilai2]*4)/10;
                    $total = $sms[pengetahuan];

                    $grandTotal += number_format($total);

                    $cekpredikat = mysql_num_rows(mysql_query("SELECT * FROM rb_predikat where kode_kelas='$_GET[kelas]'"));
                        if ($cekpredikat >= 1){
                            $grade3 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapn[raport])." >=nilai_a) AND (".number_format($rapn[raport])." <= nilai_b) AND kode_kelas='$_GET[kelas]'"));
                        }else{
                            $grade3 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapn[raport])." >=nilai_a) AND (".number_format($rapn[raport])." <= nilai_b) AND kode_kelas='0'"));
                        }
                    $rangeGlobal = mysql_fetch_array(mysql_query("SELECT (nilai1+nilai2+nilai3+nilai4+nilai5+nilai6)/6 as raport FROM rb_nilai_keterampilan where kodejdwl='$m[kodejdwl]' AND nisn='$s[nisn]' AND tahun='$_GET[tahun]'"));

                    $contKd = mysql_fetch_array(mysql_query("SELECT count(kd) as count FROM rb_nilai_keterampilan where kode_pelajaran ='$m[kode_pelajaran]' AND nisn='$s[nisn]' AND tahun='$_GET[tahun]'"));
                    
                    $rapnk = mysql_fetch_array(mysql_query("SELECT SUM((nilai1+nilai2+nilai3+nilai4+nilai5+nilai6)/6)/$contKd[count]  as total FROM rb_nilai_keterampilan where kode_pelajaran ='$m[kode_pelajaran]' AND nisn='$s[nisn]' AND tahun='$_GET[tahun]'"));
                    $cekpredikat2 = mysql_num_rows(mysql_query("SELECT * FROM rb_predikat where kode_kelas='$_GET[id]'"));
                    if ($cekpredikat2 >= 1){
                      $grade3 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapn[total])." >=nilai_a) AND (".number_format($rapn[total])." <= nilai_b) AND kode_kelas='$_GET[kelas]'"));
                    }else{
                      $grade3 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapn[total])." >=nilai_a) AND (".number_format($rapn[total])." <= nilai_b) AND kode_kelas='0'"));
                    }  

                    $totalKeterampilan+= number_format($rapnk[total]);  
                    $des = mysql_fetch_array(mysql_query("SELECT * FROM rb_ledger where kode_pelajaran='$m[kode_pelajaran]' AND nisn='$_GET[id]' AND kode_kelas='$_GET[kelas]' AND tahun='$_GET[tahun]'"));   
                    if ($des[sikap]=='B') {
                        $sikap= "A";
                    }elseif ($des[sikap]=='S') {
                         $sikap = "B";
                    }elseif ($des[sikap]=='R') {
                        $sikap = "C";
                    }else{
                        $sikap = "";
                    }
                    $huruf = array('','a','b','c','d','e','f','g','h','i');
                    
                    echo "<tr>
                            <td align=center>$no</td>
                            <td>$m[namamatapelajaran]</td>
                            <td align=center>$m[kkm]</td>
                            <td align=center>".number_format($total)."</td>
                            <td style='font-size:13px;'>".ucwords(terbilang(number_format($total)))."</td>
                            <td align=center>".number_format($sms[keterampilan])."</td>
                            <td style='font-size:13px;'>".ucwords(terbilang(number_format($sms[keterampilan])))."</td>
                            <td align=center>$sikap</td>
                        </tr>";
                    $no++;
                    }

                    // Nilai Kelompok B
                    echo "
                      <tr>
                        <td colspan='2'><b>Kelompok B</b></td><td></td><td></td><td></td><td></td><td></td><td></td>
                      </tr>";

                  $mapel = mysql_query("SELECT a.*, b.kodejdwl FROM rb_mata_pelajaran a LEFT JOIN rb_jadwal_pelajaran b ON a.kode_pelajaran = b.kode_pelajaran WHERE a.tingkat = '$_GET[kelas]' AND b.id_tahun_akademik = '$_GET[tahun]' AND a.sub_mapel != 'PAI' AND a.id_kelompok_mata_pelajaran = '2' GROUP BY a.namamatapelajaran");
                    $no = 1; $h = 1;
                    while ($m = mysql_fetch_array($mapel)){                                
                    $rapn = mysql_fetch_array(mysql_query("SELECT kodejdwl, nisn, (sum(uh)+sum(tugas))/4 as total FROM ((SELECT kodejdwl, nisn, sum(nilai1)/count(nisn) as uh, sum(nilai2)/count(nisn) as tugas FROM `rb_nilai_pengetahuan` where nisn='$_GET[id]' GROUP BY kodejdwl) UNION (SELECT kodejdwl, nisn, nilai1, (nilai2*2) FROM rb_nilai_pengetahuan_semester where nisn='$_GET[id]')) as a where a.kodejdwl='$m[kodejdwl]' GROUP by a.kodejdwl"));

                    $countKD = mysql_fetch_array(mysql_query("SELECT count(`id_nilai_pengetahuan`) as countKD FROM `rb_nilai_pengetahuan_semester` WHERE nisn='$_GET[id]' and `kodejdwl` = '$m[kodejdwl]' AND tahun='$_GET[tahun]'"));

                    $range =  mysql_fetch_array(mysql_query("SELECT sum(nilai1)/$countKD[countKD] as uh, sum(nilai2)/$countKD[countKD] as tugas FROM `rb_nilai_pengetahuan_semester` WHERE  nisn='$_GET[id]' and `kodejdwl` = '$m[kodejdwl]' AND tahun='$_GET[tahun]'"));
                    $ee = mysql_fetch_array(mysql_query("SELECT * FROM rb_nilai_pengetahuan_semester where id_nilai_pengetahuan_semester='$_GET[editsemester]' AND tahun='$_GET[tahun]'"));
                  $sms = mysql_fetch_array(mysql_query("SELECT * FROM rb_ledger where kode_pelajaran = '$m[kode_pelajaran]' AND nisn='$_GET[id]' AND tahun ='$_GET[tahun]'"));

                    // $total = ($range[uh]+$range[tugas]+$sms[nilai1]+$sms[nilai2])/4;
                    // $total = ($sms[nilai1]*6+$sms[nilai2]*4)/10;
                    $total = $sms[pengetahuan];
                    $grandTotal += number_format($total);

                    $cekpredikat = mysql_num_rows(mysql_query("SELECT * FROM rb_predikat where kode_kelas='$_GET[kelas]'"));
                        if ($cekpredikat >= 1){
                            $grade3 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapn[raport])." >=nilai_a) AND (".number_format($rapn[raport])." <= nilai_b) AND kode_kelas='$_GET[kelas]'"));
                        }else{
                            $grade3 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapn[raport])." >=nilai_a) AND (".number_format($rapn[raport])." <= nilai_b) AND kode_kelas='0'"));
                        }
                    $rangeGlobal = mysql_fetch_array(mysql_query("SELECT (nilai1+nilai2+nilai3+nilai4+nilai5+nilai6)/6 as raport FROM rb_nilai_keterampilan where kodejdwl='$m[kodejdwl]' AND nisn='$s[nisn]' AND tahun='$_GET[tahun]'"));

                    $contKd = mysql_fetch_array(mysql_query("SELECT count(kd) as count FROM rb_nilai_keterampilan where kode_pelajaran ='$m[kode_pelajaran]' AND nisn='$s[nisn]'"));
                    
                    $rapnk = mysql_fetch_array(mysql_query("SELECT SUM((nilai1+nilai2+nilai3+nilai4+nilai5+nilai6)/6)/$contKd[count]  as total FROM rb_nilai_keterampilan where kode_pelajaran ='$m[kode_pelajaran]' AND nisn='$s[nisn]' AND tahun='$_GET[tahun]'"));
                    $cekpredikat2 = mysql_num_rows(mysql_query("SELECT * FROM rb_predikat where kode_kelas='$_GET[id]'"));
                    if ($cekpredikat2 >= 1){
                      $grade3 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapn[total])." >=nilai_a) AND (".number_format($rapn[total])." <= nilai_b) AND kode_kelas='$_GET[kelas]'"));
                    }else{
                      $grade3 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapn[total])." >=nilai_a) AND (".number_format($rapn[total])." <= nilai_b) AND kode_kelas='0'"));
                    }  

                    $totalKeterampilan+= number_format($rapnk[total]); 
                   $des = mysql_fetch_array(mysql_query("SELECT * FROM rb_ledger where kode_pelajaran='$m[kode_pelajaran]' AND nisn='$_GET[id]' AND kode_kelas='$_GET[kelas]' AND tahun='$_GET[tahun]'"));   
                    if ($des[sikap]=='B') {
                        $sikap= "A";
                    }elseif ($des[sikap]=='S') {
                         $sikap = "B";
                    }elseif ($des[sikap]=='R') {
                        $sikap = "C";
                    }else{
                        $sikap = "";
                    }
                    
                    $huruf = array('','a','b','c','d','e','f','g','h','i');
                    
                    echo "<tr>
                            <td align=center>$no</td>
                            <td>$m[namamatapelajaran]</td>
                            <td align=center>$m[kkm]</td>
                            <td align=center>".number_format($total)."</td>
                            <td style='font-size:13px;'>".ucwords(terbilang(number_format($total)))."</td>
                            <td align=center>".number_format($sms[keterampilan])."</td>
                            <td style='font-size:13px;'>".ucwords(terbilang(number_format($sms[keterampilan])))."</td>
                            <td align=center>$sikap</td>
                        </tr>";
                    $no++;
                    }

                    $ta = mysql_fetch_array(mysql_query("SELECT sum(d.total) as total FROM (SELECT kodejdwl, nisn, (sum(uh)+sum(tugas))/4 as total FROM ((SELECT kodejdwl, nisn, sum(nilai1)/count(nisn) as uh, sum(nilai2)/count(nisn) as tugas FROM `rb_nilai_pengetahuan_semester` where nisn='$_GET[id]' GROUP BY kodejdwl) UNION (SELECT kodejdwl, nisn, nilai1, (nilai2*2) FROM rb_nilai_pengetahuan_semester where nisn='$_GET[id]')) as a GROUP by a.kodejdwl) as d"));
                    $siswa = mysql_num_rows(mysql_query("SELECT * FROM rb_siswa where kode_kelas='$_GET[kelas]' AND id_kls_pararel='$_GET[ie]'"));
                    $rank = mysql_fetch_array(mysql_query("SELECT * FROM rb_peringkat where nisn='$_GET[id]' AND kode_kelas='$_GET[kelas]' AND id_kls_pararel='$_GET[ie]' AND id_tahun_akademik='$_GET[tahun]'"));
                    echo "<tr>
                            <td colspan='3' align=center><b>JUMLAH</b></td>
                            <td align=center><b>".number_format($grandTotal)."</b></td>
                            <td style='font-size:13px;'>".ucwords(terbilang(number_format($grandTotal)))."</td>
                            <td align=center><b>".number_format($totalKeterampilan)."</b></td>
                            <td colspan='2' style='font-size:13px;'>".ucwords(terbilang(number_format($totalKeterampilan)))."</td>
                     
                        </tr>"; 

                 /*   echo "<tr>
                            <td colspan='3'align=center><b>PERINGKAT</b></td>
                            <td align=center><b>$rank[rank]</b></td>
                            <td colspan='4' align='center'><b>Dari $siswa Siswa</b></td>

                        </tr>";*/
                       /* if ($_GET[kelas]=="VII" || $_GET[kelas]=="VIII" || $_GET[kelas]=="X" || $_GET[kelas]=="XI") {
                          echo "
                          <tr><td colspan='8' align='center' height='30'>KETERANGAN KENAIKAN KELAS : <strike>TIDAK NAIK</strike>  NAIK KELAS</td>
                          </tr>";
                        }else
                        {
                          echo "<tr><td colspan='8' align='center' height='30'>KETERANGAN KELULUSAN : <strike>TIDAK LULUS</strike>  LULUS</td></tr>";
                        }*/
                    echo "</table><br/>";
                ?>
                <table id='tablemodul1' align='left' width=50% border=1>
                      <tr>
                        <th align="center">Predikat</th>
                        <th align="center">Keterangan</th>
                      </tr>
                      <tr>
                        <td align="center">A</td>
                        <td align="center">Amat Baik</td>
                      </tr>
                      <tr>
                        <td align="center">B</td>
                        <td align="center">Baik</td>
                      </tr>
                      <tr>
                        <td align="center">C</td>
                        <td align="center">Cukup</td>
                      </tr>
                      <tr>
                        <td align="center">D</td>
                        <td align="center">Kurang</td>
                      </tr>
                </table>
                <table border="0" width="100%" style="bottom: 10px; position: absolute;">
                  <tr>
                    <td width="300" align="center">Orang Tua / Wali</td>
                    <td width="260" align="center">Wali Kelas</td>
                    <td width="260"align="center">Jakarta, <?php echo tgl_raport(date("Y-m-d")); ?> <br> Kepala Sekolah</td>
                  </tr>
                  <tr>
                    <td align="center"><br /><br /><br /><br /><br /><br />
                      ................................... <br /><br /></td>
                    <td width="300" align="center" valign="top"><br /><br /><br /><br /><br />
                      <b><?php echo $s[walikelas]; ?><br />
                      NIP : <?php echo $s[nip]; ?></b>
                    </td>
                    <td align="center" valign="top"><br /><br /><br /><br /><br />
                      <?php
                  
                          $kelas = $_GET[kelas];
                           if ($kelas == "VII" || $kelas == "VIII" || $kelas == "IX") {
                            $kepsek = mysql_fetch_array(mysql_query("select * from rb_users where jabatan = 'kepala sekolah' and unit = 'SMP PUTRA'"));
                          }elseif ($kelas=="X"||$kelas=="XI"||$kelas=="XII") {
                            $kepsek = mysql_fetch_array(mysql_query("select * from rb_users where jabatan = 'kepala sekolah' and unit = 'SMA PUTRA'"));
                          }elseif ($kelas=="VII SMP"||$kelas=="VIII SMP"||$kelas=="XI SMP") {
                            $kepsek = mysql_fetch_array(mysql_query("select * from rb_users where jabatan = 'kepala sekolah' and unit = 'SMP PUTRI'")); 

                          }elseif ($kelas=="X.IPA"||$kelas=="XI.IPA"||$kelas=="XI.IPS") {
                            $kepsek = mysql_fetch_array(mysql_query("select * from rb_users where jabatan = 'kepala sekolah' and unit = 'SMA PUTRI'"));
                          }   
                      ?>
                      <b><?php echo $kepsek[nama_lengkap];?><br>
                      NIP : <?php echo $kepsek[username]; ?></b>
                    </td>
                  </tr>
                </table> 
                </div>
            </div>
        </div>
    </div>

   <!--  <div class="item">
        <div class='col-xs-12' align="center">
            <div class='box' style="width: 926px; height: 1369px; z-index: 1">
                <button type="button" onclick="window.open('print_raport/print-hal5.php?id=<?php echo $_SESSION[id] ?>&kelas=<?php echo $_SESSION[kode_kelas] ?>&ie=<?php echo $_GET[ie] ?>&tahun=<?php echo $_GET[tahun] ?>','_blank')" id='btnPrint' class="btn btn-primary pull-right"><i class="fa fa-print"></i> PRINT</button>
                <div class='box-body'>
                    <img src="dist/img/watermark_smp.png" class="watermark">
                    <table width=100% style>
                        <tr>
                          <td width=130px>Nama Sekolah</td> <td>:</td> <td><?php echo $_SESSION[unit]. $iden[nama_sekolah] ?> </td>
                          <td width=130px>Kelas</td> <td> :</td><td><?php echo $s[kode_kelas] ?></td>       
                        </tr>
                        <tr>
                          <td>Alamat </td> <td>:</td>                   
                          <td><?php echo $iden[alamat_sekolah] ?></td>
                          <td width=130px>Kelas Pararel </td> <td>:</td>   <td width=150px><?php echo $s[nm_pararel] ?></td>     
                        </tr>
                        <tr>
                          <td>Nama Peserta Didik </td> <td>:</td>       
                          <td><b><?php echo $s[nama] ?></b> </td>     
                          <td>Semester </td> <td>:</td> <td><?php echo $semester ?></td>      
                        </tr>
                        <tr>
                          <td>No Induk/NISN </td> <td>:</td>            
                          <td><?php echo  $s[nipd] ."/". $s[nisn]?></td>        
                           <td>Tahun Pelajaran </td> <td>:</td> <td><?php echo $t[keterangan] ?></td>
                        </tr>
                  </table><br>
                  <h3>DESKRIPSI PENGETAHUAN DAN KETERAMPILAM</h3>
                    <table id='tablemodul1' width=100% style='margin-top:2px' border=1>
                        <tr>
                            <th width='160px' colspan='2'>Mata Pelajaran</th>
                            <th width='140px'>Aspek</th>
                            <th>Deskripsi</th>
                        </tr>
                    <?php
                        $kelompok = mysql_query("SELECT * FROM rb_kelompok_mata_pelajaran");  
                        while ($k = mysql_fetch_array($kelompok)){
                        echo "<tr>
                            <td colspan='7'><b>$k[nama_kelompok_mata_pelajaran]</b></td>
                          </tr>";
                        $mapel = mysql_query("SELECT * FROM  rb_jadwal_pelajaran a JOIN rb_mata_pelajaran b ON a.kode_pelajaran=b.kode_pelajaran 
                                                  where a.kode_kelas='$_GET[kelas]' AND a.id_kls_pararel = '$_GET[ie]' AND a.id_tahun_akademik='$_GET[tahun]' AND b.id_kelompok_mata_pelajaran='$k[id_kelompok_mata_pelajaran]'");
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
                        ?>
                    </table>
                </div>
            </div>
        </div>
    </div> -->
    <div class="item">
        <div class='col-xs-12' align="center">
            <div class='box' style="width: 926px; height: 1369px; z-index: 1">
                <button type="button" onclick="window.open('print_raport/print-hal6.php?id=<?php echo $_SESSION[id] ?>&kelas=<?php echo $_SESSION[kode_kelas] ?>&tahun=<?php echo $_GET[tahun] ?>','_blank')" id='btnPrint' class="btn btn-primary pull-right"><i class="fa fa-print"></i> PRINT</button>
                <div class='box-body'>
                    <img src="dist/img/watermark_smp.png" class="watermark">
                    <table width=100% style>
                        <tr>
                          <td width=130px>Nama Sekolah</td> <td>:</td> <td><?php echo $_SESSION[unit]. $iden[nama_sekolah] ?> </td>
                          <td width=130px>Kelas</td> <td> :</td><td><?php echo $s[kode_kelas] ?></td>       
                        </tr>
                        <tr>
                          <td>Alamat </td> <td>:</td>                   
                          <td><?php echo $iden[alamat_sekolah] ?></td>
                          <td width=130px>Kelas Pararel </td> <td>:</td>   <td width=150px><?php echo $s[nm_pararel] ?></td>     
                        </tr>
                        <tr>
                          <td>Nama Peserta Didik </td> <td>:</td>       
                          <td><b><?php echo $s[nama] ?></b> </td>     
                          <td>Semester </td> <td>:</td> <td><?php echo $semester ?></td>      
                        </tr>
                        <tr>
                          <td>No Induk/NISN </td> <td>:</td>            
                          <td><?php echo  $s[nipd] ."/". $s[nisn]?></td>        
                           <td>Tahun Pelajaran </td> <td>:</td> <td><?php echo $t[keterangan] ?></td>
                        </tr>
                    </table><br>
                    <b class="pull-left">C. Extrakulikuler</b>
                    <table id='tablemodul1' width=100% border=1>
                      <tr>
                        <th width='40px'>No</th>
                        <th width='30%'>Kegiatan Extrakulikuler</th>
                        <th>Nilai</th>
                        <th>Grade</th>
                      </tr>
                    <?php 
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
                                  <td>$no</td>
                                  <td>$ex[kegiatan]</td>
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
                    ?>
                    </table>
                     <b class="pull-left">E. Keterangan</b></br>
                     <table id='tablemodul1' align="left" width=25% border=1>
                        <tr>
                          <td  width='80'>Range</td>
                          <td  width='80' align="center">Predikat</td>
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
                        </table></br></br></br></br></br></br></br>
                    
                    <b class="pull-left">F. Prestasi</b>
                    <table id='tablemodul1' width=100% border=1>
                      <tr>
                        <th width='40px'>No</th>
                        <th width='30%'>Jenis Kegiatan</th>
                        <th>Keterangan</th>
                      </tr>
                    <?php
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
                    ?>
                    </table>
                    <b class="pull-left">E. Ketidakhadiran</b>
                    <table id='tablemodul1' width=100% border=1>
                        <tr>
                          <td align='center' width='300'>Sakit</td>
                          <td align='center' width='300'>Izin</td>
                          <td align='center' width='300'>Tanpa Keterangan</td>
                        </tr>
                    <?php
                        $mapel = mysql_query("SELECT * FROM  rb_jadwal_pelajaran a JOIN rb_mata_pelajaran b ON a.kode_pelajaran=b.kode_pelajaran where a.kode_kelas='$_GET[kelas]' AND id_kls_pararel = '$s[id_kls_pararel]' AND a.id_tahun_akademik='$_GET[tahun]'");$no = 1; $n = 0;
                        while ($m = mysql_fetch_array($mapel)){ 
                            $absen = mysql_fetch_array(mysql_query("SELECT COUNT(IF(kode_kehadiran='H',1, NULL)) 'hadir', COUNT(IF(kode_kehadiran='S',1, NULL)) 'sakit', COUNT(IF(kode_kehadiran='I',1, NULL)) 'izin', COUNT(IF(kode_kehadiran='A',1, NULL)) 'alpa' FROM rb_absensi_siswa where nisn = '$_GET[id]' and  kodejdwl='$m[kodejdwl]'"));
                            $sakit+= $absen[sakit];
                            $izin+= $absen[izin];
                            $alpa+= $absen[alpa];

                        }
                    ?>
                        <tr>
                          <td align='center'><?php echo $sakit ?></td>
                          <td align='center'><?php echo $izin ?></td>
                          <td align='center'><?php echo $alpa ?></td>
                        </tr>  
                    </table>
                    <b>F. Catatan Wali Kelas</b>
                    <table id='tablemodul1' width=100% height=80px border=1>
                        <tr><td></td></tr>
                    </table>
                    <table border="0" width="100%" style="bottom: 10px; position: absolute;">
                      <tr>
                        <td width="300" align="center">Orang Tua / Wali</td>
                        <td width="260" align="center">Wali Kelas</td>
                        <td width="260"align="center">Jakarta, <?php echo tgl_raport(date("Y-m-d")); ?> <br> Kepala Sekolah</td>
                      </tr>
                      <tr>
                        <td align="center"><br /><br /><br /><br /><br /><br />
                          ................................... <br /><br /></td>
                        <td width="300" align="center" valign="top"><br /><br /><br /><br /><br />
                          <b><?php echo $s[walikelas]; ?><br />
                          NIP : <?php echo $s[nip]; ?></b>
                        </td>
                        <td align="center" valign="top"><br /><br /><br /><br /><br />
                           <?php
                      $kelas = $_GET[kelas];
                       if ($kelas == "VII" || $kelas == "VIII" || $kelas == "IX") {
                        $kepsek = mysql_fetch_array(mysql_query("select * from rb_users where jabatan = 'kepala sekolah' and unit = 'SMP PUTRA'"));
                      }elseif ($kelas=="X"||$kelas=="XI"||$kelas=="XII") {
                        $kepsek = mysql_fetch_array(mysql_query("select * from rb_users where jabatan = 'kepala sekolah' and unit = 'SMA PUTRA'"));
                      }elseif ($kelas=="VII SMP"||$kelas=="VIII SMP"||$kelas=="XI SMP") {
                        $kepsek = mysql_fetch_array(mysql_query("select * from rb_users where jabatan = 'kepala sekolah' and unit = 'SMP PUTRI'")); 

                      }elseif ($kelas=="X.IPA"||$kelas=="XI.IPA"||$kelas=="XI.IPS") {
                        $kepsek = mysql_fetch_array(mysql_query("select * from rb_users where jabatan = 'kepala sekolah' and unit = 'SMA PUTRI'"));
                       }   
                      ?>
                          <b><?php echo $kepsek[nama_lengkap];?><br>
                          NIP : <?php echo $kepsek[username]; ?></b>
                        </td>
                      </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" style="color: red;  top: 0px;" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="left carousel-control" style="color: red; top:5px; top: 0px;" href="#myCarousel" data-slide="prev">
    <a class="right carousel-control" style="color: red " href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>