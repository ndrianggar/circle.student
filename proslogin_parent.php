<?php 
  session_start();
  error_reporting(0);
  include "config/koneksi.php";
  include "config/library.php";
  include "config/fungsi_indotgl.php";
  include "config/fungsi_seo.php";
if (isset($_POST[login])){
 $passlain=anti_injection($_POST[b]);
 $siswa = mysql_query("SELECT * FROM rb_siswa WHERE (nisn='".anti_injection($_POST[a])."' AND password='$passlain') OR (nipd='".anti_injection($_POST[a])."' AND password='$passlain')");
 $hitungsiswa = mysql_num_rows($siswa);
 if ($hitungsiswa >= 1){
    $r = mysql_fetch_array($siswa);
    $_SESSION[ids]     = $r[id_siswa];
    $_SESSION[id]     = $r[nisn];
    $_SESSION[namalengkap]  = $r[nama];
    $_SESSION[kode_kelas]     = $r[kode_kelas];
    $_SESSION[id_kls_pararel] = $r[id_kls_pararel];
    $_SESSION[angkatan]     = $r[angkatan];
    $_SESSION[level]    = 'parent';
    include "config/user_agent.php";
    mysql_query("INSERT INTO rb_users_aktivitas VALUES('','$r[nisn]','$ip','$user_browser $version','$user_os','siswa','".date('H:i:s')."','".date('Y-m-d')."')");
    echo "<script>document.location='index.php';</script>";
 }else{
    echo "<script>window.alert('Maaf, Anda Tidak Memiliki akses');
                                  window.location=('parent_login')</script>";
 }
}
?>

          
