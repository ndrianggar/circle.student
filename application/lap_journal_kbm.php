<style type="text/css">
  .img-banner{
    width: 95px;
    position: absolute;
    top: -5px;
    left: 20px;
    z-index: -1;
  }
  th{
    text-align: center;
  }
  table{
    font-size: 13px;
  }
  @media print {
  .col-print-1 {width:8%;  float:left;}
  .col-print-2 {width:16%; float:left;}
  .col-print-3 {width:25%; float:left;}
  .col-print-4 {width:34%; float:left;}
  .col-print-5 {width:42%; float:left;}
  .col-print-6 {width:50%; float:left;}
  .col-print-7 {width:58%; float:left;}
  .col-print-8 {width:66%; float:left;}
  .col-print-9 {width:75%; float:left;}
  .col-print-10{width:83%; float:left;}
  .col-print-11{width:92%; float:left;}
  .col-print-12{width:100%; float:left;}
  body * {
    visibility: hidden;
  }
  table{
    font-size: 7px;
  }

  element.style{
    zoom:50%;
  }

  #tblJurnal{
    border-bottom: solid white !important;
    border-left: solid white !important;
  }
  #section-to-print, #section-to-print * {
    visibility: visible;
  }
  #section-to-print {
    position: absolute;
    left: 0;
    top: 0;
  }
</style>
<?php  
$klsPararel = mysql_fetch_array(mysql_query("SELECT nm_pararel FROM rb_kls_pararel where id_kls_pararel = '$_GET[kelasPararel]'"));
?>
<div class="col-xs-12">  
  <div class="box">
    <div class="box-header">
      <h3 class="box-title">Laporan Journal Kegiatan Belajar Mengajar</h3>
      <form style='margin-right:5px; margin-top:0px' class='pull-right' action='' method='GET'>
        <input type="hidden" name='view' value='laporanJurnalKbm'>
        <table>
          <tr>
            <td>
              <select class="form-control" name='tahun' style='padding:4px'>
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
            </td>
            <td>
              <select class="form-control" name='kelas' style='padding:4px'>
                <?php 
                  echo "<option value=''>- Pilih Kelas -</option>";
                  $kelas = mysql_query("SELECT * FROM rb_kelas");
                  while ($k = mysql_fetch_array($kelas)){
                    if ($_GET[kelas]==$k[kode_kelas]){
                      echo "<option value='$k[kode_kelas]' selected>$k[kode_kelas] - $k[nama_kelas]</option>";
                    }else{
                      echo "<option value='$k[kode_kelas]'>$k[kode_kelas] - $k[nama_kelas]</option>";
                    }
                  }
                ?>
              </select>
            </td>
            <td>
              <select class="form-control" name='kelasPararel' style='padding:4px'>
                <?php 
                  echo "<option value=''>- Pilih Kelas -</option>";
                  $kelas = mysql_query("SELECT * FROM rb_kls_pararel");
                  while ($k = mysql_fetch_array($kelas)){
                    if ($_GET[kelasPararel]==$k[id_kls_pararel]){
                      echo "<option value='$k[id_kls_pararel]' selected>$k[nm_pararel]</option>";
                    }else{
                      echo "<option value='$k[id_kls_pararel]'>$k[nm_pararel]</option>";
                    }
                  }
                ?>
              </select>
            </td>
            <td>
              <input class="form-control" id="tglJurnal" type="text" name="tglJurnal" placeholder="Pilih Tanggal" autocomplete="off" value="<?php echo $_GET[tglJurnal]?>">
            </td>
            <td><input type="submit" style='width: 100%; height: 100%; margin: 0;' class='btn btn-success btn-sm btn-flat' value='Lihat'></td>
          </tr>
        </table>
      </form>
    </div>
  </div>
  <div class="box" id="section-to-print" style="border: 0px;">
    <div class="box-body">
      <img src='dist/img/logo_ihbs.png' class='img-banner'>
      <h3 style="text-align: center; margin: 0px;">ADMINISTRASI KELAS</h3>
      <h4 style="text-align: center; margin-top: 0px; margin-bottom: 30px;">PRESENSI KEHADIRAN GURU DAN PESERTA DIDIK
      <BR>SMP IBNU HAJAR BOARDING SCHOOL</h4>
      <span>Semester : <?PHP  echo $_GET[tahun] ?>&nbsp;</span>
      <span>Kelas : <?PHP  echo $klsPararel[nm_pararel] ?></span>
      <span class="pull-right">Tanggal : <?php echo date('d-M-Y', strtotime($_GET[tglJurnal])) ?></span>
      <table class="table table-bordered table-striped" style="border: solid 2px; margin: 0px; padding: 0px;">
      <tr>
        <td style="padding: 0px;">
    <div class="col-md-8 col-print-8" style="margin: 0px; padding: 0px;"> 
    <table class="table table-bordered table-striped col-md-8" style="border: none; margin: 0px; padding: 0px;" id="tblAbsen">
      <thead>
        <tr>
          <th style="vertical-align:middle; width: 20px;"  rowspan="2">No</th>
          <th style="vertical-align:middle;" rowspan="2">NIS</th>
          <th style="vertical-align:middle; width: 100px;"  rowspan="2" valign="middle">Nama Lengkap Santri</th>
          <th colspan="8" style="width: 200px;">Jam Pelajaran</th>
        </tr>
        <tr>
          <th width="20px">1</th>
          <th width="20px">2</th>
          <th width="20px">3</th>
          <th width="20px">4</th>
          <th width="20px">5</th>
          <th width="20px">6</th>
          <th width="20px">7</th>
          <th width="20px">8</th>
        </tr>
      </thead>
      <tbody>
        <?php
          if (isset($_GET[kelas]) AND isset($_GET[kelasPararel]) AND isset($_GET[tahun]) AND isset($_GET[tglJurnal])){
            $dtSiswa = mysql_query("SELECT a.* , b.* FROM `rb_absensi_siswa` a join rb_siswa b on a.nisn = b.nisn WHERE b.kode_kelas = '$_GET[kelas]' and b.id_kls_pararel = '$_GET[kelasPararel]' and a.tanggal = '$_GET[tglJurnal]' GROUP by b.nisn");
          }
          $no = 1;
          while($r=mysql_fetch_array($dtSiswa)){
            if ($r[kode_kehadiran] == "H") {
              $absen = "<i class='fa fa-check'></i>";
            }else{
              $absen = $r[kode_kehadiran];
            }
            echo "
            <tr>
              <td>$no</td>
              <td style='width:100px;'>$r[nisn]</td>
              <td style='width:320px;'>$r[nama]</td>
              <td style='width:20px;' align='center'>$absen</td>
              <td style='width:20px;' align='center'>$absen</td>
              <td style='width:20px;' align='center'>$absen</td>
              <td style='width:20px;' align='center'>$absen</td>
              <td style='width:20px;' align='center'>$absen</td>
              <td style='width:20px;' align='center'>$absen</td>
              <td style='width:20px;' align='center'>$absen</td>
              <td style='width:20px;' align='center'>$absen</td>
            </tr>
            ";$no++;
          }
        ?>
      </tbody>
    </table> 
    </div> 
    <div class="col-md-4 col-print-4" style="margin: 0; padding: 0px;">
      <table id="tblJurnal" class="table table-bordered table-striped" style="border: none; margin: 0px;">
        <thead>
          <tr>
            <th rowspan="2" style="vertical-align: middle width:100px;">Keterangan</th>
          </tr>
        </thead>
        <tbody>
          <tr border="0">
            <td border="0">
              <?php $dataJurnal = mysql_query("SELECT a.* , b.*, c.namamatapelajaran, d.nama_guru FROM rb_journal_list a JOIN rb_jadwal_pelajaran b on a.kodejdwl = b.kodejdwl JOIN rb_mata_pelajaran c on b.kode_pelajaran = c.kode_pelajaran  JOIN rb_guru d on b.nip = d.nip WHERE b.kode_kelas = '$_GET[kelas]' and b.id_kls_pararel = '$_GET[kelasPararel]' AND a. tanggal = '$_GET[tglJurnal]' GROUP BY a.jam_ke");
              while ($r=mysql_fetch_array($dataJurnal)) {
                echo '
                <div style="padding-bottom: 10px;">
                <table class="" style="border: solid 1px; width: 100%;">
                  <tr>
                    <td width="100" style="padding: 5px;">Jam Pelajaran Ke</td>
                    
                    <td style="padding-left:5px;">'.$r[jam_ke].'</td>
                  </tr>
                  <tr>
                    <td  width="100" style="padding: 5px;">Nama Pelajaran</td>
                    
                    <td style="padding-left:5px;">'.$r[namamatapelajaran].'</td>
                  </tr>
                  <tr>
                    <td  width="100" style="padding: 5px; vertical-align: top;">Materi</td>
                    
                    <td style="vertical-align:top; padding-left:5px;">'.$r[materi].'</td>
                  </tr>
                  <tr>
                    <td  width="100" style="padding: 5px;">Nama Guru</td>
                    
                    <td style="padding-left:5px;">'.$r[nama_guru].'</td>
                  </tr>
                </table>
              </div>';
              }
             ?>
            </td>
          </tr>
        </tbody>
      </table>
          </td>
        </tr>
      </table>  
    </div>
  </div>
  </div>
  <div style="text-align: center;">
    <button class="btn btn-flat btn-primary btn-lg" onclick="print()"><i class="fa fa-print"></i> PRINT</button>
  </div>
</div>

<script type="text/javascript">
  function test(){
    var table = document.getElementById("tblAbsen");
    alert(table.offsetHeight );
  }
</script>