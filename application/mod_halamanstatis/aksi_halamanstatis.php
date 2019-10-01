<?php
session_start();
if (empty($_SESSION[level])){
  echo "<script>document.location='index.php';</script>";
}else{
include "../../config/koneksi.php";
include "../../config/library.php";
include "../../config/fungsi_seo.php";

$module=$_GET['view'];
$act=$_GET['act'];

// Hapus halamanstatis
if ($module=='halamanstatis' AND $act=='hapus'){
mysql_query("DELETE FROM halamanstatis WHERE id_halaman='$_GET[id]'");
  header('location:../../index.php?view='.$module);
}


// Input halamanstatis
elseif ($module=='halamanstatis' AND $act=='input'){
  $judul_seo      = seo_title($_POST[judul]);
   mysql_query("INSERT INTO halamanstatis(judul,
                                       judul_seo,
                										   isi_halaman,
                										   tgl_posting,
                										   username,
                										   dibaca,
                										   jam,
                											 hari,home) 
                								VALUES('$_POST[judul]',
                										   '$judul_seo', 
                										   '$_POST[isi_halaman]',
                										   '$tgl_sekarang',
                										   '$_SESSION[id]',
                										   '$_POST[dibaca]', 
                										   '$jam_sekarang',
                										   '$hari_ini','$_POST[posisi]')");
  header('location:../../index.php?view='.$module);

}
// Update halamanstatis
elseif ($module=='halamanstatis' AND $act=='update'){
  $judul_seo      = seo_title($_POST[judul]);
mysql_query("UPDATE halamanstatis SET judul        = '$_POST[judul]',
                                        judul_seo    = '$judul_seo',
                                        isi_halaman  = '$_POST[isi_halaman]', home = '$_POST[posisi]' WHERE id_halaman   = '$_POST[id]'");
  header('location:../../index.php?view='.$module);

}
}

