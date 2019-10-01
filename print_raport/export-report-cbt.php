<?php 
header("Content-type: application/vnd-ms-excel");
header("Content-Disposition: attachment; filename=export-report-cbt-$_GET[id_cbt]-$_GET[jenis_cbt]-kelas-$_GET[kelas].xls");
session_start();
error_reporting(0);
include "config/koneksi.php"; 
include "config/fungsi_indotgl.php"; 
$t = mysql_fetch_array(mysql_query("SELECT a.*, b.nama_kelas, c.namamatapelajaran, d.jenis_cbt FROM rb_quiz_cbt a JOIN rb_kelas b ON a.kode_kelas=b.kode_kelas 
                                      JOIN rb_mata_pelajaran c ON a.kode_pelajaran=c.kode_pelajaran 
						              JOIN rb_quiz_jenis d ON a.id_jenis=d.id_jenis where a.id_cbt='$_GET[id_cbt]'"));
$objektif = mysql_num_rows(mysql_query("SELECT * FROM rb_quiz_cbt_soal a JOIN rb_bank_pertanyaan_objektif b ON a.id_bank_pertanyaan_objektif=b.id_bank_pertanyaan_objektif where b.kategori_soal='objektif' AND a.id_cbt='$_GET[id_cbt]'"));
$essay = mysql_num_rows(mysql_query("SELECT * FROM rb_quiz_cbt_soal a JOIN rb_bank_pertanyaan_objektif b ON a.id_bank_pertanyaan_objektif=b.id_bank_pertanyaan_objektif where b.kategori_soal='essay' AND a.id_cbt='$_GET[id_cbt]'"));
?>
<head>
<title>Data Report Cbt<?php echo $_GET[kelas]; ?></title>
</head>
<body onload="window.print()">
  <h3 class='box-title'>Computer Based Test</h3>
                </div>
				
                <div class='box-body'>
                    <div class='col-xs-6'> 
                    <table class='table table-condensed table-hover'>
					<?php
					echo"
                        <tbody>
                          <tr><th width='120px' scope='row'>Jenis CBT</th>  <td style='border-bottom:1px solid #e3e3e3'> : $t[jenis_cbt]</td></tr>
                          <tr><th scope='row'>Kelas</th>                    <td style='border-bottom:1px solid #e3e3e3'> : $t[nama_kelas]</td></tr>
                          <tr><th scope='row'>Mata Pelajaran</th>           <td style='border-bottom:1px solid #e3e3e3'> : $t[namamatapelajaran]</td></tr>
                          <tr><th scope='row'>Judul CBT</th>                <td style='border-bottom:1px solid #e3e3e3'> : $t[judul_cbt]</td></tr>
                        </tbody>
                    </table>
                    </div>

                    <div class='col-xs-6'> 
                    <table class='table table-condensed table-hover'>
                        <tbody>
                          <tr><th width='120px' scope='row'>Ketuntasan / KKM</th>         <td style='border-bottom:1px solid #e3e3e3'> : $t[kkm]</td></tr>
                          <tr><th scope='row'>Durasi (Menit)</th>           <td style='border-bottom:1px solid #e3e3e3'> : $t[durasi]</td></tr>
                          <tr><th scope='row'>Soal Objektif</th>            <td style='border-bottom:1px solid #e3e3e3'> : $objektif</td></tr>
                          <tr><th scope='row'>Soal Essay</th>               <td style='border-bottom:1px solid #e3e3e3'> : $essay</td></tr>
                          <tr><th scope='row'>Kelas Paralel</th>               <td style='border-bottom:1px solid #e3e3e3'> : $paralel</td></tr>
                        </tbody>
                    </table>
                    </div>


                    <div style='clear:both'></div><br>
                    <table class='table table-bordered table-striped'>
                      <thead>
                        <tr bgcolor='#cecece'>
                          <th style='width:20px'>No</th>
                          <th>Nama Siswa</th>
                          <th width='150px'><center>Objektif</center></th>
                          <th width='150px'><center>Essay</center></th>
                          <th width='150px'><center>Status</center></th>
                          <th width='150px'><center>Nilai</center></th>
                        </tr>
                      </thead>
                      <tbody>";
                      $no = 1;
                      $tampil = mysql_query("SELECT * FROM rb_siswa where id_kls_pararel='$_GET[paralel]'");
                      while($r=mysql_fetch_array($tampil)){
                      $objektif = mysql_num_rows(mysql_query("SELECT a.*, b.kategori_soal FROM `rb_quiz_cbt_soal` a JOIN rb_bank_pertanyaan_objektif b ON a.id_bank_pertanyaan_objektif=b.id_bank_pertanyaan_objektif where a.id_cbt='$_GET[id_cbt]' AND b.kategori_soal='objektif'"));
                      $essay = mysql_num_rows(mysql_query("SELECT a.*, b.kategori_soal FROM `rb_quiz_cbt_soal` a JOIN rb_bank_pertanyaan_objektif b ON a.id_bank_pertanyaan_objektif=b.id_bank_pertanyaan_objektif where a.id_cbt='$_GET[id_cbt]' AND b.kategori_soal='essay'"));
                      $objektif_jawab = mysql_num_rows(mysql_query("SELECT * FROM `rb_jawaban_objektif` a JOIN rb_quiz_jadwal b ON a.id_jadwal=b.id_jadwal JOIN rb_bank_pertanyaan_objektif c ON a.id_pertanyaan_objektif=c.id_bank_pertanyaan_objektif where b.id_cbt='$_GET[id_cbt]' AND a.id_siswa='$r[id_siswa]' AND b.id_kls_pararel='$_GET[paralel]' AND c.kategori_soal='objektif'"));
                      $essay_jawab = mysql_num_rows(mysql_query("SELECT * FROM `rb_jawaban_essai` a JOIN rb_quiz_jadwal b ON a.id_jadwal=b.id_jadwal JOIN rb_bank_pertanyaan_objektif c ON a.id_pertanyaan_essai=c.id_bank_pertanyaan_objektif where b.id_cbt='$_GET[id_cbt]' AND a.id_siswa='$r[id_siswa]' AND b.id_kls_pararel='$_GET[paralel]' AND c.kategori_soal='essay'"));
                      
                      $tanyaan = $objektif+$essay;
                      $jawab = $objektif_jawab+$essay_jawab;

                      $cek_koreksi = mysql_num_rows(mysql_query("SELECT * FROM rb_jawaban_essai_koreksi a JOIN rb_jawaban_essai b ON a.id_jawaban_essai=b.id_jawaban_essai where b.id_siswa='$r[id_siswa]' AND b.id_jadwal='$_GET[id_jadwal]'"));
                      if ($cek_koreksi<$essay){
                        if ($jawab > 0 AND $tanyaan>0 AND $essay>0){ $status = "<button style='width:120px' class='btn btn-xs btn-warning'>Menunggu Koreksi</button>"; }else{ $status = "<button style='width:120px' class='btn btn-xs btn-danger'>Belum Mengerjakan</button>"; }
                        $nilai = 0;
                      }else{
                        if ($jawab > 0 AND $tanyaan>0){ $status = "<button style='width:120px' class='btn btn-xs btn-success'>Selesai</button>"; }else{ $status = "<button style='width:120px' class='btn btn-xs btn-danger'>Belum Mengerjakan</button>"; }
                        $benar_objektif = mysql_num_rows(mysql_query("SELECT a.*, b.kunci_jawaban FROM rb_jawaban_objektif a JOIN rb_bank_pertanyaan_objektif b ON a.id_pertanyaan_objektif=b.id_bank_pertanyaan_objektif where a.jawaban=b.kunci_jawaban AND a.id_jadwal='$_GET[id_jadwal]' AND a.id_siswa='$r[id_siswa]'"));
                        $benar_essay = mysql_num_rows(mysql_query("SELECT * FROM rb_jawaban_essai a JOIN rb_jawaban_essai_koreksi b ON a.id_jawaban_essai=b.id_jawaban_essai where a.id_siswa='$r[id_siswa]' AND a.id_jadwal='$_GET[id_jadwal]' AND b.nilai='1'"));
                        $nilai = number_format(($benar_essay+$benar_objektif)/$objektif+$essay * 100);
                        $soal  = $benar_essay+$benar_objektif;
                        $soal_semua  = $objektif+$essay;
                        $nilai = number_format($soal/$soal_semua * 100);
                      }
                      echo "<tr><td>$no</td>
                                <td>$r[nama]</td>
                                <td align=center>$objektif_jawab / $objektif</td>
                                <td align=center>$essay_jawab / $essay</td>
                                <td align=center>$status</button></td>
                                <td align=center>$nilai</td>
                            </tr>";
                        $no++;
                        }

                      echo "<tbody>
                    </table>
                </div>
                </div>
            </div>";

?>

</table> 
</body>