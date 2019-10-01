<?php 
  session_start();
  error_reporting(0);
  include "config/koneksi.php";
  include "config/library.php";
  include "config/fungsi_indotgl.php";
  include "config/fungsi_seo.php";
  if (isset($_SESSION[id])){
      if($_SESSION[level]=='siswa'){
          $iden = mysql_fetch_array(mysql_query("SELECT * FROM rb_siswa where nisn='$_SESSION[id]'"));
           $nama =  $iden[nama];
           $level = 'Siswa / Murid';
           if (trim($iden[foto])==''){
              $foto = 'foto_siswa/no-image.jpg';
           }else{
              $foto = 'foto_siswa/'.$iden[foto];
           } 
      }

      $kurikulum = mysql_fetch_array(mysql_query("SELECT * FROM rb_kurikulum where status_kurikulum='Ya'"));
      $tahunakademik = mysql_fetch_array(mysql_query("SELECT * FROM rb_tahun_akademik where aktif='Ya'"));
      $durasi = mysql_fetch_array(mysql_query("SELECT b.durasi*60 as durasi  FROM `rb_quiz_jadwal` a JOIN rb_quiz_cbt b ON a.id_cbt=b.id_cbt JOIN rb_mata_pelajaran c ON b.kode_pelajaran=c.kode_pelajaran JOIN rb_quiz_jenis d ON b.id_jenis=d.id_jenis where d.jadwal='Y' AND a.id_jadwal='$_GET[id_jadwal]'"));
      if ($durasi['durasi']==''){
         $waktu_soal = 5400;
      }else{
         $waktu_soal = $durasi['durasi'];
      }
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Sistem Informasi Akademik Sekolah</title>
<meta name="author" content="itihbs">
<!-- Tell the browser to be responsive to screen width -->
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<!-- Bootstrap 3.3.5 -->
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- DataTables -->
<link rel="stylesheet" href="plugins/datatables/dataTables.bootstrap.css">
<!-- Theme style -->
<link rel="stylesheet" href="dist/css/AdminLTE.min.css">
<link rel="stylesheet" href="dist/css/bootstrap-clockpicker.min.css">
<link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
<!-- iCheck -->
<link rel="stylesheet" href="plugins/iCheck/flat/blue.css">
<!-- Morris chart -->
<link rel="stylesheet" href="plugins/morris/morris.css">
<!-- jvectormap -->
<link rel="stylesheet" href="plugins/jvectormap/jquery-jvectormap-1.2.2.css">
<!-- Date Picker -->
<link rel="stylesheet" href="plugins/datepicker/datepicker3.css">
<!-- Daterange picker -->
<link rel="stylesheet" href="plugins/daterangepicker/daterangepicker-bs3.css">
<!-- bootstrap wysihtml5 - text editor -->
<link rel="stylesheet" href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
<!-- ckeditorq/ckeditor wysihtml5 - text editor -->
<script src="ckeditor/ckeditor.js"></script>
<style type="text/css"> .files{ position:absolute; z-index:2; top:0; left:0; filter: alpha(opacity=0);-ms-filter:"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)"; opacity:0; background-color:transparent; color:transparent; } </style>
<style type="text/css">input.invalid { background-color: #ffdddd; } .tab { display: none; } button:hover { opacity: 0.8; } .step.active { opacity: 1; } .step.finish { background-color: transparent; } .btn-default.active{ color:green; }     .page:hover{ border:1px solid blue; cursor: pointer;} .checkbox-scroll { border:1px solid #ccc; width:100%; height: 400px; padding-left:8px; overflow-y: scroll; }</style>
<script type="text/javascript" src="jquery-1.4.4.min.js"></script>
</head>
  <body onunload=keluar() class="hold-transition skin-blue layout-top-nav">
    <div class="wrapper">
      <header class="main-header">
          <?php include "main-header-siswa.php"; ?>
      </header>

      <div class="content-wrapper">
        <section class="content container">
        <div class='col-xs-12'>  
          <div class='box'>
            <div class='box-header'>
              <h3 class='box-title'>Computer Based Test </h3>
            </div><!-- /.box-header -->
            <div class="box-body">
            <?php
            if ($_GET['act']==''){
              $_SESSION['cbt'] = $_GET['id_jadwal'];
                $t = mysql_fetch_array(mysql_query("SELECT b.judul_cbt, c.namamatapelajaran, d.jenis_cbt FROM rb_quiz_jadwal a JOIN rb_quiz_cbt b ON a.id_cbt=b.id_cbt 
                                          JOIN rb_mata_pelajaran c ON b.kode_pelajaran=c.kode_pelajaran 
                                            JOIN rb_quiz_jenis d ON b.id_jenis=d.id_jenis where a.id_jadwal='$_GET[id_jadwal]'"));
                $objektif = mysql_num_rows(mysql_query("SELECT * FROM `rb_quiz_jadwal` a JOIN rb_quiz_cbt b ON a.id_cbt=b.id_cbt JOIN rb_quiz_cbt_soal c ON b.id_cbt=c.id_cbt
                                            JOIN rb_bank_pertanyaan_objektif d ON c.id_bank_pertanyaan_objektif=d.id_bank_pertanyaan_objektif where a.id_jadwal='$_GET[id_jadwal]' AND d.kategori_soal='objektif'"));
                $essay = mysql_num_rows(mysql_query("SELECT * FROM `rb_quiz_jadwal` a JOIN rb_quiz_cbt b ON a.id_cbt=b.id_cbt JOIN rb_quiz_cbt_soal c ON b.id_cbt=c.id_cbt
                                            JOIN rb_bank_pertanyaan_objektif d ON c.id_bank_pertanyaan_objektif=d.id_bank_pertanyaan_objektif where a.id_jadwal='$_GET[id_jadwal]' AND d.kategori_soal='essay'"));
                echo "<div class='col-md-12'><br>
                  <table class='table table-condensed'>
                    <tbody>
                      <tr><th width='120px'>Jenis CBT</th><td style='border-bottom:1px solid #e3e3e3'> $t[jenis_cbt]</td></tr>
                      <tr><th>Nama mapel</th><td style='border-bottom:1px solid #e3e3e3'>$t[namamatapelajaran]</td></tr>
                      <tr><th>Judul CBT</th><td style='border-bottom:1px solid #e3e3e3'> $t[judul_cbt]</td></tr>
                      <tr><th>Jenis Soal</th><td style='border-bottom:1px solid #e3e3e3'> $objektif Objektif / $essay Essay</td></tr>
                    </tbody>
                  </table>
                </div>";
            ?>

                <center><h4>Sisa Waktu : <span id="divtotalwaktu"></span></h4></center>
                <div class='col-sm-12' style='min-height:400px'>  
                    <div class="btn-group btn-breadcrumb" style="text-align:center;margin-bottom:30px;">
                    <?php 
                    $paging = mysql_query("SELECT a.id_jadwal, b.id_cbt, d.* FROM `rb_quiz_jadwal` a JOIN rb_quiz_cbt b ON a.id_cbt=b.id_cbt JOIN rb_quiz_cbt_soal c ON b.id_cbt=c.id_cbt
                                            JOIN rb_bank_pertanyaan_objektif d ON c.id_bank_pertanyaan_objektif=d.id_bank_pertanyaan_objektif where a.id_jadwal='$_GET[id_jadwal]'");
                    $i = 1;
                    while($rows = mysql_fetch_array($paging)){ 
                        $halaman = $i-1;
                        if ($rows['kategori_soal']=='objektif'){
                            echo "<a onclick=\"page($halaman)\" class='step btn btn-default'>$i</a>";
                        }else{
                            echo "<a onclick=\"page($halaman)\" class='step btn btn-default' style='color:red'>$i</a>";
                        }
                        $i++;
                    } 
                    ?>
                    </div>
                    <div id="divid_jadwal" style='display:none'><?php echo $_GET['id_jadwal']; ?></div>
                    <form action="quiz_siswa_mulai.php?act=hasil&id_jadwal=<?php echo $_GET['id_jadwal']; ?>" method="post" id="formulir">
                        <?php 
                        $jumlah = mysql_query("SELECT a.id_jadwal, b.id_cbt, d.* FROM `rb_quiz_jadwal` a JOIN rb_quiz_cbt b ON a.id_cbt=b.id_cbt JOIN rb_quiz_cbt_soal c ON b.id_cbt=c.id_cbt
                                            JOIN rb_bank_pertanyaan_objektif d ON c.id_bank_pertanyaan_objektif=d.id_bank_pertanyaan_objektif where a.id_jadwal='$_GET[id_jadwal]' ORDER BY RAND()");
                        $no = 1;
                        echo "<input type='hidden' value='".mysql_num_rows($jumlah)."' name='jumlah'>";
                        while($row = mysql_fetch_array($jumlah)){
                            echo "<div class='tab'>
                                        <p style='float:left'>$no. </p> $row[pertanyaan]<div style='clear:both'></div>
                                        <input type='hidden' value='$row[id_bank_pertanyaan_objektif]' name='id$no'>";
                                        if ($row['kategori_soal']=='objektif'){
                                        echo "<p><span style='float:left; margin:-2px 5px 0px 0px'><input type='radio' name='jawaban$no' value='A'> A. </span>$row[jawab_a]</p>
                                                <p><span style='float:left; margin:-2px 5px 0px 0px'><input type='radio' name='jawaban$no' value='B'> B. </span>$row[jawab_b]</p>
                                                <p><span style='float:left; margin:-2px 5px 0px 0px'><input type='radio' name='jawaban$no' value='C'> C. </span>$row[jawab_c]</p>
                                                <p><span style='float:left; margin:-2px 5px 0px 0px'><input type='radio' name='jawaban$no' value='D'> D. </span>$row[jawab_d]</p>
                                                <p><span style='float:left; margin:-2px 5px 0px 0px'><input type='radio' name='jawaban$no' value='E'> E. </span>$row[jawab_e]</p>";
                                        }else{
                                            echo "<p><textarea class='form-control' id='editor' name='jawabanessay$no'></textarea></p>";
                                        }
                                  echo "</div>";
                            $no++;
                        }
                        ?>
                        <div style="clear:both"><hr></div>
                        <div style="overflow:auto;">
                              <button class='btn btn-sm btn-warning' type="button" id="prevBtn" onclick="nextPrev(-1)">Kembali</button>
                              <button class='btn btn-sm btn-success' type="button" id="nextBtn" onclick="nextPrev(1)">Selanjutnya</button>
                        </div><br>
                    </form>
                    
                </div>
            <?php 
            }elseif ($_GET['act']=='hasil'){ 
                $t = mysql_fetch_array(mysql_query("SELECT b.judul_cbt, b.kkm, c.namamatapelajaran, d.jenis_cbt FROM rb_quiz_jadwal a JOIN rb_quiz_cbt b ON a.id_cbt=b.id_cbt 
                                          JOIN rb_mata_pelajaran c ON b.kode_pelajaran=c.kode_pelajaran 
                                            JOIN rb_quiz_jenis d ON b.id_jenis=d.id_jenis  where a.id_jadwal='$_GET[id_jadwal]'"));
                echo "<div class='col-md-12'><br>
                          <table class='table table-condensed'>
                            <tbody>
                              <tr><th width='120px'>Jenis CBT</th><td style='border-bottom:1px solid #e3e3e3'> $t[jenis_cbt]</td></tr>
                              <tr><th>Nama mapel</th><td style='border-bottom:1px solid #e3e3e3'>$t[namamatapelajaran]</td></tr>
                              <tr><th>Judul CBT</th><td style='border-bottom:1px solid #e3e3e3'> $t[judul_cbt]</td></tr>
                              
                            </tbody>
                          </table>
                        </div>";

                echo "<div class='col-md-12' style='margin-bottom:10%'>";
                    $n = $_POST['jumlah'];
                    for ($i=0; $i<=$n; $i++){
                        $id_soal = $_POST['id'.$i];
                        $jawab = $_POST['jawaban'.$i];
                        $jawabs = $_POST['jawabanessay'.$i];

                        $jenis = mysql_fetch_array(mysql_query("SELECT * FROM rb_bank_pertanyaan_objektif where id_bank_pertanyaan_objektif='".$id_soal."'"));
                        if ($jenis['kategori_soal']=='objektif'){
                            $cek_objektif = mysql_num_rows(mysql_query("SELECT * FROM rb_jawaban_objektif where id_jadwal='$_GET[id_jadwal]' AND id_pertanyaan_objektif='".$id_soal."' AND id_siswa='$_SESSION[ids]'"));
                            if ($cek_objektif<=0 AND $id_soal!=''){
                                mysql_query("INSERT INTO rb_jawaban_objektif VALUES('','$_SESSION[ids]','$_GET[id_jadwal]','".$id_soal."','".$jawab."','".date('Y-m-d H:i:s')."')");
                            }
                        }else{
                            $cek_essay = mysql_num_rows(mysql_query("SELECT * FROM rb_jawaban_essai where id_jadwal='$_GET[id_jadwal]' AND id_pertanyaan_essai='".$id_soal."' AND id_siswa='$_SESSION[ids]'"));
                            if ($cek_essay<=0 AND $id_soal!=''){
                                mysql_query("INSERT INTO rb_jawaban_essai VALUES('','$_SESSION[ids]','$_GET[id_jadwal]','".$id_soal."','".$jawabs."','".date('Y-m-d H:i:s')."')");
                            }
                        }
                    }

                    $soal = mysql_num_rows(mysql_query("SELECT * FROM rb_jawaban_objektif where id_jadwal='$_GET[id_jadwal]' AND id_siswa='$_SESSION[ids]'"));
                    $essay = mysql_num_rows(mysql_query("SELECT * FROM `rb_quiz_jadwal` a JOIN rb_quiz_cbt b ON a.id_cbt=b.id_cbt JOIN rb_quiz_cbt_soal c ON b.id_cbt=c.id_cbt
                                            JOIN rb_bank_pertanyaan_objektif d ON c.id_bank_pertanyaan_objektif=d.id_bank_pertanyaan_objektif where a.id_jadwal='$_GET[id_jadwal]' AND d.kategori_soal='essay'"));
                    $benar = mysql_num_rows(mysql_query("SELECT a.*, b.kunci_jawaban FROM rb_jawaban_objektif a JOIN rb_bank_pertanyaan_objektif b ON a.id_pertanyaan_objektif=b.id_bank_pertanyaan_objektif where a.jawaban=b.kunci_jawaban AND a.id_jadwal='$_GET[id_jadwal]' AND a.id_siswa='$_SESSION[ids]'"));
                    $nilai = number_format($benar/$soal * 100);
                    unset($_SESSION['cbt']);

                    if ($essay>=1){
                        echo "<center><h3>Soal Objektif <span style='color:red'>$benar Benar</span>, Soal Essay akan diperiksa terlebih dahulu,<br> 
                              dan Nilai akan muncul setelah soal essay diperiksa oleh Guru bersangkutan.</h3>";
                    }else{
                        echo "<center><h3>Skor Kamu : </h3> <h1 style='color:red; font-size:120px'>$nilai</h1>";
                        if ($nilai<$t['kkm']){
                            echo "<h3>Skor kamu masih dibawah ketuntasan. Kamu dapat mencoba lagi,<br> 
                                      atau mengulang materi untuk meningkatkan pemahaman kamu.</h3>";
                        }else{
                            echo "<h3>Selamat Skor Bagus! Skor kamu sudah diatas ketuntasan.<br>
                                      kamu bisa mengulang materi untuk meningkatkan pemahaman kamu lagi.</h3>";
                        }
                    }
                    
                echo "<a class='btn btn-warning btn-xs' style='width:150px' href='index.php?view=quiz'>Keluar</a></center></div>";
            }elseif ($_GET['act']=='pembahasan'){ 
              unset($_COOKIE['waktucookies']);
              $t = mysql_fetch_array(mysql_query("SELECT b.judul_cbt, c.namamatapelajaran, d.jenis_cbt FROM rb_quiz_jadwal a JOIN rb_quiz_cbt b ON a.id_cbt=b.id_cbt 
                                          JOIN rb_mata_pelajaran c ON b.kode_pelajaran=c.kode_pelajaran 
                                            JOIN rb_quiz_jenis d ON b.id_jenis=d.id_jenis where a.id_jadwal='$_GET[id_jadwal]'"));
                $objektif = mysql_num_rows(mysql_query("SELECT * FROM `rb_quiz_jadwal` a JOIN rb_quiz_cbt b ON a.id_cbt=b.id_cbt JOIN rb_quiz_cbt_soal c ON b.id_cbt=c.id_cbt
                                            JOIN rb_bank_pertanyaan_objektif d ON c.id_bank_pertanyaan_objektif=d.id_bank_pertanyaan_objektif where a.id_jadwal='$_GET[id_jadwal]' AND d.kategori_soal='objektif'"));
                $essay = mysql_num_rows(mysql_query("SELECT * FROM `rb_quiz_jadwal` a JOIN rb_quiz_cbt b ON a.id_cbt=b.id_cbt JOIN rb_quiz_cbt_soal c ON b.id_cbt=c.id_cbt
                                            JOIN rb_bank_pertanyaan_objektif d ON c.id_bank_pertanyaan_objektif=d.id_bank_pertanyaan_objektif where a.id_jadwal='$_GET[id_jadwal]' AND d.kategori_soal='essay'"));
                echo "<div class='col-md-12'><br>
                  <table class='table table-condensed'>
                    <tbody>
                      <tr><th width='120px'>Jenis CBT</th><td style='border-bottom:1px solid #e3e3e3'> $t[jenis_cbt]</td></tr>
                      <tr><th>Nama mapel</th><td style='border-bottom:1px solid #e3e3e3'>$t[namamatapelajaran]</td></tr>
                      <tr><th>Judul CBT</th><td style='border-bottom:1px solid #e3e3e3'> $t[judul_cbt]</td></tr>
                      <tr><th>Jenis Soal</th><td style='border-bottom:1px solid #e3e3e3'> $objektif Objektif / $essay Essay</td></tr>
                    </tbody>
                  </table>
                </div>

                  <div class='col-sm-12' style='min-height:400px'>  
                    <div class='btn-group btn-breadcrumb' style='text-align:center;margin-bottom:30px;'>";
                    $paging = mysql_query("SELECT a.id_jadwal, b.id_cbt, d.* FROM `rb_quiz_jadwal` a JOIN rb_quiz_cbt b ON a.id_cbt=b.id_cbt JOIN rb_quiz_cbt_soal c ON b.id_cbt=c.id_cbt
                                            JOIN rb_bank_pertanyaan_objektif d ON c.id_bank_pertanyaan_objektif=d.id_bank_pertanyaan_objektif where a.id_jadwal='$_GET[id_jadwal]'");
                    $i = 1;
                    while($rows = mysql_fetch_array($paging)){ 
                        $halaman = $i-1;
                        if ($rows['kategori_soal']=='objektif'){
                            echo "<a onclick=\"page($halaman)\" class='step btn btn-default'>$i</a>";
                        }else{
                            echo "<a onclick=\"page($halaman)\" class='step btn btn-default' style='color:red'>$i</a>";
                        }
                        $i++;
                    } 

                    echo "</div>
                    <form action='index.php?view=quiz' method='post' id='formulir'>";
                        $jumlah = mysql_query("SELECT a.id_jadwal, b.id_cbt, d.* FROM `rb_quiz_jadwal` a JOIN rb_quiz_cbt b ON a.id_cbt=b.id_cbt JOIN rb_quiz_cbt_soal c ON b.id_cbt=c.id_cbt
                                            JOIN rb_bank_pertanyaan_objektif d ON c.id_bank_pertanyaan_objektif=d.id_bank_pertanyaan_objektif where a.id_jadwal='$_GET[id_jadwal]' ORDER BY RAND()");
                        $no = 1;
                        echo "<input type='hidden' value='".mysql_num_rows($jumlah)."' name='jumlah'>";
                        while($row = mysql_fetch_array($jumlah)){
                            echo "<div class='tab'>
                                        <p style='float:left'>$no. </p> $row[pertanyaan]<div style='clear:both'></div>";
                                        if ($row['kategori_soal']=='objektif'){
                                        $jawab_anda = mysql_fetch_array(mysql_query("SELECT * FROM rb_jawaban_objektif where id_siswa='$_SESSION[ids]' AND id_jadwal='$_GET[id_jadwal]' AND id_pertanyaan_objektif='$row[id_bank_pertanyaan_objektif]'"));
                                        echo "<p><span style='float:left'>A. </span> $row[jawab_a]</p>
                                              <p><span style='float:left'>B. </span> $row[jawab_b]</p>
                                              <p><span style='float:left'>C. </span> $row[jawab_c]</p>
                                              <p><span style='float:left'>D. </span> $row[jawab_d]</p>
                                              <p><span style='float:left'>E. </span> $row[jawab_e]</p>

                                              <hr><p><b>Jawaban anda : $jawab_anda[jawaban] / <span style='color:green'>Kunci : $row[kunci_jawaban]</span></b></b></p>";
                                        }else{
                                            $jawab_anda_essay = mysql_fetch_array(mysql_query("SELECT * FROM rb_jawaban_essai where id_siswa='$_SESSION[ids]' AND id_jadwal='$_GET[id_jadwal]' AND id_pertanyaan_essai='$row[id_bank_pertanyaan_objektif]'"));
                                            echo "<p>Jawaban anda : $jawab_anda[jawaban_essai]</p>";
                                        }
                                  echo "<div class='well'><b style='color:blue'>Pembahasan :</b> $row[pembahasan]</div></div>";
                            $no++;
                        }

                        echo "<div style='clear:both'><hr></div>
                        <div style='overflow:auto;'>
                              <button class='btn btn-sm btn-warning' type='button' id='prevBtn' onclick=\"nextPrev(-1)\">Kembali</button>
                              <button class='btn btn-sm btn-success' type='button' id='nextBtn' onclick=\"nextPrev(1)\">Selanjutnya</button>
                        </div><br>
                    </form>
                </div>";
            }  
            ?>
            </div>
          </div>
        </div>
        <div style="clear:both"></div>
        </section>
      </div><!-- /.content-wrapper -->

      <footer class="main-footer" style='margin-left:0px'>
          <?php include "footer.php"; ?>
      </footer>
    </div><!-- ./wrapper -->
<script src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script>
var totalwaktu<?php echo $_GET['id_jadwal']; ?> = <?php echo $waktu_soal; ?>; //batas waktu pengerjaan semua soal
var timer;
var habis = 0;
$(document).ready(function(){
    checkCookie();
    mainkanwaktu();
});

function pad(n, width, z) {
  z = z || '0';
  n = n + '';
  return n.length >= width ? n : new Array(width - n.length + 1).join(z) + n;
}

function mainkanwaktu(){
    if(totalwaktu<?php echo $_GET['id_jadwal']; ?>>0){
        var hours = Math.floor(totalwaktu<?php echo $_GET['id_jadwal']; ?> / 60 / 60); // 7
        var minutes = Math.floor(totalwaktu<?php echo $_GET['id_jadwal']; ?> / 60 % 60); // 7
        var seconds = totalwaktu<?php echo $_GET['id_jadwal']; ?> % 60; // 30

        $("#divtotalwaktu").html(pad(hours,2)+" : "+pad(minutes,2)+" : "+pad(seconds,2));
        totalwaktu<?php echo $_GET['id_jadwal']; ?>--;
        timer = setTimeout("mainkanwaktu()",1000);
    }else{
        clearTimeout(timer);
        habis = 1;
        document.getElementById("formulir").submit();
    }
}

function getCookie(c_name){
    if (document.cookie.length>0){
        c_start=document.cookie.indexOf(c_name + "=");
        if (c_start!=-1){
            c_start=c_start + c_name.length+1;
            c_end=document.cookie.indexOf(";",c_start);
            if (c_end==-1) c_end=document.cookie.length;
            return unescape(document.cookie.substring(c_start,c_end));
        }
    }
    return "";
}

function setCookie(c_name,value,expiredays){
    var exdate=new Date();
    exdate.setDate(exdate.getDate()+expiredays);
    document.cookie=c_name+ "=" +escape(value)+((expiredays==null) ? "" : ";expires="+exdate.toGMTString());
}

function checkCookie(){
    totalwaktucookies=getCookie('waktucookies');
    if (totalwaktucookies!=null && totalwaktucookies!=""){
        totalwaktu<?php echo $_GET['id_jadwal']; ?> = totalwaktucookies;
    }else{
        setCookie('waktucookies',totalwaktu<?php echo $_GET['id_jadwal']; ?>,7);
    }
}
function keluar(){
    if(habis==0){
        setCookie('waktucookies',totalwaktu<?php echo $_GET['id_jadwal']; ?>,7);
    }else{
        setCookie('waktucookies',0,-1);
    }
}
</script>

<script type="text/javascript">
var currentTab = 0; // Current tab is set to be the first tab (0)
showTab(currentTab); // Display the crurrent tab
function showTab(n) {
  // This function will display the specified tab of the form...
  var x = document.getElementsByClassName("tab");
  x[n].style.display = "block";
  //... and fix the Previous/Next buttons:
  if (n == 0) {
    document.getElementById("prevBtn").style.display = "none";
  } else {
    document.getElementById("prevBtn").style.display = "inline";
  }
  if (n == (x.length - 1)) {
    document.getElementById("nextBtn").innerHTML = "Selesai dan Proses";
  } else {
    document.getElementById("nextBtn").innerHTML = "Selanjutnya";
  }
  //... and run a function that will display the correct step indicator:
  fixStepIndicator(n)
}

function page(n) {
  // This function will figure out which tab to display
  var x = document.getElementsByClassName("tab");
  // Exit the function if any field in the current tab is invalid:
  if (n == 1 && !validateForm()) return false;
  // Hide the current tab:
  x[currentTab].style.display = "none";
  // Increase or decrease the current tab by 1:
  currentTab = n;
  // if you have reached the end of the form...
  if (currentTab >= x.length) {
    // ... the form gets submitted:
    clearTimeout(timer);
    habis = 1;
    document.getElementById("formulir").submit();
    return false;
  }
  // Otherwise, display the correct tab:
  showTab(currentTab);
}

function nextPrev(n) {
  // This function will figure out which tab to display
  var x = document.getElementsByClassName("tab");
  // Exit the function if any field in the current tab is invalid:
  if (n == 1 && !validateForm()) return false;
  // Hide the current tab:
  x[currentTab].style.display = "none";
  // Increase or decrease the current tab by 1:
  currentTab = currentTab + n;
  // if you have reached the end of the form...
  if (currentTab >= x.length) {
    // ... the form gets submitted:
    clearTimeout(timer);
    habis = 1;
    document.getElementById("formulir").submit();
    return false;
  }
  // Otherwise, display the correct tab:
  showTab(currentTab);
}

function validateForm() {
  // This function deals with validation of the form fields
  var x, y, i, valid = true;
  x = document.getElementsByClassName("tab");
  y = x[currentTab].getElementsByClassName("required");
  // A loop that checks every input field in the current tab:
  for (i = 0; i < y.length; i++) {
    // If a field is empty...
    if (y[i].value == "") {
      // add an "invalid" class to the field:
      y[i].className += " invalid";
      // and set the current valid status to false
      valid = false;
    }
  }
  // If the valid status is true, mark the step as finished and valid:
  if (valid) {
    document.getElementsByClassName("step")[currentTab].className += " finish";
  }
  return valid; // return the valid status
}

function fixStepIndicator(n) {
  // This function removes the "active" class of all steps...
  var i, x = document.getElementsByClassName("step");
  for (i = 0; i < x.length; i++) {
    x[i].className = x[i].className.replace(" active", "");
  }
  //... and adds the "active" class on the current step:
  x[n].className += " active";
}

  CKEDITOR.replace('editor');
</script>
</body>
</html>

<?php 
  }else{
    include "login.php";
  }
?>
