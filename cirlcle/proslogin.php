<?php 
  session_start();
  error_reporting(0);
  include "config/koneksi.php";
  include "config/library.php";
  include "config/fungsi_indotgl.php";
  include "config/fungsi_seo.php";
if (isset($_POST[login])){
 $passlain=anti_injection($_POST[b]);
 $data=md5(anti_injection($_POST[b]));
 $pass=hash("sha512",$data);
 $admin = mysql_query("SELECT * FROM rb_users WHERE username='".anti_injection($_POST[a])."' AND password='$pass'");
 $adminkonten = mysql_query("SELECT * FROM rb_user_konten WHERE uname_konten='".anti_injection($_POST[a])."' AND pswd_konten='$pass'");
 $adminsekolah = mysql_query("SELECT * FROM rb_user_admsekolah WHERE unam_ser_adm_sekolah='".anti_injection($_POST[a])."' AND pswd_ser_adm_sekolah='$pass'");
 $guru = mysql_query("SELECT * FROM rb_guru WHERE nip='".anti_injection($_POST[a])."' AND password='$passlain'");
 $siswa = mysql_query("SELECT * FROM rb_siswa WHERE nisn='".anti_injection($_POST[a])."' AND password='$passlain'");
 
 $hitungadmin = mysql_num_rows($admin);
 $hitungadminkonten = mysql_num_rows($adminkonten);
 $hitungadminsekolah = mysql_num_rows($adminsekolah);
 $hitungguru = mysql_num_rows($guru);
 $hitungsiswa = mysql_num_rows($siswa);
 if ($hitungadmin >= 1){
    $r = mysql_fetch_array($admin);
    $_SESSION[id]     = $r[id_user];
    $_SESSION[namalengkap]  = $r[nama_lengkap];
    $_SESSION[level]    = $r[level];
    $_SESSION['upload_image_file_manager'] = true;
    include "config/user_agent.php";
    mysql_query("INSERT INTO rb_users_aktivitas VALUES('','$r[id_user]','$r[nama_lengkap]','$ip','$user_browser $version','$user_os','$r[level]','".date('H:i:s')."','".date('Y-m-d')."')");
    echo "<script>document.location='index.php';</script>";
 }elseif ($hitungadminkonten >= 1){
    $r = mysql_fetch_array($adminkonten);
    $_SESSION[id]     = $r[id_user_konten];
    $_SESSION[nm_lkp]  = $r[nm_lkp];
    $_SESSION[level]    = $r[level];
	$_SESSION[unit]    = $r[unit];
    $_SESSION['upload_image_file_manager'] = true;
    include "config/user_agent.php";
    mysql_query("INSERT INTO rb_users_aktivitas VALUES('','$r[id_user_konten]','$ip','$user_browser $version','$user_os','$r[level]','".date('H:i:s')."','".date('Y-m-d')."')");
    echo "<script>document.location='index.php';</script>";
}elseif ($hitungadminsekolah >= 1){
    $r = mysql_fetch_array($adminsekolah);
    $_SESSION[id]     = $r[id_ser_adm_sekolah];
    $_SESSION[nm_ser_adm_sekolah]  = $r[nm_ser_adm_sekolah];
    $_SESSION[level]    = $r[level];
    $_SESSION['upload_image_file_manager'] = true;
    $_SESSION[unit] = $r[unit];
    include "config/user_agent.php";
    mysql_query("INSERT INTO rb_users_aktivitas VALUES('','$r[id_ser_adm_sekolah]','$ip','$user_browser $version','$user_os','$r[level]','".date('H:i:s')."','".date('Y-m-d')."')");
    echo "<script>document.location='index.php';</script>";
 }elseif ($hitungguru >= 1){
    $r = mysql_fetch_array($guru);
    $_SESSION[id]     = $r[nip];
    $_SESSION[nama_guru	]     = $r[nama_guru];
    $_SESSION[namalengkap]  = $r[nama_guru];
    $_SESSION[level]    = 'guru';
    $_SESSION[unit] = $r[unit];
    $_SESSION['upload_image_file_manager'] = true;
    include "config/user_agent.php";
    mysql_query("INSERT INTO rb_users_aktivitas VALUES('','$r[nip]','$r[nama_guru]','$ip','$user_browser $version','$user_os','guru','".date('H:i:s')."','".date('Y-m-d')."')");
    echo "<script>document.location='index.php';</script>";
 }else{
    echo "<script>window.alert('Maaf, Anda Tidak Memiliki akses');
                                  window.location=('login.php')</script>";
 }
}
?>

          
