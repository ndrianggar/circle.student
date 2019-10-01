<?php 
  session_start();
  error_reporting(0);
  include "config/koneksi.php";
  include "config/library.php";
  include "config/fungsi_indotgl.php";
  include "config/fungsi_seo.php";
  include "config/excel_reader1.php";
  if (isset($_SESSION[id])){
    if ($_SESSION['cbt']){
      echo "<script>window.alert('Selesaikan Soal Tugas untuk Keluar dari halaman ini!');
                                  window.location=('quiz_siswa_mulai.php?id_jadwal=$_SESSION[cbt]')</script>";
    }else{
      if ($_SESSION['materi']){
        echo "<script>window.alert('Selesaikan Soal Latihan untuk Keluar dari halaman ini!');
                                  window.location=('bahan_tugas_mulai.php?id_materi=$_SESSION[materi]')</script>";
      }else{
      if ($_SESSION[level]=='superuser'){
          $iden = mysql_fetch_array(mysql_query("SELECT * FROM rb_users where id_user='$_SESSION[id]'"));
           $nama =  $iden[nama_lengkap];
           $level = 'Administrator';
           $foto = 'dist/img/avatar04.png';
      }elseif($_SESSION[level]=='kepala'){
          $iden = mysql_fetch_array(mysql_query("SELECT * FROM rb_users where id_user='$_SESSION[id]'"));
          $gu = mysql_fetch_array(mysql_query("SELECT * FROM rb_guru where nip='$iden[username]'"));
           $nama =  $iden[nama_lengkap];
           $level = 'Kepala Sekolah';
           if (trim($gu[foto])==''){
              $foto = 'foto_siswa/no-image.jpg';
           }else{
              $foto = 'foto_pegawai/'.$gu[foto];
           }     
      }elseif($_SESSION[level]=='guru'){
          $iden = mysql_fetch_array(mysql_query("SELECT * FROM rb_guru where nip='$_SESSION[id]'"));
           $nama =  $iden[nama_guru];
           $level = 'Guru / Pengajar';
           if (trim($iden[foto])==''){
              $foto = 'foto_siswa/no-image.jpg';
           }else{
              $foto = 'foto_pegawai/'.$iden[foto];
           } 
    }elseif($_SESSION[level]=='adminsekolah'){
          $iden = mysql_fetch_array(mysql_query("SELECT * FROM rb_user_admsekolah where id_ser_adm_sekolah='$_SESSION[id]'"));
           $nama =  $iden[nm_ser_adm_sekolah];
           $level = 'Admin Sekolah / administratif';
           if (trim($iden[foto])==''){
              $foto = 'foto_siswa/no-image.jpg';
           }else{
              $foto = 'foto_pegawai/'.$iden[foto];
           } 
      }elseif($_SESSION[level]=='siswa'){
          $iden = mysql_fetch_array(mysql_query("SELECT * FROM rb_siswa where nisn='$_SESSION[id]'"));
           $nama =  $iden[nama];
           $level = 'Siswa / Murid';
           if (trim($iden[foto])==''){
              $foto = 'foto_siswa/no-image.jpg';
           }else{
              $foto = 'foto_siswa/'.$iden[foto];
           } 
      }elseif($_SESSION[level]=='parent'){
          $iden = mysql_fetch_array(mysql_query("SELECT * FROM rb_siswa where nisn='$_SESSION[id]'"));
           $nama =  $iden[nama];
           $level = 'parent';
           if (trim($iden[foto])==''){
              $foto = 'foto_siswa/no-image.jpg';
           }else{
              $foto = 'foto_siswa/'.$iden[foto];
           } 
      }

    $kurikulum = mysql_fetch_array(mysql_query("SELECT * FROM rb_kurikulum where status_kurikulum='Ya'"));
    $tahunakademik = mysql_fetch_array(mysql_query("SELECT * FROM rb_tahun_akademik where aktif='Ya'"));
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
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="bootstrap/css/font_awesome.css">
    <link rel="stylesheet" href="bootstrap/css/awesomes.css">
    <link rel="stylesheet" href="bootstrap/css/ionicons.min.css">
    
    <link rel="stylesheet" href="bootstrap/css/font-awesome.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous"> -->
    <!-- Ionicons -->
   <!--  <script src="bootstrap/js/validate.min.js"></script>
 -->
   <!--  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css"> -->
    <!-- DataTables -->
    <link rel="stylesheet" href="plugins/datatables/dataTables.bootstrap.css">
    
    <link rel="stylesheet" href="plugins/select2/select2.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/AdminLTE.css">
    <!-- <link rel="stylesheet" href="dist/css/bootstrap-clockpicker.min.css"> -->
    <link rel="stylesheet" href="dist/css/skins/all-skins.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="plugins/iCheck/flat/blue.css">
    <!--select-->
    <link rel="stylesheet" href="../plugins/fullcalendar/fullcalendar.min.css">
    <link rel="stylesheet" href="../plugins/fullcalendar/fullcalendar.print.css" media="print">
  

    <link rel="stylesheet" href="plugins/colorpicker/bootstrap-colorpicker.min.css">
    <!-- Morris chart -->
    <link rel="stylesheet" href="plugins/morris/morris.css">
    <!-- jvectormap -->
    <link rel="stylesheet" href="plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <!-- Date Picker -->
    <link rel="stylesheet" href="plugins/datepicker/datepicker3.css">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker-bs3.css">
    <!-- bootstrap wysihtml5 - text editor -->
    <!-- <link rel="stylesheet" href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css"> -->
    <!-- ckeditorq/ckeditor wysihtml5 - text editor -->
    <!-- Include all Editor plugins CSS style. -->
  <!--    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.4.0/fullcalendar.css" /> -->
 
 <!--  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.4.0/fullcalendar.min.js"></script>
 -->
  <!--   <script src="../plugins/fullcalendar/jquery.min.js"></script>
     <script src="../plugins/fullcalendar/moment.min.js"></script>
  -->
<!-- Include Code Mirror CSS. -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.3.0/codemirror.min.css">
    <script src="ckeditor/ckeditor.js"></script>
    <style type="text/css"> .files{ position:absolute; z-index:2; top:0; left:0; filter: alpha(opacity=0);-ms-filter:"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)"; opacity:0; background-color:transparent; color:transparent; } </style>
    <style type="text/css">.checkbox-scroll { border:1px solid #ccc; width:100%; height: 400px; padding-left:8px; overflow-y: scroll; }</style>
    <style type="text/css">@media (min-width: 1200px){ .container { width: 1350px !important; } } 
      input::-webkit-outer-spin-button,
      input::-webkit-inner-spin-button {
          /* display: none; <- Crashes Chrome on hover */
          -webkit-appearance: none;
          margin: 0; /* <-- Apparently some margin are still there even though it's hidden */
      }

.response {
    height: 60px;
}

.success {
    background: #cdf3cd;
    padding: 10px 60px;
    border: #c3e6c3 1px solid;
    display: inline-block;
    </style>
    <script type="text/javascript" src="plugins/jQuery/jquery-1.12.3.min.js"></script>
    <script language="javascript" type="text/javascript"> 
      var maxAmount = 160;
      function textCounter(textField, showCountField) {
        if (textField.value.length > maxAmount) {
          textField.value = textField.value.substring(0, maxAmount);
        } else { 
          showCountField.value = maxAmount - textField.value.length;
        }
      }
    </script>

       
  <!-- Kode menampilkan peringatan untuk mengaktifkan javascript
<div align="center"><noscript>
   <div style="position:fixed; top:0px; left:0px; z-index:3000; height:100%; width:100%; background-color:#FFFFFF">
   <div style="font-family: Arial; font-size: 17px; background-color:#00bbf9; padding: 11pt;">Mohon aktifkan javascript pada browser untuk mengakses halaman ini!</div></div>
</noscript></div>
 
Kode untuk mencegah seleksi teks, block teks dll<script type="text/javascript">
function disableSelection(e){if(typeof e.onselectstart!="undefined")e.onselectstart=function(){return false};else if(typeof e.style.MozUserSelect!="undefined")e.style.MozUserSelect="none";else e.onmousedown=function(){return false};e.style.cursor="default"}window.onload=function(){disableSelection(document.body)}
</script>
 
Kode untuk mematikan fungsi klik kanan di blog
<script type="text/javascript">
function mousedwn(e){try{if(event.button==2||event.button==3)return false}catch(e){if(e.which==3)return false}}document.oncontextmenu=function(){return false};document.ondragstart=function(){return false};document.onmousedown=mousedwn
</script>-->
<script src = "http://www.quranflash.com/embed.js" type = "text/javascript"> </script>
<script type="text/javascript"> quranflash("container"); </script>
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
<style type="text/css">
* : (input, textarea) {
    -webkit-touch-callout: none;
    -webkit-user-select: none;
 
}
</style>
<style type="text/css">
img {
     -webkit-touch-callout: none;
     -webkit-user-select: none;
    }
</style>
 
<!--Kode untuk mencegah shorcut keyboard, view source dll.-->
<script type="text/javascript">
window.addEventListener("keydown",function(e){if(e.ctrlKey&&(e.which==65||e.which==66||e.which==67||e.which==73||e.which==80||e.which==83||e.which==85||e.which==86)){e.preventDefault()}});document.keypress=function(e){if(e.ctrlKey&&(e.which==65||e.which==66||e.which==67||e.which==73||e.which==80||e.which==83||e.which==85||e.which==86)){}return false}
</script>
<script type="text/javascript">
document.onkeydown=function(e){e=e||window.event;if(e.keyCode==123||e.keyCode==18){return false}}
</script>

  </head>
  <?php 
  if ($_SESSION[level]=='siswa'||$_SESSION[level]=='parent'){
    $body = 'skin-blue layout-top-nav';
    $container = 'container';
  }else{
    $body = 'skin-blue sidebar-mini';
    $container = '';
  }
  ?>
  <body onunload=fs(.fullscreen-1) class="hold-transition <?php echo $body; ?>">
    <div class="wrapper">
      <header class="main-header">
          <?php 
          if ($_SESSION[level]=='siswa'||$_SESSION[level]=="parent"){
            include "main-header-siswa.php";
          }else{
            include "main-header.php"; 
          }
          ?>
      </header>

      <?php if ($_SESSION[level]!='siswa' && $_SESSION[level]!='parent'){ ?>
      <aside class="main-sidebar">
      <?php 
        if ($_SESSION[level]=='siswa'){
          // include "menu-siswa.php";
        }elseif ($_SESSION[level]=='guru'){
          include "menu-guru.php";
        }elseif ($_SESSION[level]=='kepala'){
          include "menu-kepsek.php";
        }elseif ($_SESSION[level]=='adminkonten'){
          include "menu-admin-konten.php";
        }elseif ($_SESSION[level]=='adminsekolah'){
          include "menu-admin-sekolah.php";
        }else{
          include "menu-admin.php"; 
        }
      ?>
      </aside>
      <?php } ?>
      
      <div class="content-wrapper">
        <!-- <section class="content-header <?php echo $container; ?>">
          <h1> Dashboard <small>Control panel</small> </h1>
        </section> -->

        <section class="content <?php echo $container; ?>">
        <?php 
          if ($_GET[view]=='home' OR $_GET[view]==''){
            if($_SESSION[level]=='siswa'){
                include "application/home_siswa.php";
            }elseif($_SESSION[level]=='parent'){
                include "application/about_us.php";
            }elseif($_SESSION[level]=='guru'){
                include "application/home_guru.php";
            }elseif($_SESSION[level]=='adminsekolah'){
                include "application/home_admin_sekolah.php";
            }else{
              echo "<div class='row'>";
                include "application/home_admin_row1.php";
              echo "</div>
                <div class='row'>";
                include "application/home_admin_row2.php";
              echo "</div>";
            }
          }elseif ($_GET[view]=='psbmenu'){
            cek_session_admin();
            echo "<div class='row'>";
                    include "application/psb_menu.php";
            echo "</div>";
          }elseif ($_GET[view]=='psbhalaman'){
            cek_session_admin();
            echo "<div class='row'>";
                    include "application/psb_halaman.php";
            echo "</div>";
          }elseif ($_GET[view]=='kaldik'){
            echo "<div class='row'>";
                   include "application/kalender.php";
             echo "</div>";      
          }elseif ($_GET[view]=='psbsma'){
            cek_session_admin();
            echo "<div class='row'>";
                    include "application/psb_pendaftaran.php";
            echo "</div>";
          }elseif ($_GET[view]=='psbsmk'){
            cek_session_admin();
            echo "<div class='row'>";
                    include "application/psb_pendaftaran.php";
            echo "</div>";
          }elseif ($_GET[view]=='psbsmp'){
            cek_session_admin();
            echo "<div class='row'>";
                    include "application/psb_pendaftaran.php";
            echo "</div>";
          }elseif ($_GET[view]=='psbaktivasi'){
            cek_session_admin();
            echo "<div class='row'>";
                    include "application/psb_aktivasi.php";
            echo "</div>";
          }elseif ($_GET[view]=='categ_pel'){
       /*     cek_session_admin();*/
            echo "<div class='row'>";
                    include "application/master_categ_bim.php";
            echo "</div>";
           }elseif ($_GET[view]=='jns_pel'){
          /*  cek_session_admin();*/
            echo "<div class='row'>";
                    include "application/master_jns_pel.php";
            echo "</div>";  
          }elseif ($_GET[view]=='jns_mslh'){
      /*      cek_session_admin();*/
            echo "<div class='row'>";
                    include "application/master_jns_mslh.php";
            echo "</div>";
         }elseif ($_GET[view]=='layanan'){
          /*  cek_session_admin();*/
            echo "<div class='row'>";
                    include "application/master_layanan.php";
            echo "</div>";
          }elseif ($_GET[view]=='sanksi'){
          /*  cek_session_admin();*/
            echo "<div class='row'>";
                    include "application/master_sanksi.php";
            echo "</div>";
           /*  cek_session_admin();*/
           }elseif ($_GET[view]=='pros_pel'){
            echo "<div class='row'>";
                    include "application/master_prospel.php";
            echo "</div>";
          }elseif ($_GET[view]=='lap_pel'){
          
            echo "<div class='row'>";
            include "application/lap_pelanggaran.php";
            echo "</div>";           

          }elseif ($_GET[view]=='journalkbm'){
            echo "<div class='row'>";
                    include "application/journal_semua.php";
            echo "</div>";
          }elseif ($_GET[view]=='laporanJurnalKbm'){
            echo "<div class='row'>";
                    include "application/lap_journal_kbm.php";
            echo "</div>";
          }elseif ($_GET[view]=='journalguru'){
            cek_session_guru();
            echo "<div class='row'>";
                    include "application/journal_guru.php";
            echo "</div>";
          }elseif ($_GET[view]=='kompetensiguru'){
            cek_session_guru();
            echo "<div class='row'>";
                    include "application/kompetensidasar_guru.php";
            echo "</div>";
          }

          elseif ($_GET[view]=='jeniskeuangan'){
            cek_session_admin();
            echo "<div class='row'>";
                    include "application/keuangan_jenis.php";
            echo "</div>";
          }elseif ($_GET[view]=='pembayaransiswa'){
            cek_session_admin();
            echo "<div class='row'>";
                    include "application/keuangan_bayar.php";
            echo "</div>";
          }elseif ($_GET[view]=='laporankeuangan'){
            cek_session_admin();
            echo "<div class='row'>";
                    include "application/keuangan_laporan.php";
            echo "</div>";
          }elseif ($_GET[view]=='modul'){
            echo "<div class='row'>";
                    include "application/master_modul.php";
            echo "</div>";
    
          }elseif ($_GET[view]=='siswa'){
            echo "<div class='row'>";
                    include "application/master_siswa.php";
            echo "</div>";
          }elseif ($_GET[view]=='guru'){
            echo "<div class='row'>";
                    include "application/master_guru.php";
            echo "</div>";
          }elseif ($_GET[view]=='wakilkepala'){
            cek_session_admin();
            echo "<div class='row'>";
                    include "application/master_wakilkepala.php";
            echo "</div>";
          }elseif ($_GET[view]=='admin'){
            cek_session_admin();
            echo "<div class='row'>";
                    include "application/master_admin.php";
            echo "</div>";
     }elseif ($_GET[view]=='adminsekolah'){
            cek_session_admin();
            echo "<div class='row'>";
                    include "application/master_admin_sekolah.php";
            echo "</div>";
       }elseif ($_GET[view]=='adminkonten'){
            cek_session_admin();
            echo "<div class='row'>";
                    include "application/master_admin_konten.php";
            echo "</div>";
          }elseif ($_GET[view]=='kelas'){
      
            echo "<div class='row'>";
                    include "application/master_kelas.php";
            echo "</div>";
       }elseif ($_GET[view]=='kelaspararel'){
      
            echo "<div class='row'>";
                    include "application/master_kelaspararel.php";
            echo "</div>";
          }elseif ($_GET[view]=='tahunakademik'){
          
            echo "<div class='row'>";
                    include "application/master_tahun_akademik.php";
            echo "</div>";
          }elseif ($_GET[view]=='gedung'){
            
            echo "<div class='row'>";
                    include "application/master_gedung.php";
            echo "</div>";
          }elseif ($_GET[view]=='ruangan'){
           
            echo "<div class='row'>";
                    include "application/master_ruangan.php";
            echo "</div>";
          }elseif ($_GET[view]=='golongan'){
         
            echo "<div class='row'>";
                    include "application/master_golongan.php";
            echo "</div>";
          }elseif ($_GET[view]=='ptk'){
       
            echo "<div class='row'>";
                    include "application/master_ptk.php";
            echo "</div>";
          }elseif ($_GET[view]=='matapelajaran'){
         
            echo "<div class='row'>";
                    include "application/master_matapelajaran.php";
            echo "</div>";
          }elseif ($_GET[view]=='jadwalpelajaran'){
     
            echo "<div class='row'>";
                    include "application/master_jadwalpelajaran.php";
            echo "</div>";
          }elseif($_GET[view]=='jadwal_siswa'){
            echo "<div class='row'>";
             include 'application/home_siswa.php';
            echo "</div>";
          }elseif ($_GET[view]=='jurusan'){
            cek_session_admin();
            echo "<div class='row'>";
                    include "application/master_jurusan.php";
            echo "</div>";
          }elseif ($_GET[view]=='kurikulum'){
         
            echo "<div class='row'>";
                    include "application/master_kurikulum.php";
            echo "</div>";
          }elseif ($_GET[view]=='predikat'){
         
            echo "<div class='row'>";
                    include "application/master_predikat.php";
            echo "</div>";
          }elseif ($_GET[view]=='statuspegawai'){
            
            echo "<div class='row'>";
                    include "application/master_statuspegawai.php";
            echo "</div>";
          }elseif ($_GET[view]=='identitas'){
         
            echo "<div class='row'>";
                    include "application/master_identitas.php";
            echo "</div>";
          }elseif ($_GET[view]=='kelompokmapel'){
        
            echo "<div class='row'>";
                    include "application/master_kelompokmapel.php";
            echo "</div>";
          }elseif ($_GET[view]=='kompetensidasar'){
      
            echo "<div class='row'>";
                    include "application/master_kompetensidasar.php";
            echo "</div>";
          }elseif ($_GET[view]=='penilaiandiri'){
            cek_session_admin();
            echo "<div class='row'>";
                    include "application/master_penilaiandiri.php";
            echo "</div>";
          }elseif ($_GET[view]=='penilaianteman'){
            cek_session_admin();
            echo "<div class='row'>";
                    include "application/master_penilaianteman.php";
            echo "</div>";
          }


          elseif ($_GET[view]=='absensiswa'){
           
            echo "<div class='row'>";
                    include "application/absensi_siswa.php";
            echo "</div>";
          }elseif ($_GET[view]=='rekapabsensiswa'){
          
            echo "<div class='row'>";
                    include "application/absensi_siswa_rekap.php";
            echo "</div>";
          }elseif ($_GET[view]=='absenguru'){
       
            echo "<div class='row'>";
                    include "application/absensi_guru.php";
            echo "</div>";
          }elseif ($_GET[view]=='bahantugas'){
            echo "<div class='row'>";
                    include "application/bahan_tugas.php";
            echo "</div>";
          }elseif ($_GET[view]=='soal'){
            echo "<div class='row'>";
                    include "application/quiz_ujian_soal.php";
            echo "</div>";
          }elseif ($_GET[view]=='banksoalguru'){
            cek_session_guru();
            echo "<div class='row'>";
                    include "application/quiz_ujian_bank_soal_guru.php";
            echo "</div>";
          }elseif ($_GET[view]=='forum'){
            echo "<div class='row'>";
                    include "application/forum_diskusi.php";
            echo "</div>";
          }elseif ($_GET[view]=='penilaiandirisiswa'){
            echo "<div class='row'>";
                    include "application/penilaiandiri_siswa.php";
            echo "</div>";
          }elseif ($_GET[view]=='penilaiantemansiswa'){
            echo "<div class='row'>";
                    include "application/penilaianteman_siswa.php";
            echo "</div>";
          }


          elseif ($_GET[view]=='ledgermapelguru'){
            /*cek_session_guru();*/
            echo "<div class='row'>";
                    include "application/ledger_mapel_guru.php";
            echo "</div>";
          }elseif ($_GET[view]=='ledger'){
        /*    cek_session_admin_guru();*/
            echo "<div class='row'>";
                    include "application/ledger.php";
            echo "</div>";
             cek_session_admin_guru();
          }elseif ($_GET[view]=='ledgermapel'){
            cek_session_admin_guru();
            echo "<div class='row'>";
                    include "application/ledger_mapel.php";
            echo "</div>";
          }elseif ($_GET[view]=='ledgerkelas'){
            cek_session_admin_guru();
            echo "<div class='row'>";
                    include "application/ledger_kelas.php";
            echo "</div>";
          }elseif ($_GET[view]=='raport'){
            echo "<div class='row'>";
                    include "application/raport.php";
            echo "</div>";
          }elseif ($_GET[view]=='about_us'){
            echo "<div class='row'>";
                    include "application/about_us.php";
            echo "</div>";
          }elseif ($_GET[view]=='raportuts'){
            echo "<div class='row'>";
                    include "application/raport_uts.php";
            echo "</div>";
          }elseif ($_GET[view]=='raportcetak'){
          /*  cek_session_admin_guru();*/
            echo "<div class='row'>";
                    include "application/raport_cetak.php";
            echo "</div>";
          }elseif ($_GET[view]=='raportcetakuts'){
            /*cek_session_admin_guru();*/
            echo "<div class='row'>";
                    include "application/raport_cetak_uts.php";
            echo "</div>";
          }elseif ($_GET[view]=='capaianhasilbelajar'){
            cek_session_admin_guru();
            echo "<div class='row'>";
                    include "application/raport/raport_capaian_hasil_belajar.php";
            echo "</div>";
          }elseif ($_GET[view]=='extrakulikuler'){
            cek_session_admin_guru();
            echo "<div class='row'>";
                    include "application/raport/raport_extrakulikuler.php";
            echo "</div>";
          }elseif ($_GET[view]=='prestasi'){
            cek_session_admin_guru();
            echo "<div class='row'>";
                    include "application/raport/raport_prestasi.php";
            echo "</div>";
          }elseif ($_GET[view]=='bukuinduk'){
            cek_session_admin();
            echo "<div class='row'>";
                    include "application/buku_induk.php";
            echo "</div>";
          }

          elseif ($_GET[view]=='dokumentasi'){
            cek_session_admin();
            echo "<div class='row'>";
                    include "application/dokumentasi.php";
            echo "</div>";
          }elseif ($_GET[view]=='dokumentasiguru'){
            cek_session_guru();
            echo "<div class='row'>";
                    include "application/dokumentasi_guru.php";
            echo "</div>";
          }elseif ($_GET[view]=='dokumentasisiswa'){
            cek_session_siswa();
            echo "<div class='row'>";
                    include "application/dokumentasi_siswa.php";
            echo "</div>";
          }elseif($_GET[view]=='raport_aksesGuru'){
            echo "<div class='row'>";
                    include "application/raport_aksesGuru.php";
            echo "</div>";
          }elseif ($_GET[view]=='sms'){
            cek_session_admin();
            echo "<div class='row'>";
                    include "application/sms/sms.php";
            echo "</div>";
          }elseif ($_GET[view]=='broadcast'){
            cek_session_admin();
            echo "<div class='row'>";
                    include "application/sms/broadcast.php";
            echo "</div>";
          }elseif ($_GET[view]=='autoreply'){
            cek_session_admin();
            echo "<div class='row'>";
                    include "application/sms/autoreply.php";
            echo "</div>";
          }elseif ($_GET[view]=='smstoweb'){
            cek_session_admin();
            echo "<div class='row'>";
                    include "application/sms/sms_to_web.php";
            echo "</div>";
          }elseif ($_GET[view]=='outboxautoreply'){
            cek_session_admin();
            echo "<div class='row'>";
                    include "application/sms/outbox_autoreply.php";
            echo "</div>";
          }

          elseif ($_GET['view']=='banksoal'){
            cek_session_guru();
            echo "<div class='row'>";
                    include "application/quiz_ujian_bank_soal.php";
            echo "</div>";
          }elseif ($_GET['view']=='materi'){
            cek_session_guru();
            echo "<div class='row'>";
             include "application/quiz_materi.php";
            echo "</div>";
          }elseif($_GET['view']=='list_materi'){
     /*       cek_session_guru();*/
            echo "<div class='row'>";
             include "application/list_materi.php";
            echo "</div>";
          }elseif ($_GET['view']=='view_materi') {
         /*   cek_session_guru();*/
            echo "<div class='row'>";
             include "application/view_materi.php";
            echo "</div>";
          }elseif ($_GET['view']=='cbt'){
            cek_session_guru();
            echo "<div class='row'>";
                    include "application/quiz_cbt.php";
            echo "</div>";
          }elseif ($_GET['view']=='report_cbt'){
            cek_session_guru();
            echo "<div class='row'>";
                    include "application/quiz_report_cbt.php";
            echo "</div>";
          }elseif ($_GET['view']=='quiz'){
            cek_session_siswa();
            echo "<div class='row'>";
                    include "application/quiz_siswa.php";
            echo "</div>";
          }elseif ($_GET['view']=='quizmulai'){
            cek_session_siswa();
            echo "<div class='row'>";
                    include "application/quiz_siswa_mulai.php";
            echo "</div>";
          }elseif ($_GET['view']=='importsoal'){
            cek_session_guru();
            echo "<div class='row'>";
                    include "application/quiz_importsoal.php";
            echo "</div>";
          }elseif ($_GET['view']=='importnilaip'){
            echo"<div class='row'>";
                    include "application/importnilaip.php";
            echo "</div>";
          }elseif ($_GET['view']=='importnilaik'){
            echo "<div class='row'>";
              include "application/importnilaik.php";
            echo "</div>";
          }elseif ($_GET['view']=='menu'){
            cek_session_admin();
            echo "<div class='row'>";
                    include "application/mod_menu/menu.php";
            echo "</div>";
          }elseif ($_GET['view']=='halamanstatis'){
            cek_session_admin();
            echo "<div class='row'>";
                    include "application/mod_halamanstatis/halamanstatis.php";
            echo "</div>";
           }elseif ($_GET['view']=='bacaquran'){
           /* cek_session_admin();*/
            echo "<div class='row'>";
                    include "application/widget/baqu.php";
            echo "</div>";
          }elseif ($_GET['view']=='bacahadist'){
           /* cek_session_admin();*/
            echo "<div class='row'>";
                    include "application/widget/batsir.php";
            echo "</div>";
          }elseif ($_GET['view']=='syamila'){
           /* cek_session_admin();*/
            echo "<div class='row'>";
                    include "application/widget/syamila.php";
            echo "</div>";
            
          }elseif ($_GET['view']=='bacahisnulmuslim'){
           /* cek_session_admin();*/
            echo "<div class='row'>";
                    include "application/widget/hisnulmuslim.php";
            echo "</div>";
           }elseif ($_GET['view']=='cctvsmp'){
           /* cek_session_admin();*/
            echo "<div class='row'>";
                    include "application/widget/cctvsmp.php";
            echo "</div>";
          }elseif ($_GET['view']=='cctvsma'){
           /* cek_session_admin();*/
            echo "<div class='row'>";
                    include "application/widget/cctvsma.php";
            echo "</div>";
          }
        ?>
        </section>
      </div><!-- /.content-wrapper -->
      <footer class="main-footer">
          <?php include "footer.php"; ?>
      </footer>
    </div><!-- ./wrapper -->
    <!-- jQuery 2.1.4 -->
    <script src="plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <!-- jQuery UI 1.11.4 -->
    <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <script>
      $.widget.bridge('uibutton', $.ui.button);
    </script>
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <script src="https://code.highcharts.com/modules/data.js"></script>
    <script src="https://code.highcharts.com/modules/exporting.js"></script>
    <!-- Bootstrap 3.3.5 -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <!-- DataTables -->
    <script src="plugins/datatables/jquery.dataTables.min.js"></script>
    <script src="plugins/datatables/dataTables.bootstrap.min.js"></script>
    <script src="plugins/select2/select2.js"></script>
    <!-- Morris.js charts -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    <script src="plugins/morris/morris.min.js"></script>
    <!-- Sparkline -->
    <script src="plugins/sparkline/jquery.sparkline.min.js"></script>
    <!-- jvectormap -->
    <script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
    <!-- jQuery Knob Chart -->
    <script src="plugins/knob/jquery.knob.js"></script>
    <!-- daterangepicker -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.2/moment.min.js"></script>
    <script src="plugins/daterangepicker/daterangepicker.js"></script>
    <script src="plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
    <!-- datepicker -->
    <script src="plugins/datepicker/bootstrap-datepicker.js"></script>
    <!-- Bootstrap WYSIHTML5 -->
    <script src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
    <!-- Slimscroll -->
    <script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
    <!-- FastClick -->
    <script src="plugins/fastclick/fastclick.min.js"></script>
    <!-- AdminLTE App -->
    <script src="dist/js/app.min.js"></script>
    <!-- <script src="dist/js/bootstrap-clockpicker.min.js"></script> -->
    <script type="text/javascript" src="plugins/input-mask/inputmask.js"></script>
    <!-- Include all Editor plugins JS files. -->
    <!-- <script type="text/javascript" src="plugins/froala_editor/js/froala_editor.pkgd.min.js"></script> -->
    <!-- kaldik-->
    <script src="plugins/fullcalendar/moment.min.js"></script>
     <script src="plugins/fullcalendar/fullcalendar.min.js"></script>

    <!-- Include Code Mirror JS. -->
<!-- <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.3.0/codemirror.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.3.0/mode/xml/xml.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.min.js"></script>
 -->

<script type="text/javascript">
//    validasi form (hanya file .xls yang diijinkan)
    function validateForm()
    {
        function hasExtension(inputID, exts) {
            var fileName = document.getElementById(inputID).value;
            return (new RegExp('(' + exts.join('|').replace(/\./g, '\\.') + ')$')).test(fileName);
        }
 
        if(!hasExtension('fileguru', ['.xls'])){
            alert("Hanya file XLS (Excel 2003) yang diijinkan.");
            return false;
        }
    }
</script>
  
<script>
    // $('.clockpickera').clockpicker();
    // $('.clockpickerb').clockpicker();
    // $('.datepickera').datepicker({format: "dd-mm-yyyy"});
    // $('.datepickerb').datepicker({format: "dd-mm-yyyy"});
    // $("#datepicker1").datepicker({
    //     format: "mm-yyyy",
    //     startView: "months", 
    //     minViewMode: "months"
    // });

    $(document).ready(function() {
        if (location.hash) {
            $("a[href='" + location.hash + "']").tab("show");
        }
        $(document.body).on("click", "a[data-toggle]", function(event) {
            location.hash = this.getAttribute("href");
        });
    });
    $(window).on("popstate", function() {
        var anchor = location.hash || $("a[data-toggle='tab']").first().attr("href");
        $("a[href='" + anchor + "']").tab("showd");
    });

  $(function () { 

    $("#dataSiswa").DataTable({
      "pageLength": 50
    });
    $("#dataGuru").DataTable({
      "pageLength": 50
    });
     $("#dataBk").DataTable({
      "pageLength": 50
    });
     $("#dataInptnilai").DataTable({
      "pageLength": 20
     });
    $('#example2').DataTable({
      "paging": true
     /* "lengthChange": false,
      // "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false*/
    });

    $('#example3').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": false,
      "info": false,
      "autoWidth": false,
      "pageLength": 200
    });

    $('#mastersiswa').DataTable({
      "paging": false,
      "lengthChange": false,
      "searching": true,
      "ordering": false,
      "info": false,
      "autoWidth": false,
      "pageLength": 200
    });

    $('#example5').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "info": false,
      "autoWidth": false,
      "pageLength": 200,
      "order": [[ 5, "desc" ]]
    });
  });

  $('.datepicker').datepicker();
</script>

<script>
  $(function(){
    $('#carisiswa').select2({
           // minimumInputLength: 1,
           allowClear: true,
           placeholder: 'masukkan nama siswa',
           ajax: {
              dataType: 'json',
              url: 'get_listSiswa.php',
              delay: 100,
              data: function(params) {
                return{
                  search: params.term
                  }
                },
              
              processResults: function (data, page) {
              return {
                results: data
              };
            },
          }
      }).on('select2:select', function (evt) {
         var data = $("#select2-carisiswa-container").text();
         alert("Data yang dipilih adalah "+data);
      });
     function fotoSiswa (fotosis){
      if (!fitosis.id){
         return state.text;
        }
        var baseUrl = "foto_siswa";
        var $fotosis = $('<span><img src="' + baseUrl + '/' + state.element.value.toLowerCase() + '.jpg" class="img-foto" /> ' + state.text + '</span>'
  );
     } 
   });
</script>

 

<!-- cctv smp-->
<SCRIPT language=JavaScript>
if ((navigator.appName == "Microsoft Internet Explorer")&&(navigator.platform != "MacPPC"))
{
document.write("<OBJECT ID=\"VAtCtrl\" WIDTH=362 HEIGHT=310 name=\"VAtCtrl\"");
document.write(" CLASSID=CLSID:210D0CBC-8B17-48D1-B294-1A338DD2EB3A");
document.write(" CODEBASE=\"http://146.196.98.57:34567/VatDec.cab#version=1,0,0,48\">"); 
document.write("<PARAM NAME=\"Url\" VALUE=\"http://146.196.98.57:34567/cgi-bin/control.cgi\">");
document.write("<PARAM NAME=\"VSize\" VALUE=\"SIF\">");
document.write("<PARAM NAME=\"Language\" VALUE=\"en\">"); 
document.write("<PARAM NAME=\"Deblocking\" VALUE=\"true\">");
document.write("<PARAM NAME=\"DisplayTimeFormat\" VALUE=\"1\">");
document.write("<PARAM NAME=\"DigitalZoomEnableChk\" VALUE=\"true\">");
document.write("<PARAM NAME=\"DigitalZoomEdit\" VALUE=\"true\">");
document.write("</OBJECT>"); 
}
</SCRIPT>
<!-- cctv sma-->
<SCRIPT language=JavaScript>
if ((navigator.appName == "Microsoft Internet Explorer")&&(navigator.platform != "MacPPC"))
{
document.write("<OBJECT ID=\"VAtCtrl\" WIDTH=362 HEIGHT=310 name=\"VAtCtrl\"");
document.write(" CLASSID=CLSID:210D0CBC-8B17-48D1-B294-1A338DD2EB3A");
document.write(" CODEBASE=\"http://146.196.98.57:8000/VatDec.cab#version=1,0,0,48\">"); 
document.write("<PARAM NAME=\"Url\" VALUE=\"http://146.196.98.57:8000/cgi-bin/control.cgi\">");
document.write("<PARAM NAME=\"VSize\" VALUE=\"SIF\">");
document.write("<PARAM NAME=\"Language\" VALUE=\"en\">"); 
document.write("<PARAM NAME=\"Deblocking\" VALUE=\"true\">");
document.write("<PARAM NAME=\"DisplayTimeFormat\" VALUE=\"1\">");
document.write("<PARAM NAME=\"DigitalZoomEnableChk\" VALUE=\"true\">");
document.write("<PARAM NAME=\"DigitalZoomEdit\" VALUE=\"true\">");
document.write("</OBJECT>"); 
}
</SCRIPT>
<script type="text/javascript">
  // To make Pace works on Ajax calls
  $(document).ajaxStart(function() { Pace.restart(); });
    $('.ajax').click(function(){
        $.ajax({url: '#', success: function(result){
            $('.ajax-content').html('<hr>Ajax Request Completed !');
        }});
    });


    /** add active class and stay opened when selected */
    var url = window.location;

    // for sidebar menu entirely but not cover treeview
    $('ul.sidebar-menu a').filter(function() {
       return this.href == url;
    }).parent().addClass('active');

    // for treeview
    $('ul.treeview-menu a').filter(function() {
       return this.href == url;
    }).parentsUntil(".sidebar-menu > .treeview-menu").addClass('active');

</script>

<script>
var areas = Array('editor', 'editor1', 'editor2', 'editor3', 'editor4', 'editor5', 'editor6', 'editor7', 'editor9');
$.each(areas, function (i, area) {
 CKEDITOR.replace(area, {
  filebrowserBrowseUrl: 'kcfinder/browse.php',
  filebrowserImageBrowseUrl: 'kcfinder/browse.php?type=All',
  filebrowserUploadUrl: 'kcfinder/uploader/upload.php',
  filebrowserImageUploadUrl: 'kcfinder/uploader/upload.php?type=All'
 });
});
CKEDITOR.plugins.addExternal('ngen_filebrowse', '<PATH/TO/YOUR/CUSTOMIZED/PLUGIN/>','<PLUGIN_FILENAME.js>');

config.removePlugins = 'filebrowser';

config.extraPlugins = 'ngen_filebrowser';
</script>

    <div class="modal fade" id="nilaiessai" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title" id="myModalLabel">Berikan Siswa Nilai Essai</h4>
          </div>
          <form method='POST' action='index.php?view=soal&act=semuajawabansiswa&jdwl=<?php echo $_GET[jdwl]; ?>&idsoal=<?php echo $_GET[idsoal]; ?>&id=<?php echo $_GET[id]; ?>&kd=<?php echo $_GET[kd]; ?>&noinduk=<?php echo $_GET[noinduk]; ?>' class="form-horizontal">
            <div class="modal-body">
                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-2 control-label">Nilai Essai</label>
                  <div class="col-sm-10">
                    <input type="number" name='a' class="form-control">
                  </div>
                </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
              <button type="submit" name='nilaiessai' class="btn btn-primary">Submit</button>
            </div>
          </form>
        </div>
      </div>
    </div>

    <div class="modal fade bs-example-modal-lg" id="essai" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title" id="myModalLabel">Tambahkan Soal Essai</h4>
          </div>
          <form method='POST' action='index.php?view=soal&act=semuasoal&jdwl=<?php echo $_GET[jdwl]; ?>&idsoal=<?php echo $_GET[idsoal]; ?>&id=<?php echo $_GET[id]; ?>&kd=<?php echo $_GET[kd]; ?>' class="form-horizontal">
            <div class="modal-body">
                

                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-1 control-label">Soal</label>
                  <div class="col-sm-11">
                    <textarea rows='6' name='a' class="textarea form-control" placeholder="Tuliskan Soal Essai..."></textarea>
                  </div>
                </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
              <button type="submit" name='essai' class="btn btn-primary">Tambahkan</button>
            </div>
          </form>
        </div>
      </div>
    </div>

    <div class="modal fade" id="objektif" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title" id="myModalLabel">Tambahkan Soal Objektif</h4>
          </div>
          <form method='POST' action='index.php?view=soal&act=semuasoal&jdwl=<?php echo $_GET[jdwl]; ?>&idsoal=<?php echo $_GET[idsoal]; ?>&id=<?php echo $_GET[id]; ?>&kd=<?php echo $_GET[kd]; ?>' class="form-horizontal">
            <div class="modal-body">
                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-2 control-label">Soal</label>
                  <div class="col-sm-10">
                    <textarea rows='3' name='a' class="form-control" placeholder="Tuliskan Soal Objektif..."></textarea>
                  </div>
                </div>

                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-2 control-label">Jawab A</label>
                  <div class="col-sm-10">
                    <input style='width:50%' type="text" name='b' class="form-control">
                  </div>
                </div>

                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-2 control-label">Jawab B</label>
                  <div class="col-sm-10">
                    <input style='width:50%' type="text" name='c' class="form-control">
                  </div>
                </div>

                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-2 control-label">Jawab C</label>
                  <div class="col-sm-10">
                    <input style='width:50%' type="text" name='d' class="form-control">
                  </div>
                </div>

                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-2 control-label">Jawab D</label>
                  <div class="col-sm-10">
                    <input style='width:50%' type="text" name='e' class="form-control">
                  </div>
                </div>

                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-2 control-label">Jawab E</label>
                  <div class="col-sm-10">
                    <input style='width:50%' type="text" name='f' class="form-control">
                  </div>
                </div>

                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-2 control-label">Kunci</label>
                  <div class="col-sm-10">
                    <input style='width:50%' type="text" name='g' class="form-control">
                  </div>
                </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
              <button type="submit" name='objektif' class="btn btn-primary">Tambahkan</button>
            </div>
          </form>
        </div>
      </div>
    </div>
<div class="modal fade" id="modalRaportBulanan" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document" style="width: 300px;">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        <h3 class="modal-title" id="exampleModalLabel" align="center">Raport Bulanan</h3>
      </div>
      <div class="modal-body">
        <form action='index.php?view=raport&act=raport_bulanan' method='GET'>
          <div class="form-group">
            <input type="hidden" name='view' value='raport'>
            <input type="hidden" name='act' value='raport_bulanan'>
            <input type="hidden" name="id" value="<?php echo $_SESSION[id]; ?>">
            <input type="hidden" name="kelas" value="<?php echo $_SESSION[kode_kelas]; ?>">
            <input type="hidden" name="kelasp" value="<?php echo $_SESSION[id_kls_pararel]; ?>">
            <select name='tahun' id="tahun" style='padding:4px' class="form-control">
            <?php 
                echo "<option value=''>- Pilih Tahun Akademik -</option>";
                $tahun = mysql_query("SELECT * FROM rb_tahun_akademik");
                while ($k = mysql_fetch_array($tahun)){
                  if ($_GET[tahun]==$k[id_tahun_akademik]){
                    echo "<option value='$k[id_tahun_akademik]' selected>$k[nama_tahun]</option>";
                  }else{
                    echo "<option value='$k[id_tahun_akademik]'>$k[nama_tahun]</option>";
                  }
                }
            ?>
            </select>
          </div>
          <div class="form-group">
            <?php if (empty($_GET[blnRaport])) {
              echo "<input class='form-control' id='blnRaport' style='height:29px;' type='text' name='bulan' id='blnRaport' autocomplete='off' placeholder='  - Pilih Bulan -'>";
            }else{
              echo "<input class='form-control' type='text' id='blnRaport' style='height:29px;' name='bulan' id='blnRaport' autocomplete='off' value='$_GET[blnRaport]'>";
            }
            ?>
          </div>
      </div>
      <div class="modal-footer">
        <button type="submit" onclick="destroyInput()" class="btn btn-primary" style="width: 100%;"><i class="fa fa-search"></i> Search</button>
        </form>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="modalRaportKenaikan" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document" style="width: 300px;">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        <h3 class="modal-title" id="exampleModalLabel" align="center">Raport Kenaikan</h3>
      </div>
      <div class="modal-body">
        <form method="GET" action="index.php?view=raport&act=detailsiswa">
          <div class="form-group">
            <input type="hidden" name='view' value='raport'>
            <input type="hidden" name='act' value='detailsiswa'>
            <input type="hidden" name="id" value="<?php echo $_SESSION[id]; ?>">
            <input type="hidden" name="kelas" value="<?php echo $_SESSION[kode_kelas]; ?>">
            <input type="hidden" name="ie" value="<?php echo $_SESSION[id_kls_pararel]; ?>">
            <select name='tahun' id="tahun" style='padding:4px' class="form-control">
            <?php 
                echo "<option value=''>- Pilih Tahun Akademik -</option>";
                $tahun = mysql_query("SELECT * FROM rb_tahun_akademik");
                while ($k = mysql_fetch_array($tahun)){
                  if ($_GET[tahun]==$k[id_tahun_akademik]){
                    echo "<option value='$k[id_tahun_akademik]' selected>$k[nama_tahun]</option>";
                  }else{
                    echo "<option value='$k[id_tahun_akademik]'>$k[nama_tahun]</option>";
                  }
                }
            ?>
            </select>
          </div>
      </div>
      <div class="modal-footer">
        <button type="submit" onclick="destroyInput()" class="btn btn-primary" style="width: 100%;"><i class="fa fa-search"></i> Search</button>
        </form>
      </div>
    </div>
  </div>
</div>

<div class='modal fade bs-example-modal-lg' id='importnilaip' tabindex='-1' role='dialog' aria-labelledby='myModalLabel'  aria-hidden='true'>
  <div class='modal-dialog modal-lg'>
    <div class='modal-content'>
      <div class='modal-header'>
        <button type='button' class='close' data-dismiss='modal' aria-hidden='true'>&times;</button>
        <h5 class='modal-title' id='myModalLabel'>Import Nilai Pengetahuan</h5>
      </div>
    <div class='modal-body'> 
     <section id='main-content'>
      <div class='row mt'>
        <div class='col-lg-12'>
          <div class='panel panel-success'>
            <div class='panel-heading'>
                <h3 class='panel-title'><i class='fa fa-user'></i> Form Import Nilai</h3> 
             </div>
           <div class='panel-body'>
            <div class='alert alert-info alert-dismissable'><button type='button'  class='close'    data-dismiss='alert' aria-hidden='true'>&times;</button><h4>Pastikan Extensi File Excel yang digunakan excel 2003 (.xls) untuk format excel anda bisa download dibawah ini</a></h4></div>
            <div style='padding: 0 15px;'>
            <?php  
             
         echo " <form action='index.php?view=importnilaip&jdwl=$_GET[jdwl]&kd=$_GET[kd]&id=$_GET[id]&ie=$_GET[ie]&tahun=$_GET[tahun]' method='post' enctype='multipart/form-data'>
              <a href='import_data/format_nilaip.xls'class='btn btn-default'>
               <span class='glyphicon glyphicon-download'></span>
                Download Format
              </a> <br/><br/><label><input type='checkbox' name='drop' value='1' /> <u>Kosongkan tabel sql terlebih dahulu.</u> </label> <br><br>

              <input type='file' id='nilaip' name='nilaip' class='pull-left' accept='.xls,.xlsx'>           
                <button type='submit' name='importnilaip' class='btn btn-success btn-sm'>
                <span class='glyphicon glyphicon-eye-open'></span> IMPORT
                </button>

               </form>
              </div>
            </div>
          </div>
          </section>
        </div>";?>

<div class='modal fade bs-example-modal-lg' id='nilaiktrmpln' tabindex='-1' role='dialog' aria-labelledby='myModalLabel'  aria-hidden='true'>
  <div class='modal-dialog modal-lg'>
    <div class='modal-content'>
      <div class='modal-header'>
        <button type='button' class='close' data-dismiss='modal' aria-hidden='true'>&times;</button>
        <h5 class='modal-title' id='myModalLabel'>Import Nilai Keterampilan</h5>
      </div>
    <div class='modal-body'> 
     <section id='main-content'>
      <div class='row mt'>
        <div class='col-lg-12'>
          <div class='panel panel-success'>
            <div class='panel-heading'>
                <h3 class='panel-title'><i class='fa fa-user'></i> Form Import Nilai</h3> 
             </div>
           <div class='panel-body'>
            <div class='alert alert-info alert-dismissable'><button type='button'  class='close'    data-dismiss='alert' aria-hidden='true'>&times;</button><h4>Pastikan Extensi File Excel yang digunakan excel 2003 (.xls) untuk format excel anda bisa download dibawah ini</a></h4></div>
            <div style='padding: 0 15px;'>
                  <!-- Buat sebuah tag form dan arahkan action nya ke file ini lagi -->
             <?php
             echo "<form action='index.php?view=nilaiktrmpln&jdwl=$_GET[jdwl]&kd=$_GET[kd]&id=$_GET[id]&ie=$_GET[ie]&tahun=$_GET[tahun]' method='post' enctype='multipart/form-data'>
              <a href='import_data/format_nilaik.xls'class='btn btn-defaulkt'>
               <span class='glyphicon glyphicon-download'></span>
                Download Format
              </a> <br/><br/><label><input type='checkbox' name='drop' value='1' /> <u>Kosongkan tabel sql terlebih dahulu.</u> </label> <br><br>

              <input type='file' id='nilaik' name='nilaik' class='pull-left' accept='.xls,.xlsx'>           
                <button type='submit' name='importnilaik' class='btn btn-success btn-sm'>
                <span class='glyphicon glyphicon-eye-open'></span> IMPORT
                </button>

               </form>
              </div>
            </div>
          </div>
          </section>
        </div>"?>


    <script>
        $(document).ready(function() {
        var dataTable = $('#lookup').DataTable( {
          "processing": true,
          "serverSide": true,
          "ajax":{
            url :"ajax-data.php", // json datasource
            type: "post",  // method  , by default get
            error: function(){  // error handling
              $(".lookup-error").html("");
              $("#lookup").append('<tbody class="employee-grid-error"><tr><th colspan="3">No data found in the server</th></tr></tbody>');
              $("#lookup_processing").css("display","none");
              
            }
          }
        } );
      } );

    $(function () {
        $('#tglLahirSiswa').datepicker({
           format: "yyyy-mm-dd",
           autoclose : true,
        });
        $('#tglLahirGuru').datepicker({
          format: "yyyy-mm-dd",
          autoclose : true,
        });
        $('#tglCPNS').datepicker({
          format: "yyyy-mm-dd",
          autoclose : true,
        });
        $('#tglTMT').datepicker({
          format: "yyyy-mm-dd",
          autoclose : true,
        });
        $('#tglTMTPns').datepicker({
          format: "yyyy-mm-dd",
          autoclose : true,
        });
        $('#tglLahirGuruEdit').datepicker({
          format: "yyyy-mm-dd",
          autoclose : true,
        });
        $('#tglCPNSedit').datepicker({
          format: "yyyy-mm-dd",
          autoclose : true,
        });
        $('#tglTMTEdit').datepicker({
          format: "yyyy-mm-dd",
          autoclose : true,
        });
        $('#tglTmtPnsedit').datepicker({
          format: "yyyy-mm-dd",
          autoclose : true,
        });
        
        $('#tglAbsen').datepicker({
          format: "yyyy-mm-dd",
          autoclose : true,  
          date: new Date(2018, 1, 14)
        });
        $('[data-toggle="datepicker"]').datepicker();
        $('[data-toggle="tooltip"]').tooltip();

        $('#tglJurnal').datepicker({
          format: "yyyy-mm-dd",
          autoclose : true,
        });

        $('#blnRaport').datepicker({
          format: "mm-yyyy",
          viewMode: "months", 
          autoclose : true,
          minViewMode: "months"
        });

        $('#getblnPelanggaran').datepicker({
          format: "yyyy-mm",
          viewMode: "months",
          autoclose :true,
          minViewMode: "months"
        });

        $('#blnAkses').datepicker({
          format: "yyyy-mm",
          viewMode: "months", 
          autoclose : true,
          minViewMode: "months"
        });

        $('#jamMulaiJdwl').inputmask(
          "hh:mm:ss", {
            placeholder: "HH:MM:SS", 
            insertMode: false, 
            showMaskOnHover: false,
            // hourFormat: 24
          }
        );

        $('#jamSelesaiJdwl').inputmask(
          "hh:mm:ss", {
            placeholder: "HH:MM:SS", 
            insertMode: false, 
            showMaskOnHover: false,
            // hourFormat: 24
          }
        );
           //Colorpicker
        $(".my-colorpicker1").colorpicker();
        //color picker with addon
        $(".my-colorpicker2").colorpicker();

    });

    function destroyInput() {

      setTimeout(function () {
        $("#tahun").val("");
        $("#blnRaport").val("").datepicker("update");;
      }, 1200);
      $("#modalRaportBulanan").modal('hide');
      }

      function fs(selector) {
  var el = document.querySelector(selector);
  el.webkitRequestFullscreen();
}
  </script>
  <script type="text/javascript">
        function gantiBulan() {
          var bln = $("#getblnPelanggaran").val();
          window.location.href = 'index.php?view=lap_pel&blnPel='+bln+'';
        }
       </script>

 
      <div style='clear:both'></div>
      </div>
    </div>
  </div>
</div>

  </body>
</html>

<?php 
      }
    }
  }else{
    include "home.php";
  }
?>


