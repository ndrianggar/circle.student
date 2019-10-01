<?php
session_start();
if (empty($_SESSION[level])){
  echo "<script>document.location='index.php';</script>";
}else{
  
include "../../config/koneksi.php";
$module=$_GET['view'];
$act=$_GET['act'];

  if ($module=='menu' AND $act=='hapus'){
    mysql_query("DELETE FROM menu WHERE id='$_GET[id]'");
    header('location:../../index.php?view='.$module);
  }

  elseif ($module=='menu' AND $act=='input'){
    mysql_query("INSERT INTO menu(id_parent,
                                  nama_menu,
                                  link,
								                 position,
								                 urutan)
                          VALUES('$_POST[id_parent]',
                                 '$_POST[nama_menu]',
                                 '$_POST[link]',
							                   '$_POST[position]',
							                   '$_POST[urutan]')");
    header('location:../../index.php?view='.$module);
  }

  elseif ($module=='menu' AND $act=='update'){
    mysql_query("UPDATE menu SET id_parent  = '$_POST[id_parent]',
                                   nama_menu = '$_POST[nama_menu]',
                                   link  = '$_POST[link]',
                								   aktif = '$_POST[aktif]',
                								   position = '$_POST[position]',
                								   urutan = '$_POST[urutan]' WHERE id_menu = '$_POST[id]'");
    header('location:../../index.php?view='.$module);
  }
}
?>