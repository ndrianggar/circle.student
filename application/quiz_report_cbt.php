<?php 
if ($_GET[act]==''){ 
$jenis = mysql_fetch_array(mysql_query("SELECT * FROM rb_quiz_jenis where id_jenis='$_GET[id_jenis]'"));
?>
            <div class="col-xs-12">  
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Report - Computer Based Test</h3>
                  <form style='margin-right:5px; margin-top:0px' class='pull-right' action='' method='GET'>
                    <input type="hidden" name='view' value='report_cbt'>
                    <select name='id_jenis' style='padding:4px'>
                        <option value='0' selected>- Pilih Jenis CBT -</option>
                        <?php  
                            $cbt = mysql_query("SELECT * FROM rb_quiz_jenis");
                            while ($k = mysql_fetch_array($cbt)){
                              if ($_GET['id_jenis']==$k['id_jenis']){
                                echo "<option value='$k[id_jenis]' selected>$k[jenis_cbt]</option>";
                              }else{
                                echo "<option value='$k[id_jenis]'>$k[jenis_cbt]</option>";
                              }
                            }
                        ?>   
                    </select>
                    <select name='kelas' style='padding:4px'>
                        <option value='0' selected>- Pilih kelas -</option>
                        <?php  
                            if ($_SESSION[unit]=="SMP PUTRA") {
                               $kelas = mysql_query("SELECT * FROM rb_kelas where kode_kelas in ('VII','VIII','IX') ");
                            }else if($_SESSION[unit]=="SMA PUTRA"){
                              $kelas = mysql_query("SELECT * FROM rb_kelas where kode_kelas in ('X','XI','XII') ");
                            }else{
                              $kelas = mysql_query("SELECT * FROM rb_kelas");
                            }
                            while ($k = mysql_fetch_array($kelas)){
                              if ($_GET['kelas']==$k['kode_kelas']){
                                echo "<option value='$k[kode_kelas]' selected>$k[kode_kelas] - $k[nama_kelas]</option>";
                              }else{
                                echo "<option value='$k[kode_kelas]'>$k[kode_kelas] - $k[nama_kelas]</option>";
                              }
                            }
                        ?>   
                    </select>
                    <input type="submit" style='margin-top:-4px' class='btn btn-info btn-sm' value='Tampil'>
                  </form>
                </div><!-- /.box-header -->

                <div class="box-body">

                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr bgcolor='#cecece'>
                        <th style='width:20px'>No</th>
                        <th>Nama CBT</th>
                        <th>Jenis CBT</th>
                        <th>Nama mapel</th>
                        <th>Kelas</th>
                        <th>Jumlah dan Type Soal</th>
                        <th>Status</th>
                        <?php
                        if($_SESSION['level']!='kepala'){ ?>
                        <th width='100px'>Action</th>
                        <?php } ?>
                      </tr>
                    </thead>
                    <tbody>
                  <?php
                    if (isset($_GET['kelas']) AND isset($_GET['id_jenis'])){
                      $tampil = mysql_query("SELECT a.*, b.nama_kelas, c.jenis_cbt, d.namamatapelajaran FROM rb_quiz_cbt a JOIN rb_kelas b ON a.kode_kelas=b.kode_kelas JOIN rb_quiz_jenis c ON a.id_jenis=c.id_jenis JOIN rb_mata_pelajaran d ON a.kode_pelajaran=d.kode_pelajaran where a.id_jenis='$_GET[id_jenis]' AND a.kode_kelas='$_GET[kelas]' ORDER BY a.id_cbt DESC");
                    }else{
                      // $tampil = mysql_query("SELECT a.*, b.nama_kelas, c.jenis_cbt, d.namamatapelajaran FROM rb_quiz_cbt a JOIN rb_kelas b ON a.kode_kelas=b.kode_kelas JOIN rb_quiz_jenis c ON a.id_jenis=c.id_jenis JOIN rb_mata_pelajaran d ON a.kode_pelajaran=d.kode_pelajaran ORDER BY a.id_cbt DESC");
                    }
                    $no = 1;
                    while($r=mysql_fetch_array($tampil)){
                    if ($jenis['jadwal']=='N'){ $waktu = '-'; }else{ $waktu = $r[durasi].' Menit'; }
                    $jmlsoal = mysql_num_rows(mysql_query("SELECT * FROM rb_quiz_cbt_soal where id_cbt='$r[id_cbt]'"));
                    $objektif = mysql_num_rows(mysql_query("SELECT * FROM rb_quiz_cbt_soal a JOIN rb_bank_pertanyaan_objektif b ON a.id_bank_pertanyaan_objektif=b.id_bank_pertanyaan_objektif where b.kategori_soal='objektif' AND a.id_cbt='$r[id_cbt]'"));
                    $essay = mysql_num_rows(mysql_query("SELECT * FROM rb_quiz_cbt_soal a JOIN rb_bank_pertanyaan_objektif b ON a.id_bank_pertanyaan_objektif=b.id_bank_pertanyaan_objektif where b.kategori_soal='essay' AND a.id_cbt='$r[id_cbt]'"));
                    
                    $objektif_soal = mysql_num_rows(mysql_query("SELECT a.*, b.kategori_soal FROM `rb_quiz_cbt_soal` a JOIN rb_bank_pertanyaan_objektif b ON a.id_bank_pertanyaan_objektif=b.id_bank_pertanyaan_objektif where a.id_cbt='$r[id_cbt]' AND b.kategori_soal='objektif'"));
                    $essay_soal = mysql_num_rows(mysql_query("SELECT a.*, b.kategori_soal FROM `rb_quiz_cbt_soal` a JOIN rb_bank_pertanyaan_objektif b ON a.id_bank_pertanyaan_objektif=b.id_bank_pertanyaan_objektif where a.id_cbt='$r[id_cbt]' AND b.kategori_soal='essay'"));
                    $objektif_jawab = mysql_num_rows(mysql_query("SELECT * FROM `rb_jawaban_objektif` a JOIN rb_quiz_jadwal b ON a.id_jadwal=b.id_jadwal JOIN rb_bank_pertanyaan_objektif c ON a.id_pertanyaan_objektif=c.id_bank_pertanyaan_objektif where b.id_cbt='$r[id_cbt]' AND c.kategori_soal='objektif'"));
                    $essay_jawab = mysql_num_rows(mysql_query("SELECT * FROM `rb_jawaban_essai` a JOIN rb_quiz_jadwal b ON a.id_jadwal=b.id_jadwal JOIN rb_bank_pertanyaan_objektif c ON a.id_pertanyaan_essai=c.id_bank_pertanyaan_objektif where b.id_cbt='$r[id_cbt]' AND c.kategori_soal='essay'"));
                    
                    $tanyaan = $objektif_soal+$essay_soal;
                    $jawab = $objektif_jawab+$essay_jawab;

                    $cek_koreksi = mysql_num_rows(mysql_query("SELECT * FROM rb_jawaban_essai a LEFT JOIN rb_jawaban_essai_koreksi b ON b.id_jawaban_essai=a.id_jawaban_essai LEFT JOIN rb_quiz_jadwal c ON a.id_jadwal=c.id_jadwal where c.id_cbt='$r[id_cbt]'"));
                    $tot = $cek_koreksi-$essay_soal; 
                      if ($tot>0){
                        if ($jawab > 0 AND $tanyaan>0 AND $essay_soal>0){ $status = "<span style='color:red'>$tot Menunggu Koreksi</span>"; $selesai = "$essay_soal Siswa Selesai";  }else{ $status = "<span style='color:blue'>Belum ada Mengerjakan</span>"; }
                      }else{
                        $selesai_jawab = mysql_num_rows(mysql_query("SELECT * FROM `rb_jawaban_objektif` a JOIN rb_quiz_jadwal b ON a.id_jadwal=b.id_jadwal where b.id_cbt='$r[id_cbt]' GROUP BY a.id_siswa"));
                        if ($jawab > 0 AND $tanyaan>0){ $status = "$selesai_jawab Siswa Selesai"; }else{ $status = "<span style='color:blue'>Belum ada Mengerjakan</span>"; }
                      }

                    echo "<tr><td>$no</td>
                              <td><b>$r[judul_cbt]</b></td>
                              <td>$r[jenis_cbt]</td>
                              <td>$r[namamatapelajaran]</td>
                              <td>$r[nama_kelas]</td>
                              <td style='color:green'>$objektif Objektif / $essay Essay</td>
                              <td>$status <br>$selesai</td>";
                              if($_SESSION['level']!='kepala'){
                                echo "<td style='width:120px !important'>
                                  <a class='btn btn-primary btn-xs' href='index.php?view=report_cbt&act=penilaiancbt&id_jenis=$_GET[id_jenis]&kelas=$_GET[kelas]&id_cbt=$r[id_cbt]'><i class='fa fa-th-list'></i> List Report CBT</a>
                                </td>";
                              }
                            echo "</tr>";
                      $no++;
                      }
                  ?>
                    <tbody>
                  </table>
                </div>
                </div>
            </div>

<?php 
}elseif($_GET['act']=='penilaiancbt'){
$t = mysql_fetch_array(mysql_query("SELECT a.*, b.nama_kelas, c.namamatapelajaran, d.jenis_cbt FROM rb_quiz_cbt a JOIN rb_kelas b ON a.kode_kelas=b.kode_kelas 
                                      JOIN rb_mata_pelajaran c ON a.kode_pelajaran=c.kode_pelajaran 
                                        JOIN rb_quiz_jenis d ON a.id_jenis=d.id_jenis where a.id_cbt='$_GET[id_cbt]'"));
$objektif = mysql_num_rows(mysql_query("SELECT * FROM rb_quiz_cbt_soal a JOIN rb_bank_pertanyaan_objektif b ON a.id_bank_pertanyaan_objektif=b.id_bank_pertanyaan_objektif where b.kategori_soal='objektif' AND a.id_cbt='$_GET[id_cbt]'"));
$essay = mysql_num_rows(mysql_query("SELECT * FROM rb_quiz_cbt_soal a JOIN rb_bank_pertanyaan_objektif b ON a.id_bank_pertanyaan_objektif=b.id_bank_pertanyaan_objektif where b.kategori_soal='essay' AND a.id_cbt='$_GET[id_cbt]'"));
            echo "<div class='col-xs-12'>  
              <div class='box'>
                <div class='box-header'>
		  <a target='_BLANK' class='btn btn-sm btn-primary pull-right' href='export-report-cbt.php?id_jenis=".$_GET[id_jenis]."&kelas=".$_GET[kelas]."&id_cbt=".$_GET[id_cbt]."&paralel=".$_GET[paralel]."&id_jadwal=".$_GET[id_jadwal]."'>Export Excel Report CBT</a>

                  <h3 class='box-title'>Computer Based Test</h3>
                </div>
                <div class='box-body'>
                    <div class='col-xs-6'> 
                    <table class='table table-condensed table-hover'>
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
                        </tbody>
                    </table>
                    </div>

                    <div class='col-xs-12'> 
                    <table class='table table-condensed table-hover'>
                    <tbody>
                    <tr><th width='90px' scope='row'>Pilih Kelas</th>  <td> <select class='form-control' style='padding:4px; border:1px solid orange' onchange=\"document.location.href=this.value\">
                        <option value='' selected>- Pilih -</option>";
                            $kelas_paralel = mysql_query("SELECT a.id_jadwal, b.* FROM `rb_quiz_jadwal` a JOIN rb_kls_pararel b ON a.id_kls_pararel=b.id_kls_pararel where a.id_cbt='$_GET[id_cbt]'");
                            while ($k = mysql_fetch_array($kelas_paralel)){
                              if ($_GET['paralel']==$k['id_kls_pararel']){
                                echo "<option value='index.php?view=report_cbt&act=penilaiancbt&id_jenis=$_GET[id_jenis]&kelas=$_GET[kelas]&id_cbt=$_GET[id_cbt]&paralel=$k[id_kls_pararel]&id_jadwal=$k[id_jadwal]' selected>$k[nm_pararel]</option>";
                              }else{
                                echo "<option value='index.php?view=report_cbt&act=penilaiancbt&id_jenis=$_GET[id_jenis]&kelas=$_GET[kelas]&id_cbt=$_GET[id_cbt]&paralel=$k[id_kls_pararel]&id_jadwal=$k[id_jadwal]'>$k[nm_pararel]</option>";
                              }
                            }
                    echo "</select></td></tr>
                    </body>
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

}
?>

