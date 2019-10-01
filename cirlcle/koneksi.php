<?php
date_default_timezone_set('Asia/Jakarta');
$server = "192.168.6.204";
$username = "root";
$password = "P@ssw0rd";
$database = "circle";

mysqli_connect($server, $username, $password);
mysqli_select_db($database);

?>

<?php
function anti_injection($data){
  $filter = mysqli_real_escape_string(stripslashes(strip_tags(htmlspecialchars($data,ENT_QUOTES))));
  return $filter;
}

function average($arr){
   if (!is_array($arr)) return false;
   return array_sum($arr)/count($arr);
}

function cek_session_admin(){
	$cekakses = mysqli_num_rows(mysqli_query("SELECT * FROM rb_guru_akses a JOIN rb_modul b ON a.id_modul=b.id_modul where a.nip='$_SESSION[id]' AND b.aktif='Ya' AND b.url LIKE '%$_GET[view]%'"));
	$level = $_SESSION[level];
	if ($level != 'superuser' AND $level != 'kepala' AND $cekakses <= '0'){
		echo "<script>document.location='index.php';</script>";
	}
	
}
function cek_session_admin_sekolah(){
	$cekakses = mysqli_num_rows(mysqli_query("SELECT * FROM rb_guru_akses a JOIN rb_modul b ON a.id_modul=b.id_modul where a.nip='$_SESSION[id]' AND b.aktif='Ya' AND b.url LIKE '%$_GET[view]%'"));
	$level = $_SESSION[level];
	$unit = $_SESSION[unit];
	if ($level != 'adminsekolah' AND $level != 'adminsekolah' AND $cekakses <= '0'){
		echo "<script>document.location='index.php';</script>";
	}
}

function cek_session_guru(){
	$level = $_SESSION[level];
	if ($level != 'guru' AND $level != 'superuser' AND $level != 'kepala'){
		echo "<script>document.location='index.php';</script>";
	}
}

function cek_session_siswa(){
	$level = $_SESSION[level];
	if ($level == ''){
		echo "<script>document.location='index.php';</script>";
	}
}

function cek_session_admin_guru(){
  $level = $_SESSION[level];
  $cekakses = mysqli_num_rows(mysqli_query("SELECT * FROM rb_guru_akses a JOIN rb_modul b ON a.id_modul=b.id_modul where a.nip='$_SESSION[id]' AND b.aktif='Ya' AND b.url LIKE '%$_GET[view]%'"));
  $level = $_SESSION[level];
  if ($level != 'superuser' AND $level != 'kepala' AND $level != 'guru' AND $cekakses <= '0'){
    echo "<script>document.location='index.php';</script>";
  }
}

function konversi($x){
   
  $x = abs($x);
  $angka = array ("","satu", "dua", "tiga", "empat", "lima", "enam", "tujuh", "delapan", "sembilan", "sepuluh", "sebelas");
  $temp = "";
  
  if($x <= 0){
    $temp = " Nol";
  }else if($x < 12){
   $temp = " ".$angka[$x];
  }else if($x<20){
   $temp = konversi($x - 10)." belas";
  }else if ($x<100){
   $temp = konversi($x/10)." ". konversi($x%10);
  }else if($x<200){
   $temp = " seratus".konversi($x-100);
  }else if($x<1000){
   $temp = konversi($x/100)." ratus".konversi($x%100);   
  }else if($x<2000){
   $temp = " seribu".konversi($x-1000);
  }else if($x<1000000){
   $temp = konversi($x/1000)." ribu".konversi($x%1000);   
  }else if($x<1000000000){
   $temp = konversi($x/1000000)." juta".konversi($x%1000000);
  }else if($x<1000000000000){
   $temp = konversi($x/1000000000)." milyar".konversi($x%1000000000);
  }
   
  return $temp;
 }
   
 function tkoma($x){
  $str = stristr($x,",");
  $ex = explode(',',$x);
   
  if(($ex[1]/10) >= 1){
   $a = abs($ex[1]);
  }
  $string = array("nol", "satu", "dua", "tiga", "empat", "lima", "enam", "tujuh", "delapan",   "sembilan","sepuluh", "sebelas");
  $temp = "";
  
  $a2 = $ex[1]/10;
  $pjg = strlen($str);
  $i =1;
     
   
  if($a>=1 && $a< 12){   
   $temp .= " ".$string[$a];
  }else if($a>12 && $a < 20){   
   $temp .= konversi($a - 10)." ";
  }else if ($a>20 && $a<100){   
   $temp .= konversi($a / 10)." puluh". konversi($a % 10);
  }else{
   if($a2<1){
     
    while ($i<$pjg){     
     $char = substr($str,$i,1);     
     $i++;
     $temp .= " ".$string[$char];
    }
   }
  }  
  return $temp;
 }
  
//  function terbilang($x){
//   if($x<0){
//    $hasil = "minus ".trim(konversi(x));
//   }else{
//    $poin = trim(tkoma($x));
//    $hasil = trim(konversi($x));
//   }
   
// if($poin){
//    $hasil = $hasil." koma ".$poin;
//   }else{
//    $hasil = $hasil;
//   }
//   return $hasil;  
//  }

 function penyebut($nilai) {
    $nilai = abs($nilai);
    $huruf = array("", "satu", "dua", "tiga", "empat", "lima", "enam", "tujuh", "delapan", "sembilan", "sepuluh", "sebelas");
    $temp = "";
    if ($nilai < 12) {
      $temp = " ". $huruf[$nilai];
    } else if ($nilai <20) {
      $temp = penyebut($nilai - 10). " belas";
    } else if ($nilai < 100) {
      $temp = penyebut($nilai/10)." puluh". penyebut($nilai % 10);
    } else if ($nilai < 200) {
      $temp = " seratus" . penyebut($nilai - 100);
    } else if ($nilai < 1000) {
      $temp = penyebut($nilai/100) . " ratus" . penyebut($nilai % 100);
    } else if ($nilai < 2000) {
      $temp = " seribu" . penyebut($nilai - 1000);
    } else if ($nilai < 1000000) {
      $temp = penyebut($nilai/1000) . " ribu" . penyebut($nilai % 1000);
    } else if ($nilai < 1000000000) {
      $temp = penyebut($nilai/1000000) . " juta" . penyebut($nilai % 1000000);
    } else if ($nilai < 1000000000000) {
      $temp = penyebut($nilai/1000000000) . " milyar" . penyebut(fmod($nilai,1000000000));
    } else if ($nilai < 1000000000000000) {
      $temp = penyebut($nilai/1000000000000) . " trilyun" . penyebut(fmod($nilai,1000000000000));
    }     
    return $temp;
  }
 
  function terbilang($nilai) {
    if($nilai<0) {
      $hasil = "minus ". trim(penyebut($nilai));
    } else {
      $hasil = trim(penyebut($nilai));
    }         
    return $hasil;
  }


?>

<style type="text/css">
  .watermark{
    width: 100%;
    height: auto;
    position: absolute;
    /*margin-top : 50px;*/
    /*top: 50%;
    left: 50%;
    margin-left: -1240px;
    margin-top: -1754px;*/
    z-index: -999;
    opacity: 0.2;
    filter: alpha(opacity=30);
  }
</style>
